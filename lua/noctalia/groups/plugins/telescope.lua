local util = require("noctalia.util")
local cfg = require("noctalia.config.internal")
return function(p)
	return {
		TelescopeBorder = { fg = p.mOutline, bg = p.mSurfaceVariant },
		TelescopeTitle = util.h("bold", p.mPrimary),
		TelescopeNormal = { fg = p.mOnSurface, bg = p.mSurfaceVariant },
		TelescopeMatching = util.h(cfg.current.plugins.telescope.match, p.mPrimary),
		TelescopeSelection = { bg = p.mSurfaceVariant, fg = p.mOnSurface },
	}
end
