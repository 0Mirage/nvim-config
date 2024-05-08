local leap = require "leap"

leap.opts.case_sensitive = false
leap.opts.max_highlighted_traversal_targets = 8
leap.opts.substitute_chars = {}
leap.opts.safe_labels = "azerqsdf"
leap.opts.labels = "azerqsdwxc"
leap.opts.special_keys = {
  next_target = "<enter>",
  prev_target = "<tab>",
  next_group = "<space>",
  prev_group = "<tab>",
}
