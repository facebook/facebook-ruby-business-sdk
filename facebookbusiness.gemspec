require './lib/facebook_ads/version'

Gem::Specification.new do |s|
  s.name        = 'facebookbusiness-shakr'
  s.version     = FacebookAds::VERSION
  s.summary     = 'Facebook Business API SDK for Ruby (Shakr Fork)'
  s.description = <<-DESC
  The unofficial Facebook Business API SDK for Ruby.
  https://developers.facebook.com/docs/marketing-api/sdks'
  DESC
  s.authors     = ['Shakr', 'Facebook']
  s.email       = ''
  s.homepage    =
    'https://github.com/shakrmedia/facebook-ruby-ads-sdk'
  s.license       = 'Nonstandard'

  s.required_ruby_version = '~> 2.0'

  s.add_dependency('faraday')
  s.add_dependency('json')

  s.add_development_dependency('rake')
  s.add_development_dependency('byebug')
  s.add_development_dependency('minitest', '>= 5.0.0')
  s.add_development_dependency('pry')
  s.add_development_dependency('pry-coolline')
  s.add_development_dependency('dotenv')
  s.add_development_dependency('awesome_print')
  s.add_development_dependency('rspec')
  s.add_development_dependency('bundler')
  s.add_development_dependency('rubocop')

  s.files = Dir['LICENSE.txt', 'README.md', 'lib/**/*', 'bin/*']
  s.executables = s.files.grep(%r{^bin/}).map { |f| File.basename(f) }
end
