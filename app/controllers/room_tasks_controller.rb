class RoomTasksController < ApplicationController


  def index

  end

  def new
    @roomtask = RoomTask.new()
  end

  def edit

    @roomtask = RoomTask.find(params[:id])

  end

  def update

    # get the account
    @roomtask = RoomTask.find(params[:id])
    # logger.debug params[:id]

    @roomtask.end_date = Time.now

    # update the account
    if @roomtask.update_attributes(roomtask_params())
      # if it updates

      @roomtask = RoomTask.new()

      # render  :edit
      redirect_to new_room_task_path(@roomtask)
    else
      # if it does not update
      # send them back to the edit screen
      render  :edit
    end

  end

  def destroy


  end

  def create

    @roomtask = RoomTask.new(roomtask_params())

    @roomtask.user = current_user

    @roomtask.start_date = Time.now

    if @roomtask.save
      redirect_to edit_room_task_path(id: @roomtask.id)
    else
      render  :new
    end

  end

  private

    def roomtask_params
      logger.debug params.inspect
      params.require(:room_task).permit(:room_id, :task_id, :start_date, :end_date, :note)
    end

end
