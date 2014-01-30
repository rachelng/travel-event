class EventsController < ApplicationController

  def index
  	@events = Event.all
  end

  def show
  	@events = Event.search(params[:search])
  	# @track_id = "81810589"
  end

  def schedule
  	@schedule_events = Event.where(params[:add_schedule] == '1')
  end

end
