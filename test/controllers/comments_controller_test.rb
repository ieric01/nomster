require 'test_helper'

class CommentsControllerTest < ActionController::TestCase
  test "comment saved to db" do
  	user = FactoryGirl.create(:user)
  	sign_in user
  	place = FactoryGirl.create(:place, :user => user)
		post :create, :place_id => place.id, :comment => {
			:message => "I love the burritos",
			:rating => "5_stars"
		}
  	assert_redirected_to place_path(place)
  	comment = Comment.last
  	assert_equal "I love the burritos", comment.message
  	assert_equal "5_stars", comment.rating
  end

end
