setlocal tabstop=2
setlocal softtabstop=2
setlocal shiftwidth=2

lua <<EOF
require("indent_blankline").setup {
  --show_current_context = true,
  --show_current_context_start = true,
}
EOF
