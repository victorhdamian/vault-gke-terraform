# Manage auth methods broadly across Vault
# admin is a type of user empowered with managing a Vault infrastructure for a team or organizations.
# Empowered with sudo, the Administrator is focused on configuring and maintaining the health of
# Vault cluster(s) as well as providing bespoke support to Vault users.
#
# admin must be able to:
#
# Mount and manage auth backends broadly across Vault
# Mount and manage secret backends broadly across Vault
# Create and manage ACL policies broadly across Vault
# Read system health check
# ref.: https://www.hashicorp.com/resources/policies-vault
# https://www.vaultproject.io/docs/commands/policy/index.html

# requires root access for execution
# Usage: vault policy <subcommand> [options] [args]

# Add
# vault policy write <policy name> <policy name>.hcl

# Read
# vault policy read <policy name>

# Edit
# vault policy write <policy name> <policy name>.hcl

# Delete
# vault policy delete <policy name>

# List
# vault policy list