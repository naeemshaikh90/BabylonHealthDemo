# -*- encoding: utf-8 -*-
# stub: credentials_manager 0.16.4 ruby lib

Gem::Specification.new do |s|
  s.name = "credentials_manager".freeze
  s.version = "0.16.4"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Felix Krause".freeze]
  s.date = "2016-12-20"
  s.description = "Password manager used in fastlane.tools".freeze
  s.email = ["fastlane@krausefx.com".freeze]
  s.executables = ["fastlane-credentials".freeze]
  s.files = ["bin/fastlane-credentials".freeze]
  s.homepage = "https://fastlane.tools".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.0.0".freeze)
  s.rubygems_version = "2.5.2".freeze
  s.summary = "Password manager used in fastlane.tools".freeze

  s.installed_by_version = "2.5.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<colored>.freeze, [">= 0"])
      s.add_runtime_dependency(%q<commander>.freeze, [">= 4.3.5"])
      s.add_runtime_dependency(%q<highline>.freeze, [">= 1.7.1"])
      s.add_runtime_dependency(%q<security>.freeze, [">= 0"])
      s.add_development_dependency(%q<bundler>.freeze, [">= 0"])
      s.add_development_dependency(%q<rake>.freeze, ["< 12"])
      s.add_development_dependency(%q<pry>.freeze, [">= 0"])
      s.add_development_dependency(%q<rspec>.freeze, ["~> 3.1.0"])
      s.add_development_dependency(%q<rspec_junit_formatter>.freeze, ["~> 0.2.3"])
      s.add_development_dependency(%q<webmock>.freeze, ["~> 1.19.0"])
      s.add_development_dependency(%q<coveralls>.freeze, [">= 0"])
      s.add_development_dependency(%q<fastlane>.freeze, [">= 0"])
      s.add_development_dependency(%q<rubocop>.freeze, ["~> 0.44.0"])
    else
      s.add_dependency(%q<colored>.freeze, [">= 0"])
      s.add_dependency(%q<commander>.freeze, [">= 4.3.5"])
      s.add_dependency(%q<highline>.freeze, [">= 1.7.1"])
      s.add_dependency(%q<security>.freeze, [">= 0"])
      s.add_dependency(%q<bundler>.freeze, [">= 0"])
      s.add_dependency(%q<rake>.freeze, ["< 12"])
      s.add_dependency(%q<pry>.freeze, [">= 0"])
      s.add_dependency(%q<rspec>.freeze, ["~> 3.1.0"])
      s.add_dependency(%q<rspec_junit_formatter>.freeze, ["~> 0.2.3"])
      s.add_dependency(%q<webmock>.freeze, ["~> 1.19.0"])
      s.add_dependency(%q<coveralls>.freeze, [">= 0"])
      s.add_dependency(%q<fastlane>.freeze, [">= 0"])
      s.add_dependency(%q<rubocop>.freeze, ["~> 0.44.0"])
    end
  else
    s.add_dependency(%q<colored>.freeze, [">= 0"])
    s.add_dependency(%q<commander>.freeze, [">= 4.3.5"])
    s.add_dependency(%q<highline>.freeze, [">= 1.7.1"])
    s.add_dependency(%q<security>.freeze, [">= 0"])
    s.add_dependency(%q<bundler>.freeze, [">= 0"])
    s.add_dependency(%q<rake>.freeze, ["< 12"])
    s.add_dependency(%q<pry>.freeze, [">= 0"])
    s.add_dependency(%q<rspec>.freeze, ["~> 3.1.0"])
    s.add_dependency(%q<rspec_junit_formatter>.freeze, ["~> 0.2.3"])
    s.add_dependency(%q<webmock>.freeze, ["~> 1.19.0"])
    s.add_dependency(%q<coveralls>.freeze, [">= 0"])
    s.add_dependency(%q<fastlane>.freeze, [">= 0"])
    s.add_dependency(%q<rubocop>.freeze, ["~> 0.44.0"])
  end
end
