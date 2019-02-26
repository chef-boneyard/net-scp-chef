
require_relative 'lib/net/scp/version'

Gem::Specification.new do |spec|
  spec.name          = "net-scp"
  spec.version       = Net::SCP::Version::STRING
  spec.authors       = ["Jamis Buck", "Delano Mandelbaum", "Mikl\u{f3}s Fazekas"]
  spec.email         = ["net-ssh@solutious.com"]

  spec.summary       = %q{A pure Ruby implementation of the SCP client protocol.}
  spec.description   = %q{A pure Ruby implementation of the SCP client protocol}
  spec.homepage      = "https://github.com/net-ssh/net-scp"
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
