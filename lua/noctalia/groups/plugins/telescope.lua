local util = require("noctalia.util")
---@param p Noctalia.Palette
return function(p)
	return {
		TelescopeNormal = { fg = p.mOnSurface, bg = p.mSurfaceVariant },
		TelescopeBorder = { fg = p.mOutline, bg = p.mSurfaceVariant },
		TelescopePromptBorder = { fg = p.mOutline, bg = p.mSurfaceVariant },
		TelescopeTitle = util.h("bold", p.mPrimary),
		TelescopeSelection = { bg = p.mSurfaceVariant, fg = p.mOnSurface },
		TelescopeMatching = util.h("bold", p.mSecondary),
	}
end
