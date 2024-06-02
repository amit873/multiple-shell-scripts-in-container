FROM ubuntu:latest
LABEL maintainer="Saurabh aggarwal <abc@test.com>"
RUN apt-get update && apt-get install -y \
    && rm -rf /var/lib/apt/lists/*
# Copy the script to the container
COPY ./ /
RUN chmod +x /*.sh
# Set the entrypoint to the script with CMD arguments
ENTRYPOINT ["/master.sh"]
CMD ["script2.sh"]
