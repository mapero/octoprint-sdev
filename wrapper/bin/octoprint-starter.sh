#!/bin/bash -x

PORT=$(snapctl get port)
$SNAP/usr/bin/python3 $SNAP/bin/octoprint serve --port $PORT -c $SNAP_DATA/config.yaml -b $SNAP_DATA/data --iknowwhatimdoing