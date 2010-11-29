module ApplicationHelper
	def page_title
	  "#{controller.controller_name.titleize} | #{controller.action_name.titleize}"
	end
end
