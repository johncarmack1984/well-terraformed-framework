# this is not necessarily meant to be run, but it is
# a script that would generate the UML code + image from the terraform configs.

bun i -g tfpuml
tfpuml
cargo install plantuml-server-client-rs
plantuml-server-client -i output.puml --combined
plantuml-server-client -i output/0.puml
mv 0/0.svg .github/current.svg
rm -rf output 0
