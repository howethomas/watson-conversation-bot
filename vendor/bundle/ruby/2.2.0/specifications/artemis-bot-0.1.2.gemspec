# -*- encoding: utf-8 -*-
# stub: artemis-bot 0.1.2 ruby lib

Gem::Specification.new do |s|
  s.name = "artemis-bot".freeze
  s.version = "0.1.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Walter Reyes".freeze]
  s.bindir = "exe".freeze
  s.date = "2016-11-24"
  s.description = " A Ruby wrapper for the Watson Conversation Service".freeze
  s.email = ["wal@icalialabs.com".freeze]
  s.homepage = "https://github.com/IcaliaLabs/artemis".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "2.6.8".freeze
  s.summary = "Watson Conversation in Ruby".freeze

  s.installed_by_version = "2.6.8" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<httparty>.freeze, ["~> 0.14.0"])
      s.add_runtime_dependency(%q<httmultiparty>.freeze, ["~> 0.3.16"])
      s.add_runtime_dependency(%q<activesupport>.freeze, ["~> 4.0"])
      s.add_runtime_dependency(%q<olimpo>.freeze, ["~> 0.1.0"])
      s.add_development_dependency(%q<bundler>.freeze, ["~> 1.12"])
      s.add_development_dependency(%q<rake>.freeze, ["~> 10.0"])
      s.add_development_dependency(%q<rspec>.freeze, ["~> 3.0"])
    else
      s.add_dependency(%q<httparty>.freeze, ["~> 0.14.0"])
      s.add_dependency(%q<httmultiparty>.freeze, ["~> 0.3.16"])
      s.add_dependency(%q<activesupport>.freeze, ["~> 4.0"])
      s.add_dependency(%q<olimpo>.freeze, ["~> 0.1.0"])
      s.add_dependency(%q<bundler>.freeze, ["~> 1.12"])
      s.add_dependency(%q<rake>.freeze, ["~> 10.0"])
      s.add_dependency(%q<rspec>.freeze, ["~> 3.0"])
    end
  else
    s.add_dependency(%q<httparty>.freeze, ["~> 0.14.0"])
    s.add_dependency(%q<httmultiparty>.freeze, ["~> 0.3.16"])
    s.add_dependency(%q<activesupport>.freeze, ["~> 4.0"])
    s.add_dependency(%q<olimpo>.freeze, ["~> 0.1.0"])
    s.add_dependency(%q<bundler>.freeze, ["~> 1.12"])
    s.add_dependency(%q<rake>.freeze, ["~> 10.0"])
    s.add_dependency(%q<rspec>.freeze, ["~> 3.0"])
  end
end
