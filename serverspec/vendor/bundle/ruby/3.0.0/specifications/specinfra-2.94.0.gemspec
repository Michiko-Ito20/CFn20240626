# -*- encoding: utf-8 -*-
# stub: specinfra 2.94.0 ruby lib

Gem::Specification.new do |s|
  s.name = "specinfra".freeze
  s.version = "2.94.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Gosuke Miyashita".freeze]
  s.date = "2025-04-26"
  s.description = "Common layer for serverspec and itamae".freeze
  s.email = ["gosukenator@gmail.com".freeze]
  s.homepage = "https://github.com/mizzy/specinfra".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "3.2.33".freeze
  s.summary = "Common layer for serverspec and itamae".freeze

  s.installed_by_version = "3.2.33" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_runtime_dependency(%q<base64>.freeze, [">= 0"])
    s.add_runtime_dependency(%q<net-scp>.freeze, [">= 0"])
    s.add_runtime_dependency(%q<net-ssh>.freeze, [">= 2.7"])
    s.add_runtime_dependency(%q<net-telnet>.freeze, [">= 0"])
    s.add_runtime_dependency(%q<sfl>.freeze, [">= 0"])
    s.add_development_dependency(%q<rake>.freeze, [">= 0"])
    s.add_development_dependency(%q<rspec>.freeze, [">= 0"])
    s.add_development_dependency(%q<rspec-its>.freeze, [">= 0"])
  else
    s.add_dependency(%q<base64>.freeze, [">= 0"])
    s.add_dependency(%q<net-scp>.freeze, [">= 0"])
    s.add_dependency(%q<net-ssh>.freeze, [">= 2.7"])
    s.add_dependency(%q<net-telnet>.freeze, [">= 0"])
    s.add_dependency(%q<sfl>.freeze, [">= 0"])
    s.add_dependency(%q<rake>.freeze, [">= 0"])
    s.add_dependency(%q<rspec>.freeze, [">= 0"])
    s.add_dependency(%q<rspec-its>.freeze, [">= 0"])
  end
end
