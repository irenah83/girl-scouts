class WelcomeController < ApplicationController
  def index
  end
  
	def report
		scouts.all.each do |scout|
	end

	def moving
		c1 = Chapter.where(name: "Cookie Monsters").first
		c2 = Chapter.where(name: "East Coast Bakers").first
		
		Chapter.transaction do
			c1.number_of_scouts -= 1
			c2.number_of_scouts += 1
			c1.save!
			c2.save!
		end
	end
end

