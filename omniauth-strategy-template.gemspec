# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "omniauth-strategy-template/version"

Gem::Specification.new do |s|
  s.name        = "omniauth-strategy-template"
  s.version     = OmniAuth::Template::VERSION
  s.authors     = ["Takashi Matsuno"]
  s.email       = ["g0n5uk3@gmail.com"]
  s.homepage    = "https://github.com/gonsuke/omniauth-strategy-template"
  s.description = %q{OmniAuth strategy template}
  s.summary     = s.description
  s.license     = "MIT"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
  s.required_ruby_version = Gem::Requirement.new('>= 1.9.3')
  s.add_dependency 'omniauth-oauth', '~> 1.1'
  s.add_dependency 'rack'
  s.add_development_dependency 'bundler', '~> 1.0'
end
