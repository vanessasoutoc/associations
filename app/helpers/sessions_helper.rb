module SessionsHelper
	def sign_in(user)
		persistent_session_token = User.new_persistent_session_token
# NOTE: Using temporary cookie to end session when browser closed
# To persist session, comment temporary cookie and uncomment permanent cookie
		cookies[:persistent_session_token] = persistent_session_token
#		cookies.permanent[:persistent_session_token] = persistent_session_token
		user.update_attribute(:persistent_session_token, User.digest(persistent_session_token))
		self.current_user = user
	end

	def signed_in?
		!current_user.nil?
	end

	def current_user=(user)
		@current_user = user
	end

	def current_user
		persistent_session_token = User.digest(cookies[:persistent_session_token])
		@current_user ||= User.find_by(persistent_session_token: persistent_session_token)
	end

	def sign_out
		current_user.update_attribute(:persistent_session_token,
																	User.digest(User.new_persistent_session_token))
		cookies.delete(:persistent_session_token)
		self.current_user = nil
	end
end
