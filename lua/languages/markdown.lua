local mdGroup = Api.nvim_create_augroup("Markdown Wrap Settings", { clear = true })

Api.nvim_create_autocmd("BufEnter", {
  pattern = { "*.md", "*.mdoc", "*.txt", "*.mdx" },
  group = mdGroup,
  callback = function()
    Api.nvim_set_option_value("wrap", true, {})
    Api.nvim_set_option_value("filetype", "markdown", {})
  end
})
