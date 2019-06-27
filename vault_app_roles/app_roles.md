# https://www.vaultproject.io/api/auth/approle/
# https://www.vaultproject.io/docs/auth/approle.html
#  secret_id_ttl=0s  # secret_id never expires
#  bind_secret_id=false  # allows login with role_id only

# Enable the AppRole auth method:
# vault auth enable approle

# Create a named role with desired set of policies:
# vault write auth/approle/role/vsgllc_app \
#    secret_id_ttl=10m \
#    secret_id_num_uses=40 \
#    token_num_uses=10 \
#    token_ttl=20m \
#    token_max_ttl=120m \
#    policies="policy-vsgllc_app"

# Get the RoleID of the AppRole
# vault read auth/approle/role/vsgllc_app/role-id

# Get a SecretID issued against the AppRole:
# vault write -f auth/approle/role/vsgllc_app/secret-id

# Get approle session token
# vault write auth/approle/login \
#    role_id=<role id> \
#    secret_id=<secret id>

# get secrets
# VAULT_TOKEN=<token> vault kv get secret/vsgllc_app/config_loader/btc