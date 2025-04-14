local greek = {
	"alpha",
	"beta",
	"gamma",
	"Gamma",
	"delta",
	"Delta",
	"epsilon",
	"varepsilon",
	"zeta",
	"eta",
	"theta",
	"Theta",
	"iota",
	"kappa",
	"lambda",
	"Lambda",
	"mu",
	"nu",
	"omicron",
	"xi",
	"Xi",
	"pi",
	"Pi",
	"rho",
	"sigma",
	"Sigma",
	"tau",
	"upsilon",
	"Upsilon",
	"varphi",
	"phi",
	"Phi",
	"chi",
	"psi",
	"Psi",
	"omega",
	"Omega",
}

local latex_snippets = {
	-- sections
	{
		trigger = "^# ",
		replacement = "\\section{$0}",
		options = "rtA",
	},
	{
		trigger = "^## ",
		replacement = "\\subsection{$0}",
		options = "rtA",
	},
	{
		trigger = "^### ",
		replacement = "\\subsubsection{$0}",
		options = "rtA",
	},

	-- Math Mode
	{
		trigger = "mk",
		replacement = "$$0$",
		options = "tAw",
	},
	{
		trigger = "dm",
		replacement = "$$\n$0\n.$$",
		options = "tAw",
	},
	{
		trigger = "beg",
		replacement = "\\begin{$0}\n\t$1\n\\end{$0}",
		options = "mA",
	},
	{
		trigger = "beg",
		replacement = "\\begin{$0}\n\t$1\n\\end{$0}",
		options = "",
	},
	-- Greek
	{
		trigger = "@a",
		replacement = "\\alpha ",
		options = "mA",
	},
	{
		trigger = "@A",
		replacement = "\\alpha ",
		options = "mA",
	},
	{
		trigger = "@b",
		replacement = "\\beta ",
		options = "mA",
		priority = 1,
	},
	{
		trigger = "@B",
		replacement = "\\beta ",
		options = "mA",
		priority = 1,
	},
	{
		trigger = "@c",
		replacement = "\\chi ",
		options = "mA",
	},
	{
		trigger = "@C",
		replacement = "\\chi ",
		options = "mA",
	},
	{
		trigger = "@g",
		replacement = "\\gamma ",
		options = "mA",
	},
	{
		trigger = "@G",
		replacement = "\\Gamma ",
		options = "mA",
	},
	{
		trigger = "@d",
		replacement = "\\delta ",
		options = "mA",
	},
	{
		trigger = "@D",
		replacement = "\\Delta ",
		options = "mA",
	},
	{
		trigger = "@e",
		replacement = "\\epsilon ",
		options = "mA",
	},
	{
		trigger = "@E",
		replacement = "\\epsilon ",
		options = "mA",
	},
	{
		trigger = ":e",
		replacement = "\\varepsilon ",
		options = "mA",
	},
	{
		trigger = ":E",
		replacement = "\\varepsilon ",
		options = "mA",
	},
	{
		trigger = "@z",
		replacement = "\\zeta ",
		options = "mA",
		priority = 1,
	},
	{
		trigger = "@Z",
		replacement = "\\zeta ",
		options = "mA",
		priority = 1,
	},
	{
		trigger = "@t",
		replacement = "\\theta ",
		options = "mA",
		priority = 1,
	},
	{
		trigger = "@T",
		replacement = "\\Theta ",
		options = "mA",
		priority = 1,
	},
	{
		trigger = "@k",
		replacement = "\\kappa ",
		options = "mA",
	},
	{
		trigger = "@K",
		replacement = "\\kappa ",
		options = "mA",
	},
	{
		trigger = "@l",
		replacement = "\\lambda ",
		options = "mA",
	},
	{
		trigger = "@L",
		replacement = "\\Lambda ",
		options = "mA",
	},
	{
		trigger = "@m",
		replacement = "\\mu ",
		options = "mA",
	},
	{
		trigger = "@M",
		replacement = "\\mu ",
		options = "mA",
	},
	{
		trigger = "@r",
		replacement = "\\rho ",
		options = "mA",
	},
	{
		trigger = "@R",
		replacement = "\\rho ",
		options = "mA",
	},
	{
		trigger = "@s",
		replacement = "\\sigma ",
		options = "mA",
	},
	{
		trigger = "@S",
		replacement = "\\Sigma ",
		options = "mA",
	},
	{
		trigger = "ome",
		replacement = "\\omega ",
		options = "mA",
	},
	{
		trigger = "@o",
		replacement = "\\omega ",
		options = "mA",
	},
	{
		trigger = "@O",
		replacement = "\\Omega ",
		options = "mA",
	},

	-- Operations
	{
		trigger = "ds",
		replacement = "\\displaystyle",
		options = "mA",
	},
	{
		trigger = "max",
		replacement = "\\max",
		options = "mA",
	},
	{
		trigger = "min",
		replacement = "\\min",
		options = "mA",
	},
	{
		trigger = "te",
		replacement = "\\text{$0}",
		options = "m",
	},
	{
		trigger = "text",
		replacement = "\\text{$0}",
		options = "mA",
	},
	{
		trigger = "bf",
		replacement = "\\mathbf{$0}",
		options = "mA",
	},
	{
		trigger = "sr",
		replacement = "^{2}",
		options = "mA",
	},
	{
		trigger = "cb",
		replacement = "^{3}",
		options = "mA",
	},
	{
		trigger = "rd",
		replacement = "^{$0}",
		options = "mA",
	},
	{
		trigger = "_",
		replacement = "_{$0}",
		options = "mA",
	},
	{
		trigger = "sts",
		replacement = "_\\text{$0}",
		options = "mA",
	},
	{
		trigger = "sq",
		replacement = "\\sqrt{$0}",
		options = "mA",
	},
	{
		trigger = "//",
		replacement = "\\frac{$0}{$1}",
		options = "mA",
	},
	{
		trigger = "ee",
		replacement = "e^{ $0 }",
		options = "mA",
	},
	{
		trigger = "rm",
		replacement = "\\mathrm{$0}",
		options = "mA",
	},
	{
		trigger = "conj",
		replacement = "^{*}",
		options = "mA",
	},
	{
		trigger = "trace",
		replacement = "\\mathrm{Tr}",
		options = "mA",
	},
	{
		trigger = "det",
		replacement = "\\det",
		options = "mA",
	},
	{
		trigger = "re",
		replacement = "\\mathrm{Re}",
		options = "mA",
	},
	{
		trigger = "im",
		replacement = "\\mathrm{Im}",
		options = "mA",
	},

	{
		trigger = "bar",
		replacement = "\\bar{$0}",
		options = "mA",
	},
	{
		trigger = "hat",
		replacement = "\\hat{$0}",
		options = "mA",
	},
	{
		trigger = "dot",
		replacement = "\\dot{$0}",
		options = "mA",
	},
	{
		trigger = "ddot",
		replacement = "\\ddot{$0}",
		options = "mA",
		priority = 2,
	},
	{
		trigger = "vec",
		replacement = "\\vec{$0}",
		options = "mA",
	},
	{
		trigger = "und",
		replacement = "\\underline{$0}",
		options = "mA",
	},

	-- Symbols
	{
		trigger = "ooo",
		replacement = "\\infty ",
		options = "mA",
	},
	{
		trigger = "sum",
		replacement = "\\sum ",
		options = "mA",
	},
	{
		trigger = "\\sum *",
		replacement = "\\sum \\limits_{$0}",
		options = "mA",
	},
	{
		trigger = "prod",
		replacement = "\\prod ",
		options = "mA",
	},
	{
		trigger = "lim",
		replacement = "\\lim_{ ${0:n} \\to ${1:\\infty} } ",
		options = "mA",
	},
	{
		trigger = "pm",
		replacement = "\\pm ",
		options = "m",
	},
	{
		trigger = "mp",
		replacement = "\\mp ",
		options = "m",
	},
	{
		trigger = "...",
		replacement = "\\dots ",
		options = "mA",
	},
	{
		trigger = "<->",
		replacement = "\\leftrightarrow  ",
		options = "mA",
	},
	{
		trigger = "->",
		replacement = "\\to ",
		options = "mA",
	},
	{
		trigger = "!>",
		replacement = "\\mapsto ",
		options = "mA",
	},
	{
		trigger = "invs",
		replacement = "^{-1} ",
		options = "mA",
	},
	{
		trigger = "\\\\\\",
		replacement = "\\setminus ",
		options = "mA",
	},
	{
		trigger = "||",
		replacement = "\\mid ",
		options = "mA",
	},
	{
		trigger = "and",
		replacement = "\\cap ",
		options = "mA",
	},
	{
		trigger = "orr",
		replacement = "\\cup ",
		options = "mA",
	},
	{
		trigger = "inn",
		replacement = "\\in ",
		options = "mA",
	},
	{
		trigger = "subset",
		replacement = "\\subset ",
		options = "mA",
		priority = 1,
	},
	{
		trigger = "\\subset =",
		replacement = "\\subseteq ",
		options = "mA",
	},
	{
		trigger = "set",
		replacement = "\\{ $0 \\} ",
		options = "mA",
	},
	{
		trigger = "=>",
		replacement = "\\implies ",
		options = "mA",
	},
	{
		trigger = "=<",
		replacement = "\\impliedby ",
		options = "mA",
	},
	{
		trigger = "iff",
		replacement = "\\iff ",
		options = "mA",
	},
	{
		trigger = "e\\xi sts",
		replacement = "\\exists ",
		options = "mA",
		priority = 1,
	},
	{
		trigger = "===",
		replacement = "\\equiv ",
		options = "mA",
	},
	{
		trigger = "Sq",
		replacement = "\\square ",
		options = "mA",
	},
	{
		trigger = "!=",
		replacement = "\\neq ",
		options = "mA",
	},
	{
		trigger = ">=",
		replacement = "\\geq ",
		options = "mA",
	},
	{
		trigger = "<=",
		replacement = "\\leq ",
		options = "mA",
	},
	{
		trigger = ">>",
		replacement = "\\gg ",
		options = "mA",
	},
	{
		trigger = "<<",
		replacement = "\\ll ",
		options = "mA",
	},
	{
		trigger = "~~",
		replacement = "\\sim ",
		options = "mA",
	},
	{
		trigger = "\\sim ~",
		replacement = "\\approx ",
		options = "mA",
	},
	{
		trigger = "prop",
		replacement = "\\propto ",
		options = "mA",
	},
	{
		trigger = "nabl",
		replacement = "\\nabla ",
		options = "mA",
	},
	{
		trigger = "del",
		replacement = "\\nabla ",
		options = "mA",
	},
	{
		trigger = "xx",
		replacement = "\\times ",
		options = "mA",
	},
	{
		trigger = "**",
		replacement = "\\cdot ",
		options = "mA",
	},
	{
		trigger = "para",
		replacement = "\\parallel ",
		options = "mA",
	},

	{
		trigger = "xnn",
		replacement = "x_{n}",
		options = "mA",
	},
	{
		trigger = "xii",
		replacement = "x_{i}",
		options = "mA",
	},
	{
		trigger = "xjj",
		replacement = "x_{j}",
		options = "mA",
	},
	{
		trigger = "xp1",
		replacement = "x_{n+1}",
		options = "mA",
	},
	{
		trigger = "ynn",
		replacement = "y_{n}",
		options = "mA",
	},
	{
		trigger = "yii",
		replacement = "y_{i}",
		options = "mA",
	},
	{
		trigger = "yjj",
		replacement = "y_{j}",
		options = "mA",
	},

	{
		trigger = "mcal",
		replacement = "\\mathcal{$0}",
		options = "mA",
	},
	{
		trigger = "mbb",
		replacement = "\\mathbb{$0}",
		options = "mA",
	},
	{
		trigger = "ell",
		replacement = "\\ell",
		options = "mA",
	},
	{
		trigger = "lll",
		replacement = "\\ell",
		options = "mA",
	},
	{
		trigger = "LL",
		replacement = "\\mathcal{L}",
		options = "mA",
	},
	{
		trigger = "HH",
		replacement = "\\mathcal{H}",
		options = "mA",
	},
	{
		trigger = "CC",
		replacement = "\\mathbb{C}",
		options = "mA",
	},
	{
		trigger = "RR",
		replacement = "\\mathbb{R}",
		options = "mA",
	},
	{
		trigger = "ZZ",
		replacement = "\\mathbb{Z}",
		options = "mA",
	},
	{
		trigger = "NN",
		replacement = "\\mathbb{N}",
		options = "mA",
	},
	{
		trigger = "II",
		replacement = "\\mathbb{1}",
		options = "mA",
	},
	{
		trigger = "\\mathbb{1}I",
		replacement = "\\hat{\\mathbb{1}}",
		options = "mA",
	},
	{
		trigger = "AA",
		replacement = "\\mathcal{A}",
		options = "mA",
	},
	{
		trigger = "BB",
		replacement = "\\mathbf{B}",
		options = "mA",
	},
	{
		trigger = "EE",
		replacement = "\\mathbf{E}",
		options = "mA",
	},

	-- Unit vectors
	{
		trigger = ":i",
		replacement = "\\mathbf{i}",
		options = "mA",
	},
	{
		trigger = ":j",
		replacement = "\\mathbf{j}",
		options = "mA",
	},
	{
		trigger = ":k",
		replacement = "\\mathbf{k}",
		options = "mA",
	},
	{
		trigger = ":x",
		replacement = "\\hat{\\mathbf{x}}",
		options = "mA",
	},
	{
		trigger = ":y",
		replacement = "\\hat{\\mathbf{y}}",
		options = "mA",
	},
	{
		trigger = ":z",
		replacement = "\\hat{\\mathbf{z}}",
		options = "mA",
	},
	-- Normal Environments
	{
		trigger = "--e",
		replacement = "\\begin{enumerate}\n\t\\item $0\n\\end{enumerate}",
		options = "tA",
	},
	{
		trigger = "--i",
		replacement = "\\begin{itemize}\n\t\\item $0\n\\end{itemize}",
		options = "tA",
	},
	{
		trigger = "---",
		replacement = "\\item ",
		options = "tA",
	},
	{
		trigger = "--n",
		replacement = "\\begin{noteblock}\n\t\\textbf{${0:Note}}\n\n\t$1\n\\end{noteblock}",
		options = "tA",
	},
	{
		trigger = "--t",
		replacement = "\\begin{tipblock}\n\t\\textbf{${0:Tip}}\n\n\t$1\n\\end{tipblock}",
		options = "tA",
	},
	{
		trigger = "--w",
		replacement = "\\begin{warningblock}\n\t\\textbf{${0:Warning}}\n\n\t$1\n\\end{warningblock}",
		options = "tA",
	},
	{
		trigger = "--c",
		replacement = "\\begin{cautionblock}\n\t\\textbf{${0:Caution}}\n\n\t$1\n\\end{cautionblock}",
		options = "tA",
	},
	{
		trigger = "--*",
		replacement = "\\textit{$0}",
		options = "tA",
	},
	{
		trigger = "--`",
		replacement = "\\texttt{$0}",
		options = "tA",
	},
	{
		trigger = "-**",
		replacement = "\\textbf{$0}",
		options = "tA",
	},
	{
		trigger = "***",
		replacement = "\\textbf{\\textit{$0}}",
		options = "tA",
	},
	-- Math Environments
	{
		trigger = "pmat",
		replacement = "\\begin{pmatrix}\n\t$0\n\\end{pmatrix}",
		options = "mA",
	},
	{
		trigger = "bmat",
		replacement = "\\begin{bmatrix}\n\t$0\n\\end{bmatrix}",
		options = "mA",
	},
	{
		trigger = "Bmat",
		replacement = "\\begin{Bmatrix}\n\t$0\n\\end{Bmatrix}",
		options = "mA",
	},
	{
		trigger = "vmat",
		replacement = "\\begin{vmatrix}\n\t$0\n\\end{vmatrix}",
		options = "mA",
	},
	{
		trigger = "Vmat",
		replacement = "\\begin{Vmatrix}\n\t$0\n\\end{Vmatrix}",
		options = "mA",
	},
	{
		trigger = "case",
		replacement = "\\begin{cases}\n\t$0\n\\end{cases}",
		options = "mA",
	},
	{
		trigger = "align",
		replacement = "\\begin{aligned}\n\t$0\n\\end{aligned}",
		options = "mA",
	},
	{
		trigger = "array",
		replacement = "\\begin{array}\n\t$0\n\\end{array}",
		options = "mA",
	},
	{
		trigger = "matrix",
		replacement = "\\begin{matrix}\n\t$0\n\\end{matrix}",
		options = "mA",
	},

	-- Brackets
	{
		trigger = "avg",
		replacement = "\\langle $0 \\rangle ",
		options = "mA",
	},
	{
		trigger = "norm",
		replacement = "\\lvert $0 \\rvert ",
		options = "mA",
		priority = 1,
	},
	{
		trigger = "Norm",
		replacement = "\\lVert $0 \\rVert ",
		options = "mA",
		priority = 1,
	},
	{
		trigger = "mod",
		replacement = "|$0|",
		options = "mA",
	},
	{
		trigger = "(",
		replacement = "($0)",
		options = "mA",
	},
	{
		trigger = "{",
		replacement = "{$0}",
		options = "mA",
	},
	{
		trigger = "[",
		replacement = "[$0]",
		options = "mA",
	},
	{
		trigger = "lr(",
		replacement = "\\left( $0 \\right) ",
		options = "mA",
		priority = 3,
	},
	{
		trigger = "lr|",
		replacement = "\\left| $0 \\right| ",
		options = "mA",
	},
	{
		trigger = "lr{",
		replacement = "\\left\\{ $0 \\right\\} ",
		options = "mA",
	},
	{
		trigger = "lr[",
		replacement = "\\left[ $0 \\right] ",
		options = "mA",
	},
	{
		trigger = "lra",
		replacement = "\\left< $0 \\right> ",
		options = "mA",
	},
	{
		trigger = "floor",
		replacement = "\\lfloor $0 \\rfloor ",
		options = "mA",
		priority = 1,
	},
	{
		trigger = "ceil",
		replacement = "\\lceil $0 \\rceil ",
		options = "mA",
		priority = 1,
	},

	-- Integrals
	{
		trigger = "oinf",
		replacement = "\\int_{0}^{\\infty} $0 \\, d${1:x} ",
		options = "mA",
	},
	{
		trigger = "infi",
		replacement = "\\int_{-\\infty}^{\\infty} $0 \\, d${1:x} ",
		options = "mA",
	},
	{
		trigger = "dint",
		replacement = "\\int_{${0:0}}^{${1:\\infty}} $2 \\, d${3:x} ",
		options = "mA",
	},
	{
		trigger = "oint",
		replacement = "\\oint",
		options = "mA",
	},
	{
		trigger = "iiint",
		replacement = "\\iiint",
		options = "mA",
	},
	{
		trigger = "iint",
		replacement = "\\iint",
		options = "mA",
	},
	{
		trigger = "int",
		replacement = "\\int $0 \\, d${1:x} ",
		options = "mA",
	},

	-- Misc
	{
		trigger = "tayl",
		replacement = "${0:f}(${1:x} + ${2:h}) = ${0:f}(${1:x}) + ${0:f}'(${1:x})${2:h} + ${0:f}''(${1:x}) \\frac{${2:h}^{2}}{2!} + \\dots",
		options = "mA",
	},

	-- subscript
	{
		trigger = "([a-zA-Z]),%.",
		replacement = "\\mathbf{[[0]]}",
		options = "rmA",
	},
	{
		trigger = "([a-zA-Z])%.,",
		replacement = "\\mathbf{[[0]]}",
		options = "rmA",
	},
	{
		trigger = "([A-Za-z])(%d)",
		replacement = "[[0]]_[[1]]",
		options = "rmA",
		description = "Auto letter subscript",
		priority = -1,
	},
	{
		trigger = "([A-Za-z])_(%d%d)",
		replacement = "[[0]]_{[[1]]}",
		options = "rmA",
	},
	-- Derivatives
	{
		trigger = "par",
		replacement = "\\frac{ \\partial ${0:y} }{ \\partial ${1:x} } ",
		options = "m",
	},
	{
		trigger = "pa2",
		replacement = "\\frac{ \\partial^{2} ${0:y} }{ \\partial ${1:x}^{2} } ",
		options = "mA",
	},
	{
		trigger = "pa3",
		replacement = "\\frac{ \\partial^{3} ${0:y} }{ \\partial ${1:x}^{3} } ",
		options = "mA",
	},
	{
		trigger = "pa([A-Za-z])([A-Za-z])",
		replacement = "\\frac{ \\partial [[0]] }{ \\partial [[1]] } ",
		options = "rm",
	},
	{
		trigger = "pa([A-Za-z])([A-Za-z])([A-Za-z])",
		replacement = "\\frac{ \\partial^{2} [[0]] }{ \\partial [[1]] \\partial [[2]] } ",
		options = "rm",
	},
	{
		trigger = "pa([A-Za-z])([A-Za-z])2",
		replacement = "\\frac{ \\partial^{2} [[0]] }{ \\partial [[1]]^{2} } ",
		options = "rmA",
	},
	{
		trigger = "de([A-Za-z])([A-Za-z])",
		replacement = "\\frac{ d[[0]] }{ d[[1]] } ",
		options = "rm",
	},
	{
		trigger = "de([A-Za-z])([A-Za-z])2",
		replacement = "\\frac{ d^{2}[[0]] }{ d[[1]]^{2} } ",
		options = "rmA",
	},
	{
		trigger = "ddt",
		replacement = "\\frac{d}{dt} ",
		options = "mA",
	},

	-- Greek letter stuff
	{
		trigger = "([^\\])(${GREEK})",
		replacement = "[[0]]\\[[1]] ",
		options = "rmA",
		description = "Add backslash before greek letters and symbols",
		priority = 1,
	},
	{
		trigger = "^(${GREEK})",
		replacement = "\\[[0]] ",
		options = "rmA",
		description = "Add backslash before greek letters and symbols",
		priority = 1,
	},
	{
		trigger = "\\(${GREEK}) sr",
		replacement = "\\[[0]]^{2}",
		options = "rmA",
		priority = 1,
	},
	{
		trigger = "\\(${GREEK}) cb",
		replacement = "\\[[0]]^{3}",
		options = "rmA",
		priority = 1,
	},
	{
		trigger = "\\(${GREEK}) rd",
		replacement = "\\[[0]]^{$0}",
		options = "rmA",
		priority = 1,
	},
	{
		trigger = "\\(${GREEK}) hat",
		replacement = "\\hat{\\[[0]]}",
		options = "rmA",
		priority = 1,
	},
	{
		trigger = "\\(${GREEK}) dot",
		replacement = "\\dot{\\[[0]]}",
		options = "rmA",
		priority = 1,
	},
	{
		trigger = "\\(${GREEK}) bar",
		replacement = "\\bar{\\[[0]]}",
		options = "rmA",
		priority = 1,
	},
	{
		trigger = "\\(${GREEK}) vec",
		replacement = "\\vec{\\[[0]]}",
		options = "rmA",
		priority = 1,
	},
	{
		trigger = "\\(${GREEK}) und",
		replacement = "\\underline{\\[[0]]}",
		options = "rmA",
		priority = 1,
	},
	{
		trigger = "\\(${GREEK}) ,%.",
		replacement = "\\boldsymbol{\\[[0]]}",
		options = "rmA",
		priority = 1,
	},
	{
		trigger = "\\(${GREEK}) %.,",
		replacement = "\\boldsymbol{\\[[0]]}",
		options = "rmA",
		priority = 1,
	},
	{
		trigger = "\\(${GREEK}) (%d)",
		replacement = "\\[[0]]_[[1]]",
		options = "rmA",
		priority = 1,
	},

	{
		trigger = "\\hat{([A-Za-z])}(%d)",
		replacement = "hat{[[0]]}_{[[1]]}",
		options = "rmA",
		priority = 1,
	},
	{
		trigger = "\\mathbf{([A-Za-z])}(%d)",
		replacement = "\\mathbf{[[0]]}_{[[1]]}",
		options = "rmA",
		priority = 1,
	},
	{
		trigger = "\\vec{([A-Za-z])}(%d)",
		replacement = "\\vec{[[0]]}_{[[1]]}",
		options = "rmA",
		priority = 1,
	},
	{
		trigger = "([a-zA-Z])bar",
		replacement = "\\bar{[[0]]}",
		options = "rmA",
		priority = 1,
	},
	{
		trigger = "([a-zA-Z])hat",
		replacement = "\\hat{[[0]]}",
		options = "rmA",
		priority = 1,
	},
	{
		trigger = "([a-zA-Z])ddot",
		replacement = "\\ddot{[[0]]}",
		options = "rmA",
		priority = 3,
	},
	{
		trigger = "([a-zA-Z])dot",
		replacement = "\\dot{[[0]]}",
		options = "rmA",
		priority = 1,
	},
	{
		trigger = "([a-zA-Z])vec",
		replacement = "\\vec{[[0]]}",
		options = "rmA",
		priority = 1,
	},
	{
		trigger = "([a-zA-Z])und",
		replacement = "\\underline{[[0]]}",
		options = "rmA",
		priority = 1,
	},

	{
		trigger = "([^\\])(arcsin)",
		replacement = "[[0]]\\[[1]]",
		options = "rmA",
	},
	{
		trigger = "([^\\])(arccos)",
		replacement = "[[0]]\\[[1]]",
		options = "rmA",
	},
	{
		trigger = "([^\\])(arctan)",
		replacement = "[[0]]\\[[1]]",
		options = "rmA",
	},
	{
		trigger = "([^\\])(arccot)",
		replacement = "[[0]]\\[[1]]",
		options = "rmA",
	},
	{
		trigger = "([^\\])(arcsec)",
		replacement = "[[0]]\\[[1]]",
		options = "rmA",
	},
	{
		trigger = "([^\\])(arccsc)",
		replacement = "[[0]]\\[[1]]",
		options = "rmA",
	},
	{
		trigger = "([^\\])(sin)",
		replacement = "[[0]]\\[[1]]",
		options = "rmA",
	},
	{
		trigger = "([^\\])(cos)",
		replacement = "[[0]]\\[[1]]",
		options = "rmA",
	},
	{
		trigger = "([^\\])(tan)",
		replacement = "[[0]]\\[[1]]",
		options = "rmA",
	},
	{
		trigger = "([^\\])(cot)",
		replacement = "[[0]]\\[[1]]",
		options = "rmA",
	},
	{
		trigger = "([^\\])(sec)",
		replacement = "[[0]]\\[[1]]",
		options = "rmA",
	},
	{
		trigger = "([^\\])(csc)",
		replacement = "[[0]]\\[[1]]",
		options = "rmA",
	},

	{
		trigger = "^(arcsin)",
		replacement = "\\[[0]]",
		options = "rmA",
	},
	{
		trigger = "^(arccos)",
		replacement = "\\[[0]]",
		options = "rmA",
	},
	{
		trigger = "^(arctan)",
		replacement = "\\[[0]]",
		options = "rmA",
	},
	{
		trigger = "^(arccot)",
		replacement = "\\[[0]]",
		options = "rmA",
	},
	{
		trigger = "^(arcsec)",
		replacement = "\\[[0]]",
		options = "rmA",
	},
	{
		trigger = "^(arccsc)",
		replacement = "\\[[0]]",
		options = "rmA",
	},
	{
		trigger = "^(sin)",
		replacement = "\\[[0]]",
		options = "rmA",
	},
	{
		trigger = "^(cos)",
		replacement = "\\[[0]]",
		options = "rmA",
	},
	{
		trigger = "^(tan)",
		replacement = "\\[[0]]",
		options = "rmA",
	},
	{
		trigger = "^(cot)",
		replacement = "\\[[0]]",
		options = "rmA",
	},
	{
		trigger = "^(sec)",
		replacement = "\\[[0]]",
		options = "rmA",
	},
	{
		trigger = "^(csc)",
		replacement = "\\[[0]]",
		options = "rmA",
	},

	{
		trigger = "\\(arcsin)([A-Za-gi-z])",
		replacement = "\\[[0]] [[1]]",
		options = "rmA",
	},
	{
		trigger = "\\(arccos)([A-Za-gi-z])",
		replacement = "\\[[0]] [[1]]",
		options = "rmA",
	},
	{
		trigger = "\\(arctan)([A-Za-gi-z])",
		replacement = "\\[[0]] [[1]]",
		options = "rmA",
	},
	{
		trigger = "\\(arccot)([A-Za-gi-z])",
		replacement = "\\[[0]] [[1]]",
		options = "rmA",
	},
	{
		trigger = "\\(arcsec)([A-Za-gi-z])",
		replacement = "\\[[0]] [[1]]",
		options = "rmA",
	},
	{
		trigger = "\\(arccsc)([A-Za-gi-z])",
		replacement = "\\[[0]] [[1]]",
		options = "rmA",
	},
	{
		trigger = "\\(sin)([A-Za-gi-z])",
		replacement = "\\[[0]] [[1]]",
		options = "rmA",
	},
	{
		trigger = "\\(cos)([A-Za-gi-z])",
		replacement = "\\[[0]] [[1]]",
		options = "rmA",
	},
	{
		trigger = "\\(tan)([A-Za-gi-z])",
		replacement = "\\[[0]] [[1]]",
		options = "rmA",
	},
	{
		trigger = "\\(cot)([A-Za-gi-z])",
		replacement = "\\[[0]] [[1]]",
		options = "rmA",
	},
	{
		trigger = "\\(sec)([A-Za-gi-z])",
		replacement = "\\[[0]] [[1]]",
		options = "rmA",
	},
	{
		trigger = "\\(csc)([A-Za-gi-z])",
		replacement = "\\[[0]] [[1]]",
		options = "rmA",
	},

	{
		trigger = "\\(arcsinh)([A-Za-z])",
		replacement = "\\[[0]] [[1]]",
		options = "rmA",
	},
	{
		trigger = "\\(arccosh)([A-Za-z])",
		replacement = "\\[[0]] [[1]]",
		options = "rmA",
	},
	{
		trigger = "\\(arctanh)([A-Za-z])",
		replacement = "\\[[0]] [[1]]",
		options = "rmA",
	},
	{
		trigger = "\\(arccoth)([A-Za-z])",
		replacement = "\\[[0]] [[1]]",
		options = "rmA",
	},
	{
		trigger = "\\(arcsech)([A-Za-z])",
		replacement = "\\[[0]] [[1]]",
		options = "rmA",
	},
	{
		trigger = "\\(arccsch)([A-Za-z])",
		replacement = "\\[[0]] [[1]]",
		options = "rmA",
	},
	{
		trigger = "\\(sinh)([A-Za-z])",
		replacement = "\\[[0]] [[1]]",
		options = "rmA",
	},
	{
		trigger = "\\(cosh)([A-Za-z])",
		replacement = "\\[[0]] [[1]]",
		options = "rmA",
	},
	{
		trigger = "\\(tanh)([A-Za-z])",
		replacement = "\\[[0]] [[1]]",
		options = "rmA",
	},
	{
		trigger = "\\(coth)([A-Za-z])",
		replacement = "\\[[0]] [[1]]",
		options = "rmA",
	},
	{
		trigger = "\\(sech)([A-Za-z])",
		replacement = "\\[[0]] [[1]]",
		options = "rmA",
	},
	{
		trigger = "\\(csch)([A-Za-z])",
		replacement = "\\[[0]] [[1]]",
		options = "rmA",
	},
	-- Visual Operations
	{
		trigger = "U",
		replacement = "\\underbrace{ ${VISUAL} }_{ $0 }",
		options = "vmA",
	},
	{
		trigger = "B",
		replacement = "\\underset{ $0 }{ ${VISUAL} }",
		options = "vmA",
	},
	{
		trigger = "C",
		replacement = "\\cancel{ ${VISUAL} }",
		options = "vmA",
	},
	{
		trigger = "K",
		replacement = "\\cancelto{ $0 }{ ${VISUAL} }",
		options = "vmA",
	},
	{
		trigger = "S",
		replacement = "\\sqrt{ ${VISUAL} }",
		options = "vmA",
	},
	{
		trigger = "(",
		replacement = "(${VISUAL})",
		options = "vmA",
		priority = 1,
	},
	{
		trigger = "[",
		replacement = "[${VISUAL}]",
		options = "vmA",
		priority = 1,
	},
	{
		trigger = "{",
		replacement = "{${VISUAL}}",
		options = "vmA",
		priority = 1,
	},
}

local expand_snippets = function()
	local ret = {}
	for _, snip in pairs(latex_snippets) do
		if string.find(snip.trigger, "${GREEK}") then
			for _, str in ipairs(greek) do
				local copy = {}
				for k, v in pairs(snip) do
					copy[k] = v
				end
				copy.trigger = string.gsub(copy.trigger, "${GREEK}", str)
				table.insert(ret, copy)
			end
		else
			table.insert(ret, snip)
		end
	end
	return ret
end

return {
	InMath = function()
		return vim.api.nvim_eval("vimtex#syntax#in_mathzone()") == 1
	end,
	snippets = expand_snippets(),
}
