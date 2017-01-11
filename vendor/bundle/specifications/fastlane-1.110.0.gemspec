# -*- encoding: utf-8 -*-
# stub: fastlane 1.110.0 ruby lib

Gem::Specification.new do |s|
  s.name = "fastlane".freeze
  s.version = "1.110.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Felix Krause".freeze, "Michael Furtak".freeze, "Andrea Falcone".freeze, "Sam Phillips".freeze, "David Ohayon".freeze, "Sam Robbins".freeze, "Mark Pirri".freeze, "Hemal Shah".freeze]
  s.date = "2016-11-17"
  s.description = "The easiest way to automate beta deployments and releases for your iOS and Android apps".freeze
  s.email = ["fastlane@krausefx.com".freeze]
  s.executables = ["fastlane".freeze, "\u{1f680}".freeze]
  s.files = ["bin/fastlane".freeze, "bin/\u{1f680}".freeze]
  s.homepage = "https://fastlane.tools".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.0.0".freeze)
  s.rubygems_version = "2.5.2".freeze
  s.summary = "The easiest way to automate beta deployments and releases for your iOS and Android apps".freeze

  s.installed_by_version = "2.5.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<krausefx-shenzhen>.freeze, ["< 1.0.0", ">= 0.14.11"])
      s.add_runtime_dependency(%q<slack-notifier>.freeze, ["< 2.0.0", ">= 1.3"])
      s.add_runtime_dependency(%q<xcodeproj>.freeze, ["< 2.0.0", ">= 0.20"])
      s.add_runtime_dependency(%q<xcpretty>.freeze, ["< 1.0.0", ">= 0.2.4"])
      s.add_runtime_dependency(%q<terminal-notifier>.freeze, ["< 2.0.0", ">= 1.6.2"])
      s.add_runtime_dependency(%q<terminal-table>.freeze, ["< 2.0.0", ">= 1.4.5"])
      s.add_runtime_dependency(%q<plist>.freeze, ["< 4.0.0", ">= 3.1.0"])
      s.add_runtime_dependency(%q<addressable>.freeze, ["< 3.0.0", ">= 2.3"])
      s.add_runtime_dependency(%q<multipart-post>.freeze, ["~> 2.0.0"])
      s.add_runtime_dependency(%q<xcode-install>.freeze, ["~> 2.0.0"])
      s.add_runtime_dependency(%q<word_wrap>.freeze, ["~> 1.0.0"])
      s.add_runtime_dependency(%q<fastlane_core>.freeze, ["< 1.0.0", ">= 0.56.0"])
      s.add_runtime_dependency(%q<bundler>.freeze, ["~> 1.12"])
      s.add_runtime_dependency(%q<credentials_manager>.freeze, ["< 1.0.0", ">= 0.16.2"])
      s.add_runtime_dependency(%q<spaceship>.freeze, ["< 1.0.0", ">= 0.37.0"])
      s.add_runtime_dependency(%q<deliver>.freeze, ["< 2.0.0", ">= 1.15.1"])
      s.add_runtime_dependency(%q<snapshot>.freeze, ["< 2.0.0", ">= 1.16.3"])
      s.add_runtime_dependency(%q<frameit>.freeze, ["< 4.0.0", ">= 3.0.0"])
      s.add_runtime_dependency(%q<pem>.freeze, ["< 2.0.0", ">= 1.4.0"])
      s.add_runtime_dependency(%q<cert>.freeze, ["< 2.0.0", ">= 1.4.4"])
      s.add_runtime_dependency(%q<sigh>.freeze, ["< 2.0.0", ">= 1.11.2"])
      s.add_runtime_dependency(%q<produce>.freeze, ["< 2.0.0", ">= 1.3.0"])
      s.add_runtime_dependency(%q<gym>.freeze, ["< 2.0.0", ">= 1.12.0"])
      s.add_runtime_dependency(%q<pilot>.freeze, ["< 2.0.0", ">= 1.12.1"])
      s.add_runtime_dependency(%q<scan>.freeze, ["< 1.0.0", ">= 0.14.1"])
      s.add_runtime_dependency(%q<supply>.freeze, ["< 1.0.0", ">= 0.7.1"])
      s.add_runtime_dependency(%q<match>.freeze, ["< 1.0.0", ">= 0.11.0"])
      s.add_runtime_dependency(%q<screengrab>.freeze, ["< 1.0.0", ">= 0.5.2"])
      s.add_runtime_dependency(%q<activesupport>.freeze, ["< 5"])
      s.add_development_dependency(%q<rake>.freeze, [">= 0"])
      s.add_development_dependency(%q<rspec>.freeze, ["~> 3.1.0"])
      s.add_development_dependency(%q<rspec_junit_formatter>.freeze, ["~> 0.2.3"])
      s.add_development_dependency(%q<pry>.freeze, [">= 0"])
      s.add_development_dependency(%q<pry-byebug>.freeze, [">= 0"])
      s.add_development_dependency(%q<yard>.freeze, ["~> 0.8.7.4"])
      s.add_development_dependency(%q<webmock>.freeze, ["~> 1.19.0"])
      s.add_development_dependency(%q<coveralls>.freeze, ["~> 0.8.13"])
      s.add_development_dependency(%q<rubocop>.freeze, ["~> 0.44.0"])
      s.add_development_dependency(%q<rest-client>.freeze, ["~> 1.6.7"])
      s.add_development_dependency(%q<fakefs>.freeze, ["~> 0.8.1"])
    else
      s.add_dependency(%q<krausefx-shenzhen>.freeze, ["< 1.0.0", ">= 0.14.11"])
      s.add_dependency(%q<slack-notifier>.freeze, ["< 2.0.0", ">= 1.3"])
      s.add_dependency(%q<xcodeproj>.freeze, ["< 2.0.0", ">= 0.20"])
      s.add_dependency(%q<xcpretty>.freeze, ["< 1.0.0", ">= 0.2.4"])
      s.add_dependency(%q<terminal-notifier>.freeze, ["< 2.0.0", ">= 1.6.2"])
      s.add_dependency(%q<terminal-table>.freeze, ["< 2.0.0", ">= 1.4.5"])
      s.add_dependency(%q<plist>.freeze, ["< 4.0.0", ">= 3.1.0"])
      s.add_dependency(%q<addressable>.freeze, ["< 3.0.0", ">= 2.3"])
      s.add_dependency(%q<multipart-post>.freeze, ["~> 2.0.0"])
      s.add_dependency(%q<xcode-install>.freeze, ["~> 2.0.0"])
      s.add_dependency(%q<word_wrap>.freeze, ["~> 1.0.0"])
      s.add_dependency(%q<fastlane_core>.freeze, ["< 1.0.0", ">= 0.56.0"])
      s.add_dependency(%q<bundler>.freeze, ["~> 1.12"])
      s.add_dependency(%q<credentials_manager>.freeze, ["< 1.0.0", ">= 0.16.2"])
      s.add_dependency(%q<spaceship>.freeze, ["< 1.0.0", ">= 0.37.0"])
      s.add_dependency(%q<deliver>.freeze, ["< 2.0.0", ">= 1.15.1"])
      s.add_dependency(%q<snapshot>.freeze, ["< 2.0.0", ">= 1.16.3"])
      s.add_dependency(%q<frameit>.freeze, ["< 4.0.0", ">= 3.0.0"])
      s.add_dependency(%q<pem>.freeze, ["< 2.0.0", ">= 1.4.0"])
      s.add_dependency(%q<cert>.freeze, ["< 2.0.0", ">= 1.4.4"])
      s.add_dependency(%q<sigh>.freeze, ["< 2.0.0", ">= 1.11.2"])
      s.add_dependency(%q<produce>.freeze, ["< 2.0.0", ">= 1.3.0"])
      s.add_dependency(%q<gym>.freeze, ["< 2.0.0", ">= 1.12.0"])
      s.add_dependency(%q<pilot>.freeze, ["< 2.0.0", ">= 1.12.1"])
      s.add_dependency(%q<scan>.freeze, ["< 1.0.0", ">= 0.14.1"])
      s.add_dependency(%q<supply>.freeze, ["< 1.0.0", ">= 0.7.1"])
      s.add_dependency(%q<match>.freeze, ["< 1.0.0", ">= 0.11.0"])
      s.add_dependency(%q<screengrab>.freeze, ["< 1.0.0", ">= 0.5.2"])
      s.add_dependency(%q<activesupport>.freeze, ["< 5"])
      s.add_dependency(%q<rake>.freeze, [">= 0"])
      s.add_dependency(%q<rspec>.freeze, ["~> 3.1.0"])
      s.add_dependency(%q<rspec_junit_formatter>.freeze, ["~> 0.2.3"])
      s.add_dependency(%q<pry>.freeze, [">= 0"])
      s.add_dependency(%q<pry-byebug>.freeze, [">= 0"])
      s.add_dependency(%q<yard>.freeze, ["~> 0.8.7.4"])
      s.add_dependency(%q<webmock>.freeze, ["~> 1.19.0"])
      s.add_dependency(%q<coveralls>.freeze, ["~> 0.8.13"])
      s.add_dependency(%q<rubocop>.freeze, ["~> 0.44.0"])
      s.add_dependency(%q<rest-client>.freeze, ["~> 1.6.7"])
      s.add_dependency(%q<fakefs>.freeze, ["~> 0.8.1"])
    end
  else
    s.add_dependency(%q<krausefx-shenzhen>.freeze, ["< 1.0.0", ">= 0.14.11"])
    s.add_dependency(%q<slack-notifier>.freeze, ["< 2.0.0", ">= 1.3"])
    s.add_dependency(%q<xcodeproj>.freeze, ["< 2.0.0", ">= 0.20"])
    s.add_dependency(%q<xcpretty>.freeze, ["< 1.0.0", ">= 0.2.4"])
    s.add_dependency(%q<terminal-notifier>.freeze, ["< 2.0.0", ">= 1.6.2"])
    s.add_dependency(%q<terminal-table>.freeze, ["< 2.0.0", ">= 1.4.5"])
    s.add_dependency(%q<plist>.freeze, ["< 4.0.0", ">= 3.1.0"])
    s.add_dependency(%q<addressable>.freeze, ["< 3.0.0", ">= 2.3"])
    s.add_dependency(%q<multipart-post>.freeze, ["~> 2.0.0"])
    s.add_dependency(%q<xcode-install>.freeze, ["~> 2.0.0"])
    s.add_dependency(%q<word_wrap>.freeze, ["~> 1.0.0"])
    s.add_dependency(%q<fastlane_core>.freeze, ["< 1.0.0", ">= 0.56.0"])
    s.add_dependency(%q<bundler>.freeze, ["~> 1.12"])
    s.add_dependency(%q<credentials_manager>.freeze, ["< 1.0.0", ">= 0.16.2"])
    s.add_dependency(%q<spaceship>.freeze, ["< 1.0.0", ">= 0.37.0"])
    s.add_dependency(%q<deliver>.freeze, ["< 2.0.0", ">= 1.15.1"])
    s.add_dependency(%q<snapshot>.freeze, ["< 2.0.0", ">= 1.16.3"])
    s.add_dependency(%q<frameit>.freeze, ["< 4.0.0", ">= 3.0.0"])
    s.add_dependency(%q<pem>.freeze, ["< 2.0.0", ">= 1.4.0"])
    s.add_dependency(%q<cert>.freeze, ["< 2.0.0", ">= 1.4.4"])
    s.add_dependency(%q<sigh>.freeze, ["< 2.0.0", ">= 1.11.2"])
    s.add_dependency(%q<produce>.freeze, ["< 2.0.0", ">= 1.3.0"])
    s.add_dependency(%q<gym>.freeze, ["< 2.0.0", ">= 1.12.0"])
    s.add_dependency(%q<pilot>.freeze, ["< 2.0.0", ">= 1.12.1"])
    s.add_dependency(%q<scan>.freeze, ["< 1.0.0", ">= 0.14.1"])
    s.add_dependency(%q<supply>.freeze, ["< 1.0.0", ">= 0.7.1"])
    s.add_dependency(%q<match>.freeze, ["< 1.0.0", ">= 0.11.0"])
    s.add_dependency(%q<screengrab>.freeze, ["< 1.0.0", ">= 0.5.2"])
    s.add_dependency(%q<activesupport>.freeze, ["< 5"])
    s.add_dependency(%q<rake>.freeze, [">= 0"])
    s.add_dependency(%q<rspec>.freeze, ["~> 3.1.0"])
    s.add_dependency(%q<rspec_junit_formatter>.freeze, ["~> 0.2.3"])
    s.add_dependency(%q<pry>.freeze, [">= 0"])
    s.add_dependency(%q<pry-byebug>.freeze, [">= 0"])
    s.add_dependency(%q<yard>.freeze, ["~> 0.8.7.4"])
    s.add_dependency(%q<webmock>.freeze, ["~> 1.19.0"])
    s.add_dependency(%q<coveralls>.freeze, ["~> 0.8.13"])
    s.add_dependency(%q<rubocop>.freeze, ["~> 0.44.0"])
    s.add_dependency(%q<rest-client>.freeze, ["~> 1.6.7"])
    s.add_dependency(%q<fakefs>.freeze, ["~> 0.8.1"])
  end
end
