#!/bin/sh

rm "Explorer's Pack - Server.mrpack" 2>/dev/null
rm "Explorer's Pack - Client.mrpack" 2>/dev/null
rm "server/Explorer's Pack.mrpack" 2>/dev/null
rm "client/Explorer's Pack.mrpack" 2>/dev/null

pushd server
kamuidrome export
popd

pushd client
kamuidrome export
popd

mv "server/Explorer's Pack.mrpack" "Explorer's Pack - Server.mrpack"
mv "client/Explorer's Pack.mrpack" "Explorer's Pack - Client.mrpack"
