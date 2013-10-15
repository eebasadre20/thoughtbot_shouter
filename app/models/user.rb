class User < ActiveRecord::Base
  include Clearance::User
  #models/concerns/following.rb, in Rails 4 would be "include Following"
  include Concerns::Following
  has_many :shouts

  def timeline
    Timeline.new(self_and_followed_user_ids)
    #Shout.where(user_id: self_and_followed_user_ids).current
  end

  # def public_timeline
  #   Timeline.new(id)
  # end
end
