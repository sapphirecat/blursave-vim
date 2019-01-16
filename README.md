# blursave-vim

Auto-saves all open files when focus is lost.

# Installation

Your favorite plugin manager.

# Usage

The commands will activate/deactivate it at any time.

    :BlurSaveOn
    :BlurSaveOff

It defaults to on/activated, but it can be turned off/deactivated by default
in your vimrc, prior to loading the plugin:

    let g:plugin_blursave_default_off = 1

# Requirements

Minimum vim 6.0 with `+autocmd` feature.

# Incompatible Changes

Compared to the version of this that was on my blog in 2012, this one reverses
the default setting, and the corresponding variable name.  This makes it work
out of the box.

# License

MIT.
