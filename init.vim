" Configs 
" -> Plugins 
" -> General
" -> VIM user interface
" -> Colors and Fonts
" -> Files and backups
" -> Text, tab and indent related
" -> Visual mode related
" -> Moving around, tabs and buffers
" -> Status line
" -> Editing mappings
" -> vimgrep searching and cope displaying
" -> Spell checking
" -> Misc
" -> Helper functions
"
for f in split(glob('~/.config/nvim/config/*.vim'), '\n')
	exe 'source' f
endfor
