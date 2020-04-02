# Feedback
Short description and motivation.

## Usage
How to use my plugin.

## Installation
Add this line to your application's Gemfile:

```ruby
gem 'feedback'
```

And then execute:
```bash
$ bundle
```

Or install it yourself as:
```bash
$ gem install feedback
```

##Routing
In your main application's 'routes.rb' file, add the following:
```bash
Rails.application.routes.draw do
    mount Feedback::Engine, at: "/feedback" <-- ADD
    ...
end
```
##Entra Dependencies
````bash
$ rails action_text:install
````
````bash
$ rails active_storage:install
````
````bash
$ rails db:migrate
````
## Contributing
Contribution directions go here.

## License
The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
