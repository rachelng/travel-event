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
    @schedule_events = parse_add_schedule(params)  
  end

  def email
    @schedule_events = parse_add_schedule(params)

  	ScheduleMailer.schedule_email(params["email"], @schedule_events).deliver
  	redirect_to "/"
  end

  def parse_add_schedule(my_params)
    if !my_params["add_schedule"].blank?
      ids = my_params["add_schedule"].split(',')
      schedule_events = Event.find(ids)
    else
      schedule_events = []
    end
    logger.debug(schedule_events)
    schedule_events
  end


end
