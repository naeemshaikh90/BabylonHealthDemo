# -*- encoding: utf-8 -*-
# stub: gym 1.12.1 ruby lib

Gem::Specification.new do |s|
  s.name = "gym".freeze
  s.version = "1.12.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Felix Krause".freeze]
  s.date = "2016-11-21"
  s.description = "Building your iOS apps has never been easier".freeze
  s.email = ["gym@krausefx.com".freeze]
  s.executables = ["gym".freeze, "\u{1f4aa}".freeze]
  s.files = ["bin/gym".freeze, "bin/\u{1f4aa}".freeze]
  s.homepage = "https://fastlane.tools".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.0.0".freeze)
  s.rubygems_version = "2.5.2".freeze
  s.summary = "Building your iOS apps has never been easier".freeze

  s.installed_by_version = "2.5.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<fastlane_core>.freeze, ["< 1.0.0", ">= 0.57.0"])
      s.add_runtime_dependency(%q<xcpretty>.freeze, ["< 1.0.0", ">= 0.2.4"])
      s.add_runtime_dependency(%q<terminal-table>.freeze, ["< 2.0.0", ">= 1.4.5"])
      s.add_runtime_dependency(%q<plist>.freeze, ["< 4.0.0", ">= 3.1.0"])
      s.add_runtime_dependency(%q<rubyzip>.freeze, [">= 1.1.7"])
      s.add_development_dependency(%q<bundler>.freeze, [">= 0"])
      s.add_development_dependency(%q<fastlane>.freeze, [">= 1.33.0"])
      s.add_development_dependency(%q<rake>.freeze, [">= 0"])
      s.add_development_dependency(%q<rspec>.freeze, ["~> 3.1.0"])
      s.add_development_dependency(%q<rspec_junit_formatter>.freeze, ["~> 0.2.3"])
      s.add_development_dependency(%q<pry>.freeze, [">= 0"])
      s.add_development_dependency(%q<yard>.freeze, ["~> 0.8.7.4"])
      s.add_development_dependency(%q<webmock>.freeze, ["~> 1.19.0"])
      s.add_development_dependency(%q<coveralls>.freeze, [">= 0"])
      s.add_development_dependency(%q<rubocop>.freeze, ["~> 0.44.0"])
    else
      s.add_dependency(%q<fastlane_core>.freeze, ["< 1.0.0", ">= 0.57.0"])
      s.add_dependency(%q<xcpretty>.freeze, ["< 1.0.0", ">= 0.2.4"])
      s.add_dependency(%q<terminal-table>.freeze, ["< 2.0.0", ">= 1.4.5"])
      s.add_dependency(%q<plist>.freeze, ["< 4.0.0", ">= 3.1.0"])
      s.add_dependency(%q<rubyzip>.freeze, [">= 1.1.7"])
      s.add_dependency(%q<bundler>.freeze, [">= 0"])
      s.add_dependency(%q<fastlane>.freeze, [">= 1.33.0"])
      s.add_dependency(%q<rake>.freeze, [">= 0"])
      s.add_dependency(%q<rspec>.freeze, ["~> 3.1.0"])
      s.add_dependency(%q<rspec_junit_formatter>.freeze, ["~> 0.2.3"])
      s.add_dependency(%q<pry>.freeze, [">= 0"])
      s.add_dependency(%q<yard>.freeze, ["~> 0.8.7.4"])
      s.add_dependency(%q<webmock>.freeze, ["~> 1.19.0"])
      s.add_dependency(%q<coveralls>.freeze, [">= 0"])
      s.add_dependency(%q<rubocop>.freeze, ["~> 0.44.0"])
    end
  else
    s.add_dependency(%q<fastlane_core>.freeze, ["< 1.0.0", ">= 0.57.0"])
    s.add_dependency(%q<xcpretty>.freeze, ["< 1.0.0", ">= 0.2.4"])
    s.add_dependency(%q<terminal-table>.freeze, ["< 2.0.0", ">= 1.4.5"])
    s.add_dependency(%q<plist>.freeze, ["< 4.0.0", ">= 3.1.0"])
    s.add_dependency(%q<rubyzip>.freeze, [">= 1.1.7"])
    s.add_dependency(%q<bundler>.freeze, [">= 0"])
    s.add_dependency(%q<fastlane>.freeze, [">= 1.33.0"])
    s.add_dependency(%q<rake>.freeze, [">= 0"])
    s.add_dependency(%q<rspec>.freeze, ["~> 3.1.0"])
    s.add_dependency(%q<rspec_junit_formatter>.freeze, ["~> 0.2.3"])
    s.add_dependency(%q<pry>.freeze, [">= 0"])
    s.add_dependency(%q<yard>.freeze, ["~> 0.8.7.4"])
    s.add_dependency(%q<webmock>.freeze, ["~> 1.19.0"])
    s.add_dependency(%q<coveralls>.freeze, [">= 0"])
    s.add_dependency(%q<rubocop>.freeze, ["~> 0.44.0"])
  end
end
