require("conform").setup({
	format_on_save = {
		timeout_ms = 500,
		lsp_fallback = true,
	},
	formatters_by_ft = {
		cpp = { "clang_format" },
		lua = { "stylua" },
		rust = { "rustfmt" },
		go = { "gofmt" },
		ocaml = { "ocamlformat" },
	},
})
