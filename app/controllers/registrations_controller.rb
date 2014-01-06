class RegistrationsController < Devise::RegistrationsController
	before_filter :configure_permitted_parameters

	protected 

	def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) do |u|
      u.permit(:email, :password, :password_confirmation, :remember_me, :first_name, :last_name, :profile_name)
    end
    devise_parameter_sanitizer.for(:account_update) do |u|
      u.permit(:email, :password, :password_confirmation, :current_password, :username, :stripe_token, :comments, :credit, :user_id, :created_at, :updated_at)
    end
  end

end