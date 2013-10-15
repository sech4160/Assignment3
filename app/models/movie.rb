class Movie < ActiveRecord::Base
   def self.all_ratings
      a = Array.new
      self.select("rating").uniq.each {|e1| a.push(e1.rating)}
      a.sort.uniq
   end
end
