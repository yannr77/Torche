class SurfersController < ApplicationController
  # GET /surfers
  def index
    @surfers = Surfer.all #récupère tout les surfrs dans la variable @surfers
  end

  # GET /surfers/1
  def show
    @surfer = Surfer.find(params[:id])
  end

  # GET /surfers/new
  def new
    @surfer = Surfer.new
  end

  # GET /surfers/1/edit
  def edit
    @surfer = Surfer.find(params[:id])
  end

  # POST /surfers
  def create
    @surfer = Surfer.new(params[:surfer])

    respond_to do |format|
      if @surfer.save
        format.html { redirect_to(@surfer, :notice => 'Surfer was successfully created.') }
      else
        format.html { render :action => "new" }
      end
    end
  end

  # PUT /surfers/1
  def update
    @surfer = Surfer.find(params[:id])

    respond_to do |format|
      if @surfer.update_attributes(params[:surfer])
        format.html { redirect_to(@surfer, :notice => 'Surfer was successfully updated.') }
      else
        format.html { render :action => "edit" }
      end
    end
  end

  # DELETE /surfers/1
  def destroy
    @surfer = Surfer.find(params[:id])
    @surfer.destroy

    respond_to do |format|
      format.html { redirect_to(surfers_url) }
    end
  end
end
