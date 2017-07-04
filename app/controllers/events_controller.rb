class EventsController < ApplicationController
	before_action :authenticate_user!
 	before_action :find_business
	before_action :find_event, only: [:show, :edit, :update, :destroy]
	
	def index
		@events = Event.all
	end
	def new
		@event = Event.new
	end

	def create
		@event = Event.new(event_params)
		@business.events << @event
		current_user.events << @event

		if @event.save
			flash[:notice] = "welcome!!!!"
			redirect_to business_event_path(@business, @event)
		else
			render :new
		end
	end

	def edit
	end

	def update	
		if @event.update(event_params)
			flash[:notice] = "updated!!!!"
			redirect_to business_event_path(@business, @event)
		else
			render :edit
		end
	end

	def destroy
		@event.destroy
		redirect_to @event
	end

	private 

	def event_params
		params.require(:event).permit(:event_name, :event_description, :starting_date, :end_date, :event_photo)
	end

	def find_event
		@event = Event.find(params[:id])
	end 

	def find_business
		@business = Business.find(params[:business_id])
	end

	
end
