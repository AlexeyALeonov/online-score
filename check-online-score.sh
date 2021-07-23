for item in `curl -sL http://localhost:14002/api/sno | jq '.satellites[].id' -r`; do
    curl -s http://localhost:14002/api/sno/satellite/$item | \
    jq '{id: .id, auditHistory: [.auditHistory.windows[] | select(.totalCount != .onlineCount)]}'
done