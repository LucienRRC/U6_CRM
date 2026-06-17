class CustomersController < ApplicationController
  def index
    @customers = Customer.all.order(:full_name)
  end

  def alphabetized
    @customers = Customer.all.order(:full_name)
  end
end
