# https://www.vaultproject.io/api/auth/approle/
#  secret_id_ttl=0s  # secret_id never expires
#  bind_secret_id=false  # allows login with role_id only
vault write auth/approle/role/helm_charts token_ttl=60m  token_max_tll=120m  policies="helm_charts"
vault read auth/approle/role/helm_charts