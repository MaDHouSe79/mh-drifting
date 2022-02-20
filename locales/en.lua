local Translations = {
    info = {
        drift_mode     = "[TCS], [ABS], [ESP] is now ",
        drift_mode_on  = "Enable",
        drift_mode_off = "Disable",
        enjoy_sideways = "Enjoy driving sideways!",
        enjoy_standard = "Enjoy driving standard!",
    },
}


Lang = Locale:new({
    phrases = Translations,
    warnOnMissing = true
})