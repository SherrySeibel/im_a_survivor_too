class HomeController < ApplicationController
  def index
    @profile = Profile.new
  end
end
