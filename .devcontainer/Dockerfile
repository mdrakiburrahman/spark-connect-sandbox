# Grabs VS Code's devcontainer base image for Ubuntu 20.04
FROM mcr.microsoft.com/vscode/devcontainers/base:focal

# Sed out ubuntu via Azure
RUN sed -i 's|/archive.ubuntu.com|/azure.archive.ubuntu.com|g' /etc/apt/sources.list
RUN echo "Acquire::Retries \"25\";" > /etc/apt/apt.conf.d/80-retries

# Copy library scripts to execute
COPY overlay/*.sh /tmp/overlay/

# Install necessary ubuntu package dependencies
RUN /tmp/overlay/install-packages.sh