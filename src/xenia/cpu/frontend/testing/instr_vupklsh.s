test_vupklsh_0:
  #_ REGISTER_IN v3 [00010203, 04050607, 08090A0B, 0C0D0E0F]
  vupklsh v3, v3
  blr
  #_ REGISTER_OUT v3 [00000809, 00000a0b, 00000c0d, 00000e0f]

test_vupklsh_1:
  #_ REGISTER_IN v3 [7F800203, 04050607, 7F800A0B, 0C0D0E0F]
  vupklsh v3, v3
  blr
  #_ REGISTER_OUT v3 [00007f80, 00000a0b, 00000c0d, 00000e0f]

test_vupklsh_2:
  # {-4, -3, -2, -1, 0, 1, 2, 3}
  #_ REGISTER_IN v3 [FFFCFFFD, FFFEFFFF, 00000001, 00020003]
  vupklsh v3, v3
  blr
  # {-4, -3, -2, -1}
  #_ REGISTER_OUT v3 [00000000, 00000001, 00000002, 00000003]
