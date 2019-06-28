class AppointmentsController < ApplicationController
  def new
    @customer = Customer.find(params[:customer_id])
    @appointment
  end
  def create

  end
  def show

  end
  def edit

  end
  def update

  end
  def destroy

  end
end
