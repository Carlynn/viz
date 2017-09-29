class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  private

  # GET RID OF EXPLANATORY COMMENTS (i.e. line 7) BEFORE COMMITS
  # Try to clean out commented out code quickly so you're not clogging up codebase with them
      # Need to redirect users to the profile page
    # def after_sign_in_path_for(resource)
    #   @user = User.friendly.find(params[:slug])
    #   redirect_to user_path(@user)
    # end

end
