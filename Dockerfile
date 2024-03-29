FROM rust:1.61.0

RUN rustup default nightly

WORKDIR /app
COPY src/ src/
COPY static/ static/
COPY templates/ templates/
COPY resources/ resources/
COPY *.toml .

EXPOSE 80

RUN cargo build --release
CMD ["cargo", "run", "--release"]