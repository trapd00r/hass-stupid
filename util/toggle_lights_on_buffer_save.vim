# toggle the lights in the office on each save

command! -nargs=1 Vafan execute ':silent !'.<q-args> | execute ':redraw!'

autocmd BufWrite * Vafan sh /home/scp1/dev/ha/util/script_kontor_all_belysning_smart_toggle.sh

