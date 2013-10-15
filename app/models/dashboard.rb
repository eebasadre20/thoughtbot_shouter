class Dashboard

  def initialize user
    @user = user
  end

  def timeline
    Timeline.new(timeline_user_ids)
  end

  def new_text_shout
    TextShout.new
  end

  def new_photo_shout
    PhotoShout.new
  end

  private

  def timeline_user_ids
    user.self_and_followed_user_ids
  end

  attr_reader :user

  #same as
  # def user
  #   @user
  # end

end
