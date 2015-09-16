require_relative 'lib/locomotive/common/version'

Gem::Specification.new do |spec|
  spec.name          = 'locomotivecms_common'
  spec.version       = Locomotive::Common::VERSION
  spec.authors       = ['Didier Lafforgue', 'Arnaud Sellenet', 'Joel Azemar']
  spec.email         = ['did@locomotivecms.com', 'arnaud@sellenet.fr', 'joel.azemar@gmail.com']
  spec.description   = %q{The LocomotiveCMS Common is a shared libraries package}
  spec.summary       = %q{The LocomotiveCMS Common is a shared libraries package for all LocomotiveCMS dependencies}
  spec.homepage      = 'http://www.locomotivecms.com'
  spec.homepage      = 'https://github.com/locomotivecms/common'
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler',    '~> 1.5'
  spec.add_development_dependency 'rake',       '~> 10.1'

  spec.add_dependency 'activesupport',          '~> 4.2.1'
  spec.add_dependency 'stringex',               '~> 2.5.2'
  spec.add_dependency 'attr_extras',            '~> 4.4.0'
  spec.add_dependency 'colorize'

  spec.required_ruby_version = '~> 2.0'
end
