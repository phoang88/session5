module SessionsHelper
	def sign_in(user)
		session[:remember_token] = user.id
		self.current_user = User.find(session[:remember_token])
	end

	def sign_out
		@current_user = nil
		reset_session
	end

	def current_user=(user)
    	@current_user = user
 	 end
end
