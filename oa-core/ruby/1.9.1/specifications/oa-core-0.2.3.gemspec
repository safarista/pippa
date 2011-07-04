# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{oa-core}
  s.version = "0.2.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Michael Bleigh"]
  s.date = %q{2011-04-21}
  s.description = %q{HTTP Basic strategies for OmniAuth.}
  s.email = %q{michael@intridea.com}
  s.files = ["lib/oa-core.rb", "lib/omniauth/builder.rb", "lib/omniauth/core.rb", "lib/omniauth/form.rb", "lib/omniauth/strategy.rb", "lib/omniauth/test/phony_session.rb", "lib/omniauth/test/strategy_macros.rb", "lib/omniauth/test/strategy_test_case.rb", "lib/omniauth/test.rb", "LICENSE"]
  s.homepage = %q{http://github.com/intridea/omniauth}
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{HTTP Basic strategies for OmniAuth.}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rack>, ["~> 1.1"])
      s.add_development_dependency(%q<addressable>, ["= 0.2.4"])
      s.add_development_dependency(%q<rake>, [">= 0"])
      s.add_development_dependency(%q<mg>, ["~> 0.0.8"])
      s.add_development_dependency(%q<rspec>, ["~> 1.3.0"])
      s.add_development_dependency(%q<webmock>, ["~> 1.3.4"])
      s.add_development_dependency(%q<rack-test>, ["~> 0.5.4"])
      s.add_development_dependency(%q<json_pure>, ["~> 1.5.1"])
      s.add_development_dependency(%q<evernote>, ["~> 0.9.0"])
    else
      s.add_dependency(%q<rack>, ["~> 1.1"])
      s.add_dependency(%q<addressable>, ["= 0.2.4"])
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<mg>, ["~> 0.0.8"])
      s.add_dependency(%q<rspec>, ["~> 1.3.0"])
      s.add_dependency(%q<webmock>, ["~> 1.3.4"])
      s.add_dependency(%q<rack-test>, ["~> 0.5.4"])
      s.add_dependency(%q<json_pure>, ["~> 1.5.1"])
      s.add_dependency(%q<evernote>, ["~> 0.9.0"])
    end
  else
    s.add_dependency(%q<rack>, ["~> 1.1"])
    s.add_dependency(%q<addressable>, ["= 0.2.4"])
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<mg>, ["~> 0.0.8"])
    s.add_dependency(%q<rspec>, ["~> 1.3.0"])
    s.add_dependency(%q<webmock>, ["~> 1.3.4"])
    s.add_dependency(%q<rack-test>, ["~> 0.5.4"])
    s.add_dependency(%q<json_pure>, ["~> 1.5.1"])
    s.add_dependency(%q<evernote>, ["~> 0.9.0"])
  end
end
