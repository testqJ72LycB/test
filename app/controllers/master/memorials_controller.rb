class Master::MemorialsController < ApplicationController
  before_action :set_master_memorial, only: [:show, :edit, :update, :destroy]

  # GET /master/memorials
  # GET /master/memorials.json
  def index
    @master_memorials = Master::Memorial.all
  end

  # GET /master/memorials/1
  # GET /master/memorials/1.json
  def show
  end

  # GET /master/memorials/new
  def new
    @master_memorial = Master::Memorial.new
  end

  # GET /master/memorials/1/edit
  def edit
  end

  # POST /master/memorials
  # POST /master/memorials.json
  def create
    @master_memorial = Master::Memorial.new(master_memorial_params)

    respond_to do |format|
      if @master_memorial.save
        format.html { redirect_to master_memorials_path, notice: 'Memorial was successfully created.' }
        format.json { render :show, status: :created, location: @master_memorial }
      else
        format.html { render :new }
        format.json { render json: @master_memorial.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /master/memorials/1
  # PATCH/PUT /master/memorials/1.json
  def update
    respond_to do |format|
      if @master_memorial.update(master_memorial_params)
        format.html { redirect_to @master_memorial, notice: 'Memorial was successfully updated.' }
        format.json { render :show, status: :ok, location: @master_memorial }
      else
        format.html { render :edit }
        format.json { render json: @master_memorial.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /master/memorials/1
  # DELETE /master/memorials/1.json
  def destroy
    @master_memorial.destroy
    respond_to do |format|
      format.html { redirect_to master_memorials_url, notice: 'Memorial was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_master_memorial
      @master_memorial = Master::Memorial.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def master_memorial_params
      params.require(:master_memorial).permit(:name, :age, :message)
    end
end
