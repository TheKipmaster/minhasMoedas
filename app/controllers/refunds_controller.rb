class RefundsController < ApplicationController
  def index
    @refunds = Refund.all
  end

  def show
    @refund = Refund.find(params[:id])
  end

  def new
  end

  def edit
  end

  def create
    @refund = Refund.new(refund_params)

    @refund.save
    redirect_to @refund
  end

  def update
  end

  def destroy
  end

  private
    def refund_params
      params.require(:refund).permit(:value, :description)
    end
end
