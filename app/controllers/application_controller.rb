class ApplicationController < ActionController::Base
  layout -> { (turbo_frame_request? && !turbo_stream_request?) ? false : "application" }

  private

  def turbo_stream_request?
    request.accept.starts_with?(Mime[:turbo_stream])
  end
end
