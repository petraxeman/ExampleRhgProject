curr_msg = import("py:CurrentMessage")



function echo(text)
    curr_msg.reply_text(text)
end