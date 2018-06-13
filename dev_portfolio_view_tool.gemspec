
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "dev_portfolio_view_tool/version"

Gem::Specification.new do |spec|
  spec.name          = "dev_portfolio_view_tool"
  spec.version       = DevPortfolioViewTool::VERSION
  spec.authors       = ["Ian Kigen"]
  spec.email         = ["ian.gabe.ian@gmail.com"]

  spec.summary       = %q{view specific methods}
  spec.description   = %q{Provides generated HTML data for rails application}
  spec.homepage      = "http://127.0.0.1:3000"
  spec.license       = "MIT"


  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
