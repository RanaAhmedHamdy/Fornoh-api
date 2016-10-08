class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :null_session

   # CUSTOM EXCEPTION HANDLING
  rescue_from Exception do |e|
    error(e)
  end

  def routing_error
    raise ActionController::RoutingError.new(params[:path])
  end

  protected

  def error(e)
    #render :template => "#{Rails::root}/public/404.html"
    if env["ORIGINAL_FULLPATH"] =~ /^\/api/
	    error_info = {
	      :status => 500,
	      :error => "internal-server-error",
	      :exception => "#{e.class.name} : #{e.message}",
	    }
	    error_info[:trace] = e.backtrace[0,10] if Rails.env.development?
	    	render :json => error_info.to_json
    else
      #render :text => "500 Internal Server Error", :status => 500 # You can render your own template here
      raise e
    end
  end
end
