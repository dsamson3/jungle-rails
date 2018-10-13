# Jungle

A mini e-commerce application built with Rails 4.2 for purposes of teaching Rails by example.


## Setup

1. Fork & Clone
2. Run `bundle install` to install dependencies
3. Create `config/database.yml` by copying `config/database.example.yml`
4. Create `config/secrets.yml` by copying `config/secrets.example.yml`
5. Run `bin/rake db:reset` to create, load and seed db
6. Create .env file based on .env.example
7. Sign up for a Stripe account
8. Put Stripe (test) keys into appropriate .env vars
9. Run `bin/rails s -b 0.0.0.0` to start the server

## Stripe Testing

Use Credit Card # 4111 1111 1111 1111 for testing success scenarios.

More information in their docs: <https://stripe.com/docs/testing#cards>

## Dependencies

* Rails 4.2 [Rails Guide](http://guides.rubyonrails.org/v4.2/)
* PostgreSQL 9.x
* Stripe

!["Screen of Main Page"](https://github.com/dsamson3/jungle-rails/blob/master/Docs/Main%20Page.png?raw=true)
!["Product with Review"](https://github.com/dsamson3/jungle-rails/blob/master/Docs/Product%20With%20Reviews.png?raw=true)
!["Registration"](https://github.com/dsamson3/jungle-rails/blob/master/Docs/Registration%20Page.png?raw=true)
!["Basic Admin Authentication"](https://github.com/dsamson3/jungle-rails/blob/master/Docs/Basic%20Admin%20authentication.png?raw=true)
!["Admin Categories"](https://github.com/dsamson3/jungle-rails/blob/master/Docs/Admin%20Categories.png?raw=true)

## Featured I added to Supplied Code

* Feature: Product Sold Out Badge
* Feature: Admin Routes
* Feature: Category Creation Routes (Admin Only)
* Feature: Admin Authentication
* User Signup & Authentication
* Bugfix: Checking out empty cart
* Feature: Product Ratings