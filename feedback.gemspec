$:.push File.expand_path("lib", __dir__)

# Maintain your gem's version:
require "feedback/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |spec|
  spec.name        = "feedback"
  spec.version     = Feedback::VERSION
  spec.authors     = ["Jonathan Loos"]
  spec.email       = ["jonathanloos97@gmail.com"]
  spec.homepage    = "https://github.com/jonathanloos/rails-humble-IT"
  spec.summary     = "A simple ticketing system to bridge the gap between user and tech support."
  spec.description = "Humble IT is the practice of putting your users needs first and maintaining a healthy community within your application. While not a full Jira replacement, this gem provides the baseline flow to manage tickets submitted by users."
  spec.license     = "MIT"
  spec.require_paths = ["lib"]

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  # if spec.respond_to?(:metadata)
  #   spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
  # else
  #   raise "RubyGems 2.0 or newer is required to protect against " \
  #     "public gem pushes."
  # end

  spec.files = Dir["{app,config,db,lib}/**/*", "LICENSE", "Rakefile", "README.md"]

  spec.add_dependency "rails", "~> 6.1.4", ">= 6.1.4"

  spec.add_development_dependency "pg"
end
