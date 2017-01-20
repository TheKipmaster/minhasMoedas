class RefundsController < ApplicationController
  def new
  end

  def create
    render plain: params[:refund].inspect
  end
end
