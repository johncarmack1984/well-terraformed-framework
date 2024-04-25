# this is not necessarily meant to be run, but it is
# a script that would generate the UML code + image from the terraform configs.
# It's here for reference, but ultimately these steps will be automated in CI.

brew install terraform curl
terraform init
terraform apply -auto-approve
curl -fsSL https://bun.sh/install | bash
bun i -g tfpuml
tfpuml
cargo install plantuml-server-client-rs
plantuml-server-client -i output.puml --combined
plantuml-server-client -i output/0.puml
mv 0/0.svg current.svg
rm -rf output 0
