APP_NAME=$1
ENVS="$(cf env $APP_NAME)"
# Delete all before "System-Provided"
ENVS=$(sed 's/^.*System-Provided: //' <<< $ENVS)
# Delete all after "User-Provided"
ENVS=$(sed s/"{ \"VCAP_APPLICATION\":.*"/""/ <<< $ENVS)
export VCAP_SERVICES=$ENVS