class API::V2::UsersController < ApplicationController
  before_action :restrict_access

  def index
    render json: { user: 'hello' }
  end

  private

  def restrict_access
    authenticate_or_request_with_http_token do |token, _options|
      APIKey.exists?(access_token: token)
    end
  end
end
