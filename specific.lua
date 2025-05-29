users = import("py:Users")
buckets = import("py:Buckets")

function init()
    cid = await(users.get_current_user().get_id())

    rights = await(buckets.get_bucket("rights", cid))
    await(rights.extend(["cb-produce", "cb-burn", "cb-send", "cb-consume"]))

    user_wallets = await(buckets.get_bucket("user-wallets"))
    user_wallets.set(cid, 0)
    
    cb = await(buckets.get_bucket("cb"))
    await(cb.set("money", 0))
end