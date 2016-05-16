class Production2sController < ApplicationController
  before_action :set_production2, only: [:show, :edit, :update, :destroy]
  skip_before_filter :verify_authenticity_token , :only => [:save_production]
  # GET /production2s
  # GET /production2s.json
  def index
    if params[:market_id].nil? || params[:month].nil? || params[:year].nil?
      redirect_to production2s_path(
        market_id: Market.first.id,
        month: Time.now.month,
        year: Time.now.year
        )
    end

    @production2s = Production.where("MONTH(date) = :month and YEAR(date) = :year", month: params[:month] , year: params[:year])
  end

  # GET /production2s/1
  # GET /production2s/1.json
  def show
  end

  # GET /production2s/new
  def new
    @production2 = Production.new
  end

  # GET /production2s/1/edit
  def edit
  end

  # POST /production2s
  # POST /production2s.json
  def create
    @production2 = Production.new(production2_params)

    respond_to do |format|
      if @production2.save
        format.html { redirect_to @production2, notice: 'Production was successfully created.' }
        format.json { render :show, status: :created, location: @production2 }
      else
        format.html { render :new }
        format.json { render json: @production2.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /production2s/1
  # PATCH/PUT /production2s/1.json
  def update
    respond_to do |format|
      if @production2.update(production2_params)
        format.html { redirect_to @production2, notice: 'Production was successfully updated.' }
        format.json { render :show, status: :ok, location: @production2 }
      else
        format.html { render :edit }
        format.json { render json: @production2.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /production2s/1
  # DELETE /production2s/1.json
  def destroy
    @production2.destroy
    respond_to do |format|
      format.html { redirect_to production2s_url, notice: 'Production was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def save_production
    params[:house_ids].each_with_index do |h,i|
      p = Production.find_or_create_by(
        house_id: h,
        date: params[:date]
        )
      p.am = params[:am][i]
      p.pm = params[:pm][i]
      p.save
    end
    render :text => "ok"
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_production2
      @production2 = Production.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def production2_params
      params.require(:production2).permit(:house_id, :date, :am, :pm)
    end
end
