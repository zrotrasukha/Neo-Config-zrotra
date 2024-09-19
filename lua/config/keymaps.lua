local keymap = vim.keymap
local opts = { noremap = true, silent = true }
--
-- backspace with ctrl
keymap.set("i", "<C-h>", "<C-w>", opts)
keymap.set("n", "<C-h>", "<C-w>", opts)
--live_server
-- Start Live Server
keymap.set("n", "<leader>ls", ":LiveServerStart<CR>", opts)

-- Stop Live Server
keymap.set("n", "<leader>lt", ":LiveServerStop<CR>", opts)

-- Obsidian.nvim Commands
-- Open a note in the Obsidian app
keymap.set("n", "<leader>oo", ":ObsidianOpen<CR>", opts)

-- Create a new note
keymap.set("n", "<leader>on", ":ObsidianNew<CR>", opts)

-- Quickly switch to another note
keymap.set("n", "<leader>oq", ":ObsidianQuickSwitch<CR>", opts)

-- Follow a note reference under the cursor
keymap.set("n", "<leader>of", ":ObsidianFollowLink<CR>", opts)

-- Open a vertical split and follow the note reference
keymap.set("n", "<leader>ovs", ":ObsidianFollowLink vsplit<CR>", opts)

-- Open a horizontal split and follow the note reference
keymap.set("n", "<leader>ohs", ":ObsidianFollowLink hsplit<CR>", opts)

-- Get a picker list of references to the current buffer
keymap.set("n", "<leader>ob", ":ObsidianBacklinks<CR>", opts)

-- Get a picker list of all occurrences of the given tags
keymap.set("n", "<leader>ot", ":ObsidianTags<CR>", opts)

-- Open or create today's daily note
keymap.set("n", "<leader>otd", ":ObsidianToday<CR>", opts)

-- Open or create yesterday's daily note
keymap.set("n", "<leader>oy", ":ObsidianYesterday<CR>", opts)

-- Open or create tomorrow's daily note
keymap.set("n", "<leader>om", ":ObsidianTomorrow<CR>", opts)

-- Open a picker list of daily notes
keymap.set("n", "<leader>od", ":ObsidianDailies<CR>", opts)

-- Insert a template from the templates folder
keymap.set("n", "<leader>oi", ":ObsidianTemplate<CR>", opts)

-- Search for (or create) notes in your vault
keymap.set("n", "<leader>os", ":ObsidianSearch<CR>", opts)

-- Link an inline visual selection of text to a note
keymap.set("v", "<leader>ol", ":ObsidianLink<CR>", opts)

-- Create a new note and link it to an inline visual selection of text
keymap.set("v", "<leader>onl", ":ObsidianLinkNew<CR>", opts)

-- Collect all links within the current buffer into a picker window
keymap.set("n", "<leader>olk", ":ObsidianLinks<CR>", opts)

-- Extract the visually selected text into a new note and link to it
keymap.set("v", "<leader>oe", ":ObsidianExtractNote<CR>", opts)

-- Switch to another workspace
keymap.set("n", "<leader>ow", ":ObsidianWorkspace<CR>", opts)

-- Paste an image from the clipboard into the note
keymap.set("n", "<leader>op", ":ObsidianPasteImg<CR>", opts)

-- Rename the note of the current buffer or reference under the cursor
keymap.set("n", "<leader>orn", ":ObsidianRename<CR>", opts)

-- Toggle checkbox options
keymap.set("n", "<leader>oc", ":ObsidianToggleCheckbox<CR>", opts)

-- Create a new note from a template in the templates folder
keymap.set("n", "<leader>ont", ":ObsidianNewFromTemplate<CR>", opts)

-- Load the table of contents of the current note into a picker list
keymap.set("n", "<leader>otoc", ":ObsidianTOC<CR>", opts)

-- Prevent "dd" from copying to clipboard
keymap.set("n", "dd", '"_dd', opts)

-- Delete character without copying to clipboard
keymap.set("n", "X", '"_x', opts)

-- Increment/decrement
keymap.set("n", "+", "<C-a>", opts)
keymap.set("n", "-", "<C-x>", opts)

-- Select all
keymap.set("n", "<C-a>", "gg<S-v>G", opts)

-- Save file and quit
keymap.set("n", "<leader>w", ":update<CR>", opts)
keymap.set("n", "<leader>q", ":quit<CR>", opts)
keymap.set("n", "<leader>Q", ":qa<CR>", opts)

-- File explorer with NvimTree
keymap.set("n", "<leader>f", ":NvimTreeFindFile<CR>", opts)
keymap.set("n", "<leader>t", ":NvimTreeToggle<CR>", opts)

-- Tabs
keymap.set("n", "te", ":tabedit<CR>", opts)
keymap.set("n", "<tab>", ":tabnext<CR>", opts)
keymap.set("n", "<s-tab>", ":tabprev<CR>", opts)
keymap.set("n", "tw", ":tabclose<CR>", opts)

-- Split window
keymap.set("n", "ss", ":split<CR>", opts)
keymap.set("n", "sv", ":vsplit<CR>", opts)

-- Move window
keymap.set("n", "sh", "<C-w>h", opts)
keymap.set("n", "sk", "<C-w>k", opts)
keymap.set("n", "sj", "<C-w>j", opts)
keymap.set("n", "sl", "<C-w>l", opts)

-- Resize window
keymap.set("n", "<C-S-h>", "<C-w><", opts)
keymap.set("n", "<C-S-l>", "<C-w>>", opts)
keymap.set("n", "<C-S-k>", "<C-w>+", opts)
keymap.set("n", "<C-S-j>", "<C-w>-", opts)

-- Diagnostics
keymap.set("n", "<C-j>", function()
  vim.diagnostic.goto_next()
end, opts)

-- Save file
keymap.set("n", "<leader>s", ":w<CR>", opts)

-- Automate Compilation and Execution with a Keybinding
keymap.set("n", "<F5>", ":!g++ % -o %< && ./%< <CR>", { noremap = true, silent = true })

-- Code Runner
keymap.set("n", "<leader>r", ":RunCode<CR>", { noremap = true, silent = true })
keymap.set("n", "<leader>rf", ":RunFile<CR>", { noremap = true, silent = true })
keymap.set("n", "<leader>rft", ":RunFile tab<CR>", { noremap = true, silent = true })
keymap.set("n", "<leader>rp", ":RunProject<CR>", { noremap = true, silent = true })
keymap.set("n", "<leader>rc", ":RunClose<CR>", { noremap = true, silent = true })
keymap.set("n", "<leader>crf", ":CRFiletype<CR>", { noremap = true, silent = true })
keymap.set("n", "<leader>crp", ":CRProjects<CR>", { noremap = true, silent = true })

-- Move line up
keymap.set("n", "<A-Up>", ":m .-2<CR>==", opts)
keymap.set("v", "<A-Up>", ":m '<-2<CR>gv=gv", opts)

-- Move line down
keymap.set("n", "<A-Down>", ":m .+1<CR>==", opts)
keymap.set("v", "<A-Down>", ":m '>+1<CR>gv=gv", opts)

-- Formatting
keymap.set("n", "<leader>f", "<cmd>lua vim.lsp.buf.format({ async = true })<CR>", opts)

-- Replacing words
keymap.set("n", "<leader>rw", ":%s/<C-r><C-w>/<C-r><C-w>/g<CR>", opts)
keymap.set("v", "<leader>rw", ":s/<C-r><C-w>/<C-r><C-w>/g<CR>", opts)

-- Enter command-line mode with \ (backslash)
keymap.set("n", "<leader>c", ":", opts)

-- Select next occurrence
keymap.set("n", "<leader>rn", ":s/<C-r><C-w>/<C-r><C-w>/g<CR>", opts)

-- SuperMaven.nvim Commands

-- Start SuperMaven
keymap.set("n", "<leader>ms", ":SupermavenStart<CR>", opts)

-- Stop SuperMaven
keymap.set("n", "<leader>mst", ":SupermavenStop<CR>", opts)

-- Restart SuperMaven
keymap.set("n", "<leader>mr", ":SupermavenRestart<CR>", opts)

-- Toggle SuperMaven
keymap.set("n", "<leader>mt", ":SupermavenToggle<CR>", opts)

-- Show SuperMaven status
keymap.set("n", "<leader>mss", ":SupermavenStatus<CR>", opts)

-- Switch to the free version of SuperMaven
keymap.set("n", "<leader>muf", ":SupermavenUseFree<CR>", opts)

-- Switch to the pro version of SuperMaven
keymap.set("n", "<leader>mup", ":SupermavenUsePro<CR>", opts)

-- Log out of SuperMaven
keymap.set("n", "<leader>ml", ":SupermavenLogout<CR>", opts)

-- Show SuperMaven logs
keymap.set("n", "<leader>msl", ":SupermavenShowLog<CR>", opts)

-- Clear SuperMaven logs
keymap.set("n", "<leader>mcl", ":SupermavenClearLog<CR>", opts)

--autosave nvim
vim.api.nvim_set_keymap("n", "<leader>as", ":ASToggle<CR>", {})
--fzf keymaps
vim.keymap.set("n", "<c-P>", require("fzf-lua").files, { desc = "Fzf Files" })
-- Or, with args
vim.keymap.set("n", "<c-P>", require("fzf-lua").files, { desc = "Fzf Files" })

-- Copy file directory while being in buffer
-- Define the key mapping
vim.api.nvim_set_keymap(
  "n", -- Mode: Normal mode
  "<leader>cp", -- Shortcut: Leader key followed by 'cp'
  [[:let @+=expand('%:p:h')<CR>]], -- Command: Copy the file directory of the current buffer to the clipboard
  { noremap = true, silent = true } -- Options: No remap, silent execution
)
