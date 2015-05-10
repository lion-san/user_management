class RemoconController < ApplicationController
  def save
  
    @remocon = remocon_params
    @remocon.save
    render 'save'
  end

  private

  def remocon_params

    remocon = Remocon.new(params.require(:remocon).permit(:maker))
    
    params["buttons"].each do |btn|
      button = Button.new(btnId: btn[:btnId],  btnCode: btn[:btnCode])
      remocon.buttons << button 
    end
    
    return remocon
  end

end
