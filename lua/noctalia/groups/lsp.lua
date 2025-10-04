local cfg = require("noctalia.config.internal")
local util = require("noctalia.util")
return function(p)
	local s = cfg.current.plugins.lsp
	return {
		DiagnosticUnderlineError = { undercurl = true, sp = p.mError },
		DiagnosticUnderlineWarn = { undercurl = true, sp = "#f3be7c" },
		DiagnosticUnderlineInfo = { undercurl = true, sp = p.mSecondary },
		DiagnosticUnderlineHint = { undercurl = true, sp = p.mOnSurfaceVariant },

		LspInlayHint = { fg = p.mOnSurfaceVariant, bg = p.mSurfaceVariant },
		LspSignatureActiveParameter = util.h("bold", p.mPrimary),
		DiagnosticVirtualTextError = util.h(s.diagnostic_error, p.mError),
		DiagnosticVirtualTextWarn = util.h(s.diagnostic_warn, "#f3be7c"),
		DiagnosticVirtualTextInfo = util.h(s.diagnostic_info, p.mSecondary),
		DiagnosticVirtualTextHint = util.h(s.diagnostic_hint, p.mOnSurfaceVariant),
	}
end
