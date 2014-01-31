class HclassesController < ApplicationController
  before_action :set_hclass, only: [:show, :edit, :update, :destroy]

  # GET /hclasses
  # GET /hclasses.json
  def index
    @hclasses = Hclass.all
  end

  # GET /hclasses/1
  # GET /hclasses/1.json
  def show
  end

  # GET /hclasses/new
  def new
    @hclass = Hclass.new
  end

  # GET /hclasses/1/edit
  def edit
  end

  # POST /hclasses
  # POST /hclasses.json
  def create
    @hclass = Hclass.new(hclass_params)

    respond_to do |format|
      if @hclass.save
        format.html { redirect_to @hclass, notice: 'Hclass was successfully created.' }
        format.json { render action: 'show', status: :created, location: @hclass }
      else
        format.html { render action: 'new' }
        format.json { render json: @hclass.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hclasses/1
  # PATCH/PUT /hclasses/1.json
  def update
    respond_to do |format|
      if @hclass.update(hclass_params)
        format.html { redirect_to @hclass, notice: 'Hclass was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @hclass.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hclasses/1
  # DELETE /hclasses/1.json
  def destroy
    @hclass.destroy
    respond_to do |format|
      format.html { redirect_to hclasses_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hclass
      @hclass = Hclass.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hclass_params
      params.require(:hclass).permit(:name)
    end
end
