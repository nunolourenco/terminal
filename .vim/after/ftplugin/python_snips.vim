if !exists('g:loaded_snips')
	fini
en

" New Class
exe "Snip cl class ${1:ClassName}(${2:object}):\n\t\"\"\"${3:docstring for $1}\"\"\"\n\tdef __init__(self, ${4:arg}):\n\t\t${5:super($1, self).__init__()}\n\t\tself.$4 = $4\n\t\t${6}"
" New Function
exe "Snip def def ${1:fname}(${2:`indent('.') ? 'self' : ''`}):\n\t\"\"\"${3:docstring for $1}\"\"\"\n\t${4:pass}"
" New Method
exe "Snip defs def ${1:mname}(self, ${2:arg})):\n\t${3:pass}"
" New Property
exe "Snip property def def ${1:foo}():\n\tdoc = \"${2:The $1 property.}\"\n\tdef fget(self):\n\t\t\t${3:return self._$1}\n\tdef fset(self, value):\n\t\t"
\."${4:self._$1 = value}\n\tdef fdel(self):\n\t\t\t${5:del self._$1}\n\treturn locals()\n$1 = property(**$1())${6}"
" Self
exe 'Snip . self.'
" Try/Except
exe "Snip try try:\n\t${1:pass}\nexcept ${2:Exception}, ${3:e}:\n\t${4:raise $3}"
" Try/Except/Else
exe "Snip trye try:\n\t${1:pass}\nexcept ${2:Exception}, ${3:e}:\n\t${4:raise $3}\nelse:\n\t${5:pass}"
" Try/Except/Finally
exe "Snip tryf try:\n\t${1:pass}\nexcept ${2:Exception}, ${3:e}:\n\t${4:raise $3}\nfinally:\n${5:pass}"
" Try/Except/Else/Finally
exe "Snip tryef try:\n\t${1:pass}\nexcept ${2:Exception}, ${3:e}:\n\t${4:raise $3}\nelse:\n\t${5:pass}\nfinally:\n${6:pass}"
" if __name__ == '__main__':
exe "Snip ifmain if __name__ == '__main__':\n\t${1:main()}"
" __magic__
exe 'Snip _ __${1:init}__${2}'
