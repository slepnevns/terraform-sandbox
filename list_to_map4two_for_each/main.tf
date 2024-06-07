locals {
  y = flatten([for k, v in var.x : [for i in v.data : merge(i, { key_of_map = k })]])
  z = { for i in local.y : "route_${index(local.y, i)}" => i }
}
