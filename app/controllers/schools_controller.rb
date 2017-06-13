class SchoolsController < ApplicationController

before_action :authenticate_user!, except: [:index, :show]

  def index
    @schools = School.all
  end

  def new
    @school = School.new
  end

  def create
    @school = School.create!(school_params)
          redirect_to "/schools/"
  end

  def edit
      @school = School.find(params[:id])
  end

  def update
      @school = School.find(params[:id])
      @school.update(school_params)
        redirect_to school_path(@school)
  end

  def show
    @school = School.find(params[:id])
  end

  def destroy
          @school = School.find(params[:id])
          @school.destroy
          redirect_to schools_path
  end
end

private
  def schools_params
    params.require(:school).permit(:name, :city, :state, :url, :img_url)
  end
