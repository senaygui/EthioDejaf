class UserProfilesController < ApplicationController
before_action :authenticate_user!, only: [:new,:show, :edit]
before_action :find_user_profiles, only: [:show, :edit, :update, :destroy]

	def new
	 @user_profile = current_user.build_user_profile 
	end

	def create
		@user_profile = current_user.build_user_profile(user_params)

		if @user_profile.save

			 flash[:notice] = "welcome #{@user_profile.username}"
			redirect_to @user_profile
		else

			render :new
		end
	end

	def edit
	end

	def update
		if @user_profile.update_attributes(user_params)

			flash[:notice] = "profile successfully updated"
			redirect_to @user_profile
		else
			render :edit
		end
	end

	def show
	end

	# def delete
	# end

	# def destroy
	# 	@user_profile.destroy
	# 	redirect_to root_path
	# end


private

	def find_user_profiles
		@user_profile = UserProfile.find(params[:id])
	end

    def user_params
     params.require(:user_profile).permit(:username, :bio, :avatar, :sex, :age)
    end
end
