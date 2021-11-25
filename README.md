# Feedback
Short description and motivation.

## Dependencies
This gem requires the following dependencies to function properly:
1. PostgreSQL Database -> Specifically will require the installation of `gem 'pg_search` on your main project.
2. Pundit
## 🚀 Installation
Add this line to your application's Gemfile:

```ruby
gem 'rails-humble-IT', '0.1.4', git: 'https://github.com/jonathanloos/rails-humble-IT'
```

And then execute:
```bash
$ bundle
```

## Routing
In your main application's routing file, add the following:
```bash
Rails.application.routes.draw do
    mount Feedback::Engine, at: "/feedback" <-- ADD
    ...
end
```
## Dependencies
You will require the following gems:
```ruby
gem 'pg_search'
```

You will also need to install Action Text and Active Storage:
````bash
$ rails action_text:install
````
````bash
$ rails active_storage:install
````
````bash
$ rails db:migrate
````

## Usage
How to use my plugin.
## Contributing
Contribution directions go here.

## License
The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
