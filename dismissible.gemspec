# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'dismissible/version'

Gem::Specification.new do |spec|
  spec.name          = "dismissible"
  spec.version       = Dismissible::VERSION
  spec.authors       = ["Damien Wilson"]
  spec.email         = ["damien@mindglob.com"]
  spec.description   = %q{An ActiveRecord extension that enables data to be hidden on a per-user basis}
  spec.summary       = %q{Create scopes for ActiveRecord that allow for easy, model-by-model visibility of records}
  spec.homepage      = "https://github.com/damien/dismissible"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "activerecord", "~> 3.2"
  spec.add_development_dependency "railties"
end
