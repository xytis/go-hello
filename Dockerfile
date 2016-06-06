# Create a minimal container to run a Golang static binary
FROM scratch

EXPOSE 8080
COPY bin/hello .

ENTRYPOINT ["./hello"]
