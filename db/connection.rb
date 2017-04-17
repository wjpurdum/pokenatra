require "pg"
require "pry"
require "active_record"

ActiveRecord::Base.establish_connection(
  :adapter => "postgresql",
  :database => "pokemon_db"
)

if defined? Sinatra
	after do
	  ActiveRecord::Base.connection.close
	end
end
