# AGAME project
https://www.umweltbundesamt.at/en/services/agame

This repository contains the code contributions of EAA to the AGAME project - mostly revolving around geoserver configurations, metadata generation and quality assurance. 

- The .properties file of each layer needs to be modified and get an extra line that says "TimeAttribute=ingestion"
- The indexer.properties tells GeoServer that datetime information is in the filename
- The timeregex.properties tells GeoServer how to extract date information from the geotiff filenames (the last 8 characters contain the date)

- agame_metadata_xml.ipynb generates ISO19139 metadata records
- agame_metadata_json.ipynb generates JSON metadata records for the eLTER invenio instance
- check_geoserver_md_completeness.ipynb checks all GeoServer layers for their metadata completeness
- gpp_grey_to_green.sld contains the SLD used to style the GPP layers

November 2024
