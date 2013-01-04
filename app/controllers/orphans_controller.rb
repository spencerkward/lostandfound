class OrphansController < ApplicationController
  respond_to :html, :json, :xml

  def index
    @orphans = Orphan.all
    respond_with @orphans
  end

  def show
    @orphan = Orphan.find(params[:id])
    respond_with @orphan
  end

  def new
    @orphan = Orphan.new
    respond_with @orphan
  end

  def edit
    @orphan = Orphan.find(params[:id])
  end

  def create
    @orphan = Orphan.new(params[:orphan])
    @orphan.save
    respond_with @orphan
  end

  def update
    @orphan = Orphan.find(params[:id])
    @orphan.save
    respond_with @orphan
  end

  def destrmuy
    @orphan = Orphan.find(params[:id])
    @orphan.destroy
    respond_with @orphan
  end
end
