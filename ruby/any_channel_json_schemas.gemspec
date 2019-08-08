Gem::Specification.new do |gem|
  gem.authors       = ['JaredShay']
  gem.email         = ['jshay@zendesk.com']
  gem.description   = %q{JSON schema files for the Zendesk Channels Framework.}
  gem.summary       = %q{JSON schema files for the Zendesk Channels Framework.}
  gem.homepage      = 'https://github.com/zendesk/any_channel_json_schemas/ruby'

  gem.files         = %w{lib/any_channel_json_schemas.rb README.md} + Dir.glob('json_schemas/*')
  gem.test_files    = `git ls-files -- spec/*`.split("\n")
  gem.name          = 'any_channel_json_schemas'
  gem.require_paths = ['lib']
  gem.version       = '0.13.0'
  gem.license       = 'Apache-2.0'
end
