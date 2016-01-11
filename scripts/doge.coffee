
module.exports = (robot) ->
 
  robot.respond /doge (.*)/i, (res) ->
    if res.match[1] is "help"
        res.reply "hubot doge <such> <much> <very>"
    else
        reponse = res.match[0]        
        array = reponse.split " "    
        res.send "http://dogr.io/wow/such#{array[2]}/much#{array[3]}/very#{array[4]}.png"
    