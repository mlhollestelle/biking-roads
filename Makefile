create_lines: merge_digiroad.sh data/raw/digiroad_*.gpkg
	sh merge_digiroad.sh

fetch_data: fetch_digiroad.sh
	sh fetch_digiroad.sh
