# Joco Neovim Config

## Todo List
- DONE - Finish configuring LSP (Key bindings)
- DONE - Move LSP server setup from init.vim to a better location.
- Finish configuring cmp
- DONE - Install telescope
- DONE - Figure out something for search highlighting (typing :nohl after each search is crazy) [Solution: nnoremap :nohl to enter]
- InProgress - Find some nice workflow with buffer and window splitting. 
[Solution: created a keybind that vplits current buffer, then then I cant just switch 
them around with :bn. :bp. Only thing I am missing is closing the buffer.]
- DONE - Setup airline 
- DONE - Enable font ligatures (Looks like I have to swtich terminal emulator.). [Solution: switched from gnome-terminal to Konsole and using font JetBrans Mono]
- Setup git integration
- Setup plugin/keymaps for commenting line/block. Maybe try commment.nvim
- Setup debugging (vimscpector or dap, not sure yet)
- Generate esc in insert mode with a more convenient shortcut


## Language Servers I use:
- C/C++ : ccls
