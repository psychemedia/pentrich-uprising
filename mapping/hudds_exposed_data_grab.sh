#!/bin/bash

# List of URLs to curl
urls=(
https://huddersfield.exposed/files/maps/locationsAll.json
https://huddersfield.exposed/files/maps/kml/BirstallHuddersfieldTurnpikeRoad.kml
https://huddersfield.exposed/files/maps/kml/HuddersfieldNewHeyTurnpikeRoad.kml
https://huddersfield.exposed/files/maps/kml/HuddersfieldPenistoneTurnpikeRoad.kml
https://huddersfield.exposed/files/maps/kml/HuddersfieldWoodheadTurnpikeRoad.kml
https://huddersfield.exposed/files/maps/kml/LockwoodMelthamTurnpikeRoad.kml
https://huddersfield.exposed/files/maps/kml/MelthamWessendenHeadTurnpike.kml
https://huddersfield.exposed/files/maps/kml/WadsleyLangsettTurnpikeRoad.kml
https://huddersfield.exposed/files/maps/kml/WakefieldAusterlandsTurnpikeRoadEast.kml
https://huddersfield.exposed/files/maps/kml/WakefieldAusterlandsTurnpikeRoadWest2.kml
https://huddersfield.exposed/files/maps/kml/HalifaxHuddersfieldTurnpikeRoad.kml
https://huddersfield.exposed/files/maps/kml/GreenfieldShepleyLaneHeadTurnpike.kml
https://huddersfield.exposed/files/maps/kml/BarnsleyShepleyLaneHeadTurnpikeRoad.kml
https://huddersfield.exposed/files/maps/kml/HolmfirthDistrictTurnpikeRoad.kml
https://huddersfield.exposed/files/maps/kml/DunfordDistrictTurnpikeRoad.kml
https://huddersfield.exposed/files/maps/kml/WakefieldDenbyDaleTurnpikeRoad.kml
)

# Create output directory
mkdir -p data

# Loop through and curl each URL
for url in "${urls[@]}"; do
    # Extract filename from URL (domain + path)
    filename="data/$(echo "$url" | sed 's|https\?://||' | sed 's|/|_|g').html"
    echo "Curling: $url -> $filename"
    curl -s "$url" -o "$filename"
done