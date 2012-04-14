class EquiposController < ApplicationController
  # GET /equipos
  # GET /equipos.json
  def index
    @equipos = Equipo.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @equipos }
    end
  end

  # GET /equipos/1
  # GET /equipos/1.json
  def show
    @equipo = Equipo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @equipo }
    end
  end

  # GET /equipos/new
  # GET /equipos/new.json
  def new
    @equipo = Equipo.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @equipo }
    end
  end

  # GET /equipos/1/edit
  def edit
    @equipo = Equipo.find(params[:id])
  end

  # POST /equipos
  # POST /equipos.json
  def create
    @equipo = Equipo.new(params[:equipo])

    respond_to do |format|
      if @equipo.save
        format.html { redirect_to @equipo, notice: 'Equipo was successfully created.' }
        format.json { render json: @equipo, status: :created, location: @equipo }
      else
        format.html { render action: "new" }
        format.json { render json: @equipo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /equipos/1
  # PUT /equipos/1.json
  def update
    @equipo = Equipo.find(params[:id])

    respond_to do |format|
      if @equipo.update_attributes(params[:equipo])
        format.html { redirect_to @equipo, notice: 'Equipo was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @equipo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /equipos/1
  # DELETE /equipos/1.json
  def destroy
    @equipo = Equipo.find(params[:id])
    @equipo.destroy

    respond_to do |format|
      format.html { redirect_to equipos_url }
      format.json { head :ok }
    end
  end
end
