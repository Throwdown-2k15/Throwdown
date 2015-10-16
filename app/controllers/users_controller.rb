class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])

    respond_to do |format|
      format.html #should be profile page?
      format.xml { render :xml => @user }
    end
  end

  def dashboard

  end

  def edit
  end

end
