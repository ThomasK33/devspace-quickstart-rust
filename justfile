_default:
	just --list

# Run local development environment
run: create-kind dev

# Stop local development environment
stop: purge delete-kind

# --- kind ---

# Create a local kind cluster
create-kind:
  kind create cluster -n devspace-rust

# Delete the local kind cluster
delete-kind:
  kind delete cluster -n devspace-rust

# --- k3d ---

# Setup local k3d cluster and registry
create-k3d:
	k3d registry create default-registry.localhost --port 9090
	k3d cluster create default --servers 3 --registry-use k3d-default-registry.localhost:9090
	kubectl create ns devspace

# Delete local k3d cluster and registry
delete-k3d:
	k3d cluster delete default
	k3d registry delete default-registry.localhost

# --- devspace ---

# Run devspace in kubernetes cluster
dev:
	devspace use namespace devspace
	devspace dev

# Purge devspace deployment
purge:
	devspace purge
