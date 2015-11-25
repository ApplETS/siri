# Description:
#   Print contributions to ÉTSMobile Android or iOS github project
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   hubot contributions [android|ios]  - Print contributions to ÉTSMobile Android or iOS
#
# Notes:
#   None
#
# Author:
#   Thibaut Tauveron

module.exports = (robot) ->
	robot.respond /(contributions) (android|ios)/i, (msg) ->
    	msg.http("https://evening-everglades-7017.herokuapp.com/"+msg.match[2]).get() (err, res, body) ->
    		if res.statusCode == 404
	        	msg.send '404 not found'
	        else
	        	msg.send body
