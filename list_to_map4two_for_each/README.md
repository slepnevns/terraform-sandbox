# list to Map for two for_each
This module is an simple example of way to formatting Terraform maps with nested list.

Module takes default input:
```
default_variable = {
  "a" = {
    "data" = tolist([
      {
        "description" = "Ex object of map A - foo."
        "name" = "example_a_foo"
      },
      {
        "description" = tostring(null)
        "name" = "example_a_bar"
      },
      {
        "description" = "Ex object of map A - buzz."
        "name" = "example_a_buzz"
      },
    ])
  }
  "b" = {
    "data" = tolist([
      {
        "description" = "Ex object of map B - foo."
        "name" = "exaple_b_foo"
      },
      {
        "description" = tostring(null)
        "name" = "example_b_bar"
      },
      {
        "description" = "Ex object of map B - buzz."
        "name" = "example_b_buzz"
      },
    ])
  }
}
```

And transform it to:
```
formatted_variable = {
  "route_0" = {
    "description" = "Ex object of map A - foo."
    "key_of_map" = "a"
    "name" = "example_a_foo"
  }
  "route_1" = {
    "description" = tostring(null)
    "key_of_map" = "a"
    "name" = "example_a_bar"
  }
  "route_2" = {
    "description" = "Ex object of map A - buzz."
    "key_of_map" = "a"
    "name" = "example_a_buzz"
  }
  "route_3" = {
    "description" = "Ex object of map B - foo."
    "key_of_map" = "b"
    "name" = "exaple_b_foo"
  }
  "route_4" = {
    "description" = tostring(null)
    "key_of_map" = "b"
    "name" = "example_b_bar"
  }
  "route_5" = {
    "description" = "Ex object of map B - buzz."
    "key_of_map" = "b"
    "name" = "example_b_buzz"
  }
}
```
