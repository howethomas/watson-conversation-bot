# -*- encoding: utf-8 -*-
# stub: watson-conversation 1.0.6 ruby lib

Gem::Specification.new do |s|
  s.name = "watson-conversation".freeze
  s.version = "1.0.6"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["alpha.netzilla".freeze]
  s.bindir = "exe".freeze
  s.date = "2017-02-23"
  s.description = "Client library to use the IBM Watson Conversation service".freeze
  s.email = ["alpha.netzilla@gmail.com".freeze]
  s.homepage = "https://github.com/alpha-netzilla/watson-conversation.git".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "2.6.8".freeze
  s.summary = "Client library to use the IBM Watson Conversation service".freeze

  s.installed_by_version = "2.6.8" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<bundler>.freeze, ["~> 1.13"])
      s.add_development_dependency(%q<rake>.freeze, ["~> 10.0"])
      s.add_development_dependency(%q<rspec>.freeze, ["~> 3.0"])
      s.add_development_dependency(%q<rest-client>.freeze, ["~> 2.0"])
      s.add_development_dependency(%q<json>.freeze, ["~> 2.0"])
      s.add_development_dependency(%q<redis>.freeze, ["~> 3.3"])
    else
      s.add_dependency(%q<bundler>.freeze, ["~> 1.13"])
      s.add_dependency(%q<rake>.freeze, ["~> 10.0"])
      s.add_dependency(%q<rspec>.freeze, ["~> 3.0"])
      s.add_dependency(%q<rest-client>.freeze, ["~> 2.0"])
      s.add_dependency(%q<json>.freeze, ["~> 2.0"])
      s.add_dependency(%q<redis>.freeze, ["~> 3.3"])
    end
  else
    s.add_dependency(%q<bundler>.freeze, ["~> 1.13"])
    s.add_dependency(%q<rake>.freeze, ["~> 10.0"])
    s.add_dependency(%q<rspec>.freeze, ["~> 3.0"])
    s.add_dependency(%q<rest-client>.freeze, ["~> 2.0"])
    s.add_dependency(%q<json>.freeze, ["~> 2.0"])
    s.add_dependency(%q<redis>.freeze, ["~> 3.3"])
  end
end
