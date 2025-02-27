# -*- encoding: utf-8 -*-
# stub: jekyll-import 0.25.0 ruby lib

Gem::Specification.new do |s|
  s.name = "jekyll-import".freeze
  s.version = "0.25.0".freeze

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Tom Preston-Werner".freeze, "Parker Moore".freeze, "Matt Rogers".freeze]
  s.bindir = "exe".freeze
  s.date = "2025-02-27"
  s.description = "Provides the Import command for Jekyll.".freeze
  s.email = "maintainers@jekyllrb.com".freeze
  s.executables = ["jekyll-import".freeze]
  s.extra_rdoc_files = ["README.markdown".freeze, "LICENSE".freeze]
  s.files = [".rubocop.yml".freeze, "LICENSE".freeze, "README.markdown".freeze, "exe/jekyll-import".freeze, "lib/jekyll-import.rb".freeze, "lib/jekyll-import/importer.rb".freeze, "lib/jekyll-import/importers.rb".freeze, "lib/jekyll-import/importers/behance.rb".freeze, "lib/jekyll-import/importers/blogger.rb".freeze, "lib/jekyll-import/importers/csv.rb".freeze, "lib/jekyll-import/importers/dotclear.rb".freeze, "lib/jekyll-import/importers/drupal6.rb".freeze, "lib/jekyll-import/importers/drupal7.rb".freeze, "lib/jekyll-import/importers/drupal8.rb".freeze, "lib/jekyll-import/importers/drupal_common.rb".freeze, "lib/jekyll-import/importers/easyblog.rb".freeze, "lib/jekyll-import/importers/enki.rb".freeze, "lib/jekyll-import/importers/ghost.rb".freeze, "lib/jekyll-import/importers/google_reader.rb".freeze, "lib/jekyll-import/importers/joomla.rb".freeze, "lib/jekyll-import/importers/joomla3.rb".freeze, "lib/jekyll-import/importers/jrnl.rb".freeze, "lib/jekyll-import/importers/marley.rb".freeze, "lib/jekyll-import/importers/medium.rb".freeze, "lib/jekyll-import/importers/mephisto.rb".freeze, "lib/jekyll-import/importers/mt.rb".freeze, "lib/jekyll-import/importers/pebble.rb".freeze, "lib/jekyll-import/importers/pluxml.rb".freeze, "lib/jekyll-import/importers/posterous.rb".freeze, "lib/jekyll-import/importers/roller.rb".freeze, "lib/jekyll-import/importers/rss.rb".freeze, "lib/jekyll-import/importers/s9y.rb".freeze, "lib/jekyll-import/importers/s9y_database.rb".freeze, "lib/jekyll-import/importers/textpattern.rb".freeze, "lib/jekyll-import/importers/tumblr.rb".freeze, "lib/jekyll-import/importers/typo.rb".freeze, "lib/jekyll-import/importers/wordpress.rb".freeze, "lib/jekyll-import/importers/wordpressdotcom.rb".freeze, "lib/jekyll-import/util.rb".freeze, "lib/jekyll-import/version.rb".freeze, "lib/jekyll/commands/import.rb".freeze]
  s.homepage = "http://github.com/jekyll/jekyll-import".freeze
  s.licenses = ["MIT".freeze]
  s.rdoc_options = ["--charset=UTF-8".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.4.0".freeze)
  s.rubygems_version = "3.6.3".freeze
  s.summary = "Import command for Jekyll (static site generator).".freeze

  s.installed_by_version = "3.6.3".freeze

  s.specification_version = 4

  s.add_runtime_dependency(%q<jekyll>.freeze, [">= 3.7".freeze, "< 5.0".freeze])
  s.add_runtime_dependency(%q<nokogiri>.freeze, ["~> 1.0".freeze])
  s.add_runtime_dependency(%q<reverse_markdown>.freeze, [">= 2.1".freeze, "< 4.0".freeze])
  s.add_development_dependency(%q<bundler>.freeze, [">= 0".freeze])
  s.add_development_dependency(%q<rake>.freeze, ["~> 13.0".freeze])
  s.add_development_dependency(%q<rdoc>.freeze, ["~> 6.0".freeze])
  s.add_development_dependency(%q<redgreen>.freeze, ["~> 1.2".freeze])
  s.add_development_dependency(%q<rr>.freeze, ["~> 3.1".freeze])
  s.add_development_dependency(%q<rubocop-jekyll>.freeze, ["~> 0.11.0".freeze])
  s.add_development_dependency(%q<shoulda>.freeze, ["~> 4.0".freeze])
  s.add_development_dependency(%q<simplecov>.freeze, ["~> 0.7".freeze])
  s.add_development_dependency(%q<simplecov-gem-adapter>.freeze, ["~> 1.0".freeze])
  s.add_development_dependency(%q<htmlentities>.freeze, ["~> 4.3".freeze])
  s.add_development_dependency(%q<mysql2>.freeze, ["~> 0.3".freeze])
  s.add_development_dependency(%q<open_uri_redirections>.freeze, ["~> 0.2".freeze])
  s.add_development_dependency(%q<pg>.freeze, ["~> 1.0".freeze])
  s.add_development_dependency(%q<rss>.freeze, ["~> 0.2".freeze])
  s.add_development_dependency(%q<sequel>.freeze, ["~> 5.62".freeze])
  s.add_development_dependency(%q<sqlite3>.freeze, ["~> 1.3".freeze])
  s.add_development_dependency(%q<unidecode>.freeze, ["~> 1.0".freeze])
  s.add_development_dependency(%q<launchy>.freeze, ["~> 3.0".freeze])
end
