# -*- encoding: utf-8 -*-
# stub: pilot 1.12.1 ruby lib

Gem::Specification.new do |s|
  s.name = "pilot".freeze
  s.version = "1.12.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Felix Krause".freeze]
  s.date = "2016-11-17"
  s.description = "The best way to manage your TestFlight testers and builds from your terminal".freeze
  s.email = ["pilot@krausefx.com".freeze]
  s.executables = ["pilot".freeze]
  s.files = ["bin/pilot".freeze]
  s.homepage = "https://fastlane.tools".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.0.0".freeze)
  s.rubygems_version = "2.5.2".freeze
  s.summary = "The best way to manage your TestFlight testers and builds from your terminal".freeze

  s.installed_by_version = "2.5.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<fastlane_core>.freeze, ["< 1.0.0", ">= 0.56.0"])
      s.add_runtime_dependency(%q<spaceship>.freeze, ["< 1.0.0", ">= 0.37.0"])
      s.add_runtime_dependency(%q<credentials_manager>.freeze, [">= 0.16.0"])
      s.add_runtime_dependency(%q<terminal-table>.freeze, ["< 2.0.0", ">= 1.4.5"])
      s.add_development_dependency(%q<bundler>.freeze, [">= 0"])
      s.add_development_dependency(%q<rake>.freeze, [">= 0"])
      s.add_development_dependency(%q<rspec>.freeze, ["~> 3.1.0"])
      s.add_development_dependency(%q<rspec_junit_formatter>.freeze, ["~> 0.2.3"])
      s.add_development_dependency(%q<pry>.freeze, [">= 0"])
      s.add_development_dependency(%q<yard>.freeze, ["~> 0.8.7.4"])
      s.add_development_dependency(%q<webmock>.freeze, ["~> 1.19.0"])
      s.add_development_dependency(%q<coveralls>.freeze, [">= 0"])
      s.add_development_dependency(%q<fastlane>.freeze, [">= 0"])
      s.add_development_dependency(%q<rubocop>.freeze, ["~> 0.44.0"])
    else
      s.add_dependency(%q<fastlane_core>.freeze, ["< 1.0.0", ">= 0.56.0"])
      s.add_dependency(%q<spaceship>.freeze, ["< 1.0.0", ">= 0.37.0"])
      s.add_dependency(%q<credentials_manager>.freeze, [">= 0.16.0"])
      s.add_dependency(%q<terminal-table>.freeze, ["< 2.0.0", ">= 1.4.5"])
      s.add_dependency(%q<bundler>.freeze, [">= 0"])
      s.add_dependency(%q<rake>.freeze, [">= 0"])
      s.add_dependency(%q<rspec>.freeze, ["~> 3.1.0"])
      s.add_dependency(%q<rspec_junit_formatter>.freeze, ["~> 0.2.3"])
      s.add_dependency(%q<pry>.freeze, [">= 0"])
      s.add_dependency(%q<yard>.freeze, ["~> 0.8.7.4"])
      s.add_dependency(%q<webmock>.freeze, ["~> 1.19.0"])
      s.add_dependency(%q<coveralls>.freeze, [">= 0"])
      s.add_dependency(%q<fastlane>.freeze, [">= 0"])
      s.add_dependency(%q<rubocop>.freeze, ["~> 0.44.0"])
    end
  else
    s.add_dependency(%q<fastlane_core>.freeze, ["< 1.0.0", ">= 0.56.0"])
    s.add_dependency(%q<spaceship>.freeze, ["< 1.0.0", ">= 0.37.0"])
    s.add_dependency(%q<credentials_manager>.freeze, [">= 0.16.0"])
    s.add_dependency(%q<terminal-table>.freeze, ["< 2.0.0", ">= 1.4.5"])
    s.add_dependency(%q<bundler>.freeze, [">= 0"])
    s.add_dependency(%q<rake>.freeze, [">= 0"])
    s.add_dependency(%q<rspec>.freeze, ["~> 3.1.0"])
    s.add_dependency(%q<rspec_junit_formatter>.freeze, ["~> 0.2.3"])
    s.add_dependency(%q<pry>.freeze, [">= 0"])
    s.add_dependency(%q<yard>.freeze, ["~> 0.8.7.4"])
    s.add_dependency(%q<webmock>.freeze, ["~> 1.19.0"])
    s.add_dependency(%q<coveralls>.freeze, [">= 0"])
    s.add_dependency(%q<fastlane>.freeze, [">= 0"])
    s.add_dependency(%q<rubocop>.freeze, ["~> 0.44.0"])
  end
end
