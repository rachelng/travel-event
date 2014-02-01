class EventsController < ApplicationController

  def index
  	@events = Event.all
    # if params[:search] && !params[:search].present?
    #   return
    # else
    #   flash.now[:notice] = "Error!"
    # end
  end

  def show
    @events = Event.search(params[:search])
  end

  def schedule
  	@schedule_events = Event.find(params["add_schedule"])
  end

  def email

    ids = params["add_schedule"].split(',')
    events = Event.find(ids)
    
  	ScheduleMailer.schedule_email(params["email"], events).deliver
  	redirect_to "/"
  end

end
