class DocumentotiposController < ApplicationController
  # GET /documentotipos
  # GET /documentotipos.json
  def index
    @documentotipos = Documentotipo.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @documentotipos }
    end
  end

  # GET /documentotipos/1
  # GET /documentotipos/1.json
  def show
    @documentotipo = Documentotipo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @documentotipo }
    end
  end

  # GET /documentotipos/new
  # GET /documentotipos/new.json
  def new
    @documentotipo = Documentotipo.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @documentotipo }
    end
  end

  # GET /documentotipos/1/edit
  def edit
    @documentotipo = Documentotipo.find(params[:id])
  end

  # POST /documentotipos
  # POST /documentotipos.json
  def create
    @documentotipo = Documentotipo.new(params[:documentotipo])

    respond_to do |format|
      if @documentotipo.save
        format.html { redirect_to @documentotipo, notice: 'Documentotipo was successfully created.' }
        format.json { render json: @documentotipo, status: :created, location: @documentotipo }
      else
        format.html { render action: "new" }
        format.json { render json: @documentotipo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /documentotipos/1
  # PUT /documentotipos/1.json
  def update
    @documentotipo = Documentotipo.find(params[:id])

    respond_to do |format|
      if @documentotipo.update_attributes(params[:documentotipo])
        format.html { redirect_to @documentotipo, notice: 'Documentotipo was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @documentotipo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /documentotipos/1
  # DELETE /documentotipos/1.json
  def destroy
    @documentotipo = Documentotipo.find(params[:id])
    @documentotipo.destroy

    respond_to do |format|
      format.html { redirect_to documentotipos_url }
      format.json { head :ok }
    end
  end
end
