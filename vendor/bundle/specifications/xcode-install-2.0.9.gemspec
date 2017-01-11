# -*- encoding: utf-8 -*-
# stub: xcode-install 2.0.9 ruby lib

Gem::Specification.new do |s|
  s.name = "xcode-install".freeze
  s.version = "2.0.9"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Boris Bu\u{308}gling".freeze]
  s.date = "2016-11-11"
  s.description = "Download, install and upgrade Xcodes with ease.".freeze
  s.email = ["boris@icculus.org".freeze]
  s.executables = ["xcversion".freeze, "\u{1f389}".freeze]
  s.files = ["bin/xcversion".freeze, "bin/\u{1f389}".freeze]
  s.homepage = "https://github.com/neonichu/xcode-install".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.0.0".freeze)
  s.rubygems_version = "2.5.2".freeze
  s.summary = "Xcode installation manager.".freeze

  s.installed_by_version = "2.5.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<claide>.freeze, ["< 1.1.0", ">= 0.9.1"])
      s.add_runtime_dependency(%q<spaceship>.freeze, ["< 1.0.0", ">= 0.25.1"])
      s.add_development_dependency(%q<bundler>.freeze, ["~> 1.7"])
      s.add_development_dependency(%q<rake>.freeze, ["~> 10.0"])
    else
      s.add_dependency(%q<claide>.freeze, ["< 1.1.0", ">= 0.9.1"])
      s.add_dependency(%q<spaceship>.freeze, ["< 1.0.0", ">= 0.25.1"])
      s.add_dependency(%q<bundler>.freeze, ["~> 1.7"])
      s.add_dependency(%q<rake>.freeze, ["~> 10.0"])
    end
  else
    s.add_dependency(%q<claide>.freeze, ["< 1.1.0", ">= 0.9.1"])
    s.add_dependency(%q<spaceship>.freeze, ["< 1.0.0", ">= 0.25.1"])
    s.add_dependency(%q<bundler>.freeze, ["~> 1.7"])
    s.add_dependency(%q<rake>.freeze, ["~> 10.0"])
  end
end
