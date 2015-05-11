class LogsController < ApplicationController

  def index
  end


  def create
    @log = Log.new(log_params)
    if @log.save
      #OK
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
