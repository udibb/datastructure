class ConfirmsController < ApplicationController
  # GET /confirms
  # GET /confirms.json
  def index
    @confirms = Confirm.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @confirms }
    end
  end

  # GET /confirms/1
  # GET /confirms/1.json
  def show
    @confirm = Confirm.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @confirm }
    end
  end

  # GET /confirms/new
  # GET /confirms/new.json
  def new
    @confirm = Confirm.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @confirm }
    end
  end

  # GET /confirms/1/edit
  def edit
    @confirm = Confirm.find(params[:id])
  end

  # POST /confirms
  # POST /confirms.json
  def create
    @confirm = Confirm.new(params[:confirm])

    respond_to do |format|
      if @confirm.save
        format.html { redirect_to @confirm, notice: 'Confirm was successfully created.' }
        format.json { render json: @confirm, status: :created, location: @confirm }
      else
        format.html { render action: "new" }
        format.json { render json: @confirm.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /confirms/1
  # PUT /confirms/1.json
  def update
    @confirm = Confirm.find(params[:id])

    respond_to do |format|
      if @confirm.update_attributes(params[:confirm])
        format.html { redirect_to @confirm, notice: 'Confirm was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @confirm.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /confirms/1
  # DELETE /confirms/1.json
  def destroy
    @confirm = Confirm.find(params[:id])
    @confirm.destroy

    respond_to do |format|
      format.html { redirect_to confirms_url }
      format.json { head :ok }
    end
  end
end
