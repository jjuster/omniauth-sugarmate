# -*- encoding: utf-8 -*-
require File.expand_path('../lib/omniauth-sugarmate/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Wild Village LLC"]
  gem.email         = ["josh@wildvillage.com"]
  gem.description   = %q{OmniAuth strategy for Sugarmate.}
  gem.summary       = %q{ OmniAuth strategy for Sugarmate.}
  gem.homepage      = "https://sugarmate.io"
  gem.license       = "MIT"

  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.name          = "omniauth-sugarmate"
  gem.require_paths = ["lib"]
  gem.version       = OmniAuth::Sugarmate::VERSION

  gem.add_dependency 'omniauth', '~> 1.4.0'
  gem.add_dependency 'omniauth-oauth2', '>= 1.4.0', '< 2.0'
  gem.add_development_dependency 'rspec', '~> 3.5'
  gem.add_development_dependency 'rack-test'
  gem.add_development_dependency 'simplecov'
  gem.add_development_dependency 'webmock'
end
