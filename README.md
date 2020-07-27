# Rails-template
Is a template that Ruby on Rails projects can be started from with all development and production setup built in.

> NOTE: Any console line starting with `/app # ` is running within the Rails container.

# Ruby Version
2.6.6

# Container creation
On the first run of `sudo docker-compose ...`, it will see the images are not in your docker daemon. Docker compose
will either then build your image or get the image. If you make a change to a Dockerfile and want to rebuild the
Rails image, run `sudo docker-compose up --build`.

# Installation
1. `git clone https://github.com/Machine-Translation/Rails-template.git`
2. `docker-compose up --build`
3. `docker-compose run --service-ports app /bin/sh`
4. `/app # bundle install`

# Database creation
1. `sudo docker-compose run app /bin/sh`
2. `/app # bundle exec rake db:create`

# Database initialization
1. `sudo docker-compose run app /bin/sh`
2. `/app # bundle exec rake db:schema:load`

# Database migration
1. `sudo docker-compose run app /bin/sh`
2. `/app # bundle exec rails db:migrate`

# Running / Development
* `docker-compose up`
* Websites will come later ...

# How to run the test suite
To be continued ...


# Deployment instructions
To be continued...
