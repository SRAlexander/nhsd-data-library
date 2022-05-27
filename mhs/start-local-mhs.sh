set -e

LIGHT_GREEN='\033[1;32m'
RED='\033[0;31m'
NC='\033[0m'

echo "${LIGHT_GREEN}Exporting environment variables${NC}"
source vars.sh

if [[ -z "${MHS_SECRET_PARTY_KEY}" ]]; then
  echo "${RED}Secret key not set for MHS_SECRET_PARTY_KEY${NC}"
  exit 1
elif [[ -z "${MHS_SECRET_CLIENT_CERT}" ]]; then
  echo "${RED}Secret key not set for MHS_SECRET_CLIENT_CERT${NC}"
  exit 1
elif [[ -z "${MHS_SECRET_CLIENT_KEY}" ]]; then
  echo "${RED}Secret key not set for MHS_SECRET_CLIENT_KEY${NC}"
  exit 1
elif [[ -z "${MHS_SECRET_CA_CERTS}" ]]; then
  echo "${RED}Secret key not set for MHS_SECRET_CA_CERTS${NC}"
  exit 1
fi

echo "${LIGHT_GREEN}Pulling nhsdev images from Dockerhub${NC}"
docker pull nhsdev/nia-mhs-route
docker pull nhsdev/nia-mhs-inbound
docker pull nhsdev/nia-mhs-outbound

echo "${LIGHT_GREEN}Running containers${NC}"
docker run nhsdev/nia-mhs-route
docker run nhsdev/nia-mhs-inbound
docker run nhsdev/nia-mhs-outbound

echo "${LIGHT_GREEN}Stopping containers${NC}"
docker-compose -f docker-compose-mhs.yml stop;

echo "${LIGHT_GREEN}Starting containers${NC}"
docker-compose -f docker-compose-mhs.yml up -d --build