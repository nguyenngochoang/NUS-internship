class CustomersController < ApplicationController
  $id = 0
  def new
    @employee = Employee.find(params[:employee_id])
    @customer = @employee.customers.new
  end

  def create
    @employee = Employee.find(params[:employee_id])
    @customer = @employee.customers.new(customer_params)
    if @customer.save
      redirect_to employee_customers_path(@employee)
    else
      render "new"
    end
  end

  def index
    $id = params[:employee_id]
    @employee = Employee.find(params[:employee_id])
    @customer = @employee.customers.all
  end

  def edit
    @customer = Customer.find(params[:id])
  end

  def update
    @customer = Customer.find(params[:id])
    if @customer.update(customer_params)
      redirect_to employee_customers_path($id)
    else
      render 'edit'
    end
  end

  def show
    @employee = Employee.find(params[:employee_id])
    @customer = @employee.customers.find(params[:id])
  end

  def destroy
    @employee = Employee.find(current_employee)
    @customer = @employee.customers.find(params[:id])
    @customer.destroy

    redirect_to employee_customers_path(@employee)

  end

  private

  def customer_params
    params.require(:customer).permit(:name, :email)
  end
end
