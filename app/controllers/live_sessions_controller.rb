class LiveSessionsController < ApplicationController
  include ActionController::Live

  def index
	  response.headers['Content-Type'] = 'text/event-stream'
	  response.stream.write "data received: #{params[:data]}\n"
	  response.stream.close

	  @data_received = params[:data]
	  @chart_data = Array.new
	  puts @data_received
  end
end
