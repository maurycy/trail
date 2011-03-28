# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "trail/version"

Gem::Specification.new do |s|
  s.name        = "trail"
  s.version     = Trail::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Maurycy Pawlowski-Wieronski"]
  s.email       = ["maurycy@g.pl"]
  s.homepage    = "https://github.com/maurycy/trail"
  s.summary     = %q{A lightweight queue for delayed and normalized execution}

  s.rubyforge_project = "trail"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
