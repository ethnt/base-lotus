source 'https://rubygems.org'

gem 'lotusrb',          github: 'lotus/lotus'
gem 'lotus-utils',      github: 'lotus/utils'
gem 'lotus-helpers',    github: 'lotus/helpers'
gem 'lotus-model',      github: 'lotus/model',      require: 'lotus/model'
gem 'lotus-controller', github: 'lotus/controller'
gem 'lotus-view',       github: 'lotus/view'
gem 'lotus-router',     github: 'lotus/router'

gem 'rake'

gem 'pg'

gem 'dotenv'

gem 'puma'

gem 'haml'

# 4b26da923aadc880f7a23e592c5a2930fd976bc5 in sprockets introduces a bug
# here (http://goo.gl/vOvCm7) that breaks things. This references the parent
# commit, where this is not broken.
gem 'sprockets', github: 'sstephenson/sprockets', ref: '6f52ee9d1dede15903fcc016c2eab426afcab1e8'
gem 'sprockets-sass'
gem 'sprockets-helpers'
gem 'compass'
gem 'coffee-script'

group :development do
  gem 'foreman'
  gem 'pry'
  gem 'shotgun'
end
