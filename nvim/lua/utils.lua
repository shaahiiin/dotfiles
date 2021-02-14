local vim = vim

local function map(type, input, output)
    vim.api.nvim_set_keymap(type, input, output, {})
end

local function noremap(type, input, output)
    vim.api.nvim_set_keymap(type, input, output, { noremap = true })
end

function nnoremap(input, output)
    noremap('n', input, output)
end

function inoremap(input, output)
    noremap('i', input, output)
end

function vnoremap(input, output)
    noremap('v', input, output)
end

function cnoremap(input, output)
    noremap('c', input, output)
end

function tnoremap(input, output)
    noremap('t', input, output)
end

function nmap(input, output)
  map('n', input, output)
end

function imap(input, output)
  map('i', input, output)
end

function vmap(input, output)
  map('v', input, output)
end

function cmap(input, output)
  map('c', input, output)
end

function tmap(input, output)
  map('t', input, output)
end

function is_buffer_empty()
  -- Check whether the current buffer is empty
  return vim.fn.empty(vim.fn.expand('%:t')) == 1
end

function has_width_gt(cols)
  -- Check if the windows width is greater than a given number of columns
  return vim.fn.winwidth(0) / 2 > cols
end
