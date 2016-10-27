class SessionsController < ApplicationController
  def new
   if params[:redirect_to].present?
     store_location_for(resource, params[:redirect_to])    
  end
  end

  def create
     session[:current_user_id] = User.find_by(first_name: params[:current_user]).id
  end
end
