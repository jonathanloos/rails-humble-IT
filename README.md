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

## 👉 Routing
In your main application's routing file, add the following:
```bash
Rails.application.routes.draw do
    mount Feedback::Engine, at: "/feedback" <-- ADD
    ...
end
```
## 📚 Dependencies
### Gems
You will require the following gems:
```ruby
gem 'pg'
gem 'pg_search'
gem 'pagy'
gem 'font-awesome-sass'
```

### Style
- Bootstrap 5
### db
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

##  Usage
To reference the `/feedback` routes wfrom within the main application, append `main_app` to the route helpers. For example:
```ruby
    users_path becomes -> main_app.users_path
```
and
```ruby
    `/feedback/tickets` is accessed using: feedback_app.tickets
```
Otherwise if you're routing through a main-app controller and are exclusively using the main applications routes you can use routes normally.
## Contributing
Everyone is encouraged to help improve this project. Here are a few ways you can help:

- Report bugs
- Fix bugs and submit pull requests
- Write, clarify, or fix documentation
- Suggest or add new features

## License
The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
