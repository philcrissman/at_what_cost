
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "at_what_cost/version"

Gem::Specification.new do |spec|
  spec.name          = "at_what_cost"
  spec.version       = AtWhatCost::VERSION
  spec.authors       = ["Phil Crissman"]
  spec.email         = ["philcrissman@gmail.com"]

  spec.summary       = %q{Ask your procs the pressing question: at what cost?}
  spec.description   = %q{A spectre is haunting the Ruby community. The spectre of AT WHAT COST}
  spec.homepage      = "https://github.com/philcrissman/at_what_cost"
  spec.license       = "MIT"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "minitest", "~> 5.0"
end
