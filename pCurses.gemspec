# frozen_string_literal: true

require_relative 'lib/pCurses/version'

Gem::Specification.new do |spec|
  spec.name          = 'pCurses'
  spec.version       = '0.1.0'
  spec.authors       = ['Pixelated Studios']
  spec.email         = ['support@pixelatedstudios.net']

  spec.summary       = 'Drop-in extension for Curses library providing high-level functionality'
  spec.description   = 'pCurses is a drop-in extension for the Curses library that provides more high-level, pre-built'\
                       'functionality like alerts, color patterns, etc.'
  spec.homepage      = 'https://github.com/Pixelated-Studios/pCurses-Ruby'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']
  spec.required_ruby_version = '3.2.2'

  spec.add_dependency 'curses', '~> 1.0'
end
