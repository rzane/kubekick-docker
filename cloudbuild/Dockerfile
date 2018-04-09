ARG VERSION
FROM rzane/kubekick:$VERSION as kubekick

FROM google/cloud-sdk:alpine
RUN gcloud -q components install kubectl
COPY --from=kubekick /usr/local/bin/kubekick /usr/local/bin/kubekick
