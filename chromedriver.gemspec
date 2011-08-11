# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "chromedriver/version"

Gem::Specification.new do |s|
  s.name        = "chromedriver"
  s.version     = Chromedriver::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Brian Hempel"]
  s.email       = ["plasticchicken@gmail.com"]
  s.homepage    = ""
  s.summary     = %q{Downloads chromedriver so Chrome can be used with selenium-webdriver}
  s.description = %q{Downloads chromedriver so Chrome can be used with selenium-webdriver}

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
  
  s.add_dependency "selenium-webdriver", ">= 0.2.0"
end
