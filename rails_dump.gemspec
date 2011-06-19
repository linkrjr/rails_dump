# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "rails_dump/version"

Gem::Specification.new do |s|
  s.name        = "rails_dump"
  s.version     = RailsDump::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Ronaldo Gomes"]
  s.email       = ["ronaldo@technophile.it"]
  s.homepage    = ""
  s.summary     = %q{The best way to print out your variables}
  s.description = %q{RailsDump prints out an html version of your variables}

  s.rubyforge_project = "rails_dump"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
