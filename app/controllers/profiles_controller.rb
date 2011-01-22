class ProfilesController < ApplicationController
  before_filter :authenticate_account!, :except => [:index, :show]
  before_filter :their_account, :except => [:index, :show]
  # GET /profiles
  # GET /profiles.xml
  def index
    @title    = "Find all web application designers, developers and professionals here" 
    @profiles = Profile.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @profiles }
    end
  end

  # GET /profiles/1
  # GET /profiles/1.xml
  def show
    @profile          = Profile.find(params[:id])
    @title            = "#{@profile.name} a #{@profile.title} from #{@profile.city} #{@profile.country}"
    @meta_author      = @profile.name
    @meta_description = @profile.scratch

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @profile }
    end
  end

  # GET /profiles/new
  # GET /profiles/new.xml
  def new
    @profile = Profile.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @profile }
    end
  end

  # GET /profiles/1/edit
  def edit
    @profile = Profile.find(params[:id])
    if account_signed_in? && (current_account.id == @profile.account.id)
      @profile
    else
      redirect_to(@profile, :action => "show", :alert => "That was not your profile, was it?")
    end
  end

  # POST /profiles
  # POST /profiles.xml
  def create
    @profile = Profile.create! (params[:profile].merge(:account_id => current_account.id))

    respond_to do |format|
      if @profile.save
        format.html { redirect_to(@profile, :notice => 'Profile was successfully created.') }
        format.xml  { render :xml => @profile, :status => :created, :location => @profile }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @profile.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /profiles/1
  # PUT /profiles/1.xml
  def update
    @profile = current_account.profile # .find(params[:id])

    respond_to do |format|
      if @profile.update_attributes(params[:profile])
        format.html { redirect_to(@profile, :notice => 'Profile was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @profile.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /profiles/1
  # DELETE /profiles/1.xml
  def destroy
    @profile = current_account.profile #.find(params[:id])
    @profile.destroy

    respond_to do |format|
      format.html { redirect_to(profiles_url) }
      format.xml  { head :ok }
    end
  end
  
  private
  def their_account
    current_account
  end
end
