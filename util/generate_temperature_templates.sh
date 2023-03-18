#!/bin/sh
# Tvättstuga: {{ states("sensor.tvattstuga_temperatur_temperature") }}
# Matkällare: {{ states("sensor.matkallare_temperatur_temperature") }}
# Sovrum: {{ states("sensor.sovrum_temperatur_temperature") }}
# Vardagsrum: {{ states("sensor.vardagsrum_temperatur_temperature") }}
# Vind: {{ states("sensor.vind_temperatur_temperature") }}
# Badrum: {{ states("sensor.badrum_temperatur_temperature") }}
# Kök: {{ states("sensor.kok_temperatur_temperature") }}
# Kontor: {{ states("sensor.kontor_temperatur_temperature") }}

hass-cli state list|grep ,\ temperatur\ temperature|perl -pe 's/^(.+)\s+(.+),.+$/$2: {{ states("$1") }}/' | perl -pe 's/\s{2,}//g'
