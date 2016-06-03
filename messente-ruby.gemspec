# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'messente-ruby/version'

Gem::Specification.new do |spec|
  spec.name          = "messente-ruby"
  spec.version       = Messente::VERSION
  spec.platform      = Gem::Platform::RUBY
  spec.authors       = ["Vjatseslav Gedrovits"]
  spec.email         = ["vjatseslav.gedrovits@gmail.com"]

  spec.summary       = %q{Messente.com API wrapper for Ruby}
  spec.description   = spec.summary
  spec.homepage      = "https://gitlab.com/Gedrovits/messente-ruby"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  # spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  # spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
  spec.add_development_dependency "webmock"
end
