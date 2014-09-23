module ApplicationHelper
	# Product view table sorting implementation
	def sortable(column, title = nil)
		title ||= column.upcase
		link_class = column == sort_column ? "current #{sort_direction}" : nil
		direction = column == sort_column && sort_direction == "asc" ? "desc" : "asc"

		span_class = ""
		if (column != sort_column)
			span_class = "glyphicon glyphicon-sort"
		elsif (direction == "asc")
			span_class = "glyphicon glyphicon-arrow-down"
		elsif (direction == "desc")
			span_class = "glyphicon glyphicon-arrow-up"
		end

		link_to({sort: column, direction: direction}, {class: link_class}) do
		  (title + ' ' + content_tag(:span, "", class: span_class)).html_safe
		end
	end

	# Used to populate state select control in Customer add and edit form
	def us_states
			[
				['Alabama', 'Alabama'],
				['Alaska', 'Alaska'],
				['Arizona', 'Arizona'],
				['Arkansas', 'Arkansas'],
				['California', 'California'],
				['Colorado', 'Colorado'],
				['Connecticut', 'Connecticut'],
				['Delaware', 'Delaware'],
				['District of Columbia', 'District of Columbia'],
				['Florida', 'Florida'],
				['Georgia', 'Georgia'],
				['Hawaii', 'Hawaii'],
				['Idaho', 'Idaho'],
				['Illinois', 'Illinois'],
				['Indiana', 'Indiana'],
				['Iowa', 'Iowa'],
				['Kansas', 'Kansas'],
				['Kentucky', 'Kentucky'],
				['Louisiana', 'Louisiana'],
				['Maine', 'Maine'],
				['Maryland', 'Maryland'],
				['Massachusetts', 'Massachusetts'],
				['Michigan', 'Michigan'],
				['Minnesota', 'Minnesota'],
				['Mississippi', 'Mississippi'],
				['Missouri', 'Missouri'],
				['Montana', 'Montana'],
				['Nebraska', 'Nebraska'],
				['Nevada', 'Nevada'],
				['New Hampshire', 'New Hampshire'],
				['New Jersey', 'New Jersey'],
				['New Mexico', 'New Mexico'],
				['New York', 'New York'],
				['North Carolina', 'North Carolina'],
				['North Dakota', 'North Dakota'],
				['Ohio', 'Ohio'],
				['Oklahoma', 'Oklahoma'],
				['Oregon', 'Oregon'],
				['Pennsylvania', 'Pennsylvania'],
				['Puerto Rico', 'Puerto Rico'],
				['Rhode Island', 'Rhode Island'],
				['South Carolina', 'South Carolina'],
				['South Dakota', 'South Dakota'],
				['Tennessee', 'Tennessee'],
				['Texas', 'Texas'],
				['Utah', 'Utah'],
				['Vermont', 'Vermont'],
				['Virginia', 'Virginia'],
				['Washington', 'Washington'],
				['West Virginia', 'West Virginia'],
				['Wisconsin', 'Wisconsin'],
				['Wyoming', 'Wyoming']
			]
	end
end
