require "pry"
class Item < ActiveRecord::Base
   belongs_to :category

   def self.set_special_of_day
      current_day= Time.new.strftime("%A")
      specials = Item.all.where(daily_special: true)

     if current_day == "Monday"
      specials.first
        
     elsif current_day == "Tuesday"
      specials.second
   elsif current_day == "Tuesday"
      specials.second

     else
      null
        
     end
      

# binding.pry

   end




end