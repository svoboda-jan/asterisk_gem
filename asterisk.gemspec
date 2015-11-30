# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'asterisk/version'

Gem::Specification.new do |spec|
  spec.name          = "asterisk"
  spec.version       = Asterisk::VERSION
  spec.authors       = ["Jan Svoboda"]
  spec.email         = ["jan@mluv.cz"]

  spec.summary       = %q{This gem is a shorthand for installing Asterisk ARI Client library for Ruby.}
  spec.description   = %q{This gem is a shorthand for installing Asterisk ARI Client library for Ruby.}
  spec.homepage      = "https://github.com/svoboda-jan/asterisk-ari"
  spec.post_install_message = "\n******************************************************************\n*                                                                *\n*                     ! ! ! WARNING ! ! !                        *\n*                                                                *\n* Welcome to The Exciting World of Telecommunications and Ruby ! *\n*                                                                *\n******************************************************************\n\n"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "asterisk-ari-client"
end
