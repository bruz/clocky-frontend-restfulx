require "rubygems"
require "sinatra"
 
begin
  require 'thin'
rescue LoadError
  puts 'Lose a little weight maybe?'
end

get '/' do
  redirect '/index.html'
end
