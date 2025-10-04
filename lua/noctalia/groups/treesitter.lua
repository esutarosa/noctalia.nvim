local cfg = require("noctalia.config.internal")
local util = require("noctalia.util")
return function(p)
	local s = cfg.current.style
	return {
		["@comment"] = util.h(s.comments, p.mOnSurfaceVariant),
		["@string"] = util.h(s.strings, p.mTertiary),
		["@number"] = util.h(s.number, p.mPrimary),
		["@boolean"] = util.h(s.boolean, p.mPrimary),
		["@function"] = util.h(s.functions, p.mSecondary),
		["@function.builtin"] = util.h(s.builtin_functions, p.mSecondary),
		["@variable"] = util.h(s.variables, p.mOnSurface),
		["@variable.builtin"] = util.h(s.builtin_variables, p.mOnSurface),
		["@type"] = util.h(s.builtin_types, p.mTertiary),
		["@keyword"] = util.h(s.keywords, p.mOnSurface),
		["@keyword.return"] = util.h(s.keyword_return, p.mOnSurface),
		["@operator"] = util.h(s.operators, p.mOnSurface),
		["@property"] = { fg = p.mOnSurface },
		["@punctuation"] = { fg = p.mOnSurface },
	}
end
