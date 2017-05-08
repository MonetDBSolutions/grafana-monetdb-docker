#!/bin/bash

# _grafana_tag=$1
# _grafana_version=${_grafana_tag:1:5}
_grafana_version=$1

if [ "$_grafana_version" != "" ]; then
	echo "pushing monetdb/grafana:${_grafana_version}"
	docker push monetdb/grafana:${_grafana_version}
	docker push monetdb/grafana:latest
else
	echo "pushing monetdb/grafana:master"
	docker push monetdb/grafana:master
	docker push monetdb/grafana:latest
fi
