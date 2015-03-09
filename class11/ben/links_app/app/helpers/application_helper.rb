module ApplicationHelper

	def sort_col(column, title = nil)
		# if title is nil, default to the name of the column titleized
		title ||= column.titleize
		
		if (column == params[:sort] && params[:direction] == "asc")
			direction = "desc"
		else
			direction = "asc"
		end

		# link is to action in same controller, hence no controller option specified 
		link_to title, :sort => column, :direction => direction
	end

	# same as above method, but reveresed
	def sort_col_reverse(column, title = nil)
		title ||= column.titleize
		if (column == params[:sort] && params[:direction] == "desc")
			direction = "asc"
		else
			direction = "desc"
		end
		link_to title, :sort => column, :direction => direction
	end

end
