## About
[Agoge](http://en.wikipedia.org/wiki/Agoge) - Training Management Application

## Installation Steps
1. `git clone https://github.com/budhrg/agoge.git`
2. `cd agoge`
3. Run
   `bundle install`
4. Add database related changes to `config/database.yml`
5. Run
   `rake db:create db:migrate db:seed`
6. Run
   `rails server`
7. Open `localhost:3000` in your favorite browser

## Make a contribution
We would love to get any pull requests. Here's a quick guide.

Fork, then clone the repo:

    git clone https://github.com/<your-username>/agoge.git

Steps to contribute:

    1. cd your_repo
    2. Create a branch related to your task(or issue)
    3. Add suitable tests for your change
    4. bundle exec rspec
    5. Commit your changes with suitable message
    6. Push to changes to your fork
    7. Submit a pull request.

At this point you're waiting on us. We like to at least comment on pull requests
or may suggest some changes or discuss improvements or alternatives or merge your
pull request.
