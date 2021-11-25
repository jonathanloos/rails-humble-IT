# Feedback
**A simple ticketing system to bridge the gap between user and tech support.** 
Humble IT is the practice of putting your users needs first and maintaining a healthy community within your platform. This gem provides the baseline flow to manage tickets submitted by users.

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
gem 'pg'
gem 'pg_search'
gem 'pagy'
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
