class HomeController < ApplicationController
  def index
    @profile = Profile.all
  end
end
