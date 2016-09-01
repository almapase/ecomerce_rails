class PaymentsController < ApplicationController

  def execute
    # render json:params
    @payment = PayPal::SDK::REST::Payment.find(params[:paymentId])

    if @payment.execute(payer_id: params[:PayerID])
      @amount = @payment
        .transactions
        .collect(&:amount)
        .collect(&:total)
        .map(&:to_f)
        .sum()

      @payment = Payment.create(
        code: @payment.id,
        payment_method: "paypal",
        amount: @amount,
        currency:"USD"
      )
      # Limpiando el carro
      session[:cart] = []
      # render json: @payment.to_json
      render plain: "FELIZ COMPRA OK  :)"
    else
      render plain: "COMPRA FALLO  :("
      # render json: @payment.to_json
    end
  end
end
