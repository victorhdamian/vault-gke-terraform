# Userpass Auth Method
# The userpass auth method allows users to authenticate with Vault using a username and password combination.
#
# The username/password combinations are configured directly to the auth method using the users/ path.
# This method cannot read usernames and passwords from an external source.
# ref.: https://www.vaultproject.io/docs/auth/userpass.html
# https://www.vaultproject.io/api/auth/userpass/index.html

# requires root access for execution


# vault auth enable userpass

# Add users
# vault write auth/userpass/users/<username> password="<user password>" policies="<user policy>"

# Read
# vault read auth/userpass/users/<username>

# login
# vault login -method=userpass username=<username> password=<user password>

# Edit users
# vault write auth/userpass/users/<username> @<username>.json
# vault write auth/userpass/users/<username> password="<user password>"

# Delete users
# vault delete auth/userpass/users/<username>

# list all users
# vault list auth/userpass/users/