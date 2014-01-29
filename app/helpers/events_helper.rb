module EventsHelper

	def formatted_datetime(date)
		date.strftime("%b %d, %Y at %I:%M%p")
	end
end
