lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "pb/serializer/version"

Gem::Specification.new do |spec|
  spec.name          = "pb-serializer"
  spec.version       = Pb::Serializer::VERSION
  spec.authors       = ["izumin5210"]
  spec.email         = ["m@izum.in"]

  spec.summary       = %q{Serialize objects into Protocol Buffers messages}
  spec.description   = spec.summary
  spec.homepage      = "https://github.com/izumin5210/pb-serializer"
  spec.license       = "MIT"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage
  spec.metadata["changelog_uri"] = spec.homepage

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  rails_versions = ['>= 5.2', '< 6.1']
  spec.add_runtime_dependency "google-protobuf", "~> 3.0"

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "onkcop", "~> 0.53"
  spec.add_development_dependency "activerecord", rails_versions
  spec.add_development_dependency "sqlite3", "~> 1.4"
end
