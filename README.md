# MOVIE-NIGHT

MovieNight is a web-based application that allows you to save movies you want to watch to your Watch List, create Movie Night events with your friends, and vote for which movie you want to watch at your next event! Users can save movies from their own Watch List to the Event's Watch List and then vote for which movie they want to watch together.  

I used The Movie Database (TMDb) API, Devise, Bootstrap 4, themoviedb and more. Deploying to Heroku was by far the most trying part of the experience, but I'm pleased to report it was successful and you may view a live version of MovieNight here: https://mymovienight.herokuapp.com
(You're invited to create your own account or log in using the guest credentials provided below).

**Run on your computer:**

You will need a TMDB API Key, which can be obtained here: https://developers.themoviedb.org/3.

From your project folder, clone the git repository:

	git clone https://github.com/natalietate/movie.git

Open the project folder:

	cd movie

Install all dependencies:

	bundle install

Create the database:

	rake db:migrate

If you want a user and some movies to get you started, seed the database:
	rake db:seed
	
Run the application:

	rails server

To see the application in action, open a browser window and navigate to [http://localhost:3000](http://localhost:3000).

**Sample Account**

You can sign in to a demo account with the following credentials:

| Email        | Password    |    
| ------------- |:---------:|
| test@test.com | testing  |			
