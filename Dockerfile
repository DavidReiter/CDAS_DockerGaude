FROM golang:1.11-alpine

# Set maintainer label
LABEL maintainer='david.reiter4626@gmail.com'

# Set working directory to `/src`
WORKDIR /src

# Copy local file `main.go` to the working directory
COPY main.go .

# List items in the working directory (ls)
RUN ls -al

# Build the GO app as myapp binary and move it to /usr/
RUN go build -o /usr/myapp main.go

# Expose port 8888
EXPOSE 8888

# Run the service myapp when a container of this image is launched
CMD ["/usr/myapp"]
