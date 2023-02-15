"color ron
set guifont=Courier\ New:h20
syntax on
set backspace=indent,eol,start
set number
set ts=4
set sw=4
set hlsearch
set incsearch
map q 0i#<ESC>
map m xj
function Mcom(start, finish)
	let currPos = a:start
	let fn = a:finish
	call cursor(currPos, 1)
	while currPos <= fn
		execute "normal! 0i#\<ESC>j"
		let currPos += 1
	endwhile
	execute "normal! k"
endfunction
function Ucom(start, finish)
	let currPos = a:start
	let fn = a:finish
	call cursor(currPos, 1)
	while currPos <= fn
		execute "normal! 0xj"
		let currPos += 1
	endwhile
	execute "normal! k"
endfunction
function Pybase()
	call feedkeys("A\n\ndef main():\n\nif __name__ == \"__main__\":\n\tmain()\<ESC>gg", 't')
endfunction
