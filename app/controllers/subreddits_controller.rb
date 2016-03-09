class SubredditsController < ApplicationController
  def new
  end

  def create
    subreddit = Subreddit.new(subreddit_params)
    subreddit.save
  end

  def update
      subreddit = Subreddit.find(params[:id])
      subreddit.title = subreddit_params["title"]
      subreddit.save
  end

  def index
    @subreddits = Subreddit.all
    # render "subreddits/index" (implied)
  end

  def show
    @subreddit = Subreddit.find(params[:id])
  end

  private
  def subreddit_params
      params.require(:subreddit).permit(:title)
  end
end
