* `user.reload`

* `User.find_by(email: "foo@gmail.com")`

* update:

    `user.update_attribute(:name, "Jackie")`

    `user.update_attributes(name: "Daniel", email: "linux@gmail.com")`

* ensure method

    `user.respond_to?(:name)`

* validate

    `user.valid?`

    `user.errors.full_messages`

* reset db
  `bundle exec rake db:reset`
  `bundle exec rake test:prepare`




















