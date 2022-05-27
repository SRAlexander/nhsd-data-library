#SECRET KEY VARS
export MHS_SECRET_PARTY_KEY="test"
export MHS_SECRET_CLIENT_CERT="test"
export MHS_SECRET_CLIENT_KEY="test"
export MHS_SECRET_CA_CERTS="test"

#GLOBAL VARS
export BUILD_TAG="latest"
export BASE_IMAGE_TAG="latest"
export MHS_LOG_LEVEL="NOTSET"
export AWS_ACCESS_KEY_ID="test"
export AWS_SECRET_ACCESS_KEY="test"
export MHS_STATE_TABLE_NAME="mhs_state"
export MHS_SYNC_ASYNC_STATE_TABLE_NAME="sync_async_state"
export MHS_DB_ENDPOINT_URL="http://dynamodb:`echo $DYNAMODB_PORT`"

# MHS OUTBOUND VARS
export MHS_OUTBOUND_PORT="80"
export MHS_RESYNC_INTERVAL="1"
export MAX_RESYNC_RETRIES="20"
export MHS_SPINE_ROUTE_LOOKUP_URL="http://route"
export MHS_SPINE_ORG_CODE="YES"
export MHS_SPINE_REQUEST_MAX_SIZE="4999600"
export MHS_FORWARD_RELIABLE_ENDPOINT_URL="https://192.168.128.11/reliablemessaging/forwardreliable"
export MHS_OUTBOUND_VALIDATE_CERTIFICATE="False"
#MHS_OUTBOUND_ROUTING_LOOKUP_METHOD = SPINE_ROUTE_LOOKUP or SDS_API VARS
export MHS_OUTBOUND_ROUTING_LOOKUP_METHOD=""
export MHS_SDS_API_URL=""
export MHS_SDS_API_KEY=""


#MHS INBOUND VARS
export MHS_INBOUND_PORT="443"
export MHS_INBOUND_SERVICE_PORTS="`echo $MHS_OUTBOUND_PORT`,`echo $MHS_OUTBOUND_PORT`"
export MHS_INBOUND_QUEUE_BROKERS="amqp://rabbitmq:`echo $RABBITMQ_PORT_2`"
export MHS_INBOUND_QUEUE_NAME="inbound"
export MHS_SECRET_INBOUND_QUEUE_USERNAME="guest"
export MHS_SECRET_INBOUND_QUEUE_PASSWORD="guest"
export MHS_INBOUND_QUEUE_MESSAGE_TTL_IN_SECONDS="0"
export MHS_INBOUND_USE_SSL="True"
export MHS_INBOUND_QUEUE_MAX_RETRIES="3"
export MHS_INBOUND_QUEUE_RETRY_DELAY="500"

#MHS ROUTE VARS
export MHS_ROUTE_PORT="8080"
export MHS_SDS_URL="ldap://192.168.128.11"
export MHS_SDS_SEARCH_BASE="ou=services,o=nhs"
export MHS_DISABLE_SDS_TLS="True"
export MHS_SDS_REDIS_CACHE_HOST="redis"
export MHS_SDS_REDIS_DISABLE_TLS="True"

#DYNAMODB VARS
export DYNAMODB_PORT="8000"

#MONGODB VARS
export MONGODB_PORT="27017"

#RABBITMQ VARS
export RABBITMQ_PORT_1="15672"
export RABBITMQ_PORT_2="5672"
export RABBITMQ_HOSTNAME="localhost"

#REDIS VARS
export REDIS_PORT="6379"




#MISSING / UNUSED VARS

#If using SPINE_ROUTE_LOOKUP then set the following env variables
#export MHS_SPINE_ROUTE_LOOKUP_SERVER_PORT: "8088"
#export MHS_LDAP_CONNECTION_RETRIES: "3"
#export MHS_LAZY_LDAP: "True"
# Optional mock ldap env variables
#export MHS_AWS_PROFILE: nhsd-private # AWS profile from ~/.aws/credentials to be used when downloading LDAP data from S3
#export MHS_LDAP_MOCK_DATA_URL: "file://tmp/mock_ldap_data" or "s3://nhsd-integration-adaptors/mock_ldap_data"
#export MHS_FAKE_SPINE_URL: "http://fake-spine/"

#(inbound & outbound only) The max number of retries when attempting to interact with either the work description or sync-async store. Defaults to 3
#MHS_STATE_STORE_MAX_RETRIES=""
## (outbound only) This is the maximum number of retries for outbound requests. If no value is given a default of 3 is used.
#MHS_OUTBOUND_TRANSMISSION_MAX_RETRIES=""
##(outbound only) The delay between retries of outbound requests in milliseconds. If no value is given, a default of 100 is used.
#MHS_OUTBOUND_TRANSMISSION_RETRY_DELAY=""
## (outbound only) An optional http(s) proxy to route downstream requests via. Note that the proxy must passthrough https requests transparently.
#MHS_OUTBOUND_HTTP_PROXY=""
## (outbound only) The http(s) proxy port to use. Ignored if MHS_OUTBOUND_HTTP_PROXY is not provided. Defaults to 3128.
#MHS_OUTBOUND_HTTP_PROXY_PORT=""
##' (inbound only) The max number of retries when attempting to add a message to the sync-async store. Defaults to 3
#MHS_SYNC_ASYNC_STORE_MAX_RETRIES=""
## (inbound only) The delay in milliseconds between retrying placing a message on the sysnc-async store. Defaults to 100ms
#MHS_SYNC_ASYNC_STORE_RETRY_DELAY=""
##(outbound only) The total number of attempts made to the sync-async store during resynchronisation, defaults to 20
#MHS_RESYNC_RETRIES=""
##(Outbound service only) The initial delay (in seconds) before making the first poll to the sync-async store after the outbound service receives an acknowledgement from Spine
#MHS_RESYNC_INITIAL_DELAY=""
##Cloud region that the adaptor has/will be been deployed to
#MHS_CLOUD_REGION=""
##Used to determine the type of persistence adaptor to implement (dynamodb/mongodb)
#MHS_PERSISTENCE_ADAPTOR=""
###[%(asctime)sZ] | %(levelname)s | %(process)d | %(interaction_id)s | %(message_id)s | %(correlation_id)s | (inbound_message_id)s | %(name)s | %(message)s"
#MHS_LOG_FORMAT=""
##Define a specific port when connecting to the Inbound service. Defaults to '443'
#MHS_INBOUND_SERVER_PORT=""
##Define a specific port when connecting to the Inbound Healthcheck service. Defaults to '8082'
#MHS_INBOUND_HEALTHCHECK_SERVER_PORT=""
##Define a specific port when connecting to the Outbound service. Defaults to '80'
#MHS_OUTBOUND_SERVER_PORT=""

