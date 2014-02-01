class ScheduleMailer < ActionMailer::Base

	helper EventsHelper

	def schedule_email(email, events)
		@events = events
		body = render_to_string("schedule_email")
		mail :subject => "Your itinerary!",
			 :to => email,
			 :from => "traveleventsapp@gmail.com",
			 :body => body,
			 :content_type => "text/html"
	end

end
