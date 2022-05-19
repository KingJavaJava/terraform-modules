output "id" {
  description = "The ID of the team."
  value       = github_team.team.id
}

output "team_name" {
  description = "The name of the team."
  value       = github_team.team.name
}

output "slug" {
  description = "The Slug of the team."
  value       = github_team.team.slug
}