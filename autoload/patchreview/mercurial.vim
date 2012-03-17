let s:PRemote = {}
let s:mercurial = {}

function! s:mercurial.Detect() " {{{
  return isdirectory('.hg')
endfunction
" }}}

function! s:mercurial.GetDiff() " {{{
  let l:diff = s:PRemote.GenDiff('hg diff')
  return {'strip': 1, 'diff': l:diff}
endfunction
" }}}

function! patchreview#mercurial#register(remote) "{{{
  let s:PRemote = a:remote
  return s:mercurial
endfunction
" }}}

" vim: set et fdl=99 fdm=marker fenc= ff=unix ft=vim sts=0 sw=2 ts=2 tw=79 nowrap :
