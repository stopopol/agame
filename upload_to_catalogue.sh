#!/bin/bash

directory="$(pwd)/files_for_catalogue"
echo $directory

for file in "$directory"/*; do
  if [ -f "$file" ]; then
	echo "$file"
	value=$(<$file)
	echo "$value"
	# response = $(curl --header "Content-Type: application/json" \  --request POST \  --data $value \   https://catalog.elter.cerit-sc.cz/api/lter)
  fi
done





#POST https://catalog.elter.cerit-sc.cz/api/lter
#Content-Type: application/json
#{"metadata": {"datasetIds": [{"sourceName": "eLTER spatial.io", "identifier": " 07c3c2b4-7c71-3c01-1022-e91951a2237b", "type": "PID"}], "titles": [{"language": "eng", "text": "Braila - Phenology EOSV (2020)"}], "descriptions": [{"type": "Abstract", "language": "eng", "description": "Vegetation Index value at EOSD. The phenology product was generated from Sentinel-2 Level-2A from Normalized Difference Vegetation Index (NDVI) time-series of year 2020."}], "keywords": [{"name": "WCS", "url": ""}, {"name": "GeoTIFF", "url": ""}, {"name": "Phenology", "url": "https://vocabs.lter-europe.net/EnvThes/21647"}, {"name": "https://doi.org/10.23728/b2share.58dde320216e41a5a97b8f4b287efb4b", "url": ""}], "publicationDate": "2024-09-06", "language": "english", "SOReference": null, "authors": [{"fullName": "Saverio Vicario", "givenName": "Saverio", "familyName": "Vicario", "email": "saverio.vicario@iia.cnr.it", "type": "ContactPerson", "ids": [{"id": "https://orcid.org/0000-0003-1140-0483", "schema": "Orcid"}]}], "geoLocations": [{"EX_GeographicDescription": "Braila Islands - Romania", "Point": {"longitude": 28.020201624894582, "latitude": 44.88887488208617}}, {"EX_GeographicDescription": "Braila Islands - Romania", "EX_GeographicBoundingBox": {"westBoundLongitude": 27.643992076646786, "eastBoundLongitude": 28.39641117314238, "southBoundLatitude": 44.625761173601425, "northBoundLatitude": 45.15198859057091}}], "temporalCoverages": [{"startDate": "2020-01-01", "endDate": "2020-12-31"}], "geoServerInfo": {"serviceType": "WMS", "mapData": [{"path": "https://spatialnode.elter.cerit-sc.cz/geoserver/ows?version=1.3.0", "epsgCode": "32635", "type": "POLYGON", "features": {"name": "eshape:Braila Islands_Phenology_EOSV_2020", "label": "Braila - Phenology EOSV (2020)", "style": {"colour": "#000000"}}, "bytetype": false}]}, "project": {"name": "e-shape", "PID": "https://doi.org/10.3030/820852"}, "siteReference": [{"name": "Braila Islands - Romania", "PID": "d4854af8-9d9f-42a2-af96-f1ed9cb25712"}]}}
