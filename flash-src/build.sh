#!/bin/sh

# A script to build WebSocketMain.swf and WebSocketMainInsecure.zip.

# You need Flex 4 SDK:
# http://opensource.adobe.com/wiki/display/flexsdk/Download+Flex+4

/Applications/Adobe\ Flash\ Builder\ 4.5/sdks/4.5.1/bin/mxmlc \
  -static-link-runtime-shared-libraries \
  -target-player=10.0.0 \
  -output=../WebSocketMain.swf \
  -source-path=src -source-path=third-party \
  src/net/gimite/websocket/WebSocketMain.as &&

/Applications/Adobe\ Flash\ Builder\ 4.5/sdks/4.5.1/bin/mxmlc \
  -static-link-runtime-shared-libraries \
  -target-player=10.0.0 \
  -output=../WebSocketMainInsecure.swf \
  -source-path=src -source-path=third-party \
  src/net/gimite/websocket/WebSocketMainInsecure.as &&

cd .. &&

zip WebSocketMainInsecure.zip WebSocketMainInsecure.swf #&&
#rm WebSocketMainInsecure.swf
