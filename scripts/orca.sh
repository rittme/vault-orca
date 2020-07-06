if [ `curl $VAULT_URL/v1/sys/seal-status | jq '.sealed'` == "true" ]
then
    echo "Unseal Time"
    curl --request PUT -d '{"key":"$UNSEAL_KEY"}' -H 'Content-Type: application/json' $URL/v1/sys/unseal
fi