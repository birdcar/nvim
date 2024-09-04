local pyGroup = Api.nvim_create_augroup("Python Group", { clear = true })

Api.nvim_create_autocmd('BufEnter', {
  desc = 'Auto select virtualenv Nvim open',
  pattern = { "*.py", "*.ini" },
  callback = function()
    local venv = Fn.findfile('pyproject.toml', Fn.getcwd() .. ';')
    if venv ~= '' then
      require('venv-selector').retrieve_from_cache()
    end
  end,
  once = true,
})

local M = {}

local checkForLockFile = function()
  local match = vim.fn.glob(vim.fn.getcwd() .. "/poetry.lock")
  if match ~= "" then
    local poetry_venv = vim.fn.trim(vim.fn.system("poetry env info -p"))
    vim.env.VIRTUAL_ENV = poetry_venv
  end
end

M.setup = function()
  -- run on startup
  checkForLockFile()
  -- and when changing directory
  vim.api.nvim_create_autocmd({ "DirChanged" }, {
    callback = function()
      checkForLockFile()
    end
  })
end

return M
