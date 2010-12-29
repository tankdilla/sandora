module ApplicationHelper
	def page_title
	  "#{controller.controller_name.titleize} | #{controller.action_name.titleize}"
	end
	
	def authorized_link_to(name, options={}, html_options={})
		if current_user && current_user.admin
			link_to name, options, html_options
		else
			''
		end
	end
end
