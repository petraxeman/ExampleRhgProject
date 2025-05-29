CurrentMessage = import("py:current_message")

function echo(text)
    CurrentMessage.reply_text("You said: " .. text)
end

function spec-echo(text)
    CurrentMessage.reply_text("You said: " .. text .. " And you have rights for that.")
end

function init(sender)