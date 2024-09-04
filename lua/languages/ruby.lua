Opt.signcolumn = "yes" -- Otherwise it bounces in and out, not strictly needed though

local rbGroup = Api.nvim_create_augroup("RubyLSP", { clear = true })

Api.nvim_create_autocmd("FileType", {
  pattern = "ruby",
  group = rbGroup,
  callback = function()
    Lsp.start {
      name = "standard",
      cmd = { "standardrb", "--lsp" },
    }
  end
})
