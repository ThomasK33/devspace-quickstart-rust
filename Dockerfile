FROM rust:1.67.0 as build-env
WORKDIR /app
COPY . /app
RUN cargo install cargo-auditable cargo-audit
RUN cargo auditable build --release

FROM gcr.io/distroless/cc
COPY --from=build-env /app/target/release/devspace-quickstart-rust /
CMD ["./devspace-quickstart-rust"]
