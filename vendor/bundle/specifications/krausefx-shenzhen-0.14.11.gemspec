# -*- encoding: utf-8 -*-
# stub: krausefx-shenzhen 0.14.11 ruby lib

Gem::Specification.new do |s|
  s.name = "krausefx-shenzhen".freeze
  s.version = "0.14.11"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Mattt Thompson".freeze]
  s.date = "2016-11-10"
  s.description = "CLI for Building & Distributing iOS Apps (.ipa Files)".freeze
  s.email = "m@mattt.me".freeze
  s.executables = ["krausefx-ipa".freeze]
  s.files = ["bin/krausefx-ipa".freeze]
  s.homepage = "http://nomad-cli.com".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "2.5.2".freeze
  s.summary = "Shenzhen".freeze

  s.installed_by_version = "2.5.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<commander>.freeze, ["< 5.0", ">= 4.3"])
      s.add_runtime_dependency(%q<highline>.freeze, [">= 1.7.2"])
      s.add_runtime_dependency(%q<terminal-table>.freeze, ["~> 1.4.5"])
      s.add_runtime_dependency(%q<json>.freeze, ["~> 1.8"])
      s.add_runtime_dependency(%q<faraday>.freeze, ["~> 0.9"])
      s.add_runtime_dependency(%q<faraday_middleware>.freeze, ["~> 0.9"])
      s.add_runtime_dependency(%q<dotenv>.freeze, [">= 0.7"])
      s.add_runtime_dependency(%q<net-sftp>.freeze, ["~> 2.1.2"])
      s.add_runtime_dependency(%q<plist>.freeze, ["< 4.0.0", ">= 3.1.0"])
      s.add_runtime_dependency(%q<rubyzip>.freeze, ["~> 1.1"])
      s.add_runtime_dependency(%q<security>.freeze, ["~> 0.1.3"])
      s.add_development_dependency(%q<rspec>.freeze, [">= 0"])
      s.add_development_dependency(%q<rake>.freeze, [">= 0"])
    else
      s.add_dependency(%q<commander>.freeze, ["< 5.0", ">= 4.3"])
      s.add_dependency(%q<highline>.freeze, [">= 1.7.2"])
      s.add_dependency(%q<terminal-table>.freeze, ["~> 1.4.5"])
      s.add_dependency(%q<json>.freeze, ["~> 1.8"])
      s.add_dependency(%q<faraday>.freeze, ["~> 0.9"])
      s.add_dependency(%q<faraday_middleware>.freeze, ["~> 0.9"])
      s.add_dependency(%q<dotenv>.freeze, [">= 0.7"])
      s.add_dependency(%q<net-sftp>.freeze, ["~> 2.1.2"])
      s.add_dependency(%q<plist>.freeze, ["< 4.0.0", ">= 3.1.0"])
      s.add_dependency(%q<rubyzip>.freeze, ["~> 1.1"])
      s.add_dependency(%q<security>.freeze, ["~> 0.1.3"])
      s.add_dependency(%q<rspec>.freeze, [">= 0"])
      s.add_dependency(%q<rake>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<commander>.freeze, ["< 5.0", ">= 4.3"])
    s.add_dependency(%q<highline>.freeze, [">= 1.7.2"])
    s.add_dependency(%q<terminal-table>.freeze, ["~> 1.4.5"])
    s.add_dependency(%q<json>.freeze, ["~> 1.8"])
    s.add_dependency(%q<faraday>.freeze, ["~> 0.9"])
    s.add_dependency(%q<faraday_middleware>.freeze, ["~> 0.9"])
    s.add_dependency(%q<dotenv>.freeze, [">= 0.7"])
    s.add_dependency(%q<net-sftp>.freeze, ["~> 2.1.2"])
    s.add_dependency(%q<plist>.freeze, ["< 4.0.0", ">= 3.1.0"])
    s.add_dependency(%q<rubyzip>.freeze, ["~> 1.1"])
    s.add_dependency(%q<security>.freeze, ["~> 0.1.3"])
    s.add_dependency(%q<rspec>.freeze, [">= 0"])
    s.add_dependency(%q<rake>.freeze, [">= 0"])
  end
end
