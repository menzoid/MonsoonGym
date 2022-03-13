class SessionsController < ApplicationController
  def new
    @training = Training.find(params[:training_id])
    @session = Session.new
  end

  def create
    @training = Training.find(params[:training_id])
    @session = Session.new(session_params)
    @session.training = @training
    if @session.save
      redirect_to training_path(@training)
    else
      render :new
    end
  end

  def index
  end

  def show
  end

  private

  def session_params
    params.require(:session).permit(:member_id)
  end
end
