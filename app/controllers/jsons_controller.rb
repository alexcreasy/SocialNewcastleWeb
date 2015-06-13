class JsonsController < ApplicationController
  before_action :set_json, only: [:show, :edit, :update, :destroy]

  # GET /jsons
  # GET /jsons.json
  def index
    @jsons = Json.all
  end

  # GET /jsons/1
  # GET /jsons/1.json
  def show
  end

  # GET /jsons/new
  def new
    @json = Json.new
  end

  # GET /jsons/1/edit
  def edit
  end

  # POST /jsons
  # POST /jsons.json
  def create
    @json = Json.new(json_params)

    respond_to do |format|
      if @json.save
        format.html { redirect_to @json, notice: 'Json was successfully created.' }
        format.json { render :show, status: :created, location: @json }
      else
        format.html { render :new }
        format.json { render json: @json.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /jsons/1
  # PATCH/PUT /jsons/1.json
  def update
    respond_to do |format|
      if @json.update(json_params)
        format.html { redirect_to @json, notice: 'Json was successfully updated.' }
        format.json { render :show, status: :ok, location: @json }
      else
        format.html { render :edit }
        format.json { render json: @json.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /jsons/1
  # DELETE /jsons/1.json
  def destroy
    @json.destroy
    respond_to do |format|
      format.html { redirect_to jsons_url, notice: 'Json was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_json
      @json = Json.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def json_params
      params.require(:json).permit(:type, :data)
    end
end
