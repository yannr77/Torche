class SurfersController < ApplicationController
  # GET /surfers
  # GET /surfers.xml
  def index
    @surfers = Surfer.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @surfers }
    end
  end

  # GET /surfers/1
  # GET /surfers/1.xml
  def show
    @surfer = Surfer.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @surfer }
    end
  end

  # GET /surfers/new
  # GET /surfers/new.xml
  def new
    @surfer = Surfer.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @surfer }
    end
  end

  # GET /surfers/1/edit
  def edit
    @surfer = Surfer.find(params[:id])
  end

  # POST /surfers
  # POST /surfers.xml
  def create
    @surfer = Surfer.new(params[:surfer])

    respond_to do |format|
      if @surfer.save
        format.html { redirect_to(@surfer, :notice => 'Surfer was successfully created.') }
        format.xml  { render :xml => @surfer, :status => :created, :location => @surfer }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @surfer.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /surfers/1
  # PUT /surfers/1.xml
  def update
    @surfer = Surfer.find(params[:id])

    respond_to do |format|
      if @surfer.update_attributes(params[:surfer])
        format.html { redirect_to(@surfer, :notice => 'Surfer was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @surfer.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /surfers/1
  # DELETE /surfers/1.xml
  def destroy
    @surfer = Surfer.find(params[:id])
    @surfer.destroy

    respond_to do |format|
      format.html { redirect_to(surfers_url) }
      format.xml  { head :ok }
    end
  end
end
