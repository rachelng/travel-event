class EventsController < ApplicationController

  def index
  	@events = Event.all
  end

  def show
  	@events = Event.search(params[:search])
  	# @track_id = "81810589"
  end

  def schedule
  	@schedule_events = Event.find(params["add_schedule"])
  end

  def email
  	ScheduleMailer.schedule_email(params["email"]).deliver
  	redirect_to "/"
  end

end
