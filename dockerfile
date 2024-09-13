FROM python:3.8-slim

# Install dependencies including ffmpeg
RUN apt-get update \
    && apt-get install -y \
    cmake \
    gcc \
    g++ \
    make \
	ffmpeg \
    libjson-c-dev \
    libwebsockets-dev \
    && wget https://github.com/tsl0922/ttyd/releases/download/1.6.2/ttyd_1.6.2_linux_amd64.tar.gz \
    && tar xzf ttyd_1.6.2_linux_amd64.tar.gz \
    && mv ttyd /usr/local/bin/ \
    && rm -rf ttyd_1.6.2_linux_amd64.tar.gz \
    && apt-get clean

# Set working directory
WORKDIR /app

# Copy project files
COPY . /app

# Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose ttyd port
EXPOSE 7681

# Run ttyd (web terminal with bash)
CMD ["sh", "-c", "ttyd bash"]
