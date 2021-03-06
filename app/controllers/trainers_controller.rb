class TrainersController < ApplicationController
  def new
    @trainer = Trainer.new
  end

  def create
    @trainer = Trainer.new(trainer_params)
    if @trainer.save
      redirect_to trainers_path
    else
      render :new
    end
  end

  def index
    @trainers = Trainer.all
  end

  def show
    @trainer = Trainer.find(params[:id])
  end

  private

  def trainer_params
    params.require(:trainer).permit(:first_name, :last_name)
  end
end
