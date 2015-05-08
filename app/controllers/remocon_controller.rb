class RemoconController < ApplicationController
  def save
    @remocon = event_params
    @remocon.save
  end

  private

  def remocon_params

    json = params[:json]

    remocon = ActiveSupport::JSON.decode json
  end

end
