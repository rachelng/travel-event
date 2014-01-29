class EventsController < ApplicationController

  def index
  	@events = Event.all
  end

  def show
  	@events = Event.search(params[:search])
  end

end
