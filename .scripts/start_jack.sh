#!/bin/bash

jack_control start
jack_control ds alsa
jack_control dps device hw:PCH
jack_control dps rate 48000
jack_control dps nperiods 2
jack_control dps period 64
sleep 10
a2jmidid -e &
sleep 10
qjackctl &
