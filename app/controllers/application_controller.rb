class ApplicationController < ActionController::Base
  before_filter :configure_permitted_parameters, if: :devise_controller?
  after_filter :store_location

  def store_location
    return unless request.get?
    if (request.path != "/users/sign_in" &&
        request.path != "/users/sign_up" &&
        request.path != "/users/password/new" &&
        request.path != "/users/password/edit" &&
        request.path != "/users/confirmation" &&
        request.path != "/users/sign_out" &&
        !request.xhr?)
      session[:previous_url] = request.fullpath
    end
  end

  def after_sign_in_path_for(resource)
    session[:previous_url] || root_path
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) { |u|
      u.permit(
        :username,
        :email,
        :password,
        :password_confirmation,
        :remember_me,
      )
    }

    devise_parameter_sanitizer.for(:sign_in) { |u|
      u.permit(
        :login,
        :username,
        :email,
        :password,
        :remember_me,
      )
    }

    devise_parameter_sanitizer.for(:account_update) { |u|
      u.permit(
        :username,
        :email,
        :password,
        :password_confirmation,
        :current_password,
      )
    }
  end
  protect_from_forgery with: :exception
end
