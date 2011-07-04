# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{kramdown}
  s.version = "0.13.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = [%q{Thomas Leitner}]
  s.date = %q{2011-05-05}
  s.description = %q{kramdown is yet-another-markdown-parser but fast, pure Ruby,
using a strict syntax definition and supporting several common extensions.
}
  s.email = %q{t_leitner@gmx.at}
  s.executables = [%q{kramdown}]
  s.extra_rdoc_files = [%q{README}]
  s.files = [%q{bin/kramdown}, %q{README}]
  s.homepage = %q{http://kramdown.rubyforge.org}
  s.rdoc_options = [%q{--main}, %q{README}]
  s.require_paths = [%q{lib}]
  s.rubyforge_project = %q{kramdown}
  s.rubygems_version = %q{1.8.5}
  s.summary = %q{kramdown is a fast, pure-Ruby Markdown-superset converter.}

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
