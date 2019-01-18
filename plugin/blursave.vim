" Add commands for toggling whether files are saved when vim loses focus.

" only define the autocommand/function once
if ! has("autocmd") || version < 600 || exists("g:loaded_plugin_blursave")
	finish
endif

let g:loaded_plugin_blursave = 1
let s:active = 1
if exists("g:plugin_blursave_default_off") && g:plugin_blursave_default_off
	let s:active = 0
endif

function BlurSaveAutocmdHook()
	if s:active
		silent! wa
	endif
endfunction

augroup plugin_blursave
	autocmd FocusLost * nested call BlurSaveAutocmdHook()
augroup END

command BlurSaveOn let s:active = 1
command BlurSaveOff let s:active = 0
