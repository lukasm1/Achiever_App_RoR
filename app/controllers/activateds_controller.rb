class ActivatedsController < ApplicationController
	def create
		@activated = current_user.activateds.new(activated_params)

		if !@activated.save
			flash[:notice] = @activated.errors.full_messages.to_sentence
		end

		flash[:notice] = "Habit activated."
		redirect_back(fallback_location: root_path)
	end
	
	def destroy
		@activated = current_user.activateds.find(params[:id])
		habit = @activated.habit
		@activated.destroy

		flash[:notice] = "Habit disactivated."
		redirect_back(fallback_location: root_path)
	end

    # Update the boolean column "completed":
	def update
    	@activated = Activated.find(params[:id])

    	respond_to do |format|
      		if @activated.update(_params)
        		format.html { redirect_to activateds_url, notice: "activated was successfully updated" }
      		else
        		format.html { render :edit, status: :unprocessable_entity }
      		end
    	end
	end

    # From the Stimulus activated_controller.js:
  	def toggle
    	@activated = Activated.find(params[:id])
    	@activated.update(completed: params[:completed])
  	end

	private

	def activated_params
		params.require(:activated).permit(:habit_id)
	end

end
