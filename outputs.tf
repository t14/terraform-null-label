output "id" {
  value = null_resource.default[0].triggers.id
}

output "name" {
  value = null_resource.default[0].triggers.name
}

output "namespace" {
  value = null_resource.default[0].triggers.namespace
}

output "stage" {
  value = null_resource.default[0].triggers.stage
}

output "attributes" {
  value = null_resource.default[0].triggers.attributes
}

# Merge input tags with our tags.
# Note: `Name` has a special meaning in AWS and we need to disamgiuate it by using the computed `id`
output "tags" {
  value = merge(
    {
      "Name"      = null_resource.default[0].triggers.id
      "Namespace" = null_resource.default[0].triggers.namespace
      "Stage"     = null_resource.default[0].triggers.stage
    },
    var.tags,
  )
}

