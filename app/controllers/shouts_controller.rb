class ShoutsController < ApplicationController

#added together with text_controller and photo_controller
  def create
    current_user.shouts.create(shout_params)
    redirect_to dashboard_path, notice: "You shouted!"
  end

  private

  def shout_params
    {
      content: shout_content,
      public: params[:public] == "1"
    }
  end


  def shout_content
    raise "what are you doing?"
  end


end
