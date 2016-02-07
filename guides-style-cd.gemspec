# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'guides_style_cd/version'

Gem::Specification.new do |s|
  s.name          = 'guides_style_cd'
  s.version       = GuidesStyleCD::VERSION
  s.authors       = ['Mike Bland']
  s.email         = ['michael.bland@gsa.gov']
  s.summary       = 'CD Guides Template style elements'
  s.description   = (
    'Provides consistent style elements for documents derived from the ' \
    '18F Guides Template (https://pages.18f.gov/guides-template/). ' \
    'The 18F Guides theme is based on ' \
    'DOCter (https://github.com/cfpb/docter/) from ' \
    'CFPB (http://cfpb.github.io/).'
  )
  s.homepage      = 'https://github.com/18F/guides-style'
  s.license       = 'CC0'

  s.files         = `git ls-files -z *.md lib assets`.split("\x0")
  s.executables   = s.files.grep(%r{^bin/}) { |f| File.basename f }

  s.add_runtime_dependency 'jekyll'
  s.add_runtime_dependency 'jekyll_pages_api'
  s.add_runtime_dependency 'jekyll_pages_api_search'
  s.add_runtime_dependency 'sass'
  s.add_runtime_dependency 'rouge'
  s.add_development_dependency 'rake'
  s.add_development_dependency 'minitest'
  s.add_development_dependency 'codeclimate-test-reporter'
  s.add_development_dependency 'coveralls'
  s.add_development_dependency 'bundler'
  s.add_development_dependency 'rubocop'
end
