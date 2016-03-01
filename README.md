# FROM zeroows/elixir-alpine

Docker image for Erlang/Elixir projects build on a minimal Alpine Linux (base: gliderlabs/alpine)

This image still ships the `build-base` package (GCC + libraries) to make it more convenient for projects which have NIF dependencies.
