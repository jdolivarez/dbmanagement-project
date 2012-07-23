class SearchstatusesController < ApplicationController
  # GET /searchstatuses
  # GET /searchstatuses.json
  def index
    @searchstatuses = Searchstatus.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @searchstatuses }
    end
  end

  # GET /searchstatuses/1
  # GET /searchstatuses/1.json
  def show
    @searchstatus = Searchstatus.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @searchstatus }
    end
  end

  # GET /searchstatuses/new
  # GET /searchstatuses/new.json
  def new
    @searchstatus = Searchstatus.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @searchstatus }
    end
  end

  # GET /searchstatuses/1/edit
  def edit
    @searchstatus = Searchstatus.find(params[:id])
  end

  # POST /searchstatuses
  # POST /searchstatuses.json
  def create
    @searchstatus = Searchstatus.new(params[:searchstatus])

    respond_to do |format|
      if @searchstatus.save
        format.html { redirect_to @searchstatus, notice: 'Searchstatus was successfully created.' }
        format.json { render json: @searchstatus, status: :created, location: @searchstatus }
      else
        format.html { render action: "new" }
        format.json { render json: @searchstatus.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /searchstatuses/1
  # PUT /searchstatuses/1.json
  def update
    @searchstatus = Searchstatus.find(params[:id])

    respond_to do |format|
      if @searchstatus.update_attributes(params[:searchstatus])
        format.html { redirect_to @searchstatus, notice: 'Searchstatus was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @searchstatus.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /searchstatuses/1
  # DELETE /searchstatuses/1.json
  def destroy
    @searchstatus = Searchstatus.find(params[:id])
    @searchstatus.destroy

    respond_to do |format|
      format.html { redirect_to searchstatuses_url }
      format.json { head :no_content }
    end
  end
end
