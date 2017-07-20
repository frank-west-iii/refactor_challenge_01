require 'test_helper'

class DigestReferenceTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test ".find_recipients" do
    5.times do |i|
      User.create(name: "User #{i}")
    end
    users = User.first(4)

    users.each do |user|
      rand(1..4).times do |i|
        DigestReference.create(user: user)
      end
    end

    assert_equal users, DigestReference.find_recipients
  end
end
