class HelloWorldController < ApplicationController
  def index
    @greeting = params[:greeting]
  end
end
