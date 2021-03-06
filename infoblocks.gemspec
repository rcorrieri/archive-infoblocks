# Ensure we require the local version and not one we might have installed already
require File.join([File.dirname(__FILE__),'lib','infoblocks','version.rb'])
spec = Gem::Specification.new do |s| 
  s.name = 'infoblocks'
  s.version = Infoblocks::VERSION
  s.author = 'Sam Rees'
  s.email = 'srees@enova.com'
  s.homepage = 'https://github.com/samrees/infoblocks'
  s.licenses = ['MIT']
  s.platform = Gem::Platform::RUBY
  s.summary = 'CLI Interface into Infoblox'
  s.description = 'A frontend built in GLI that uses the Infoblox gem to make WAPI calls against any infoblox device.'
  s.files = `git ls-files`.split("
")
  s.require_paths << 'lib'
  s.has_rdoc = true
  s.extra_rdoc_files = ['README.rdoc','infoblocks.rdoc']
  s.rdoc_options << '--title' << 'infoblocks' << '--main' << 'README.rdoc' << '-ri'
  s.bindir = 'bin'
  s.executables << 'infoblocks'
  s.add_development_dependency('rake')
  s.add_development_dependency('rdoc')
  s.add_development_dependency('aruba')
  s.add_runtime_dependency('gli','2.9.0')
  s.add_runtime_dependency('infoblox','0.2.11')
  s.add_runtime_dependency('highline','1.6.21')
end
