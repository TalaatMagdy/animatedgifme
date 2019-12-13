lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'animatedgifme/version'

Gem::Specification.new do |spec|
  spec.name          = 'animatedgifme'
  spec.version       = Animatedgifme::VERSION
  spec.authors       = ['TalaatMagdy']
  spec.email         = ['talaatmagdy75@gmail.com']

  spec.summary       = %q(A ruby Library for http://animatedgif.me)
  spec.description   = %q(A ruby Library for http://animatedgif.me)
  spec.homepage      = ""
  spec.license       = 'MIT'

  # spec.metadata['allowed_push_host'] = ""

  # spec.metadata['homepage_uri'] = spec.homepage
  # spec.metadata['source_code_uri'] = ""
  # spec.metadata['changelog_uri'] = ""

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 2.0'
  spec.add_development_dependency 'minitest', '~> 5.0'
  spec.add_development_dependency 'rake', '~> 10.0'

  spec.add_dependency 'httparty', '0.13.7'

end
