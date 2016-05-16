class SaleRecordsController < ApplicationController
  before_action :set_sale_record, only: [:show, :edit, :update, :destroy]

  # GET /sale_records
  # GET /sale_records.json
  def index
    if params[:market_id].nil? || params[:month].nil? || params[:year].nil?
      redirect_to sale_records_path(
        market_id: Market.first.id,
        month: Time.now.month,
        year: Time.now.year
        )
    end
    if (params[:per_page].nil? || params[:per_page].empty?)
       per_page = 4
    else
      per_page = params[:per_page]
    end
    if params[:page].nil? || params[:page].empty?
      page = 1
    else
      page = params[:page]
    end
    @sale_records = SaleRecord.where("MONTH(date) = :month and YEAR(date) = :year", month: params[:month], year: params[:year])
  end

  # GET /sale_records/1
  # GET /sale_records/1.json
  def show
  end

  # GET /sale_records/new
  def new
    @sale_record = SaleRecord.new
  end

  # GET /sale_records/1/edit
  def edit
  end

  # POST /sale_records
  # POST /sale_records.json
  def create
    @sale_record = SaleRecord.new(sale_record_params)

    respond_to do |format|
      if @sale_record.save
        format.html { redirect_to sale_records_path(year: params[:year], month: params[:month]), notice: 'Sale record was successfully created.' }
        format.json { render :show, status: :created, location: @sale_record }
      else
        format.html { render :new }
        format.json { render json: @sale_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sale_records/1
  # PATCH/PUT /sale_records/1.json
  def update
    respond_to do |format|
      if @sale_record.update(sale_record_params)
        format.html { redirect_to @sale_record, notice: 'Sale record was successfully updated.' }
        format.json { render :show, status: :ok, location: @sale_record }
      else
        format.html { render :edit }
        format.json { render json: @sale_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sale_records/1
  # DELETE /sale_records/1.json
  def destroy
    @sale_record.destroy
    respond_to do |format|
      format.html { redirect_to sale_records_url, notice: 'Sale record was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sale_record
      @sale_record = SaleRecord.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sale_record_params
      params.require(:sale_record).permit(:arra, :purchase, :ttl_in, :ttl_out, :date)
    end
end
