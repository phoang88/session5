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

  def current_user
  	@current_user ||= User.find(session[:remember_token]) unless session[:remember_token].nil?
	end

	def signed_in?
		!current_user.nil?
	end

	def same_user?(user)
		redirect_to(root_path) unless current_user?(user)
	end

	def current_user?
		user == current_user
	end
end
