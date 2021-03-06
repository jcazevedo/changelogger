Gem::Specification.new do |s|
  s.name         = "changelogger"
  s.version      = "0.0.3"
  s.license      = "MIT"
  s.date         = "2013-01-14"
  s.summary      = "ChangeLogger"
  s.description  = "A simple ChangeLog generator from a git repository."

  s.authors      = ["Joao Azevedo"]
  s.email        = "joao.c.azevedo@gmail.com"

  s.files        = Dir["lib/**/*"]
  s.executables  << "changelogger"

  s.homepage     = "http://github.com/jcazevedo/changelogger"

  s.add_dependency "grit", "~> 2.5.0"
  s.add_dependency "thor", "~> 0.16.0"

  s.add_development_dependency "rake"
end