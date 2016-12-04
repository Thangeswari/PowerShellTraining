# Switch can be easier to maintain than If statement
#and can provide additional features

Switch ($status) {
  0 { $status_text = 'ok' }
  1 { $status_text = 'error' }
  2 { $status_text = 'jammed' }
  3 { $status_text = 'overheated' }
  4 { $status_text = 'empty' }
  default { $status_text = 'unknown' }
}

