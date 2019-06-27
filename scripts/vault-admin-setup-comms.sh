#!/bin/bash
# gcloud config set project vault-b5ad67997d53da37
# gcloud container clusters get-credentials vault --region=us-east4
# kubectl config get-contexts
# kubectl config use-context gke_vault-b5ad67997d53da37_us-east4_vault

set -e

# cd out of the scripts dir
cd ../
pwd

# this script requires GOOGLE_APPLICATION_CREDENTIALS
# https://cloud.google.com/docs/authentication/getting-started
#export GOOGLE_APPLICATION_CREDENTIALS=<full_path-to/adc.json>

GOOGLE_CLOUD_PROJECT="vault-bb34a18eeb7a2668"
REGION="us-east4"
gcloud config set project ${GOOGLE_CLOUD_PROJECT}

LB_IP="$(gcloud compute addresses describe vault-lb --region ${REGION} --format 'value(address)')"
GCS_BUCKET="${GOOGLE_CLOUD_PROJECT}-vault-storage"

export VAULT_CACERT="$(pwd)/tls/ca.pem"
export VAULT_ADDR="https://${LB_IP}:443"
export VAULT_TOKEN="$(gsutil cat "gs://${GCS_BUCKET}/root-token.enc" | \
  base64 --decode | \
  gcloud kms decrypt \
    --location ${REGION} \
    --keyring vault-30a11e669e9c9391 \
    --key vault-init \
    --ciphertext-file - \
    --plaintext-file -)"

export PATH="${PATH}:${HOME}/bin"

# env | grep -i vault
# source ./vault-admin-setup-comms.sh