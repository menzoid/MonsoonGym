class ContractsController < ApplicationController
  def new
    @member = Member.find(params[:member_id])
    @contract = Contract.new
  end

  def create
    @member = Member.find(params[:member_id])
    @contract = Contract.new(contract_params)
    @contract.member = @member
    if @contract.save
      redirect_to member_path(@member)
    else
      render :new
    end
  end

  def index
  end

  def show
  end

  private

  def contract_params
    params.require(:contract).permit(:package_id)
  end
end
