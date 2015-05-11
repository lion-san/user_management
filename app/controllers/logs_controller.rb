class LogsController < ApplicationController

  def index

    @logs = Log.all

    respond_to do |format|
      format.html
      format.json { render :json => @logs.to_json(
        :only => ['time', 'userid', 'action', 'val1', 'val2', ]
      ) }
    end
  end


  def create
    @log = Log.new(log_params)
    if @log.save
      #OK
      redirect_to logs_path

    else
      #False
    end
  end


  private

  def log_params
    params.require(:log).permit(:time, :userid, :action,
                               :val1, :val2)
  end

end
