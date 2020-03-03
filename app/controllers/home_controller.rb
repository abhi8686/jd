class HomeController < ApplicationController
  def index
    User.create(email: params[:email], phone_number: params[:phone], store_name: params[:store], status: false, unique_id: params[:id])
    render json: {status: true}
  end

  def check
    if User.where(unique_id: params[:key], status: true).count > 0
      render json: {status: 2}
    elsif User.where(unique_id: params[:key], status: false).count > 0
      render json: {status: 1}
    else
      render json: {status: 0}
    end
  end
end
