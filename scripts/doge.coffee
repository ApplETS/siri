
module.exports = (robot) ->
 
  robot.respond /doge (.*)/i, (res) ->
    if res.match[1] is "help"
        res.reply "hubot doge <such> <much> <very>"
    else
        reponse = res.match[0]
        reponse = reponse.replace /@/, ""
        array = reponse.split " "    
        res.send "http://dogr.io/wow/such#{array[0]}/much#{array[1]}/very#{array[2]}.png"
    