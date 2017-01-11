# -*- encoding: utf-8 -*-
# stub: spaceship 0.39.0 ruby lib

Gem::Specification.new do |s|
  s.name = "spaceship".freeze
  s.version = "0.39.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Felix Krause".freeze, "Stefan Natchev".freeze]
  s.date = "2016-12-13"
  s.description = "Ruby library to access the Apple Dev Center and iTunes Connect".freeze
  s.email = ["spaceship@krausefx.com".freeze, "stefan@natchev.com".freeze]
  s.executables = ["spaceauth".freeze, "spaceship".freeze]
  s.files = ["bin/spaceauth".freeze, "bin/spaceship".freeze]
  s.homepage = "https://fastlane.tools".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.0.0".freeze)
  s.rubygems_version = "2.5.2".freeze
  s.summary = "Ruby library to access the Apple Dev Center and iTunes Connect".freeze

  s.installed_by_version = "2.5.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<credentials_manager>.freeze, [">= 0.16.0"])
      s.add_runtime_dependency(%q<multi_xml>.freeze, ["~> 0.5"])
      s.add_runtime_dependency(%q<plist>.freeze, ["< 4.0.0", ">= 3.1.0"])
      s.add_runtime_dependency(%q<faraday>.freeze, ["~> 0.9"])
      s.add_runtime_dependency(%q<faraday_middleware>.freeze, ["~> 0.9"])
      s.add_runtime_dependency(%q<faraday-cookie_jar>.freeze, ["~> 0.0.6"])
      s.add_runtime_dependency(%q<fastimage>.freeze, [">= 1.6"])
      s.add_runtime_dependency(%q<babosa>.freeze, ["= 1.0.2"])
      s.add_runtime_dependency(%q<colored>.freeze, [">= 0"])
      s.add_development_dependency(%q<pry>.freeze, [">= 0"])
      s.add_development_dependency(%q<pry-byebug>.freeze, [">= 0"])
      s.add_development_dependency(%q<bundler>.freeze, [">= 0"])
      s.add_development_dependency(%q<fastlane>.freeze, [">= 1.15.0"])
      s.add_development_dependency(%q<rake>.freeze, [">= 0"])
      s.add_development_dependency(%q<coveralls>.freeze, [">= 0"])
      s.add_development_dependency(%q<diff_matcher>.freeze, [">= 0"])
      s.add_development_dependency(%q<multi_json>.freeze, [">= 0"])
      s.add_development_dependency(%q<rspec>.freeze, ["~> 3.1.0"])
      s.add_development_dependency(%q<rspec_junit_formatter>.freeze, ["~> 0.2.3"])
      s.add_development_dependency(%q<yard>.freeze, ["~> 0.8.7.4"])
      s.add_development_dependency(%q<webmock>.freeze, ["~> 1.21.0"])
      s.add_development_dependency(%q<rubocop>.freeze, ["~> 0.44.0"])
    else
      s.add_dependency(%q<credentials_manager>.freeze, [">= 0.16.0"])
      s.add_dependency(%q<multi_xml>.freeze, ["~> 0.5"])
      s.add_dependency(%q<plist>.freeze, ["< 4.0.0", ">= 3.1.0"])
      s.add_dependency(%q<faraday>.freeze, ["~> 0.9"])
      s.add_dependency(%q<faraday_middleware>.freeze, ["~> 0.9"])
      s.add_dependency(%q<faraday-cookie_jar>.freeze, ["~> 0.0.6"])
      s.add_dependency(%q<fastimage>.freeze, [">= 1.6"])
      s.add_dependency(%q<babosa>.freeze, ["= 1.0.2"])
      s.add_dependency(%q<colored>.freeze, [">= 0"])
      s.add_dependency(%q<pry>.freeze, [">= 0"])
      s.add_dependency(%q<pry-byebug>.freeze, [">= 0"])
      s.add_dependency(%q<bundler>.freeze, [">= 0"])
      s.add_dependency(%q<fastlane>.freeze, [">= 1.15.0"])
      s.add_dependency(%q<rake>.freeze, [">= 0"])
      s.add_dependency(%q<coveralls>.freeze, [">= 0"])
      s.add_dependency(%q<diff_matcher>.freeze, [">= 0"])
      s.add_dependency(%q<multi_json>.freeze, [">= 0"])
      s.add_dependency(%q<rspec>.freeze, ["~> 3.1.0"])
      s.add_dependency(%q<rspec_junit_formatter>.freeze, ["~> 0.2.3"])
      s.add_dependency(%q<yard>.freeze, ["~> 0.8.7.4"])
      s.add_dependency(%q<webmock>.freeze, ["~> 1.21.0"])
      s.add_dependency(%q<rubocop>.freeze, ["~> 0.44.0"])
    end
  else
    s.add_dependency(%q<credentials_manager>.freeze, [">= 0.16.0"])
    s.add_dependency(%q<multi_xml>.freeze, ["~> 0.5"])
    s.add_dependency(%q<plist>.freeze, ["< 4.0.0", ">= 3.1.0"])
    s.add_dependency(%q<faraday>.freeze, ["~> 0.9"])
    s.add_dependency(%q<faraday_middleware>.freeze, ["~> 0.9"])
    s.add_dependency(%q<faraday-cookie_jar>.freeze, ["~> 0.0.6"])
    s.add_dependency(%q<fastimage>.freeze, [">= 1.6"])
    s.add_dependency(%q<babosa>.freeze, ["= 1.0.2"])
    s.add_dependency(%q<colored>.freeze, [">= 0"])
    s.add_dependency(%q<pry>.freeze, [">= 0"])
    s.add_dependency(%q<pry-byebug>.freeze, [">= 0"])
    s.add_dependency(%q<bundler>.freeze, [">= 0"])
    s.add_dependency(%q<fastlane>.freeze, [">= 1.15.0"])
    s.add_dependency(%q<rake>.freeze, [">= 0"])
    s.add_dependency(%q<coveralls>.freeze, [">= 0"])
    s.add_dependency(%q<diff_matcher>.freeze, [">= 0"])
    s.add_dependency(%q<multi_json>.freeze, [">= 0"])
    s.add_dependency(%q<rspec>.freeze, ["~> 3.1.0"])
    s.add_dependency(%q<rspec_junit_formatter>.freeze, ["~> 0.2.3"])
    s.add_dependency(%q<yard>.freeze, ["~> 0.8.7.4"])
    s.add_dependency(%q<webmock>.freeze, ["~> 1.21.0"])
    s.add_dependency(%q<rubocop>.freeze, ["~> 0.44.0"])
  end
end
