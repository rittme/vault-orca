if [ `curl $VAULT_URL/v1/sys/seal-status | jq '.sealed'` == "true" ]
then
    echo "Unsealing"
    curl --request PUT -d "{\"key\":\"${UNSEAL_KEY}\"}" -H 'Content-Type: application/json' $VAULT_URL/v1/sys/unseal
fi