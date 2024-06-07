variable "x" {
  type = map(object({
    data = optional(list(object({
      name        = optional(string)
      description = optional(string)
    })), [])
  }))
  default = {
    a = {
      data = [
        {
          name        = "example_a_foo"
          description = "Ex object of map A - foo."
        },
        {
          name = "example_a_bar"
        },
        {
          name        = "example_a_buzz"
          description = "Ex object of map A - buzz."
        }
      ]
    }
    b = {
      data = [
        {
          name        = "exaple_b_foo"
          description = "Ex object of map B - foo."
        },
        {
          name = "example_b_bar"
        },
        {
          name        = "example_b_buzz"
          description = "Ex object of map B - buzz."
        }
      ]
    }
  }
}
