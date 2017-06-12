#!/bin/bash
set -e
set -x
git clone https://github.com/erlware/relx relx_src
cd relx_src
wget https://s3.amazonaws.com/rebar3/rebar3
chmod +x rebar3
./rebar3 update
./rebar3 as escript escriptize
cp _build/escript/bin/relx ../
cd ../
rm -rf relx_src

