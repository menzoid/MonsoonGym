class MembersController < ApplicationController
  def new
    @member = Member.new
  end

  def create
    @member = Member.new(member_params)
    if @member.save
      redirect_to members_path
    else
      render :new
    end
  end

  def index
    @members = Member.all
  end

  def show
    @member= Member.find(params[:id])
  end

  private

  def member_params
    params.require(:member).permit(:first_name, :second_name, :package_id, :email)
  end
end
