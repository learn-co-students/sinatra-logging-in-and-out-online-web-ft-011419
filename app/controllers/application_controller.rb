require_relative '../../config/environment'
class ApplicationController < Sinatra::Base
  configure do
    set :views, Proc.new { File.join(root, "../views/") }
    enable :sessions unless test?
    set :session_secret, "secret"
  end

  get '/' do
    erb :index
  end

  post '/login' do
    
    @user = User.find_by(params[:username])
    if @user
    session[:id] = user.id
    redirect to '/account'
    end
  erb  :error
  end
  get '/account' do
     
  if  @current_user = User.find_by_id(session[:user_id])
     erb :account
  end
  erb  :error
  end

  get '/logout' do

  end


end

