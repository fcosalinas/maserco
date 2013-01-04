class ProposesController < ApplicationController
  # GET /proposes
  # GET /proposes.json
  def index
    @proposes = Propose.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @proposes }
    end
  end

  # GET /proposes/1
  # GET /proposes/1.json
  def show
    @propose = Propose.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @propose }
    end
  end

  # GET /proposes/new
  # GET /proposes/new.json
  def new
    @propose = Propose.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @propose }
    end
  end

  # GET /proposes/1/edit
  def edit
    @propose = Propose.find(params[:id])
  end

  # POST /proposes
  # POST /proposes.json
  def create
    @propose = Propose.new(params[:propose])

    respond_to do |format|
      if @propose.save
        format.html { redirect_to @propose, notice: 'Propuesta creada' }
        format.json { render json: @propose, status: :created, location: @propose }
      else
        format.html { render action: "new" }
        format.json { render json: @propose.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /proposes/1
  # PUT /proposes/1.json
  def update
    @propose = Propose.find(params[:id])

    respond_to do |format|
      if @propose.update_attributes(params[:propose])
        format.html { redirect_to @propose, notice: 'Propuesta actualizada' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @propose.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /proposes/1
  # DELETE /proposes/1.json
  def destroy
    @propose = Propose.find(params[:id])
    @propose.destroy

    respond_to do |format|
      format.html { redirect_to proposes_url }
      format.json { head :no_content }
    end
  end
end
