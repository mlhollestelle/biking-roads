bike_roads_map: generate_map.R data/interim/digiroad_merged.gpkg
	rscript generate_map.R

create_lines: merge_digiroad.sh simplify_roads.sh data/raw/digiroad_*.gpkg fetch_data
	sh merge_digiroad.sh

fetch_data: fetch_digiroad.sh
	sh fetch_digiroad.sh
