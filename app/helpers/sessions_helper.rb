module SessionsHelper
	def sign_in(user)
		session[:remember_token] = user.id
		@current_user = User.find(session[:remember_token])
	end

	def sign_out
		@current_user = nil
		reset_sesion
	end
end
