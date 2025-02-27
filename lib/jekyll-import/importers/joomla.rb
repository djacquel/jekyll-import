# frozen_string_literal: true

module JekyllImport
  module Importers
    class Joomla < Importer
      def self.validate(options)
        %w(dbname user).each do |option|
          abort "Missing mandatory option --#{option}." if options[option].nil?
        end
      end

      def self.specify_options(c)
        c.option "dbname",   "--dbname",   "Database name."
        c.option "user",     "--user",     "Database user name."
        c.option "password", "--password", "Database user's password. (default: '')"
        c.option "host",     "--host",     "Database host name. (default: 'localhost')"
        c.option "port",     "--port",     "Database port. (default: '3306')"
        c.option "section",  "--section",  "Section ID. (default: '1')"
        c.option "prefix",   "--prefix",   "Table prefix name. (default: 'jos_')"
      end

      def self.require_deps
        JekyllImport.require_with_fallback(%w(
          rubygems
          sequel
          mysql2
          fileutils
          safe_yaml
        ))
      end

      def self.process(options)

        # BRUTAL HACK
        # DATABASE OPTIONS ARE NOT DELIVERED PROPERLY
        # REICEVED options = {"dbname"=>true, "user"=>true, "password"=>true, "prefix"=>true}
        #
        # WE FETCH GLOBAL ARGV INSTEAD

        dbname  = $ARGV[0]
        user    = $ARGV[1]
        pass    = $ARGV[2]
        host    = options.fetch("host", "127.0.0.1")
        port    = options.fetch("port", 3306).to_i
        section = options.fetch("section", "1")
        table_prefix = $ARGV[3]

        db = Sequel.mysql2(dbname, :user => user, :password => pass, :host => host, :port => port, :encoding => "utf8")

        FileUtils.mkdir_p("_posts")

        # Reads a MySQL database via Sequel and creates a post file for each
        # post in wp_posts that has post_status = 'publish'. This restriction is
        # made because 'draft' posts are not guaranteed to have valid dates.
        query = "SELECT `title`, `alias`, CONCAT(`introtext`,`fulltext`) as content, `created`, `id` FROM #{table_prefix}content WHERE (state = '0' OR state = '1')"

        db[query].each do |post|
          # Get required fields and construct Jekyll compatible name.
          title = post[:title]
          date = post[:created]
          content = post[:content]
          id = post[:id]

          # Construct a slug from the title if alias field empty.
          # Remove illegal filename characters.
          slug = if !post[:alias] || post[:alias].empty?
                   sluggify(post[:title])
                 else
                   sluggify(post[:alias])
                 end

          name = format("%02d-%02d-%02d-%s.markdown", date.year, date.month, date.day, slug)

          # Get the relevant fields as a hash, delete empty fields and convert
          # to YAML for the header.
          data = {
            "layout"     => "post",
            "title"      => title.to_s,
            "joomla_id"  => post[:id],
            "joomla_url" => post[:alias],
            "date"       => date,
          }.delete_if { |_k, v| v.nil? || v == "" }.to_yaml

          # todo : add an option to transform html to markdown
          # cf https://github.com/xijo/reverse_markdown
          #
          # ReverseMarkdown.config do |config|
          #   config.unknown_tags     = :bypass
          #   config.github_flavored  = true
          #   config.tag_border  = ''
          # end
          #
          # markdown = ReverseMarkdown.convert content

          # Write out the data and content to file
          File.open("_posts/#{name}", "w") do |f|
            f.puts data
            f.puts "---"
            f.puts content
          end
        end
      end

      # Borrowed from the Wordpress importer
      def self.sluggify(title)
        title.downcase.gsub(%r![^0-9A-Za-z]+!, " ").strip.tr(" ", "-")
      end
    end
  end
end
