class CustomerPurchasesController < ApplicationController
  before_action :set_customer_purchase, only: [:show, :edit, :update, :destroy]
  skip_before_filter :verify_authenticity_token , :only => [:save_purchases]

  # GET /customer_purchases
  # GET /customer_purchases.json
  def index
    if params[:market_id].nil? || params[:month].nil? || params[:year].nil?
      redirect_to customer_purchases_path(
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
    @customers = Customer
      .select("name,id")
      .where("market_id = :market_id", market_id: params[:market_id])
      .paginate(:per_page => per_page , page: page)
    @customer_purchases = CustomerPurchase
      .joins(:customer)
      .where("customers.id in (:ids)", ids: @customers.map{|x| x.id })
      .where("customers.market_id = :market_id", market_id: params[:market_id])
      .where("YEAR(date) = :year and MONTH(date) = :month", year: params[:year], month: params[:month])
  end

  # GET /customer_purchases/1
  # GET /customer_purchases/1.json
  def show
  end

  # GET /customer_purchases/new
  def new
    @customer_purchase = CustomerPurchase.new
  end

  # GET /customer_purchases/1/edit
  def edit
  end

  # POST /customer_purchases
  # POST /customer_purchases.json
  def create
    @customer_purchase = CustomerPurchase.new(customer_purchase_params)

    respond_to do |format|
      if @customer_purchase.save
        format.html { redirect_to @customer_purchase, notice: 'Customer purchase was successfully created.' }
        format.json { render :show, status: :created, location: @customer_purchase }
      else
        format.html { render :new }
        format.json { render json: @customer_purchase.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /customer_purchases/1
  # PATCH/PUT /customer_purchases/1.json
  def update
    respond_to do |format|
      if @customer_purchase.update(customer_purchase_params)
        format.html { redirect_to @customer_purchase, notice: 'Customer purchase was successfully updated.' }
        format.json { render :show, status: :ok, location: @customer_purchase }
      else
        format.html { render :edit }
        format.json { render json: @customer_purchase.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /customer_purchases/1
  # DELETE /customer_purchases/1.json
  def destroy
    @customer_purchase.destroy
    respond_to do |format|
      format.html { redirect_to customer_purchases_url, notice: 'Customer purchase was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def save_purchases
    params[:customer_ids].each_with_index do |c,i|
      cp = CustomerPurchase.find_or_create_by(
        date: params[:date],
        customer_id: c
        )
      cp.quantity = params[:quantity][i].empty? ? 0 : params[:quantity][i]
      cp.expected_payment = params[:expected_payment][i].length == 0 ? 0 : params[:expected_payment][i]
      cp.actual_payment = params[:actual_payment][i].length == 0 ? 0 : params[:actual_payment][i]
      cp.save
    end
    render :text => "ok"
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_customer_purchase
      @customer_purchase = CustomerPurchase.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def customer_purchase_params
      params.require(:customer_purchase).permit(:customer_id, :date, :quantity, :expected_payment, :actual_payment)
    end
end
