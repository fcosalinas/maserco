  class ItemblocksController < ApplicationController
  # GET /itemblocks
  # GET /itemblocks.json
  def index
    @itemblocks = Itemblock.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @itemblocks }
    end
  end

  # GET /itemblocks/1
  # GET /itemblocks/1.json
  def show
    @itemblock = Itemblock.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @itemblock }
    end
  end

  # GET /itemblocks/new
  # GET /itemblocks/new.json
  def new
    @itemblock = Itemblock.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @itemblock }
    end
  end

  # GET /itemblocks/1/edit
  def edit
    @itemblock = Itemblock.find(params[:id])
  end

  # POST /itemblocks
  # POST /itemblocks.json
  def create
    @itemblock = Itemblock.new(params[:itemblock])

    respond_to do |format|
      if @itemblock.save
        format.html { redirect_to @itemblock, notice: 'Itemblock was successfully created.' }
        format.json { render json: @itemblock, status: :created, location: @itemblock }
      else
        format.html { render action: "new" }
        format.json { render json: @itemblock.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /itemblocks/1
  # PUT /itemblocks/1.json
  def update
    @itemblock = Itemblock.find(params[:id])

    respond_to do |format|
      if @itemblock.update_attributes(params[:itemblock])
        format.html { redirect_to @itemblock.weeksheet, notice: 'Itemblock was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @itemblock.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /itemblocks/1
  # DELETE /itemblocks/1.json
  def destroy
    @itemblock = Itemblock.find(params[:id])
    @itemblock.destroy

    respond_to do |format|
      format.html { redirect_to itemblocks_url }
      format.json { head :no_content }
    end
  end
end
