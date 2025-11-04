#!/usr/bin/env bash
# (c) Aberger (2025) https://www.aberger.at

## render a state diagram with plant-uml docker

mkdir -p public
cp *.puml public
pushd public
    rm -f *.png *.svg
    echo "PWD is $(pwd)"

    cat state.puml | docker container run --rm -i --entrypoint java ghcr.io/plantuml/plantuml -jar "/opt/plantuml.jar" -tsvg -p > state.svg
    pwd
    ls -l .
    #cat state.puml | docker container run --rm -i --entrypoint java ghcr.io/plantuml/plantuml -jar "/opt/plantuml.jar" -tpdf -p > state.pdf
    rm -rf '?'
    rm *.puml
popd
