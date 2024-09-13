FROM python:3.8-slim

# Install dependencies including ffmpeg
RUN apt-get update && apt-get install -y \
    build-essential \
    wget \
    && wget https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh -O /tmp/install.sh \
    && bash /tmp/install.sh \
    && export PATH="/root/.linuxbrew/bin:$PATH" \
    && brew install ttyd ffmpeg \
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
