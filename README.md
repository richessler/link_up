# LinkUp

### GA WDI DC 01 2014, Project 3

### Overview

**[LinkUp](https://linkup.herokuapp.com/)** is the 'Tinder for Job Searches.' The goal for this project was to recreate a Tinder-like experience where a user can search job listings and make a judgement call whether they're 'Interested' or 'Not Interested.'  The 'Interested' job opportunities are persisted to a User's account for further review, and potential further action.

**TO DO** Companies will also have accounts with the site which directly tie them to job listings.  When a User decides they are 'Interested', the company will get a notification informing them of the interested candidate.  If the company believes the candiate is a good fit for the open listing, they may decide they're 'Interested' in the candiate and emails will be sent to both parties, informing them of the match and sparking dialog.

[LinkUp!](https://linkup.herokuapp.com/) was developed by [Richard Hessler](http://richardhessler.com/) as the third, and final individual project for the inaugural class of the District of Columbia Web Development Immersive course at [General Assemb.ly](https://generalassemb.ly/washington-dc). It was developed over a 5 day sprint and was meant to test what we've learned in the 12 weeks of class.  This project will continue to be worked on by the sole deleloper, but a branch of the 'finished project' which was presented on July 16, 2014 will remain.

### Technologies Used

* Ruby 2.1.1
* Ruby on Rails 4.1.1
* jQuery
* Backbone.js
* PostgreSQL Database
* Authentication & Authorization from with [Devise](https://github.com/plataformatec/devise)
* Omni-Authentication with [Omniauth](https://github.com/intridea/omniauth) for [LinkedIn](https://github.com/decioferreira/omniauth-linkedin-oauth2) login
* [Angel List API](https://angel.co/api), [Bootstrap](https://getbootstrap.com/) a sytyling framework incorporating SASS and JavaScript, & [HTTParty](https://github.com/jnunemaker/httparty)
* Testing using using [rspec-rails](https://github.com/rspec/rspec-rails), [capybara](https://github.com/jnicklas/capybara), [shoulda-matchers](https://github.com/thoughtbot/shoulda-matchers) and [factory_girl_rails](https://github.com/thoughtbot/factory_girl_rails)

### User Stories Completed

* As a user, I should be able to log out so my personal information isn't left on the browser.
* As a user, I should be able to log in with LinkedIn so I can have access to information on my LinkedIn profile.
* As a user, the selections I make toward the opportunities should persists within the application for future use
* As as user, when I select "Interested" or "Not Interested" I should be prompted with a new job opportunity to continue reviewing my opportunities.
* As s user, I should be have many job listings presented to me so I can see potential opportunities.
* As a user, I should be able to approve or disapprove of a an opportunity as a way of filtering through potential opportunities.

### Backlog

A full list of user stories can be found by looking at [this Pivotal Tracker Project](https://www.pivotaltracker.com/s/projects/1120388)

---
###### Written by [Richard Hessler](http://www.richardhessler.com/)
