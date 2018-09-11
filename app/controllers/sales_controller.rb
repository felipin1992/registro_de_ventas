class SalesController < ApplicationController
  def new
  end

  def create
    @sale = Sale.new(sales_params)
    @sale.save
  end

  private
  def sales_params
    params.require(:sale).permit(:cod, :detail, :category, :value, :discount, :tax, :total)
  end
end
