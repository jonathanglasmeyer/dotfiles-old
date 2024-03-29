" :Extradite toggles the Extradite buffer, i.e. the commit browser. By default, it opens in the current window. Adding |!| makes it open in a vertical split instead.

" The width of the split is set with g:extradite_width, but can be deactivated with g:extradite_resize

" Note: :Extradite only runs if the current file is under git version control!

" Once we are in the Extradite buffer, the following keymaps are available:

" <CR> edits the revision on the current line in a fugitive-buffer.

" oh, ov, and ot edit the revision under the cursor in a new horizontal split / vertical split / tab respectively.

" dh, dv, and dt diff the current file against the revision under the cursor in a new horizontal split / vertical split / tab respectively.

" t toggles the visibility of the file diff buffer.

" q closes the Extradite buffer.
let g:extradite_diff_split="belowright vertical split"
" let g:extradite_width=10
