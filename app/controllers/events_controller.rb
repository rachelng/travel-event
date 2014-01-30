class EventsController < ApplicationController

  def index
  	@events = Event.all
  end

  def show
  	@events = Event.search(params[:search])
  	# @track_id = "81810589"
  end

end
