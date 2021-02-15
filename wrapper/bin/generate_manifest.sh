#!/bin/bash -x

# Update json
PORT=$(snapctl get port)
mkdir -p $SNAP_DATA/package-assets/$SNAP_NAME
jq ".menus.sidebar[].link = \"http://\${hostname}:$PORT\" | .menus.sidebar[].title = \"Octoprint $SNAP_INSTANCE_KEY\" | .menus.sidebar[].id = \"octoprint-sdev.octoprint.$SNAP_INSTANCE_KEY\"" \
    $SNAP/package-assets/octoprint-sdev/octoprint-sdev.package-manifest.json > $SNAP_DATA/package-assets/octoprint-sdev/$SNAP_INSTANCE_NAME.package-manifest.json