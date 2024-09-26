# RAILS - ACTIVE JOB - GETTING STARTED PROJECT
This project is an exercise of the official [Active Job Basics](https://guides.rubyonrails.org/active_job_basics.html) guide.

## Project Overview
This _Customer_ CRUD project is a use case for playing with the Active Job framework. 

These are the steps I followed to create this project:
1. [Created CRUD scaffolding](https://github.com/gabrielcostasilva/rails-active-job-getting-started/commit/d51755adaa534a08be04017b24db48f48942632e): `rails g scaffold Customer name email`
2. Created a job: `rails g job CustomerWelcome`
3. [Added a welcome message](https://github.com/gabrielcostasilva/rails-active-job-getting-started/commit/7bd88f5d4e270d278f0073508d4b9f13053b0c08) to the [job file](./app/jobs/customer_welcome_job.rb)
4. [Added to the controller](https://github.com/gabrielcostasilva/rails-active-job-getting-started/commit/34bff6736c356684d6ec0227fdb2adb23cbabb01) a call to the job: `CustomerWelcomeJob.perform_later`

## Running the Project
First off, ensure you have the prerequisites to run a rails application, [which are](https://guides.rubyonrails.org/getting_started.html#creating-a-new-rails-project-installing-rails):
- Ruby
- Rails
- SQLite

Then, clone this repository: `git clone https://github.com/gabrielcostasilva/rails-active-job-getting-started.git`

Next, update the database by running **in the project folder**: `bin/rails db:migrate`

Finally, start the server with: `bin/rails server`

> All these commands must be run from your console in the project folder.

Access the application at [http://localhost:3000/customers](http://localhost:3000/customers), create a new customer, and check the logs (your terminal) for the welcome message.

## Project Branches

The following branches extend this current project as:

- [Using Sidekiq as the queuing backend]([https://github.com/gabrielcostasilva/rails-getting-started/tree/auth-devise](https://github.com/gabrielcostasilva/rails-active-job-getting-started/tree/sidekiq))
- [Using SQS as adapter for ActiveJob]([https://github.com/gabrielcostasilva/rails-getting-started/tree/postgres](https://github.com/gabrielcostasilva/rails-active-job-getting-started/tree/sqs))

## Further References

- [Rails Active Job Basics Guide](https://guides.rubyonrails.org/active_job_basics.html)
- [Sidekiq official wiki](https://github.com/sidekiq/sidekiq/wiki)
- [Processing Background Jobs Using Sidekiq Gem in Rails 7](https://maffan.medium.com/processing-background-jobs-using-sidekiq-gem-in-rails-7-part-i-5c71574ac479)
- [An Introduction to Sidekiq for Ruby on Rails](https://blog.appsignal.com/2023/09/20/an-introduction-to-sidekiq-for-ruby-on-rails.html)
- [Inspect Redis commands using MONITOR](https://thoughtbot.com/blog/inspect-redis-commands-using-monitor)
- [Sidekiq scheduler](https://github.com/sidekiq-scheduler/sidekiq-scheduler)
