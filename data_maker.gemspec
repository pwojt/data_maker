lib = File.expand_path('../lib/', __FILE__)
$:.unshift lib unless $:.include?(lib)

require 'data_maker'

Gem::Specification.new do |gem|
  gem.name = 'data_maker'
  gem.version = DataMaker::VERSION
  gem.platform = Gem::Platform::RUBY
  gem.authors = 'Kareem Gan'
  gem.email = 'kareemgan@gmail.com'
  gem.summary = 'Data generator gem for aiding in development and testing for applications.'
  gem.homepage = 'https://github.com/magicalbanana/data_maker'
  gem.license = 'MIT'

  gem.description = <<-EOT
   Data generation using yml files from different sources. This was originally forked from faker and ffaker gem
   respecetively.
  EOT

  gem.extra_rdoc_files = ['README.md']
  # gem.bindir = 'bin'
  # gem.executables << 'data_maker-console'

  gem.add_development_dependency 'simplecov', '~> 0.8.2', '>= 0.8.2'
  gem.add_development_dependency 'coveralls', '~> 0.7.0', '>= 0.7.0' 
  gem.add_development_dependency 'rake', '10.1.1', '>= 10.1.1'
  gem.add_development_dependency 'rspec', '~> 3.1.0', '>= 3.1.0'
  gem.add_development_dependency 'pry-byebug', '~> 3.1.0', '>= 3.1.0'
  gem.add_development_dependency 'pry-rescue', '~> 1.4.1', '>= 1.4.1'
  gem.add_development_dependency 'pry-stack_explorer', '~> 0.4.9.1', '>= 0.4.9.1'

  gem.add_runtime_dependency 'pry', '~> 0.10.1', '>= 0.10.1'

  gem.post_install_message = "To test out the generator execute command data_maker-console"

  gem.required_ruby_version = '>= 1.9.3'

  gem.require_path = 'lib'
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")

  # = MANIFEST =
  gem.files = %w[
    Gemfile
    LICENSE
    README.md
    Rakefile
    data_maker.gemspec
    lib/data_maker.rb
    lib/data_maker/china/phone_number.rb
    lib/data_maker/data/china/phone_number/landline_phone_prefixes
    lib/data_maker/data/china/phone_number/mobile_phone_prefixes
    lib/data_maker/utilities/array_utilities.rb
    lib/data_maker/utilities/module_utilities.rb
    lib/data_maker/validators/chinese_phone_number.rb
    spec/lib/data_maker/china/phone_number_spec.rb
    spec/lib/data_maker/data_maker_spec.rb
    spec/lib/data_maker/support/matchers/phone_number_matcher.rb
    spec/lib/data_maker/utilities/array_utilities_spec.rb
    spec/lib/data_maker/utilities/module_utilities_spec.rb
    spec/spec_helper.rb
  ]
  # = MANIFEST =
end