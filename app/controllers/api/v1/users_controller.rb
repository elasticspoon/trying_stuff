class API::V1::UsersController < ApplicationController
  # http_basic_authenticate_with name: 'jim', password: '123'
  before_action :restrict_access

  def index
    render json: User.all
  end

  private

  def restrict_access
    api_key = APIKey.find_by(access_token: params[:access_token])
    head :unauthorized unless api_key
  end
end
