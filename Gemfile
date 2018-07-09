source 'https://rubygems.org'

branch = ENV.fetch('SOLIDUS_BRANCH', 'master')
gem 'solidus', github: 'solidusio/solidus', branch: branch

if branch == 'master' || branch >= 'v2.3'
  gem 'rails', '~> 5.1.0'
elsif branch >= 'v2.0'
  gem 'rails', '~> 5.0.0'
else
  gem 'rails_test_params_backport'
  gem 'rails', '~> 4.2.7'
end

gem 'sqlite3'
gem 'pg', '~> 0.21'
gem 'mysql2', '~> 0.4.10'

gemspec
