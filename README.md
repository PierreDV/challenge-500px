# 500px Most Popular Showcase
### by [Peter de verteuil](https://github.com/PierreDV)

This App showcases the 100 most popular photos on [500px](https://500px.com/popular). Users can log
into through their 500px account and like photos through the platform.

This Application was created with Rails 5. Using Slim as a template engine, Omniauth for authentication,
Bootstrap for styling, JQuery for dynamic changes and Minitest for testing.  

The application is available to view [here](https://showcase-500px.herokuapp.com/) on Heroku.

To run the application in development or production, you need to add a 'config/five_hundred_secret.yml'
file that mirrors the format of the example file, only with your API credentials filled in.
To set up th development environment, enter the following terminal commands in project's root directory:
```
bundle --without production
bin/rails server
```

To run the application tests, enter the following terminal commands in the project's root directory:
```
bin/rails test
```
