class Application
 
  def call(env)
    resp = Rack::Response.new
 
    current_time = Time.now.to_s
    time = current_time.hour
    resp.write "#{time}"
 
    if time < 12
      resp.write "Good Morning!"
    else
      resp.write "Good Afternoon!"
    end
 
    resp.finish
  end
 
end