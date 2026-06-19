class CustomersController < ApplicationController
  def index
    @customers = Customer.all.order(:full_name)
  end

  def alphabetized
    @customers = Customer.all.order(:full_name)
  end

  def missing_email
    @customers = Customer.where(email_address: [nil, ""]).order(:full_name)
  end
end
