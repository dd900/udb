FROM python:3.8-slim

# Install dependencies including ffmpeg
RUN apt-get update && apt-get install -y wget
RUN wget https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh -O /tmp/install.sh
RUN bash /tmp/install.sh
RUN rm /tmp/install.sh
RUN brew install ttyd ffmpeg

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
