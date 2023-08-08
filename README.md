# devspace-quickstart-rust

This is a simple quick-start Rust project for use with DevSpace.
It's a minimal web application that uses the [axum](https://crates.io/crates/axum) web framework and runs inside a Kubernetes cluster managed by [kind](https://kind.sigs.k8s.io/) or [k3d](https://k3d.io/).

## Table of Contents

- [Requirements](#requirements)
- [How to Use](#how-to-use)
- [Justfile Commands](#justfile-commands)
- [License](#license)

## Requirements

- [Rust](https://www.rust-lang.org/tools/install)
- [DevSpace](https://devspace.sh/cli/docs/getting-started/installation)
- [just](https://github.com/casey/just)
- [kind](https://kind.sigs.k8s.io/docs/user/quick-start/#installation) or [k3d](https://k3d.io/#installation)

## How to Use

1. Clone the repository:

    ```sh
    git clone https://github.com/ThomasK33/devspace-quickstart-rust.git
    cd devspace-quickstart-rust
    ```

2. Run the local development environment:

    ```sh
    just run
    ```

3. Within the devspace container, run:

    ```sh
    cargo run
    ```

4. Access the application at: `http://localhost:3000`.

5. When you're done, exit the devspace containerd and stop the local development environment:

    ```sh
    just stop
    ```

## Justfile Commands

- `just run`: Runs the local development environment.
- `just stop`: Stops the local development environment.
- `just create-kind`: Creates a local kind cluster.
- `just delete-kind`: Deletes the local kind cluster.
- `just create-k3d`: Sets up a local k3d cluster and registry.
- `just delete-k3d`: Deletes the local k3d cluster and registry.
- `just dev`: Runs devspace in Kubernetes cluster.
- `just purge`: Purges devspace deployment.

## License

This project is licensed under the [MIT License](https://opensource.org/licenses/MIT).

## Contact

Thomas Kosiewski - <thoma471@googlemail.com>

Project Link: <https://github.com/ThomasK33/devspace-quickstart-rust>
