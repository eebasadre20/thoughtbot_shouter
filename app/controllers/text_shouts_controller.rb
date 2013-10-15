class TextShoutsController <ShoutsController

  # def create
  #   text_shout = TextShout.new(params[:text_shout])
  #   shout = current_user.shouts.create(content: text_shout)
  #   redirect_to dashboard_path, notice: "You shouted!"
  # end

  def create
    super
  end

  private

  def shout_content
    TextShout.new(params[:text_shout])
  end

end
