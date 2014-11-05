require 'rubygems'
require 'whois'

class Request

	#This is a generic class for checking Key authenticity and sending requests to the engine

	attr_accessor :domain
	attr_accessor :body

    def initialize
        	@domain = nil
        	@body = nil
    end
    # sounds stupid but rails want it that way...
    def lookup(domain)
    	if domain != (nil&&true&&"")
        	c = Whois::Client.new
			@body = c.lookup(domain)
		end
	end
end
