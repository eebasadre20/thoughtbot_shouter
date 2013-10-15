require 'spec_helper'

describe User do
  it "#can_follow? unless self" do
    user = create(:user)
    expect(user.can_follow?(user)).to eq(false)
  end

  it "#can_follow? everyone else" do
    follower = create(:user)
    unfollowed_user = create(:user)
    expect(follower.can_follow?(unfollowed_user)).to eq(true)
  end

  it "#can_follow? unless already following" do
    user = create(:user)
    another_user = create(:user)
    user.follow(another_user)
    expect(user.can_follow?(another_user)).to eq(false)
  end

end
