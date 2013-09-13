JSON\_to\_CSV.rb
================
A script that converts JSON arrays generated through requests to the Twitter API into CSV files that can be imported directly into Microsoft Excel.

**Requres**: Ruby v. 1.8.x and JSON gem.

**'JSON/broken\_example.txt'**: a file that demonstrates some of the problems with locating and eliminting invalid characters that crop up in the text of some tweets. I have tried to provide a wide set of examples to work through that should be typical of many of the invalid JSON characters a researcher typically encounters. For help modifying the file into valid JSON, try JSONLint, the JSON validator (jsonlint.com).

Lists of JSON objects _must_ be formatted into a valid array.
