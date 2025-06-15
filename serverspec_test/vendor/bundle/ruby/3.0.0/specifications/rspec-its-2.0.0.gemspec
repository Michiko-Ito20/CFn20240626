# -*- encoding: utf-8 -*-
# stub: rspec-its 2.0.0 ruby lib

Gem::Specification.new do |s|
  s.name = "rspec-its".freeze
  s.version = "2.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.metadata = { "bug_tracker_uri" => "https://github.com/rspec/rspec-its/issues", "changelog_uri" => "https://github.com/rspec/rspec-its/blob/v2.0.0/Changelog.md", "documentation_uri" => "https://www.rubydoc.info/gems/rspec-its/2.0.0", "mailing_list_uri" => "https://groups.google.com/forum/#!forum/rspec", "rubygems_mfa_required" => "true", "source_code_uri" => "https://github.com/rspec/rspec-its" } if s.respond_to? :metadata=
  s.require_paths = ["lib".freeze]
  s.authors = ["The RSpec Development Team".freeze]
  s.date = "2024-11-04"
  s.description = "RSpec extension gem for attribute matching".freeze
  s.email = ["maintainers@rspec.info".freeze]
  s.homepage = "https://github.com/rspec/rspec-its".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new("> 3.0.0".freeze)
  s.rubygems_version = "3.2.33".freeze
  s.summary = "Provides \"its\" method formerly part of rspec-core".freeze

  s.installed_by_version = "3.2.33" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_runtime_dependency(%q<rspec-core>.freeze, [">= 3.13.0"])
    s.add_runtime_dependency(%q<rspec-expectations>.freeze, [">= 3.13.0"])
  else
    s.add_dependency(%q<rspec-core>.freeze, [">= 3.13.0"])
    s.add_dependency(%q<rspec-expectations>.freeze, [">= 3.13.0"])
  end
end
