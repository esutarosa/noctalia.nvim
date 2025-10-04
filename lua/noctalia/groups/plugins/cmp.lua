local util = require("noctalia.util")
local cfg = require("noctalia.config.internal")

---@param p Noctalia.Palette
---@return table<string, vim.api.keyset.highlight>
return function(p)
	---@type Noctalia.plugins|nil
	local plugins = cfg.current.plugins

	---@type Noctalia.plugins.cmp|nil
	local cmpcfg = plugins and plugins.cmp or nil

	---@type CodeStyle
	local match = (cmpcfg and cmpcfg.match) or "bold"

	---@type CodeStyle
	local match_fuzzy = (cmpcfg and cmpcfg.match_fuzzy) or match

	return {
		CmpItemAbbr = { fg = p.mOnSurface },
		CmpItemAbbrMatch = util.h(match, p.mPrimary),
		CmpItemAbbrMatchFuzzy = util.h(match_fuzzy, p.mPrimary),
		CmpItemMenu = { fg = p.mOnSurfaceVariant },
		CmpBorder = { fg = p.mOutline, bg = p.mSurfaceVariant },
	}
end
