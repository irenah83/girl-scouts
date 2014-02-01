girl-scouts
===========

Transaction:
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


3 tables:
<h1>Report</h1>
<% Organization.all.each do |organization| %>
	<h2><%= organization.organization_name %></h2>
	<%= organization.chapters.each do |chapter| %>
		<h3><%= chapter.name %></h3>
			<h4><%= chapter.leaders.each do |leader|%></h4>
				<h5><%= leader.first_name%></h5>
			<% end %>
		<% end %>
	<% end%>
	
	Group by:
	Requirements.group(:goal_type)
