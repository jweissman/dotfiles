execute pathogen#infect()
syntax on

set background=dark
colorscheme solarized

" filetype plugin indent on
set shiftwidth=2

" disable non-homerow nav
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

" easy tree
noremap <leader>nt :NERDTreeToggle<CR>
noremap <leader>nf :NERDTreeFind<CR>

" fuzzy finder
noremap <leader>ff :CtrlP<CR>
noremap <leader>ft :CtrlPTag<CR>
noremap <leader>fb :CtrlPBuffer<CR>

" ...vroom!
noremap <leader>rf :VroomRunNearestTest<CR>
noremap <leader>rb :VroomRunTestFile<CR>
noremap <leader>rl :VimuxRunLastCommand<CR>

" easy tabs
noremap <leader>] :tabn<CR>
noremap <leader>[ :tabp<CR>
noremap <leader><Enter> :tabnew<CR>

" quick access to vimrc
noremap <leader>sh :tabe ./spec/spec_helper.rb<CR>
noremap <leader>ee :tabe ~/.vimrc<CR>
noremap <leader>ss :so ~/.vimrc<CR>

" regen tags
map <leader>rt :!ctags --extra=+f --languages=-javascript --exclude=.git --exclude=log -R .<CR><C-M>
" * `rvm gemdir`/gems/* `rvm gemdir`/bundler/gems/*<CR><C-M>
"

" automatically switch back to normal mode after a little inactivity
" automatically leave insert mode after 'updatetime' milliseconds of inaction
au CursorHoldI * stopinsert


set splitbelow
set splitright

let g:vroom_use_vimux = 1
let g:vroom_cucumber_path = 'cucumber'


if has('mouse')
  set mouse=a
  if &term =~ "xterm" || &term =~ "screen"
    " as of March 2013, this works:
    set ttymouse=xterm2

    " previously, I found that ttymouse was getting reset, so had
    " to reapply it via an autocmd like this:
    autocmd VimEnter,FocusGained,BufEnter * set ttymouse=xterm2
  endif
endif  
  

