class DashboardController < ApplicationController

	def index
		@quotes = Quote.all
		@books = BookRecommendation.all
		@habits = Habit.all
	end

end
