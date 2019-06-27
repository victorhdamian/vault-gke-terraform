# https://www.vaultproject.io/api/auth/approle/
#  secret_id_ttl=0s  # secret_id never expires
#  bind_secret_id=false  # allows login with role_id only
vault write auth/approle/role/vsgllc_app token_ttl=0 token_max_tll=0  policies="policy-vsgllc_app"
vault read auth/approle/role/vsgllc_app