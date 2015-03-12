class SessionsController < ApplicationController
  def new
    @user = User.new
    render :new
  end

  def create
    user = User.new(user_params)

    @user = User.find_by_credentials(user.email, user.password)

    if @user.nil?
      flash.now[:error] = "Invalid credentials try again"
      @user = User.new(email: user.email)
      render :new
    else
      login!(@user)
      redirect_to @user
    end
  end

  def destroy
    logout!

    redirect_to new_session_url
  end
end
