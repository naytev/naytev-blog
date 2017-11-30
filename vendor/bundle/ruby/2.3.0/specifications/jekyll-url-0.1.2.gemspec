# -*- encoding: utf-8 -*-
# stub: jekyll-url 0.1.2 ruby lib

Gem::Specification.new do |s|
  s.name = "jekyll-url"
  s.version = "0.1.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Michael Seid"]
  s.bindir = "exe"
  s.date = "2016-06-21"
  s.description = ""
  s.email = ["mbseid@gmail.com"]
  s.homepage = "https://github.com/naytev/jms"
  s.rubygems_version = "2.5.1"
  s.summary = "Given Jekyll, Respond with URL"

  s.installed_by_version = "2.5.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<bundler>, ["~> 1.10"])
      s.add_development_dependency(%q<rake>, ["~> 10.0"])
      s.add_development_dependency(%q<rspec>, [">= 0"])
    else
      s.add_dependency(%q<bundler>, ["~> 1.10"])
      s.add_dependency(%q<rake>, ["~> 10.0"])
      s.add_dependency(%q<rspec>, [">= 0"])
    end
  else
    s.add_dependency(%q<bundler>, ["~> 1.10"])
    s.add_dependency(%q<rake>, ["~> 10.0"])
    s.add_dependency(%q<rspec>, [">= 0"])
  end
end
