return {
  "github/copilot.vim",
  config = function()
    vim.g.copilot_enabled = true
    vim.keymap.set("i", "<C-L>", "<Plug>(copilot-accept-word)", { desc = "Accept word copilot" })
  end,
}
