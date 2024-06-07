return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {
					"lua_ls",
					"pylsp",
					"tsserver",
          "intelephense",
				},
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()

			local lspconfig = require("lspconfig")
			lspconfig.lua_ls.setup({ capabilities = capabilities })
			lspconfig.pylsp.setup({ capabilities = capabilities })
			lspconfig.tsserver.setup({ capabilities = capabilities })
			vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "Show hover information"})
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "Go to definition"})
			vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, { desc = "Code action"})
			vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, { desc = "Show references"})
		end,
	},
}
