class OauthController < ApplicationController
  skip_before_filter :require_login

  def oauth
    session[:return_to_url] = request.referer unless request.referer =~ /oauth/
    login_at(:twitter)
  end

  def callback
    provider = params[:provider]
    if @user = login_from(provider)
      redirect_back_or_to root_path, :notice => "Logged in from #{provider.titleize}!"
    else
      begin
        @user = create_from(provider)

        redirect_back_or_to root_path, :notice => "Logged in from #{provider.titleize}!"

        reset_session
        auto_login(@user)
      rescue
        redirect_back_or_to root_path, :alert => "Failed to login from #{provider.titleize}!"
      end
    end
  end
end
