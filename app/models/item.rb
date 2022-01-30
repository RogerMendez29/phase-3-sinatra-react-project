require "pry"
class Item < ActiveRecord::Base
   belongs_to :category
   has_many :favorites

   def self.make_popular(name)
      item = self.find_by(name: name)
      is_popular = item.popular
      item.update(popular: !is_popular)
   end

   def self.change_available(name)
      item = self.find_by(name: name)
      is_available = item.availability
      item.update(availability: !is_available)


   end



end