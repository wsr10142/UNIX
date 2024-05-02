#!/usr/bin/tcsh
# Fill in the blanks below.
# You cannot add any "\" or ";" or "|" symbols.

echo
echo Echo echoed, '"You said, '"'$*'"'."'
echo
echo | sed -n "iSed's "'"i"'" said, "'"You said, '"'$*'"'."'""
echo
echo $*:q | sed "s/$*/Sed's "'"s"'" said, "'"You said, '"'$*'"'."'"/"
echo
echo $*:q | sed "iSed's "'"i"'" and "'"a"'" said, "'"'"You said, '\
                a'."'"'\
		| tr -d "\n"; echo
echo

# In the following, you can use ";" (but still no "\" or "|").
# Also, in this case, you cannot use any "^" or "$" or "(" or "&" symbols.
# 使用x 兩個空間內容交換
# 使用h 複製pattern space 到hold space (就是覆蓋過去)
# 使用H 追加pattern space 到hold space
# 使用g 複製hold space 到 pattern space
# 使用G 追加hold space 到 pattern space

echo $*:q | sed "x; H; x ; s/\n/'."'"'"/;H;x;s/\n/Sed's hold space was used to say, "'"You said, '"'/"
echo