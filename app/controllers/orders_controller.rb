class OrdersController < ApplicationController
  before_action :set_order, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  before_action :authorize_admin, except: [:create, :show]

  # GET /orders
  # GET /orders.json
  def index
    @orders = Order.all
  end

  # GET /orders/1
  # GET /orders/1.json
  def show
  end

  # GET /orders/new
  def new
    select_situation
    @order = Order.new
    @order_meals = OrderMeal.all
  end

  # GET /orders/1/edit
  def edit
    select_situation
  end

  # POST /orders
  # POST /orders.json
  def create
    #current_cart.each do |item|
    #  item['meal_id']
    #  item['quantity']
    #end
    #curent_user
    #Order.order_meals.new(:meal_id, :quantity)
    #Order.user
    #Order.price cart_total_price
    #Order.Situation = 1 => pendente
    #Order.save
    
    #select_situation
    @order = Order.new

    @order.user = current_user
    @order.situation_id = Situation.first.id
    @order.price = params[:total_price].to_f
    @order.save
    current_cart.each do |item|
      @meal = Meal.find item['meal_id']
      OrderMeal.create(order: @order, meal: @meal, quantity: item['quantity'])
    end
    
    respond_to do |format|
      if @order.save
        #esvazia o carrinho
        session[:cart] = nil
        format.html { redirect_to @order, notice: 'Order was successfully created.' }
        format.json { render :show, status: :created, location: @orders_path }
      else
        format.html { render :new }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /orders/1
  # PATCH/PUT /orders/1.json
  def update
    respond_to do |format|
      if @order.update(order_params)
        format.html { redirect_to orders_path, notice: 'Order was successfully updated.' }
        format.json { render :show, status: :ok, location: @orders_path }
      else
        format.html { render :edit }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /orders/1
  # DELETE /orders/1.json
  def destroy
    @order.destroy
    respond_to do |format|
      format.html { redirect_to orders_url, notice: 'Order was successfully destroyed.' }
      format.json { head :no_content }
    end
  end


  private
    def select_situation
      @select_situation = Situation.all
    end

    # Use callbacks to share common setup or constraints between actions.
    def set_order
      @order = Order.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def order_params
      params.require(:order).permit(:price, :user_id, :situation_id)
    end
end
