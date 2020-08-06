class ApplicationController < ActionController::Base
  protect_from_forgery with: :null_session
  rescue_from ActiveRecord::RecordInvalid, with: :render_422
  def render_422(exception)
    render json: { error: { messages: exception.record.errors.full_messages } }, status: :unprocessable_entity
  end
end
