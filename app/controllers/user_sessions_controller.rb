class UserSessionsController < ApplicationController

  skip_before_action :require_login, except: [:index, :destroy]

  def new

    @user = User.new

  end

  def create

    if @user = login(params[:email], params[:password])

      redirect_back_or_to(new_room_task_path, notice: 'Login successful')

    else

      flash.now[:notice] = 'Login failed'
      render action: 'new'

    end
  end

  def destroy
    logout
    redirect_to(new_room_task_path, notice: 'Logged out!')
  end
end
