class JobsController < ApplicationController
  before_filter :authenticate_account!, :except => [:index, :show]
  # GET /jobs
  # GET /jobs.xml
  def index
    @jobs = Job.all(:order=> 'created_at DESC')
    @title  = "#{@jobs.first.job_title} at #{@jobs.first.company_name} in #{@jobs.first.job_location}"

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @jobs }
      format.atom  { render :layout => false }
    end
  end
    
    # GET /jobs
    # GET /jobs.xml
    # def feed
    #   @jobs = Job.all(:order => "updated_at DESC", :limit => 20)
    # 
    #   respond_to do |format|
    #     format.xml  { render :xml => @jobs }
    #     format.atom { render :action => "feed", :layout => false }#feed.atom.builder
    #   end
    # end

    # GET /jobs/1
    # GET /jobs/1.xml
    def show
      @job = Job.find(params[:id])
      @title  = "#{@job.job_title} at #{@job.company_name} in #{@job.job_location}"
      

      respond_to do |format|
        format.html # show.html.erb
        format.xml  { render :xml => @job }
      end
    end

    # GET /jobs/new
    # GET /jobs/new.xml
    def new
      @job = Job.new
      @title  = "Post a new job for only 40 pounds for 30 days"

      respond_to do |format|
        format.html # new.html.erb
        format.xml  { render :xml => @job }
      end
    end

    # GET /jobs/1/edit
    def edit
      @job = Job.find(params[:id])
    end

    # POST /jobs
    # POST /jobs.xml
    def create
      @job = Job.new(params[:job])

      respond_to do |format|
        if @job.save
          format.html { redirect_to(@job, :notice => 'Job was successfully created.') }
          format.xml  { render :xml => @job, :status => :created, :location => @job }
        else
          format.html { render :action => "new" }
          format.xml  { render :xml => @job.errors, :status => :unprocessable_entity }
        end
      end
    end

    # PUT /jobs/1
    # PUT /jobs/1.xml
    def update
      @job = Job.find(params[:id])

      respond_to do |format|
        if @job.update_attributes(params[:job])
          format.html { redirect_to(@job, :notice => 'job was successfully updated.') }
          format.xml  { head :ok }
        else
          format.html { render :action => "edit" }
          format.xml  { render :xml => @job.errors, :status => :unprocessable_entity }
        end
      end
    end

    # DELETE /jobs/1
    # DELETE /jobs/1.xml
    def destroy
      @job = Job.find(params[:id])
      @job.destroy

      respond_to do |format|
        format.html { redirect_to(jobs_url) }
        format.xml  { head :ok }
      end
    end
  end