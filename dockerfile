FROM python:3.8-slim

# Install dependencies including ffmpeg
RUN apt update
RUN apt install -y ttyd ffmpeg
RUN apt clean

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
