KV Secrets Engine - Version 2
 The kv secrets engine is used to store arbitrary secrets within the configured physical storage for Vault.
 Key names must always be strings. If you write non-string values directly via the CLI,
 they will be converted into strings. However, you can preserve non-string values by writing the key/value pairs
 to Vault from a JSON file or using the HTTP API.
 This secrets engine honors the distinction between the create and update capabilities inside ACL policies.
 ref.: https://www.vaultproject.io/docs/secrets/kv/kv-v2.html

# requires policy access for execution

 vault secrets enable -version=2 kv
# vault secrets enable kv-v2

 add secret
# vault kv put <secret_path> @btc.txt
#tee -a btc.txt <<EOF
#{
#  "sftp_host": "blablablablablablba",
#  "sftp_username": "snotrealToHeARAaLeXPQ==",
#  "sftp_password": "JpCCeARAaLeXSnUyep"
#}
#EOF
#vault kv put secret/vsgllc_app/config_loader/btc @btc.txt
#vault kv put secret/helm_charts/nginx @nginx.txt

 get secret
#vault kv get secret/vsgllc_app/config_loader/btc

 delete secret
#vault kv delete secret/vsgllc_app/config_loader/btc

 undelete secret
#vault kv undelete -versions=1 secret/vsgllc_app/config_loader/btc


