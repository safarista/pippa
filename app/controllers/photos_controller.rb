class PhotosController < ApplicationController
  before_filter :whose_profile
  # GET /photos
  # GET /photos.xml
  def index
    @photos = @profile.photos.order(:created_at, {:limit => 6})
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @photos }
    end
  end

  # GET /photos/1
  # GET /photos/1.xml
  def show
    @photo = @profile.photos.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @photo }
    end
  end

  # GET /photos/new
  # GET /photos/new.xml
  def new
    #@business = Business.find(params[:business_id]) if @business
    @photo    = @profile.photos.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @photo }
    end
  end

  # GET /photos/1/edit
  def edit
    @photo    = @profile.photos.find(params[:id])
  end

  # POST /photos
  # POST /photos.xml
  def create
    @photo = @profile.photos.create(params[:photo])

    respond_to do |format|
      if @photo
        format.html { redirect_to(@profile, :notice => 'photo was successfully created.') }
        format.xml  { render :xml => @profile, :status => :created, :location => @photo }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @photo.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /photos/1
  # PUT /photos/1.xml
  def update
    @photo    = @profile.photos.find(params[:id])

    respond_to do |format|
      if @photo.update_attributes(params[:photo])
        format.html { redirect_to(@profile, :notice => 'photo was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @photo.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /photos/1
  # DELETE /photos/1.xml
  def destroy
    @photo = @profile.photos.find(params[:id])
    @photo.destroy

    respond_to do |format|
      format.html { redirect_to(profiles_url) }
      format.xml  { head :ok }
    end
  end
  
  private
  
  def whose_profile
    @profile = current_account.profile
  end
end




#   respond_to :html, :xml, :json
#   def show
#     @photo = Photo.find(params[:photo])
#     @profile = @photo.profile.find(params[:profile_id])
#     redirect_to(@profile)
#     
#   end
#   
#   def create
#     @profile = Profile.find(params[:profile_id])
#     @photo = @profile.photos.create(params[:photo])
#     redirect_to profile_path(@profile, :notice => 'Photo was succesfuly created')
#   end
#   
#   def update
#     @profile = Profile.find(params[:profile_id])
#     @photo = @profile.photos.find(params[:photo])
#     
#     if @photo.update_attributes(params[:photo])
#       redirect_to(@profile, :notice => 'Photograph was succesfully updated')
#     else
#       render "new"
#     end
#   end
#   
#   def destroy
#     @profile = Profile.find(params[:profile_id])
#     @photo = @profile.photos.find(params[:photo])
#     @photo.destroy
#     
#     redirect_to(profiles_url)
#   end
#   
# end