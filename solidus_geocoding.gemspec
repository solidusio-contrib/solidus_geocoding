# frozen_string_literal: true

$:.push File.expand_path('lib', __dir__)
require 'solidus_geocoding/version'

Gem::Specification.new do |s|
  s.name        = 'solidus_geocoding'
  s.version     = SolidusGeocoding::VERSION
  s.summary     = 'Add geo-points to Spree::Address model.'
  s.description = s.description
  s.license     = 'BSD-3-Clause'

  s.author = 'Taylor Scott'
  s.email  = 't.skukx@gmail.com'

  s.files = Dir["{app,config,db,lib}/**/*", 'LICENSE', 'Rakefile', 'README.md']
  s.test_files = Dir['test/**/*']

  s.add_dependency 'deface'
  s.add_dependency 'geocoder'
  s.add_dependency 'solidus_core', ['>= 1.0', '< 3']
  s.add_dependency 'solidus_support'

  s.add_development_dependency 'coffee-rails'
  s.add_development_dependency 'sass-rails'
  s.add_development_dependency 'solidus_extension_dev_tools'
end
