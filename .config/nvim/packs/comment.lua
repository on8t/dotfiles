-- commenting plugin
return {
  'numtostr/comment.nvim',
  config = function()
    require('Comment').setup {}
  end,
}
