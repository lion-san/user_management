class RemoconsController < ApplicationController

  protect_from_forgery with: :null_session
  
  def index
    @remocons = Remocon.find_by(id: "0000")[:remocons]
      respond_to do |format|
      format.html
      format.json { render :json => @remocons }
    end
  end

  def show
    @remocon = Remocon.find_by(id: "0000")
    
    respond_to do |format|
      format.html
      format.json { render :json => @remocon.to_json(
        :only => ['maker'],
        :include =>{
          :buttons => { :only => ['btnId', 'btnCode'] }
        }
      ) }
    end
  end

  def save
  
    @remocon = Remocon.find_or_create_by(id: "0000")
    @remocon.destroy
    @remocon = remocon_params
    @remocon.save
    
    redirect_to remocons_path
  end

  private

  def remocon_params

    remocon = Remocon.new(params.require(:remocon).permit(:maker))
    remocon[:id] = "0000" #hoge@piyo.org
    
    params["buttons"].each do |btn|
      button = Button.new(btnId: btn[:btnId],  btnCode: btn[:btnCode])
      remocon.buttons << button 
    end
    
    return remocon
  end

end
