# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "jekyll-last-modified-at"
  s.version = "0.3.4"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Garen J. Torikian"]
  s.date = "2014-09-12"
  s.homepage = "https://github.com/gjtorikian/jekyll-last-modified-at"
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubygems_version = "2.0.14.1"
  s.summary = "A liquid tag for Jekyll to indicate the last time a file was modified."

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<jekyll>, [">= 0"])
      s.add_development_dependency(%q<rspec>, ["~> 2.13.0"])
      s.add_development_dependency(%q<rake>, [">= 0"])
      s.add_development_dependency(%q<spork>, [">= 0"])
    else
      s.add_dependency(%q<jekyll>, [">= 0"])
      s.add_dependency(%q<rspec>, ["~> 2.13.0"])
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<spork>, [">= 0"])
    end
  else
    s.add_dependency(%q<jekyll>, [">= 0"])
    s.add_dependency(%q<rspec>, ["~> 2.13.0"])
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<spork>, [">= 0"])
  end
end