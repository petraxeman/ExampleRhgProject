users = import("Users")

function echo(text)
    user = Users.get_current_user()
    user.send_message("You said: " .. text)
end

function get_time()
    return "12.12.2024 12:00"
end

ait_get_time = {
    desc = "This tool give for you current time"
}
