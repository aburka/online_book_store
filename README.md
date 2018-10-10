# OnlineBookStore

This application was created as an example for CCS Fall 2018 students. This application is the goal of a 2-week deep dive into Rails. Students are expected to resolve the following spec:

**As a user, I should be able to...**
* Create an account
* Browse books (index/show)
* Browse authors (index/show)
* Purchase a book (from show view)
* Download the book in multiple formats (PDF, mobi, epub)
* Get an email after purchasing with a link to download book
* View all purchases and be able to download books as many times as needed

## Setup

This app was generated using the following steps

1. Create a new Rails app, using postgresql as the database, skipping coffeescript, TestUnit, and installing react
`rails new <app-name> --database=postgresql --skip-coffee --skip-test --webpack=react`

2. Update `config/application.rb`

This block goes inside the AppName::Application block to generate rspec files, and skip CSS and JS files when using the generators.
```
# customize generators
config.generators do |g|
  g.test_framework  :rspec, fixture: false
  g.stylesheets     false
  g.javascripts     false
end
```

3. Additional `Gemfile` setup

Add the following to the global scope:
```
gem 'devise', '~> 4.5.0’
```

Add the following to the test/development scope:
```
  gem 'pry-rails', '~> 0.3.6'
  gem 'rspec-rails', '~> 3.8.0'
```
Then run `bundle install`

4. Create databases
`rails db:create`

5. Install [rspec-rails](https://github.com/rspec/rspec-rails)
`rails generate rspec:install`

5. Install [devise](https://github.com/plataformatec/devise) and create User model
`rails g devise:install`

Create the Devise user model and migration:
`rails g devise User`

then run
`rails db:migrate`
