local lsp_zero = require("lsp-zero")

lsp_zero.on_attach(function(client, bufnr)
	lsp_zero.default_keymaps({ buffer = bufnr })
end)

lsp_zero.setup_servers({
	"clangd",
	"lua_ls",
	"rust_analyzer",
	"gopls",
	"hls",
	"ocamllsp",
	"pyright",
	"texlab",
})

local cmp = require("cmp")

cmp.setup({
	preselect = "item",
	completion = {
		completeopt = "menu,menuone,noinsert",
	},
	mapping = cmp.mapping.preset.insert({
		["<CR>"] = cmp.mapping.confirm({ select = true }),
	}),
})
