lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'facebook_account_kit_rails/version'

Gem::Specification.new do |spec|
  spec.name                  = 'facebook_account_kit_rails'
  spec.version               = FBAccountKit::VERSION
  spec.authors               = ['Alpha']
  spec.email                 = ['alphanolucifer@gmail.com']
  spec.summary               = 'Facebook\'s Account Kit for Rails'
  spec.description           = 'Facebook\'s Account Kit for Rails'
  spec.licenses              = ['MIT']
  spec.files                 = Dir['{lib/**/*,[A-Z]*}']
  spec.required_ruby_version = '>= 2.3'
end
