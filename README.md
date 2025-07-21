# Test task

## Getting started
```
$ git clone https://github.com/MikolaPy/notes.git
$ cd notes
```
Build docker 
```
$ docker compose up --build
```
Make database migrations
```
$ rake db:migrate
$ rails db:seed
```
Run the test
```
$ bundle exec rspec
