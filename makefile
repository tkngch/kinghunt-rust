default: fix check test

.PHONY: fix
fix:
	cargo fmt --all

.PHONY: check
check:
	cargo fmt --all --check
	cargo clippy --workspace --all-targets -- -D warnings

.PHONY: test
test:
	cargo test --workspace

.PHONY: build
build:
	cargo build -p kinghunt --target wasm32-unknown-unknown
