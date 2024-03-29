" let g:semanticEnableFileTypes = ['javascript', 'vim', 'python']
let g:semanticEnableFileTypes = {'jsx': 'jsx', 'javascript': 'js', 'python': 'py'}
let g:semanticUseBackground = 1
" let g:semanticPersistCache = 1
let g:semanticUseCache = 1

" http://tools.medialab.sciences-po.fr/iwanthue/

let g:semanticBlacklistOverride = {
\ 'javascript': [
  \	'console',
  \	'info',
  \	'log',
  \	'props',
  \	'state',
  \	'setState',
  \	'ref',
  \	'refs',
  \	'key',
  \	'map',
  \	'filter',
  \	'await',
	\	'break',
	\	'case',
	\	'catch',
	\	'class',
	\	'const',
	\	'continue',
	\	'debugger',
	\	'default',
	\	'delete',
	\	'do',
	\	'else',
	\	'enum',
	\	'export',
	\	'extends',
	\	'false',
	\	'finally',
	\	'for',
	\	'function',
	\	'if',
	\	'implements',
	\	'import',
	\	'in',
	\	'instanceof',
	\	'interface',
	\	'let',
	\	'new',
	\	'null',
	\	'package',
	\	'private',
	\	'protected',
	\	'public',
	\	'return',
	\	'static',
	\	'super',
	\	'switch',
	\	'this',
	\	'throw',
	\	'true',
	\	'try',
	\	'typeof',
	\	'var',
	\	'void',
	\	'while',
	\	'with',
	\ ],
	\ 'ruby': [
	\	'BEGIN',
	\	'do',
	\	'?',
	\	'END',
	\	'__FILE__',
	\	'__LINE__',
	\	'alias',
	\	'and',
	\	'begin',
	\	'break',
	\	'case',
	\	'class',
	\	'def',
	\	'defined',
	\	'else',
	\	'elsif',
	\	'end',
	\	'ensure',
	\	'false',
	\	'for',
	\	'if',
	\	'in',
	\	'module',
	\	'next',
	\	'nil',
	\	'not',
	\	'or',
	\	'redo',
	\	'rescue',
	\	'retry',
	\	'return',
	\	'self',
	\	'super',
	\	'then',
	\	'true',
	\	'undef',
	\	'unless',
	\	'until',
	\	'when',
	\	'while',
	\	'while',
	\ ],
	\ 'php': [
	\	'__CLASS__',
	\	'__DIR__',
	\	'__FILE__',
	\	'__FUNCTION__',
	\	'__LINE__',
	\	'__METHOD__',
	\	'__NAMESPACE__',
	\	'__TRAIT__',
	\	'__halt_compiler',
	\	'abstract',
	\	'and',
	\	'array',
	\	'as',
	\	'break',
	\	'callable',
	\	'case',
	\	'catch',
	\	'class',
	\	'clone',
	\	'const',
	\	'continue',
	\	'declare',
	\	'default',
	\	'die',
	\	'do',
	\	'echo',
	\	'else',
	\	'elseif',
	\	'empty',
	\	'enddeclare',
	\	'endfor',
	\	'endforeach',
	\	'endif',
	\	'endswitch',
	\	'endwhile',
	\	'eval',
	\	'exit',
	\	'extends',
	\	'final',
	\	'for',
	\	'foreach',
	\	'function',
	\	'global',
	\	'goto',
	\	'if',
	\	'implements',
	\	'include',
	\	'include_once',
	\	'instanceof',
	\	'insteadof',
	\	'interface',
	\	'isset',
	\	'list',
	\	'namespace',
	\	'new',
	\	'or',
	\	'print',
	\	'private',
	\	'protected',
	\	'public',
	\	'require',
	\	'require_once',
	\	'return',
	\	'static',
	\	'switch',
	\	'throw',
	\	'trait',
	\	'try',
	\	'unset',
	\	'use',
	\	'var',
	\	'while',
	\	'xor',
	\ ],
	\ 'python': [
	\	'True',
	\	'False',
	\	'None',
	\	'and',
	\	'as',
	\	'assert',
	\	'break',
	\	'class',
	\	'continue',
	\	'def',
	\	'del',
	\	'elif',
	\	'else',
	\	'except',
	\	'exec',
	\	'finally',
	\	'for',
	\	'from',
	\	'global',
	\	'if',
	\	'import',
	\	'in',
	\	'is',
	\	'lambda',
	\	'not',
	\	'or',
	\	'pass',
	\	'print',
	\	'raise',
	\	'return',
	\	'try',
	\	'while',
	\	'with',
	\	'yield',
	\ ],
	\ 'coffee': [
	\	'true',
	\	'false',
	\	'null',
	\	'this',
	\	'new',
	\	'delete',
	\	'typeof',
	\	'in',
	\	'instanceof',
	\	'return',
	\	'throw',
	\	'break',
	\	'continue',
	\	'debugger',
	\	'if',
	\	'else',
	\	'switch',
	\	'for',
	\	'while',
	\	'do',
	\	'try',
	\	'catch',
	\	'finally',
	\	'class',
	\	'extends',
	\	'super',
	\	'undefined',
	\	'then',
	\	'unless',
	\	'until',
	\	'loop',
	\	'of',
	\	'by',
	\	'when',
	\ ],
	\ 'c': [
	\	'auto',
	\	'break',
	\	'case',
	\	'char',
	\	'const',
	\	'continue',
	\	'default',
	\	'do',
	\	'double',
	\	'else',
	\	'enum',
	\	'extern',
	\	'float',
	\	'for',
	\	'goto',
	\	'if',
	\	'int',
	\	'long',
	\	'register',
	\	'return',
	\	'short',
	\	'signed',
	\	'sizeof',
	\	'static',
	\	'struct',
	\	'switch',
	\	'typedef',
	\	'union',
	\	'unsigned',
	\	'void',
	\	'volatile',
	\	'while',
  \ ]
\ }


let g:semanticGUIColors = ["#9CD8F7", "#F5FA1D", "#F97C65", "#35D27F", "#EB75D6", "#E5D180", "#8997F5", "#D49DA5", "#7FEC35", "#F6B223", "#B4F1C3", "#99B730", "#F67C1B", "#3AC6BE", "#EAAFF1", "#DE9A4E", "#BBEA87", "#EEF06D", "#8FB272", "#EAA481", "#F58AAE", "#80B09B", "#5DE866", "#B5A5C5", "#88ADE6", "#4DAABD", "#EDD528", "#FA6BB2", "#47F2D4", "#F47F86", "#2ED8FF", "#B8E01C", "#C5A127", "#74BB46", "#D386F1", "#97DFD6", "#B1A96F", "#66BB75", "#97AA49", "#EF874A", "#48EDF0", "#C0AE50", "#89AAB6", "#D7D1EB", "#5EB894", "#57F0AC", "#B5AF1B", "#B7A5F0", "#8BE289", "#D38AC6", "#C8EE63", "#ED9C36", "#85BA5F", "#9DEA74", "#85C52D", "#40B7E5", "#EEA3C2", "#7CE9B6", "#8CEC58", "#D8A66C", "#51C03B", "#C4CE64", "#45E648", "#4DC15E", "#63A5F3", "#EA8C66", "#D2D43E", "#E5BCE8", "#E4B7CB", "#B092F4", "#44C58C", "#D1E998", "#76E4F2", "#E19392", "#A8E5A4", "#BF9FD6", "#E8C25B", "#58F596", "#6BAEAC", "#94C291", "#7EF1DB", "#E8D65C", "#A7EA38", "#D38AE0", "#ECF453", "#5CD8B8", "#B6BF6B", "#BEE1F1", "#B1D43E", "#EBE77B", "#84A5CD", "#CFEF7A", "#A3C557", "#E4BB34", "#ECB151", "#BDC9F2", "#5EB0E9", "#E09764", "#9BE3C8", "#B3ADDC", "#B2AC36", "#C8CD4F", "#C797AF", "#DCDB26", "#BCA85E", "#E495A5", "#F37DB8", "#70C0B1", "#5AED7D", "#E49482", "#8AA1F0", "#B3EDEE", "#DAEE34", "#EBD646", "#ECA2D2", "#A0A7E6", "#3EBFD3", "#C098BF", "#F1882E", "#77BFDF", "#7FBFC7", "#D4951F", "#A5C0D0", "#B892DE", "#F8CB31", "#75D0D9", "#A6A0B4", "#EA98E4", "#F38BE6", "#DC83A4"]
