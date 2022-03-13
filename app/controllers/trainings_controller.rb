class TrainingsController < ApplicationController
  def new
    @training = Training.new
  end

  def create
    @training = Training.new(training_params)
    if @training.save
      redirect_to trainings_path
    else
      render :new
    end
  end

  def index
    @trainings = Training.all
  end

  def show
    @training = Training.find(params[:id])
    @sessions = @training.sessions
  end

  private

  def training_params
    params.require(:training).permit(:trainer_id, :discipline_id, :start_time)
  end
end
