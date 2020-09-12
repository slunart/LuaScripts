-- Lua script to send email
-- Author Samuel Martins
-- MIT license

module(..., package.seeall)

smtp = require("socket.smtp")
mime = require("mime")
ltn12 = require("ltn12")
 

function sendMessage(title, mailbody)

-- change XXX to the correct value
     mesgt = {
      headers = {
        from = "xxx@gmail.com",
        to = "xxx@gmail.com",
        subject = title
      },
      body = mailbody
    }

-- change XXX to the correct value
    r, e = smtp.send {
       from = "XXX@gmail.com",
       rcpt = "XXX@gmail.com", 
       source = smtp.message(mesgt),
       user = "XXX@gmail.com",
       password = "password",
       server = "smtp.gmail.com",
       port = "587"
    }
     
    if (e) then
       io.stderr:write("Could not send email: ", e, "\n")
    end

end