class OrdersController < ApplicationController
  before_action :set_order, only: [:show, :edit, :update, :destroy]

  def index
    @orders = Order.all
  end

  def show
  end

  def new
    session[:order_params] ||= {}
    @order = Order.new(session[:order_params])
    @order.current_step = session[:order_step]
  end

  def edit
  end

  def create
    session[:order_params].deep_merge!(order_params) if order_params
    @order = Order.new(session[:order_params])
    # render :json => @order
    @order.current_step = session[:order_step]
    if @order.valid?
      if params[:back_button]
        @order.previous_step
      elsif @order.last_step?
        @order.save
      else
        @order.next_step
      end
      session[:order_step] = @order.current_step
    end

    if @order.new_record?
      render 'new'
    else
      session[:order_step] = session[:order_params] = nil
      flash[:notice] = "Order saved!"
      redirect_to @order
    end
  end

  private
    def set_order
      @order = Order.find(params[:id])
    end

    def order_params
      params.require(:order).permit(:shipping_name, :billing_name)
      # params.permit(:shipping_name, :billing_name)
    end
end
