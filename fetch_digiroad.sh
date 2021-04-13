#!/bin/sh

for KUNTA in 755 257 049 235 091 092 753 638 858 245 186 444 927 149 710 078 611 434 018 616 504 543 106 505
do
    ogr2ogr -nlt LINESTRING -f GPKG \
		-t_srs "EPSG:4326" \
		data/raw/digiroad_$KUNTA.gpkg \
		WFS:"https://julkinen.vayla.fi/inspirepalvelu/digiroad/wfs" \
		-sql "SELECT LINK_ID AS link_id, \
		TOIMINN_LK AS functional_class, \
		AJOSUUNTA AS driving_direction, \
		GEOM_FLIP AS geom_flip, \
		LINKKITYYP AS link_type, \
		TIENIMI_SU AS road_name_fi, \
		KUNTAKOODI AS municipality_number, \
		TIENUMERO AS road_number, \
		TIEOSANRO AS road_section_number, \
		AJORATA AS carriageway, \
		AET AS start_distance, \
		LET AS end_distance \
		FROM DR_TIELINKKI_TIELINKIN_TYYPPI WHERE \
		(KUNTAKOODI=$KUNTA) \
		AND TOIMINN_LK<6 AND TOIMINN_LK>3 AND LINKKITYYP<6 \
		AND AJORATA IS NOT NULL"
done