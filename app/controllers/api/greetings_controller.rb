class Api::GreetingsController < ApplicationController
  def index
    @greeting = Message.order('RANDOM()').first
    render json: { message: @greeting.greeting }
  end
end
