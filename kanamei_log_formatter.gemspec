# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "kanamei_log_formatter/version"

Gem::Specification.new do |s|
  s.name        = "kanamei_log_formatter"
  s.version     = Kanamei::LogFormatter::VERSION
  s.authors     = ["pacojp"]
  s.email       = ["paco.jp@gmail.com"]
  s.homepage    = "https://github.com/kanamei/kanamei_log_formatter"
  s.summary     = %q{log_formatter in kanamei}
  s.description = %q{log_formatter in kanamei}

  s.rubyforge_project = "kanamei_log_formatter"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  # s.add_development_dependency "rspec"
  # s.add_runtime_dependency "rest-client"
end
