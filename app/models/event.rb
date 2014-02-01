class Event < ActiveRecord::Base

	# validate :destination_is_present, on: :index

	def self.search(options)
		start_day = options[:start_date].to_date.beginning_of_day
		final_day = options[:end_date].to_date.end_of_day

	  if options
	    find(:all, :conditions =>["location = ? AND concert_date >= ? AND concert_date <= ?", options[:location], start_day, final_day]) 
	    #change to where
	  else
	    find(:all)
	  end
	end	

	protected




end
