# Create a minimal container to run a Golang static binary
FROM scratch

COPY hello .

ENTRYPOINT ["./hello"]
