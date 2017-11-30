#!/bin/bash
case $ALBERT_OP in
  "METADATA")
    STDOUT='{
      "iid":"org.albert.extension.external/v3.0",
      "name":"GnomeDictionary",
      "version":"1.0",
      "author":"Nikhil Wanpal",
      "dependencies":["gnome-dictionary"],
      "trigger":"def "
    }'
    echo -n "${STDOUT}"
    exit 0
    ;;
  "QUERY")
    QUERYSTRING="${ALBERT_QUERY}"
    echo -n '{
      "items":[{
        "id":"gnomedictionary",
        "name":"Search Gnome dictionary for '"'${QUERYSTRING}'"'",
        "description":"Opens Gnome dictionary popup and searches for '"'${QUERYSTRING}'"'.",
        "icon":"gnome-dictionary",
        "actions":[{
          "name":"gnome-dictionary",
          "command":"gnome-dictionary",
          "arguments":["--look-up='${QUERYSTRING}'"]
        }]
      }]
    }'
    exit 0
    ;;
esac
