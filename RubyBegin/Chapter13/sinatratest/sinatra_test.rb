require 'sinatra'

# views
# set :views, File.dirname( FILE ) + '/templates'
# static files
# set :public, File.dirname( FILE ) + '/myfiles'

# get '/' do
#     %q{<form method="post">
#         Enter your name: <input type="text" name="name" />
#         <input type="submit" value="Go!" />
#     </form>}
# end

post '/' do
    "Hello #{params[:name]}!"
end

get '/bye' do
    "Leaving already?"
end

get "/time" do
    Time.now.to_s
end

get '/add/:a/:b' do
    (params[:a].to_i + params[:b].to_i).to_s
end

before do
    @people = [
    { :name => "Beatrice", :age => 20 },
    { :name => "Eugenie", :age => 18 },
    { :name => "Louise", :age => 6 }
    ]
end

get '/' do
    erb :index
    # erb :index, :layout => :anotherlayout
    # erb :index, :layout => false

    # erb %{
    # <% @people.each do |person| %>
    # <p><%= person[:name] %> is <%= person[:age] %> years old</p>
    # <% end %>
    # }
end

__END__
@@ layout
<html>
<head><title>My App</title></head>
<body>
<h1>My App</h1>
<%= yield %>
</body>
</html>

@@ index
<% @people.each do |person| %>
<p><%= person[:name] %> is <%= person[:age] %> years old</p>
<% end %>