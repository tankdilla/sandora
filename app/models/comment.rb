class Comment < ActiveRecord::Base
	after_create :send_comment_notification
	
	def send_comment_notification
		Notifier.comment_received(self).deliver
	end
end
