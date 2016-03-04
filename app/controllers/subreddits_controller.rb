class SubredditsController < ApplicationController
  def new
  end

  def create
    subreddit = Subreddit.new(subreddit_params)
    subreddit.save
  end

  private
  def subreddit_params
      params.require(:subreddit).permit(:title)
  end
end
