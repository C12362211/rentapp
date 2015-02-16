class PostsController < ApplicationController
	before_filter :authorise

	def create
     @game = Game.find params[:game_id]
     @post = @game.posts.create params[:post]
     @post.customer_id = @current_user.id		#sets the user_id FK
     @post.save					#saves the @post 					#object to the posts table
	respond_to do |format|
		format.html { redirect_to @game }
    	end
end

end
