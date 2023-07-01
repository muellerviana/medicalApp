class ConsumersController < ApplicationController
  before_action :set_consumer, only: %i[ show ]

  def index
    @consumers = Consumer.all

    render json: @consumers
  end

  def show
    render json: @consumer  
  end

  def create
    @consumer = Consumer.new(consumer_params)

    if @consumer.save
      render json: @consumer   
    else
      render jason: @consumer.errors, status: 200
    end
  end

  private

  def set_consumer
    @consumer = Consumer.find(params[:id])
  end

  def consumer_params
    params.require(:consumer).permit(:address, :blood_type, :date_of_birth, :email, :gender, :name, :phone_number)
  end
end
