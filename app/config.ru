require ::File.expand_path('../config/environment',  __FILE__)
require './app/controllers/myapp'


run Sinatra::Application
