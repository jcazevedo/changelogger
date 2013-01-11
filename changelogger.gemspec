Gem::Specification.new do |s|
  s.name         = "changelogger"
  s.version      = "0.0.0"
  s.date         = "2013-01-11"
  s.summary      = "ChangeLogger"
  s.description  = "A simple ChangeLog generator from a git repository."

  s.authors      = ["Joao Azevedo"]
  s.email        = "joao.c.azevedo@gmail.com"

  s.files        = Dir["lib/**/*"]
  s.executables  << "changelogger"

  s.homepage     = "http://rubygems.org/gems/configlogger"

  s.add_dependency "grit", "~> 2.5.0"

  s.add_development_dependency "rake"
end