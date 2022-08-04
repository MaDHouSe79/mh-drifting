local Translations = {
    info = {
        drift_mode     = "[TCS], [ABS], [ESP] is now ",
        drift_mode_on  = "Enable",
        drift_mode_off = "Disable",
        enjoy_sideways = "Enjoy driving sideways!",
        enjoy_standard = "Enjoy driving standard!",
        not_the_owner  = "You are not the owner of this vehicle",
    },
}


Lang = Locale:new({
    phrases = Translations,
    warnOnMissing = true
})
