class NonusersController < ApplicationController
  # GET /nonusers
  # GET /nonusers.json
  def index
    @nonusers = Nonuser.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @nonusers }
    end
  end

  # GET /nonusers/1
  # GET /nonusers/1.json
  def show
    @nonuser = Nonuser.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @nonuser }
    end
  end

  # GET /nonusers/new
  # GET /nonusers/new.json
  def new
    @nonuser = Nonuser.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @nonuser }
    end
  end

  # GET /nonusers/1/edit
  def edit
    @nonuser = Nonuser.find(params[:id])
  end

  # POST /nonusers
  # POST /nonusers.json
  def create
    @nonuser = Nonuser.new(params[:nonuser])

    respond_to do |format|
      if @nonuser.save
        format.html { redirect_to @nonuser, notice: 'Nonuser was successfully created.' }
        format.json { render json: @nonuser, status: :created, location: @nonuser }
      else
        format.html { render action: "new" }
        format.json { render json: @nonuser.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /nonusers/1
  # PUT /nonusers/1.json
  def update
    @nonuser = Nonuser.find(params[:id])

    respond_to do |format|
      if @nonuser.update_attributes(params[:nonuser])
        format.html { redirect_to @nonuser, notice: 'Nonuser was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @nonuser.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /nonusers/1
  # DELETE /nonusers/1.json
  def destroy
    @nonuser = Nonuser.find(params[:id])
    @nonuser.destroy

    respond_to do |format|
      format.html { redirect_to nonusers_url }
      format.json { head :ok }
    end
  end
end
