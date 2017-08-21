# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'flg/version'

Gem::Specification.new do |spec|
  spec.name          = "flg"
  spec.version       = Flg::VERSION
  spec.authors       = ["mj"]
  spec.email         = ["tywf91@gmail.com"]

  spec.summary       = %q{simple custom generator}
  spec.description   = %q{simple custom generator}
  spec.homepage      = "http://www.oxo.ooo"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "bin"
  spec.executables   = ["flg"]
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_dependency "tty"
  spec.add_dependency "gli"
end
