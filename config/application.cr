#Amber::Server.instance.configure do |app|
    # Server options
#   app_path = __FILE__ # Do not change unless you understand what you are doing.
#   app.name = "Amber_blog web application."

#   case AMBER_ENV
#   when "production"
#       app.port = 80 # Port you wish your app to run
#       app.env = "production".colorize(:yellow).to_s
#   when "development"
#       app.port = 3000 # Port you wish your app to run
#       app.env = "development".colorize(:yellow).to_s
#   else
#       app.port = 4000 # Port you wish your app to run
#       app.env = "development".colorize(:yellow).to_s
#   end

#   app.log = ::Logger.new(STDOUT)
#   app.log.level = ::Logger::INFO
#nd

Amber::Server.configure do |server|
    server.name         = "Amber blog"
    server.port         = (ENV["PORT"] || 3000).to_i
    server.env          = ENV.fetch("AMBER_ENV", "development") .colorize(:green).to_s
    server.log          = ::Logger.new(STDOUT)
    server.host         = "0.0.0.0"
    server.port_reuse   = true
#    server.ssl_key_file = ""
#    server.ssl_cert_file= ""
#    server.session = {
#        :key    => "name.session",
#        :store  => :signed_cookie,
#        :expires => 120,
#        :secret => "secret",
#        :redis_url => "redis://localhost:6379",
#    }
#    server.secrets = {
#    :key => "supersecret"}
#end
end
