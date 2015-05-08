class RemoconController < ApplicationController
  def save
  
    @remocon = remocon_params
    @remocon.save
  end

  private

  def remocon_params

    remocon = Remocon.new(params.require(:remocon).permit(:maker))
    remocon.buttons = []
    
    params.permit(:buttons).each do |btn|
      logger.debug(btn)
      #button = Button.new(btnId: "HOGE", btnCode: "PIYO")
      remocon.buttons << { :btnId => btn.btnId, :btnCode => btn.btnCode }
    end
    
    return remocon
  end

end
