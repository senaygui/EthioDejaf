class BusinessesController < ApplicationController
before_action :authenticate_user!, only: [:new,:show, :edit]
before_action :find_businesses, only: [:show, :edit, :update, :destroy]

	def new
	 @business = current_user.businesses.build 
	end

	def create
		@business = current_user.businesses.build (business_params)

		if @business.save

			 flash[:notice] = "you have submitted #{@business.business_name}"
			redirect_to @business
		else

			render :new
		end
	end

	def edit
	end

	def update
		if @business.update_attributes(business_params)

			flash[:notice] = "successfully updated"
			redirect_to @business
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
		@business = Business.find(params[:id])
	end

    def business_params
     params.require(:business).permit(:business_name, :business_photo, :business_email, :business_description, :business_catagory, :mobile_number, :business_address)
    end
end
