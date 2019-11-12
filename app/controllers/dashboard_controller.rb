class DashboardController < ApplicationController

  def index
    render json: {messsage: "hai", status: true}
  end
end