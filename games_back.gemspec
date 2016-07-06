# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'games_back/version'

Gem::Specification.new do |spec|
  spec.name          = "games_back"
  spec.version       = GamesBack::VERSION
  spec.authors       = ["Jared Norman"]
  spec.email         = ["jared@creepywizard.com"]

  spec.summary       = %q{Computes games behind statistics.}
  spec.description   = %q{Computes games behind statistics.}
  spec.homepage      = "https://github.com/porkchopclub/games_back"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
end
