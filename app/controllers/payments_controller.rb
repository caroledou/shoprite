class PaymentsController < ApplicationController
  before_action :set_order

  def new
    total_amount = 0
    @order.recipes.each do |key, value|
      @order.order_details.where(day: key).each do |detail|
        total_amount += detail.composant.price_cents
      end
    end
    @order.amount_cents = total_amount
    @order.save!
  end

  def create
    customer = Stripe::Customer.create(
    source: params[:stripeToken],
    email:  params[:stripeEmail]
  )

  charge = Stripe::Charge.create(
    customer:     customer.id,   # You should store this customer id and re-use it.
    amount:       @order.amount_cents*100,
    description:  "Payment for Recipes #{@order.id} for order #{@order.id}",
    currency:     @order.amount.currency
  )

  @order.update(payment: charge.to_json, status: 'paid')
  redirect_to order_path(@order)

  rescue Stripe::CardError => e
    flash[:alert] = e.message
    redirect_to new_order_payment_path(@order)
  end

private

  def set_order
    @order = Order.find(params[:order_id])
  end

end
