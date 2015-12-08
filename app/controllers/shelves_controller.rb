class ShelvesController < ApplicationController
  before_action :set_shelf, only: [:show, :edit, :update, :destroy]

  # GET /shelves
  # GET /shelves.json
  def index
    @house = House.find params[:house_id]
    if params[:operation] == "Open"
      # .where("cycle < 8")
      @msg = "displays state = closed and close date difference is 8 days or greater from today"
      @shelves = @house.shelves
      .where("(state = 'Close' and close_date <= '#{(Time.now-8.days).to_date.to_s}') or (state = 'Close' and close_date is null)")
    elsif params[:operation] == "Harvest"
      @msg = "displays state = open and open date difference is 6 days or greater from today"
      @shelves = @house.shelves
      .where("state = 'Open'")
      .where("open_date <= '#{(Time.now-6.days).to_date.to_s}'")
    elsif params[:operation] == "Close"
      @msg = "display state = harvest"
      @shelves = @house.shelves
      .where("state = 'Harvest'")
    else
      @msg = ""
      @shelves = @house.shelves
    end
  end

  # GET /shelves/1
  # GET /shelves/1.json
  def show
  end

  # GET /shelves/new
  def new
    @shelf = Shelf.new
  end

  # GET /shelves/1/edit
  def edit
  end

  # POST /shelves
  # POST /shelves.json
  def create
    @shelf = Shelf.new(shelf_params)
    @shelf.house_id = params[:house_id]
    respond_to do |format|
      if @shelf.save
        format.html { redirect_to house_shelves_path(params[:house_id]), notice: 'Shelf was successfully created.' }
        format.json { render :show, status: :created, location: @shelf }
      else
        format.html { render :new }
        format.json { render json: @shelf.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /shelves/1
  # PATCH/PUT /shelves/1.json
  def update
    respond_to do |format|
      if @shelf.update(shelf_params)
        format.html { redirect_to house_shelves_path(params[:house_id]), notice: 'Shelf was successfully created.' }        
        format.json { render :show, status: :ok, location: @shelf }
      else
        format.html { render :edit }
        format.json { render json: @shelf.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shelves/1
  # DELETE /shelves/1.json
  def destroy
    @shelf.destroy
    respond_to do |format|
      format.html { redirect_to house_shelves_path(params[:house_id]), notice: 'Shelf was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def operation
    if params[:operation] == "Open"
      params[:shelf_ids].each do |id|
        logger.debug id
        shelf = Shelf.find id
        shelf.open_date = (Time.now-0.days).to_date.to_s
        shelf.state = "Open"
        shelf.cycle = shelf.cycle+1
        shelf.save
      end
    elsif params[:operation] == "Harvest"
      params[:shelf_ids].each do |id|
        logger.debug id
        shelf = Shelf.find id
        shelf.harvest_date = (Time.now-0.days).to_date.to_s
        shelf.state = "Harvest"
        shelf.save
      end
    elsif params[:operation] == "Close"
      params[:shelf_ids].each do |id|
        logger.debug id
        shelf = Shelf.find id
        shelf.close_date = (Time.now-0.days).to_date.to_s
        shelf.state = "Close"
        shelf.save
      end
    end
    # sms staff instead ?
    redirect_to house_shelves_path(params[:house_id])
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shelf
      @shelf = Shelf.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def shelf_params
      params.require(:shelf).permit(:name, :state, :open_date, :harvest_date, :close_date, :end_date, :cycle)
    end
end
