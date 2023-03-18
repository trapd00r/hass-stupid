#!/usr/bin/perl
use strict;
use warnings FATAL => 'all';

use utf8;
use open qw(:std :utf8);


# hass-cli -o json state list 'temperatur_(hum|tem)'

use JSON;
use DDP;

my $json = JSON->new->allow_nonref;

#use this system command to get a json that we make a perl hash from
my $json_text = `hass-cli -o json state list 'temperatur_(hum|tem)'`;

#decode the json
my $hash = $json->decode( $json_text );


p $hash;

for my $entity ( @{$hash} ) {
    my $entity_id = $entity->{entity_id};
    my $state = $entity->{state};
    my $attributes = $entity->{attributes};
    my $friendly_name = $attributes->{friendly_name};
#    my $unit_of_measurement = $attributes->{unit_of_measurement};
#    my $device_class = $attributes->{device_class};
#    my $last_changed = $entity->{last_changed};
#    my $last_updated = $entity->{last_updated};

    printf "entity_id: %s\nstate: %s\nfriendly_name: %s\n", $entity_id, $state, $friendly_name;

}
