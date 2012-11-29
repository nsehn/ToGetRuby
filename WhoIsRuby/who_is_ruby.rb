require 'sinatra'
require "rubygems" 
require "whois" 

get '/who' do
	"Hello World!"
	

puts "Hey! Let\'s look up a domain and see if it\'s free!!!"
requested_domain = gets.chomp
 # This gets.chomp is does not do the same thing as a POST.
 #a POST is used to communicate with the outside world.
 #A gets.chomp is used to communicate with a local user on a computer.
 #This is why we cannot use this code and have to use hi.rb 

w = Whois::Client.new
query = w.query(requested_domain)
puts query.available?
	if query.available?
		"This is available!"
		else
		"This is not available. Please try again!"
	end

end

