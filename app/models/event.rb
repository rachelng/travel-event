class Event < ActiveRecord::Base

def self.search(search)
  if search
    find(:all, :conditions => ["location = ?", search[:location]])
  else
    find(:all)
  end
end

end
