class CustomersController < ApplicationController
  def index
    @customers = Customer.all.order(:full_name)
  end
end
