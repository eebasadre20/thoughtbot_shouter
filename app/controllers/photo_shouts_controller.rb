class PhotoShoutsController <ShoutsController

  # def create
  #   photo_shout = PhotoShout.new(params[:photo_shout])
  #   shout = current_user.shouts.create(content: photo_shout)
  #   redirect_to dashboard_path, notice: "You shouted!"
  # end

  def create
    super
  end

  private

  def shout_content
    PhotoShout.new(params[:photo_shout])
  end


end
