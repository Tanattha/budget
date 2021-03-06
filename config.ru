require './config/environment'

# no longer needed - switching from sqlite to postgres

# if ActiveRecord::Migrator.needs_migration?
#   raise 'Migrations are pending. Run `rake db:migrate` to resolve the issue.'
# end

use Rack::MethodOverride # Sinatra Middleware that lets our app send patch/put/delete requests
use ExpensesController
use UsersController
run ApplicationController

# The purpose of config.ru is to detail to Rack 
# the environment requirements of the application 
# and start the application.