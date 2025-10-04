local util = require("noctalia.util")
local cfg = require("noctalia.config.internal")

---@param p Noctalia.Palette
---@return table<string, vim.api.keyset.highlight>
return function(p)
	local match = (cfg.current.plugins.cmp and cfg.current.plugins.cmp.match) or "bold"
	local match_fuzzy = (cfg.current.plugins.cmp and cfg.current.plugins.cmp.match_fuzzy) or match

	return {
		CmpItemAbbr = { fg = p.mOnSurface },
		CmpItemAbbrMatch = util.h(match, p.mSecondary),
		CmpItemAbbrMatchFuzzy = util.h(match_fuzzy, p.mSecondary),
		CmpItemMenu = { fg = p.mOnSurfaceVariant },
		CmpBorder = { fg = p.mOutline, bg = p.mSurfaceVariant },
	}
end
