FROM debian:slim

# Install dependencies
RUN apt-get update && apt-get install -y \
    curl \
    build-essential \
    libssl-dev \
    zlib1g-dev \
    libncurses5-dev \
    libgdbm-dev \
    libnss3-dev \
    libreadline-dev \
    libffi-dev \
    libbz2-dev \
    wget \
    && apt-get clean

# Install Homebrew
RUN curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh | bash

# Update PATH for Homebrew
ENV PATH="/root/.linuxbrew/bin:/root/.linuxbrew/sbin:$PATH"

# Install Python 3.8 using Homebrew
RUN brew install python@3.8 ttyd ffmpeg

# Set Python 3.8 as the default python
RUN ln -s /root/.linuxbrew/bin/python3.8 /usr/local/bin/python3
RUN ln -s /root/.linuxbrew/bin/pip3.8 /usr/local/bin/pip

# Verify installations
RUN python3 --version
RUN pip --version

# Set working directory
WORKDIR /app

# Copy project files
COPY . /app

# Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose any required ports
EXPOSE 7681

# Default command
CMD ["sh", "-c", "ttyd bash"]