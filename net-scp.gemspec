
require_relative 'lib/net/scp/version'

Gem::Specification.new do |spec|
  spec.name          = "net-scp-chef"
  spec.version       = Net::SCP::Version::STRING
  spec.authors       = ["Chef Software, Inc."]
  spec.email         = ["info@chef.io"]

  spec.summary       = %q{A fork of the net-scp gem that allows for the latest net-ssh gem as a dependency.}
  spec.description   = %q{A fork of the net-scp gem that allows for the latest net-ssh gem as a dependency.}
  spec.homepage      = "https://github.com/chef/net-scp-chef"
  spec.license       = "MIT"

  spec.extra_rdoc_files = [
    "LICENSE.txt",
    "README.rdoc"
  ]

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.required_ruby_version = ">= 2.3"

  spec.add_runtime_dependency(%q<net-ssh>, [">= 2.6.5", "< 6.0.0"])
  spec.add_development_dependency(%q<test-unit>, [">= 0"])
  spec.add_development_dependency(%q<mocha>, [">= 0"])

end
