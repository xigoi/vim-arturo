if exists("b:current_syntax")
    finish
endif

" Library functions {{{
syntax keyword arturoLibArithmetic add dec div fdiv inc mod mul neg pow sub
syntax match arturoLibArithmeticAlias '\v\+|\/|\%|\*|\^|\-'
syntax keyword arturoLibBinary and nand nor not or shl shr xnor xor
syntax keyword arturoLibCollections append chop combine contains? drop empty empty? extend first flatten get in? index insert key? keys last max min permutate remove repeat reverse sample set shuffle size slice sort split take unique values
syntax keyword arturoLibComparison equal? greater? greaterOrEqual? less? lessOrEqual? notEqual?
syntax match arturoLibComparisonAlias '\v\>\=|\=\<|\<\>|\=|\>|\<'
syntax keyword arturoLibConverters array as dictionary function to
syntax match arturoLibConvertersAlias '\v\@|\#|\$'
syntax keyword arturoLibCore break call case continue do else globalize if if? let new pop push return try try? until var when? while
syntax keyword arturoLibCrypto decode encode digest hash
syntax keyword arturoLibDatabase close query open
syntax keyword arturoLibDates now
syntax keyword arturoLibFiles exists? read unzip write zip
syntax keyword arturoLibIo clear input print prints
syntax keyword arturoLibIterators every? filter fold loop map select some? 
syntax keyword arturoLibLogic all? and? any? false? nand? nor? not? or? true? xnor? 
syntax keyword arturoLibNet download mail serve
syntax keyword arturoLibNumbers abs acos acosh asin asinh atan atanh average ceil cos cosh csec csech ctan ctanh even? exp factors floor gamma gcd ln log median negative? odd? positive? prime? product random range round sec sech sin sinh sqrt sum tan tanh zero?
syntax keyword arturoLibPath extract module relative
syntax keyword arturoLibReflection attr attr? attribute? attributeLabel? attrs benchmark binary? block? boolean? char? database? date? dictionary? help info inline? inspect integer? is? floating? function? label? literal? null? path? pathLabel? set? stack standalone? string? symbol? symbols type type? word?
syntax keyword arturoLibSets difference intersection subset? superset? union
syntax keyword arturoLibStrings ascii? capitalize color join levenshtein lower lower? match numeric? pad prefix prefix? render replace strip suffix suffix? upper upper? whitespace?
syntax match arturoLibStringsAlias '\v\~'
syntax keyword arturoLibSystem execute exit list panic pause
syntax keyword arturoLibUi webview
" }}}

" Syntax {{{
syntax match arturoComment '\v;.*$'
syntax keyword arturoNull null
syntax keyword arturoBoolean true false
syntax match arturoInteger '\v\d+'
syntax match arturoFloating '\v\d+\.\d+'
syntax match arturoType '\v:[A-Za-z?]+'
syntax match arturoChar '\v`\\?.`'
syntax region arturoString start='\v\"' skip='\v\\.' end='\v\"|$' contains=arturoStringInterpolation
syntax match arturoString '\v» .*$' contains=arturoStringInterpolation
syntax region arturoRawString start='\v\{' end='\v\}' contains=arturoRawString,arturoStringInterpolation
syntax match arturoStringInterpolation '\v\|[^|]+\|' contained
syntax match arturoLiteral "\v\'[A-Za-z?]+"
syntax match arturoPathDelimiter '\v\\'
syntax match arturoAttributeDelimiter '\v\.'
syntax match arturoSyntacticSugar '\v\-\>|\=\>|\|'
syntax match arturoAssignment '\v[A-Za-z?]+\:'
" }}}

syntax match arturoLibNumbersAlias '\v\.\.'

" Highlight links {{{
highlight link arturoComment Comment
highlight link arturoNull Constant
highlight link arturoBoolean Boolean
highlight link arturoInteger Number
highlight link arturoFloating Float
highlight link arturoType Type
highlight link arturoChar Character
highlight link arturoString String
highlight link arturoRawString String
highlight link arturoStringInterpolation Special
highlight link arturoLiteral Special
highlight link arturoPathDelimiter Delimiter
highlight link arturoSyntacticSugar Keyword
highlight link arturoAttributeDelimiter Delimiter
highlight link arturoAssignment Statement
highlight link arturoLibArithmetic Operator
highlight link arturoLibArithmeticAlias Operator
highlight link arturoLibBinary Operator
highlight link arturoLibComparison Operator
highlight link arturoLibComparisonAlias Operator
highlight link arturoLibConverters Keyword
highlight link arturoLibConvertersAlias Keyword
highlight link arturoLibCore Keyword
highlight link arturoLibCrypto Function
highlight link arturoLibDatabase Function
highlight link arturoLibDates Function
highlight link arturoLibFiles Function
highlight link arturoLibIo Function
highlight link arturoLibIterators Function
highlight link arturoLibLogic Operator
highlight link arturoLibNet Function
highlight link arturoLibNumbers Operator
highlight link arturoLibNumbersAlias Operator
highlight link arturoLibPath Function
highlight link arturoLibReflection Keyword
highlight link arturoLibStrings Function
highlight link arturoLibStringsAlias Function
highlight link arturoLibSystem Function
highlight link arturoLibUi Function
" }}}

let b:current_syntax = "arturo"
