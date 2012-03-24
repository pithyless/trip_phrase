# -*- encoding: utf-8 -*-
require File.expand_path('../lib/trip_phrase/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Norbert Wojtowicz"]
  gem.email         = ["wojtowicz.norbert@gmail.com"]
  gem.description   = "A more memorable, fun, and useful variant of the tripcode."
  gem.summary       = gem.description
  gem.homepage      = "https://github.com/pithyless/trip_phrase"
  gem.license       = "UNLICENSE"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "trip_phrase"
  gem.require_paths = ["lib"]
  gem.version       = TripPhrase::VERSION
end
