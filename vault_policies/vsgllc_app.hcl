path "secret/policies/vsgllc_app" {
 capabilities = ["read", "list"]
}
path "secret/vsgllc_app/config_loader/*" {
 capabilities = ["create", "read", "update", "list"]
}