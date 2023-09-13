vim.g.neon_style = "dark"
vim.g.neon_italic_keyword = true
vim.g.neon_italic_function = true
vim.cmd[[colorscheme dark_flat]]
local nnn = require("nnn")

nnn.setup({
  picker = {
    style = { border = "rounded" },
    session = "shared",
  },
  mappings = {
    { "<C-t>", nnn.builtin.open_in_tab },       -- open file(s) in tab
    { "<C-s>", nnn.builtin.open_in_split },     -- open file(s) in split
    { "<C-v>", nnn.builtin.open_in_vsplit },    -- open file(s) in vertical split
    { "<C-p>", nnn.builtin.open_in_preview },   -- open file in preview split keeping nnn focused
    { "<C-y>", nnn.builtin.copy_to_clipboard }, -- copy file(s) to clipboard
    { "<C-w>", nnn.builtin.cd_to_path },        -- cd to file directory
    { "<C-e>", nnn.builtin.populate_cmdline },  -- populate cmdline (:) with file(s)
  }

  --windownav = "<C-l>"
})

local cmp = require('cmp')

cmp.setup({
  snippet = {
    -- REQUIRED - you must specify a snippet engine
    --expand = function(args)
      -- vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
      -- require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
      -- require('snippy').expand_snippet(args.body) -- For `snippy` users.
      -- vim.fn["UltiSnips#Anon"](args.body) -- For `ultisnips` users.
    -- end,
  },
  window = {
    -- completion = cmp.config.window.bordered(),
    -- documentation = cmp.config.window.bordered(),
  },
  mapping = cmp.mapping.preset.insert({
    ['<C-b>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
    ['<Tab>'] = cmp.mapping.complete(),
    ['<C-e>'] = cmp.mapping.abort(),
    ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
  }),
  sources = cmp.config.sources({
    { name = 'nvim_lsp' },
    { name = 'vsnip' }, -- For vsnip users.
    -- { name = 'luasnip' }, -- For luasnip users.
    -- { name = 'ultisnips' }, -- For ultisnips users.
    -- { name = 'snippy' }, -- For snippy users.
  }, {
    { name = 'buffer' },
  })
})




require("obsidian").setup({
  dir = "~/Documents/drive",
  disable_frontmatter = true,


  daily_notes = {
    -- Optional, if you keep daily notes in a separate directory.
    folder = "daily_journals",
    -- Optional, if you want to change the date format for daily notes.
    date_format = "%Y-%m-%d"
  },
    -- Optional, completion.
  completion = {
    -- If using nvim-cmp, otherwise set to false
    nvim_cmp = true,
    -- Trigger completion at 2 chars
    min_chars = 2,
    -- Where to put new notes created from completion. Valid options are
    --  * "current_dir" - put new notes in same directory as the current buffer.
    --  * "notes_subdir" - put new notes in the default notes subdirectory.
    new_notes_location = "current_dir",

    -- Whether to add the output of the node_id_func to new notes in autocompletion.
    -- E.g. "[[Foo" completes to "[[foo|Foo]]" assuming "foo" is the ID of the note.
    prepend_note_id = true
  },
  -- see below for full list of options 
  finder = "telescope.nvim",
})
