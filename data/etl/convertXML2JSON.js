const XMLFilename = '../qualtrics-export-responsecodes.xml';
const JSONFilename = '../qualtrics-export.json';

const fs = require('fs');
const xml2js = require('xml2js');

var parser = new xml2js.Parser({explicitArray: false});
fs.readFile(XMLFilename, function(err, data) {
  parser.parseString(data, function (err, result) {

    // add other code here to process the result array if needed. It's in result['Responses']['Response']

    result['Responses']['Response'].forEach(function(response, index) {
      response.startDate = (new Date(response.startDate)).toISOString();
      response.endDate = (new Date(response.endDate)).toISOString();
      response.recordedDate = (new Date(response.recordedDate)).toISOString();
    });

    // write the result to file
    fs.writeFile(JSONFilename, JSON.stringify(result['Responses']['Response'], null, 2), 'utf8', (err) => {
      if (err) {
        console.error(err);
        process.exit(1);
      }
    });
  });
});

