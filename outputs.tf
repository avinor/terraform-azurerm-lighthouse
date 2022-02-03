output "definition_id" {
  description = "The fully qualified ID of the Lighthouse Definition."
  value       = azurerm_lighthouse_definition.definition.id
}

output "assignment_id" {
  description = "The JSON Content of the Outputs of the ARM Template"
  value       = azurerm_lighthouse_assignment.assignment.id
}
