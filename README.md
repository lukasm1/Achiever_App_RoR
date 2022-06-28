# Ruby-on-Rails-Achiever-App

Ruby on Rails Achiever App: #Adopt the minds of the Greatest ones!
Author: Lukáš Minster


____________________________________
How to run the app:

rails db:migrate
rails db:seed
rails s

Then go to: http://localhost:3000

Admin username: admin@admin.com
Admin password: topsecret
____________________________________

28.6.2022: Update and new features:

1) Added flag "favorite". When enabled, a signed-in user can add/remove favorite books and quotes. 
2) Added flag "activated". When enabled, a signed-in user can activate/disactivate habits.

Manage the flags: 
		 "Favorite":  http://localhost:3000/flipper/features/favorite
		 "Activated": http://localhost:3000/flipper/features/activated

3) Added dashboard which displays favorite books, quotes and activated habits.
4) On the dashboard you can mark the habit's checkbox as complete/incomplete.
5) Applied Hotwire's Turbo to make the links and form submissions faster.

What was used: 

1) Flipper for flags;
2) Two new tables: 1) Favorites with polymorhphic assosiations and 2) Activateds;
3) Hotwire, Turbo, Stimulus

____________________________________
20.6.2022: What's included:

1) 7 tables. 1-Many, Many-Many

2) Pre-populated data with rails db:seed

3) Bootstraped

4) Devise Authentication

Functionalities:

If the user is not signed in:

 they can: 
	1) Sign Up/Sign In
 they cannot:	
	1) Edit user profile/Sign Out
	2) Add/Edit/Destroy

If the user is signed in:

 they can:
	1) Edit user profile/Sign Out	
	2) Add anything
	3) Edit/destroy only what they created. UNLESS the user.id == 1 (admin). Admin can edit/destroy anything.
 they cannot:
	1) Sign in/Sign up
