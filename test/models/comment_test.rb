require 'test_helper'

class CommentTest < ActiveSupport::TestCase
  test "comment_readable_rating" do
  	comment = Comment.new(:rating => '1_star')
  	expected = "one star"
  	actual  = comment.humanized_rating
  	assert_equal expected, actual
  end
end
