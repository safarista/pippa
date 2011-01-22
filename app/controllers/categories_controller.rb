class CategoriesController < ApplicationController
  before_filter :authenticate_account!
  def index
    @categories = Category.all
    
    respond_to do |format|
      format.html
    end
  end
  
  def create
    @category = Category.create(params[:category])
    
    respond_to do |format|
    if @category.save
        format.html { redirect_to(categories_path, :notice  => "created successfully ") }
      else
        format.html {render :action => "index"}
      end
    end
  end
  
  def destroy
    @category = Category.find(params[:id])
    @category.destroy
    redirect_to(categories_path, :notice => "category deletion ok")
  end
end