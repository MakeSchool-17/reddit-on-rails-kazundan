require 'test_helper'

class VoteTest < ActiveSupport::TestCase
  def setup
      @vote = votes(:one)
  end

  test "vote is valid" do
      assert @vote.valid?
  end

  test "vote can belong to both post and comment" do
    post = posts(:js)
    comment = comments(:commentjs)
    vote1 = votes(:one)
    vote2 = votes(:two)

    vote1.votable = post
    vote1.save
    vote1.reload
    assert_equal post, vote1.votable
    assert post.reload.votes.include? vote1

    vote2.votable = comment
    vote2.save
    vote2.reload
    assert_equal comment, vote2.votable
    assert comment.reload.votes.include? vote2
  end

end
