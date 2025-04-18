#!/bin/sh

rm -r deploy 2>/dev/null
rm "server/Explorer's Pack.mrpack" 2>/dev/null
rm "client/Explorer's Pack.mrpack" 2>/dev/null

pushd server
kamuidrome export
popd

pushd client
kamuidrome export
popd

mkdir deploy
pushd deploy
mv "../server/Explorer's Pack.mrpack" "Explorer's Pack - Server.mrpack"
mv "../client/Explorer's Pack.mrpack" "Explorer's Pack - Client.mrpack"

mrpack-install "Explorer's Pack - Server.mrpack"
pushd mc
zip -r "../Explorer's Pack - Server.zip" .
popd

popd
