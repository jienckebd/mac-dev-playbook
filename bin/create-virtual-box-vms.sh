#!/bin/bash

curl -s https://raw.githubusercontent.com/xdissent/ievms/master/ievms.sh | IEVMS_VERSIONS="11" bash &&
curl -s https://raw.githubusercontent.com/xdissent/ievms/master/ievms.sh | IEVMS_VERSIONS="EDGE" bash
