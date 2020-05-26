require_relative 'lib/locomotive/common/version'

Gem::Specification.new do |spec|
  spec.name          = 'locomotivecms_common'
  spec.version       = Locomotive::Common::VERSION
  spec.authors       = ['Didier Lafforgue', 'Arnaud Sellenet', 'Joel Azemar']
  spec.email         = ['didier@nocoffee.fr', 'arnaud@sellenet.fr', 'joel.azemar@gmail.com']
  spec.description   = %q{The LocomotiveCMS Common is a shared libraries package}
  spec.summary       = %q{The LocomotiveCMS Common is a shared libraries package for all LocomotiveCMS dependencies}
  spec.homepage      = 'http://www.locomotivecms.com'
  spec.homepage      = 'https://github.com/locomotivecms/common'
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'rake',       '~> 13.0.1'

  spec.add_dependency 'activesupport',          '>= 5.1.5', '< 7.0'
  spec.add_dependency 'stringex',               '~> 2.8.2'
  spec.add_dependency 'attr_extras',            '~> 5.2.0'
  spec.add_dependency 'colorize'

  spec.required_ruby_version = '~> 2.0'
end
