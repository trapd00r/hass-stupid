#!/bin/sh
hass-cli --output json state  list | perl -MJSON=decode_json -MDDP -E 'local $/; $_ = <>; $h = decode_json($_); p $h'
