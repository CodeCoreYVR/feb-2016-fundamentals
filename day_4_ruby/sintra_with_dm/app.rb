require "sinatra"
require "sinatra/reloader"
require "data_mapper"

DataMapper.setup(:default, "sqlite3://#{Dir.pwd}/my_sinatra_database.db")

enable :sessions

class Contact
  # including the DataMapper::Resource module will bring all the DataMapper
  # functionalities.
  # Convention here: table name will be pluralized version of the class name
  # The table name in the database will be `contacts`
  include DataMapper::Resource

  # Property maps an attribute accessor `id` to a column in the database within
  # the same name. Serial is a shortcut for "INTEGER PRIMARY KEY AUTOINCREMENT"
  property :id, Serial
  property :first_name, String # String > VARCHAR(50)
  property :last_name, String
  property :email, String
  property :message, Text # Text maps to type `text` in the database which
                          # can store large String (no character limit)
end

class Subscriber
  include DataMapper::Resource

  property :id, Serial
  property :full_name, String
  property :email, String
end

# auto_upgrade! will automatically create the table if it doesn't exist. If the
# table exists, it will add the columns that are not already there.
DataMapper.auto_upgrade!

helpers do
  def protected!
    return if authorized?
    headers['WWW-Authenticate'] = 'Basic realm="Restricted Area"'
    halt 401, "Not authorized\n"
  end

  def authorized?
    @auth ||=  Rack::Auth::Basic::Request.new(request.env)
    @auth.provided? and @auth.basic? and @auth.credentials and @auth.credentials == ['admin', 'admin']
  end
end


get "/" do
  # session[:counter] ||= 0
  session[:counter] = 0 unless session[:counter]
  session[:counter] += 1

  # this will look for files:
  # views/default_layout.erb (as a layout)
  # views/index.erb (as main template)
  # it will render `index.erb` within `default_layout.erb` (in place of <%= yield %>)
  erb(:index, {layout: :default_layout})
end

get "/about" do
  erb(:about, {layout: :default_layout})
  # erb :about, {layout: :default_layout}
  # erb :about, layout: :default_layout
end

get "/contact" do
  erb(:contact, {layout: :default_layout})
end

post "/submit_contact" do
  # this will use DataMapper `create` method to create a contact in the database
  # from the parameters received from the user
  Contact.create(params)

  @first_name = params[:first_name]
  # params.to_s
  erb(:thank_you, {layout: :default_layout})
end

get "/contacts" do
  protected!
  @contacts = Contact.all
  erb(:contacts, {layout: :default_layout})
end

get "/subscirbe" do
  erb(:subscirbe, {layout: :default_layout})
end

post "/submit_subscribe" do
  Subscriber.create(params)
  @first_name = params[:full_name]
  erb(:thank_you, {layout: :default_layout})
end

get "/subscribers" do
  protected!
  @subscribers = Subscriber.all
  erb(:subscribers, {layout: :default_layout})
end

# /contact_details/1
# /contact_details/2
get "/contact_details/:id" do |id|
  @contact = Contact.get(id)
  session[:last_visited] = @contact.first_name
  erb(:contact_details, {layout: :default_layout})
end
