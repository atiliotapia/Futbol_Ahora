class ClientetiposController < ApplicationController
  # GET /clientetipos
  # GET /clientetipos.json
  def index
    @clientetipos = Clientetipo.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @clientetipos }
    end
  end

  # GET /clientetipos/1
  # GET /clientetipos/1.json
  def show
    @clientetipo = Clientetipo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @clientetipo }
    end
  end

  # GET /clientetipos/new
  # GET /clientetipos/new.json
  def new
    @clientetipo = Clientetipo.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @clientetipo }
    end
  end

  # GET /clientetipos/1/edit
  def edit
    @clientetipo = Clientetipo.find(params[:id])
  end

  # POST /clientetipos
  # POST /clientetipos.json
  def create
    @clientetipo = Clientetipo.new(params[:clientetipo])

    respond_to do |format|
      if @clientetipo.save
        format.html { redirect_to @clientetipo, notice: 'Clientetipo was successfully created.' }
        format.json { render json: @clientetipo, status: :created, location: @clientetipo }
      else
        format.html { render action: "new" }
        format.json { render json: @clientetipo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /clientetipos/1
  # PUT /clientetipos/1.json
  def update
    @clientetipo = Clientetipo.find(params[:id])

    respond_to do |format|
      if @clientetipo.update_attributes(params[:clientetipo])
        format.html { redirect_to @clientetipo, notice: 'Clientetipo was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @clientetipo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /clientetipos/1
  # DELETE /clientetipos/1.json
  def destroy
    @clientetipo = Clientetipo.find(params[:id])
    @clientetipo.destroy

    respond_to do |format|
      format.html { redirect_to clientetipos_url }
      format.json { head :ok }
    end
  end
end
