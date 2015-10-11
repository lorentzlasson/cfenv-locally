# cfenv-locally
## Requirements
[cf cli](https://github.com/cloudfoundry/cli)

## Usage
Login to with the cf cli to the space you want to extract the VCAP_SERVICES from

Run `source cfenv-locally.sh APP_NAME`

Verify by running `echo $VCAP_SERVICES`

## Todo
Include VCAP_APPLICATION
