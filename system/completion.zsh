# Use completions for the silver searcher instead of apt plugin
unalias ag
compdef _ag ag

# Use same completions for mosh as zsh
compdef mosh=ssh

# Autocomplete PIDs for reptyr
compdef _pids reptyr

# Use same completions for vman as man
compdef vman="man"
