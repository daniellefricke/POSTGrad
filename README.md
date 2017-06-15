# README POSTGrad

POSTGrad is a web app of message boards for alumni of universities and colleges in the United States. 'Centralizing' the alumni community is aiming to boost alumni interactions, activities, and involvement, especially for those who leave the community where their school is located.

* Ruby version
  'rails', '~> 5.1.1'

* System dependencies
  requires: postgresql

* Database dependencies
  Database data is provided in .CSV file. Working .xls file is also induced for adding/removing schools on the master list.

* Project requirements
  -Be built in Rails
  -Have its own repository on your GitHub account (do not fork this repo)
  -Have at least 2 non-User models with at least 1 association
  -Have complete RESTful routes for at least one of your resources
  -Have error handling, validations, and flash messages for all modified and created resources
  -Utilize an ORM (such as Active Record) and migrations to create a database table structure and interact with your stored relational data
  -Have your application deployed on Heroku
  -Have semantically-clean HTML and CSS that passes the standard validators

##Updates to future versions:
1. Add more data to user sign up and make a user profile page. This way, when a user posts or comments, their username is linked to more information about them. Specifically location, school attended, major, graduation year, photo, and LinkedIn information. You could also see posts that users 'favorite' and a history of posts they make.

2. Add level of authorization that only allows grads of a school to post to their message boards. This helps with discouraging trolling and promotes the site as more of a credible app.

3. Create 'local chapter' pages for schools. Each school will have a state search option so that you can find people in the same state as you from your university and have a 'local chapter' message board. i.e. I went to Ohio State and live in D.C.. I can find and post with OSU alumni around me.

4. Clean up the logos to a standard img format.

5. Create authorization and model for schools to create an manage a school user page. They could maintain the page as they would an alumni website on their university page.

jumbotron img credit: https://www.flickr.com/photos/brandonkopp/7161470563/in/photolist-bUQpGp-o3jLHq-iLC3tt-zxfa4-8kH6rH-Gc9gre-U3YJhC-U3YMHf-e59thQ-Gqnt2E-8kLgdQ-6RT9bB-pP8ezA-zxfah-aGCLXv-iPHPXP-ovZKoT-dJ4AKj-TaCgom-2arASY-8kLgK9-6P3i81-ovEg3n-e28KbG-dRBiE8-hQjaaV-8kLg8A-zxfap-9NWTN2-6RX8SL-AXBsoJ-81UPUZ-8kH6hK-8kH6aH-8kLgtN-6o6tzF-8kLgAS-ci6yQC-8kH5Sc-oPXdks-aGCMUX-76cYdH-8juxLp-8kLh11-7dC4wW-5Fo7Ht-zxfae-76gSjs-8kLgn7-8kH6yZ
