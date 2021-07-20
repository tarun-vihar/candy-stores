class CandiesController < ApplicationController
  before_action :set_candy, only: %i[ show edit update destroy remove]

  # GET /candies or /candies.json
  def index
    @shelf = Shelf.find(params[:shelf_id])
    @shop = Shop.find(@shelf.shop_id)
    @candies = @shelf.candies
  end

  # GET /candies/1 or /candies/1.json
  def show
    
  end

  # GET /candies/new
  def new
    @shop = Shop.find(params[:id])
    @candy = @shop.candies.build
    @isExisting = false
  end

  # GET /candies/1/edit
  def edit
    @isExisting = true
    @shop = Shop.find(Candy.find(params[:id]).shop_id)
    @shelf_options = @shop.shelves.map{ |u| [ u.shelf_name, u.id ] }
  end

  # POST /candies or /candies.json
  def create
    @candy = Candy.new(candy_params)

    respond_to do |format|
      if @candy.save
        format.html { redirect_to unshelved_candies_path(:id => @candy.shop_id), notice: "Candy was successfully created." }
        format.json { render :show, status: :created, location: @candy }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @candy.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /candies/1 or /candies/1.json
  def update
    respond_to do |format|
      if @candy.update(candy_params)
        format.html { redirect_to unshelved_candies_path(:id => @candy.shop_id), notice: "Candy was successfully updated." }
        format.json { render :show, status: :ok, location: @candy }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @candy.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /candies/1 or /candies/1.json
  def destroy
    @candy.destroy
    respond_to do |format|
      format.html { redirect_to unshelved_candies_path(:id => @candy.shop_id), notice: "Candy was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  def remove
    @candy = Candy.find(params[:id])
    @candy.shelf_id = nil
     if @candy.save
        redirect_to unshelved_candies_path(:id => @candy.shop_id)
     end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_candy
      @candy = Candy.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def candy_params
      params.require(:candy).permit(:candy_name, :flavour, :price, :shop_id, :shelf_id)
    end
end
