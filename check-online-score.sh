for item in `curl -sL http://localhost:14002/api/sno | jq '.satellites[].id' -r`; do
    windows=`curl -s http://localhost:14002/api/sno/satellite/$item | \
    jq '.auditHistory.windows[] | select(.totalCount != .onlineCount)' -c`
    [ "${windows:-}" ] && echo ${item} && echo $windows | jq '.'
done