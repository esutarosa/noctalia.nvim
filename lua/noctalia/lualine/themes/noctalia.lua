local p = require("noctalia.palette").get(vim.o.background)
return {
	normal = {
		a = { fg = p.mShadow, bg = p.mPrimary, gui = "bold" },
		b = { fg = p.mOnSurface, bg = p.mSurfaceVariant },
		c = { fg = p.mOnSurface, bg = p.mSurface },
	},
	insert = { a = { fg = p.mShadow, bg = p.mSecondary, gui = "bold" } },
	visual = { a = { fg = p.mShadow, bg = p.mTertiary, gui = "bold" } },
	replace = { a = { fg = p.mShadow, bg = p.mError, gui = "bold" } },
	inactive = {
		a = { fg = p.mOnSurfaceVariant, bg = p.mSurfaceVariant },
		b = { fg = p.mOnSurfaceVariant, bg = p.mSurfaceVariant },
		c = { fg = p.mOnSurfaceVariant, bg = p.mSurfaceVariant },
	},
}
