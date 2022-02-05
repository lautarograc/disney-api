class ApplicationController < ActionController::Base
    protect_from_forgery with: :null_session
    attr_reader :current_user
    before_action :authenticate_request


    private
    def authenticate_request
      @current_user = AuthorizeApiRequest.call(request.headers).result
      render json: { error: 'Not Authorized' }, status: 401 unless @current_user
    end
    
    end
    
