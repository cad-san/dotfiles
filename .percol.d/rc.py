percol.view.CANDIDATES_LINE_BASIC    = ("default", "on_default")
percol.view.CANDIDATES_LINE_SELECTED = ("default", "on_magenta", "underline")
percol.view.CANDIDATES_LINE_MARKED   = ("yellow",  "on_default")
percol.view.CANDIDATES_LINE_QUERY    = ("green",   "bold")

percol.import_keymap({
    "C-a" : lambda percol: percol.command.beginning_of_line(),
    "C-e" : lambda percol: percol.command.end_of_line(),
    "C-n" : lambda percol: percol.command.toggle_mark_and_next(),
})

