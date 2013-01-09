class WeeksheetsController < ApplicationController
  # GET /weeksheets
  # GET /weeksheets.json
  def index
    @weeksheets = Weeksheet.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @weeksheets }
    end
  end

  # GET /weeksheets/1
  # GET /weeksheets/1.json
  def show
    @weeksheet = Weeksheet.find(params[:id])
    @propose = Propose.find(@weeksheet.propose.id)
    @items = @propose.items

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @weeksheet }
    end
  end

  # GET /weeksheets/new
  # GET /weeksheets/new.json
  def new
    @weeksheet = Weeksheet.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @weeksheet }
    end
  end

  # GET /weeksheets/1/edit
  def edit
    @weeksheet = Weeksheet.find(params[:id])
  end

  # POST /weeksheets
  # POST /weeksheets.json
  def create
    @weeksheet = Weeksheet.new(params[:weeksheet])

    respond_to do |format|
      if @weeksheet.save
        format.html { redirect_to @weeksheet, notice: 'Weeksheet was successfully created.' }
        format.json { render json: @weeksheet, status: :created, location: @weeksheet }
      else
        format.html { render action: "new" }
        format.json { render json: @weeksheet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /weeksheets/1
  # PUT /weeksheets/1.json
  def update
    @weeksheet = Weeksheet.find(params[:id])

    respond_to do |format|
      if @weeksheet.update_attributes(params[:weeksheet])
        format.html { redirect_to @weeksheet, notice: 'Weeksheet was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @weeksheet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /weeksheets/1
  # DELETE /weeksheets/1.json
  def destroy
    @weeksheet = Weeksheet.find(params[:id])
    @weeksheet.destroy

    respond_to do |format|
      format.html { redirect_to weeksheets_url }
      format.json { head :no_content }
    end
  end
end
