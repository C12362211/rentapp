class RentalsController < ApplicationController
	before_filter :authorise
  
  
 def create
     @game = Game.find params[:game_id]
     @rental = @game.rentals.create params[:rental]
     @rental.customer_id = @current_user.id		#sets the user_id FK
	 @rental.date_rented = Time.now
	 @rental.date_due = Time.now+5.days
     @rental.save					#saves the @rental 					#object to the posts table
	respond_to do |format|
		format.html { redirect_to @game }
    	end
  end 

  
end
