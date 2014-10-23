$:.push File.expand_path('../lib', __FILE__)

# Maintain your gem's version:
require 'web_parser/jaluites_ru/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = 'web_parser-jaluites_ru'
  s.version     = WebParser::JaluitesRu::VERSION
  s.authors     = %w(Go-Promo Alexander\ Gorbunov)
  s.email       = %w(nmd@go-promo.ru lexgorbunov@gmail.com)
  s.homepage    = 'https://git.nnbs.ru/gem/web_parser-jaluites_ru'
  s.summary     = 'Parser of publications from http://jaluites.ru'
  s.description = 'Parser of publications from http://jaluites.ru'
  s.license     = 'MIT'

  s.files = Dir['{app,config,db,lib}/**/*', 'MIT-LICENSE', 'Rakefile', 'README.md']
  s.test_files = Dir['test/**/*']

  s.add_dependency 'rails', '>= 3.2.1'
  s.add_dependency 'hashie', '>= 3.3.1'
  s.add_dependency 'hpricot', '>= 0.8.6'
end
