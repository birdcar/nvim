require("helpers")

-- File system
Nml("fs", "<cmd>Telescope find_files<cr>", "Find a file")
Nml("fe", "<cmd>lua MiniFiles.open()<cr>", "Explore the file system")
Nml("fr", "<cmd>Telescope oldfiles<cr>", "Find a recent file")

-- Code stuff
Nml("ca", "<cmd>lua vim.lsp.buf.code_action()<cr>", "Code Actions")
Nml("ck", "<cmd>lua vim.lsp.buf.hover()<cr>", "Hover object")
Nml("cr", "<cmd>Trouble lsp_references<cr>", "Show references to object in project")
Nml("cR", "<cmd>lua vim.lsp.buf.rename()<cr>", "Rename an object")
Nml("cd", "<cmd>lua vim.lsp.buf.declaration()<cr>", "Go to Declaration")
Nml("cx", "<cmd>TroubleToggle workspace_diagnostics<cr>", "Show all problems in project")
Nml("cn", "<cmd>Telescope treesitter<cr>", "List function names, variables, etc")

-- Workspace stuff
Nml("wt", "<cmd>Telescope buffers<cr>", "Search 'Tabs' (buffers)")
Nml("ws", "<cmd>Telescope live_grep<cr>", "Live grep workspace")

-- Git stuff
Nml("gc", "<cmd>Telescope git_commits<cr>", "List/Checkout commits")
Nml("gb", "<cmd>Telescope git_branches<cr>", "List/Checkout branches")
Nml("gs", "<cmd>Telescope git_status<cr>", "Work with git status")
Nml("gS", "<cmd>Telescope git_stash<cr>", "List stash items in current repository (apply on <cr>)")

-- Git buffer stuff (current file)
Nml("gbc", "<cmd>Telescope git_bcommits<cr>", "List/Checkout current file's commits")
Vm("gbc", "<cmd>Telescope git_bcommits_range<cr>", "List/Checkout current range's commits")

-- GitHub stuff
-- Issues
Nml("ghic", "<cmd>Octo issue close<cr>", "Close the current issue")
Nml("ghir", "<cmd>Octo issue reload<cr>", "Reload issue (same as e!)")
Nml("ghiR", "<cmd>Octo issue reopen<cr>", "Reopen current issue")
Nml("ghic", "<cmd>Octo issue create<cr>", "Create issue in current repo")
Nml("ghis", "<cmd>Octo issue search<cr>", "Live issue search")
Nml("ghio", "<cmd>Octo issue browser<cr>", "Open current issue in the broser")
Nml("ghiC", "<cmd>Octo issue url<cr>", "Copy current issue URL to clipboard")

