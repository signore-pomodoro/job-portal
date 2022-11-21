class CheckoutsController < ApplicationController
  before_action :authenticate_employer!

  def show
    current_employer.set_payment_processor :stripe
    current_employer.payment_processor.customer

    @checkout_session = current_employer
        .payment_processor
        .checkout(
            mode: 'payment',
            line_items: 'price_1M4h4QLsvyuZH0wvegPdUlnT',
            success_url: checkout_success_url
        )
  end
  
  def success
    @session = Stripe::Checkout::Session.retrieve(params[:session_id])
    @line_items = Stripe::Checkout::Session.list_line_items(params[:session_id])
  end  
end
