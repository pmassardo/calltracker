class UsersController < ApplicationController

  skip_before_action :require_login, only: [:new, :create]
  # before_action :set_user, only: [:show, :edit, :update, :destroy]
  # skip_before_action :require_login, except: [:destroy]

  # GET /users
  # GET /users.json
  def index
    @users = User.all
  end

  # GET /users/1
  # GET /users/1.json
  def show
    set_user
  end

  # GET /users/new
  def new
    @user = User.new
  end

  # GET /users/1/edit
  def edit
    set_user
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(user_params)

    # respond_to do |format|
      if @user.save

        auto_login(@user)

        go_new_task()

        # format.html { redirect_to(:users, notice: 'Welcome ' + @user.email ) }
      # format.html { redirect_to @user, notice: 'User was successfully created.' }
      # format.json { render :show, status: :created, location: @user }
      else
        respond_to do |format|
          format.html { render :new }
        end
        # format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    # end
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    
    # @user = User.find(params[:id])
    set_user()

    if @user.update(user_params)

      go_new_task()

      # format.html { redirect_to @user, notice: 'User was successfully updated.' }
      # format.json { render :show, status: :ok, location: @user }
    else
      respond_to do |format|
        format.html { render :edit }
      # format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    # @user = User.find(params[:id])
    # @user.destroy
    # respond_to do |format|
    #   format.html { redirect_to users_url, notice: 'User was successfully destroyed.' }
    #   # format.json { head :no_content }
    # end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    def go_new_task

      @roomtask = RoomTask.new()

      # render  :edit
      redirect_to new_room_task_path(@roomtask)

    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:email, :password, :password_confirmation, :first_name, :last_name)
    end
end
