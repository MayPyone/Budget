class PaymentsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_group, only: %i[index new create]

  def index
    @group = Group.find(params[:group_id])
    @payments = @group.payments.order(created_at: :desc)
    @total_amount = @payments.sum(:amount)
  end

  def new
    @payment = @group.payments.build
    @groups = current_user.groups
  end

  def create
    @payment = current_user.payments.build(payment_params)
    @groups = current_user.groups
    @group = Group.find(params[:group_id])
    if @payment.save
      redirect_to group_path(@group)
    else
      render :new

    end
  end

  private

  def payment_params
    params.require(:payment).permit(:payment_name, :amount, :group_id)
  end

  def set_group
    @group = Group.find_by(id: params[:group_id])
  end
end
