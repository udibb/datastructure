class DibbsController < ApplicationController
  # GET /dibbs
  # GET /dibbs.json
  def index
    @dibbs = Dibb.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @dibbs }
    end
  end

  # GET /dibbs/1
  # GET /dibbs/1.json
  def show
    @dibb = Dibb.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @dibb }
    end
  end

  # GET /dibbs/new
  # GET /dibbs/new.json
  def new
    @dibb = Dibb.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @dibb }
    end
  end

  # GET /dibbs/1/edit
  def edit
    @dibb = Dibb.find(params[:id])
  end

  # POST /dibbs
  # POST /dibbs.json
  def create
    @dibb = Dibb.new(params[:dibb])

    respond_to do |format|
      if @dibb.save
        format.html { redirect_to @dibb, notice: 'Dibb was successfully created.' }
        format.json { render json: @dibb, status: :created, location: @dibb }
      else
        format.html { render action: "new" }
        format.json { render json: @dibb.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /dibbs/1
  # PUT /dibbs/1.json
  def update
    @dibb = Dibb.find(params[:id])

    respond_to do |format|
      if @dibb.update_attributes(params[:dibb])
        format.html { redirect_to @dibb, notice: 'Dibb was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @dibb.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dibbs/1
  # DELETE /dibbs/1.json
  def destroy
    @dibb = Dibb.find(params[:id])
    @dibb.destroy

    respond_to do |format|
      format.html { redirect_to dibbs_url }
      format.json { head :ok }
    end
  end
end
