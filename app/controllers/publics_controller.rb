class PublicsController < ApplicationController
  def index
    @stations = Station.all
    @lines = Line.all
    @stops = Stop.all
    render('index.html')
  end
end
