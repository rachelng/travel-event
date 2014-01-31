

class ScheduleMailer < ActionMailer::Base
  
  # default from: "traveleventsapp@gmail.com"

  def schedule_email(email)
  	mail :subject => "Your itinerary!",
  		 :to => email,
  		 :from => "traveleventsapp@gmail.com"
  end

end
