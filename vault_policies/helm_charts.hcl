path "secret/policies/helm_charts" {
capabilities = ["read", "list"]
}
path "secret/helm_charts/sentry/*" {
capabilities = ["read", "list"]
}
