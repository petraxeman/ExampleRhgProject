CurrentMessage = import("CurrentMessage")

function echo(text)
    CurrentMessage.reply_text("You said: " .. text)
end

function get_time()
    return "12.12.2024 12:00"
end