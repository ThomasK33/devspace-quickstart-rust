_default:
	just --list

# Run local development environment
run: setup-k3d setup-devspace
# Stop local development environment
stop: teardown-devspace teardown-k3d

# --- k3d ---

# Setup local k3d cluster and registry
setup-k3d:
	k3d registry create default-registry.localhost --port 9090
	k3d cluster create default --servers 3 --registry-use k3d-default-registry.localhost:9090
	kubectl create ns devspace

# Delete local k3d cluster and registry
teardown-k3d:
	k3d cluster delete default
	k3d registry delete default-registry.localhost

# --- devspace ---

setup-devspace:
	devspace use namespace devspace
	devspace dev

teardown-devspace:
	devspace purge
