class RemoconController < ApplicationController
  def save
  
    @remocon = remocon_params
    @remocon.save

    redirect_to 'save'
  end

  private

  def remocon_params

    remocon = Remocon.new(params.require(:remocon).permit(:maker))
    remocon[:userid] = "0000" #hoge@piyo.org
    
    params["buttons"].each do |btn|
      button = Button.new(btnId: btn[:btnId],  btnCode: btn[:btnCode])
      remocon.buttons << button 
    end
    
    return remocon
  end

end
