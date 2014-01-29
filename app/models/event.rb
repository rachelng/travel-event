class Event < ActiveRecord::Base

def self.search(options)
	am = options[:concert_date].to_date.beginning_of_day
	pm = options[:concert_date].to_date.end_of_day

  if options
    find(:all, :conditions =>["location = ? AND concert_date >= ? AND concert_date <= ?", options[:location], am, pm]) 
    #change to where
  else
    find(:all)
  end
end

end
