#!/bin/sh
git clone https://github.com/k8-proxy/sow-rest-api.git
helm dependency update sow-rest-api/chart/
helm upgrade --install sow-rest-api sow-rest-api/chart
git clone --branch develop https://github.com/k8-proxy/sow-rest-UI.git
helm dependency update sow-rest-UI/chart/
helm upgrade --install sow-rest-ui sow-rest-UI/chart
