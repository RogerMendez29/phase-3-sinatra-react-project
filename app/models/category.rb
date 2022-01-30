require "pry"

class Category < ActiveRecord::Base
    has_many :items
    has_many :favorites

    def self.toggle_display(title)
       category =  self.find_by(title: title)
       isdisplayed = category.display
       category.update(display: !isdisplayed) 

       items = category.items
       items.each do |item| 
        item.update(availability: !isdisplayed)
       end
       

    end
end