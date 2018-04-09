ARG VERSION
FROM rzane/kubekick:$VERSION as kubekick

FROM google/cloud-sdk:alpine

# Add make for convenience
RUN apk --no-cache add make

# Install the kubectl gcloud addon
RUN gcloud -q components install kubectl

# Copy in our executable
COPY --from=kubekick /usr/local/bin/kubekick /usr/local/bin/kubekick
