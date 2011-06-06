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
      # 1 N'ajouter la board que si elle n'est pas déjà présente
        # - verifier qu'elle est présente.
        # - si elle l'est, ne pas l'ajouter, sinon l'ajouter
      # 2 Retirer toutes les boards décochées:
        # - verifier les board cochées
        # - si elle est cochée et présente on touche pas, 
        # - si elle n'est pas coché et présente on suppr
      # 3 Revient à retirer toutes les boards non présentes dans le hash params[:boards]
      
    Rails.logger.debug { "Boards recu en param : #{params[:boards]}" }  

    #Gestion des boards non cochées
    check_boards = params[:boards].map { |id, value| Board.find(id) }
    uncheck_boards = Board.all - check_boards

    # Gestion des boards cochées
    check_boards.each do |board|
      @surfer.boards<< board if !@surfer.boards.include? board
    end    
    
    uncheck_boards.each do |board|
      @surfer.boards.delete(board)
    end
    
    
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
