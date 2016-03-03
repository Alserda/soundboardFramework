class SoundboardsController < ApplicationController
  before_action :set_soundboard, only: [:show, :edit, :update, :destroy]

  # GET /soundboards
  # GET /soundboards.json
  def index
    @soundboards = Soundboard.all
  end

  # GET /soundboards/1
  # GET /soundboards/1.json
  def show
  end

  # GET /soundboards/new
  def new
    @soundboard = Soundboard.new
  end

  # GET /soundboards/1/edit
  def edit
  end

  # POST /soundboards
  # POST /soundboards.json
  def create
    @soundboard = Soundboard.new(soundboard_params)

    respond_to do |format|
      if @soundboard.save
        format.html { redirect_to @soundboard, notice: 'Soundboard was successfully created.' }
        format.json { render :show, status: :created, location: @soundboard }
      else
        format.html { render :new }
        format.json { render json: @soundboard.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /soundboards/1
  # PATCH/PUT /soundboards/1.json
  def update
    respond_to do |format|
      if @soundboard.update(soundboard_params)
        format.html { redirect_to @soundboard, notice: 'Soundboard was successfully updated.' }
        format.json { render :show, status: :ok, location: @soundboard }
      else
        format.html { render :edit }
        format.json { render json: @soundboard.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /soundboards/1
  # DELETE /soundboards/1.json
  def destroy
    @soundboard.destroy
    respond_to do |format|
      format.html { redirect_to soundboards_url, notice: 'Soundboard was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_soundboard
      @soundboard = Soundboard.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def soundboard_params
      params.fetch(:soundboard, {})
    end
end
