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

  def destroy
    photo = params[:type] == "photo"
    video = params[:type] == "video"
    object = Story.find(params[:id])
    object.destroy

    redirect_to edit_user_path
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
