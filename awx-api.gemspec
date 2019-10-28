# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'awx/api/version'

Gem::Specification.new do |spec|
  spec.name          = 'awx-api'
  spec.version       = Awx::Api::VERSION
  spec.authors       = ['Alexander Zagaynov']
  spec.email         = ['zalex80@gmail.com']

  spec.summary       = 'AWX (Ansible Tower) REST API client'
  spec.homepage      = 'http://github.com/AlexanderZagaynov/awx-api'
  spec.license       = 'MIT'

  spec.files         = Dir.chdir(File.expand_path __dir__) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end

  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~>  2.0'
  spec.add_development_dependency 'rspec',   '~>  3.0'
  spec.add_development_dependency 'rake',    '~> 12.0'

  spec.add_development_dependency 'rubocop'
  spec.add_development_dependency 'rubocop-rspec'
  spec.add_development_dependency 'rubocop-performance'
end
