class VizController < ApplicationController

  # GET RID OF COMMENTS BEFORE COMMITS
  def index
    @listings = JobListing.all

  end
end
