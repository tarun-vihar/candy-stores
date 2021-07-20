class ShelvesController < ApplicationController
  before_action :set_shelf, only: %i[ show edit update destroy ]

  # GET /shelves or /shelves.json
  
  
  def index
    @shop = Shop.find(params[:id])
    @shelves = @shop.shelves
    
    
  end

  # GET /shelves/1 or /shelves/1.json
  def show
    @shop = Shop.find(params[:id])
    
  end

  # GET /shelves/new
  def new
    @shop = Shop.find(params[:id])
    @shelf = @shop.shelves.build
  end

  # GET /shelves/1/edit
  def edit
    # @shop = Shop.find(Shelf.find(params[:id]).shop_id)
  end

  # POST /shelves or /shelves.json
  def create

    
    @shelf = Shelf.new(shelf_params)

    respond_to do |format|
      if @shelf.save
        format.html { redirect_to shelves_url(:id => @shelf.shop_id), notice: "Shelf was successfully created." }
        format.json { render :show, status: :created, location: @shelf }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @shelf.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /shelves/1 or /shelves/1.json
  def update
    respond_to do |format|
      if @shelf.update(shelf_params)
        format.html { redirect_to shelves_url(:id => @shelf.shop_id), notice: "Shelf was successfully updated." }
        format.json { render :show, status: :ok, location: @shelf }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @shelf.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shelves/1 or /shelves/1.json
  def destroy
    @shelf.destroy
    respond_to do |format|
      format.html { redirect_to shelves_url(:id => @shelf.shop_id), notice: "Shelf was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shelf
      @shelf = Shelf.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def shelf_params
      params.require(:shelf).permit(:shelf_name, :shop_id)
    end
end
