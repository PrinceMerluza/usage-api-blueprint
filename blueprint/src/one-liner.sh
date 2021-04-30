# >> START one-liner.sh

#####
#   This sample shows simple one-liners that you can use to quickly 
#   query the Usage API of the org (Default Profile). 
#
#   4 possible args for jq:
#       interval (required) - Date interval (ISO-8501 format)
#       granularity (optional) - Valid Values: Day, Week, Month
#       groupBy (array, optional) - Valid Values: OAuthClientId, OrganizationId, UserId, TemplateUri, HttpMethod
#       metrics (array, optional) - Valid Values: Status200, Status300, Status400, Status500, Status429, Requests
#
#   The result would be the API response body which contains the 'executionId'.
#####

# Full example with all arguments
echo {} | jq --arg interval "2021-01/2021-02" --arg granularity "Month" --argjson groupBy '["OAuthClientId"]' --argjson metrics '["Status200", "Status429"]' '.interval=$interval | if $ARGS.named.granularity != null then .granularity=$ARGS.named.granularity else . end | if $ARGS.named.groupBy != null then .groupBy=$ARGS.named.groupBy else . end | if $ARGS.named.metrics != null then .metrics=$ARGS.named.metrics else . end' | gc usage query

# >> END 
