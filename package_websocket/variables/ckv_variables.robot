*** Settings ***
Documentation   POM or Variables and Keywords for creating Auth or Token.
Resource        ../settings/setup_teardown_func.robot


*** Variables ***
${ws path}                                     raw
${ws raw query-params path}                    raw/query-params?name=Postman
${ws null query-params path}                   raw/query-params?null=Postman
${ws json path}                                raw/json
${ws headers path}                             raw/headers
${ping value}                                  3
${settimeout time}                             60
${close reason}                                all tested
${get status code}                             101
${texts}                                       all is well
${ws connection alert}                         Configuration Successful!! Server has started 🎉🎉🎉🎉
${ws send json alert}                          Hurray! You have sent a JSON message to the server 🎉🎉🎉🎉
${ws vowels alert}                             Now, send a word to the server to know the number of vowels in it
${binary characters}                           1110010 1100001 1101010 1100101 1100101 1110110 100000 1110000 1110010 1100001 1101101 1100001 1101110 1101001 1101011
${ws results vowels}                           Number of vowels in the word all is well are 3
${ws Query parameter not found alert}          Query parameter not found
${ws Configure the request alert}              Configure the request correctly and try to connect again
${ws parameter name key alert}                 A query parameter with 'name' as key and your name as value is a required for connecting to this WebSocket Server
${ws Invalid JSON found}                       Invalid JSON found
${ws JSON response alert}                      The message sent is not in proper JSON format, please try again.${SPACE}