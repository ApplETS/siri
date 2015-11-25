# Description:
#   Allow Marvin to use programming excuse
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   hubot excuse - Print a random programming excuse
#
# Notes:
#   None
#
# Author:
#   Thomas Durand

module.exports = (robot) ->
	robot.respond /contributions/i, (msg) ->
    	msg.http("https://evening-everglades-7017.herokuapp.com/").get() (err, res, body) ->
    		if res.statusCode == 404
	        	msg.send '404 not found'
	        else
	        	msg.send body
