class StoriesController < ApplicationController
  def index
    @stories = current_user.stories
  end

  def new
    @story = Story.new
  end

  def create
    story = current_user.stories.new(story_params)

    if story.save
      redirect_to user_path
    else
      render :new
    end
  end

  private

  def story_params
    params.require(:story).
      permit(
        :photo,
        :video,
        :description,
    )
  end
end
