" toggle the lights in the office on each save
"
" - adjust the shell script to your light service(s)
" - place the script in your $PATH
" - source his or add to your .vimrc
" - start saving!!

command! -nargs=1 Vafan execute ':silent !'.<q-args> | execute ':redraw!'

autocmd BufWrite * Vafan script_kontor_all_belysning_smart_toggle.sh
