if !exists("g:monotaDarkColorScheme")
    let g:monotaDarkColorScheme = "Monota"
endif

if !exists("g:monotaLightColorScheme")
    let g:monotaLightColorScheme = "default"
endif


function! monota#SetColorScheme(sch)
    if a:sch == "dark"
        set background=dark
        exec 'colorscheme ' . g:monotaDarkColorScheme
    elseif a:sch == "light"
        set background=light
        exec "colorscheme " . g:monotaLightColorScheme
    else
        echo 'Unknow scheme "' . a:sch . '"'
    endif
endfunction

command! MonotaSetDarkColorScheme call monota#SetColorScheme("dark")
command! MonotaSetLightColorScheme call monota#SetColorScheme("light")
