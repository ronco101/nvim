require('nightfox').setup({
  options = {
        terminal_colors = true,
    styles = {
      comments = "italic",
      keywords = "bold",
      types = "italic,bold",
    },
  }
})

vim.cmd("colorscheme duskfox")
