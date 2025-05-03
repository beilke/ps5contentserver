#!/bin/sh
set -e

# Check HTTP server
if ! curl -fsS --max-time 5 http://localhost:8080 >/dev/null; then
    echo "HTTP server not responding" >&2
    exit 1
fi

exit 0