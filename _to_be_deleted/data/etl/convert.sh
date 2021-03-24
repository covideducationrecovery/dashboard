
node convertXML2JSON.js

cat ../qualtrics-export.json | jq -f process_responses.jq | jq -f remove_empty_values.jq > ../qualtrics-export-processed.json

# minfy output file
