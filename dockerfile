FROM python:3.8-slim

# Install dependencies
RUN apt-get update && apt-get install -y ffmpeg build-essential cmake git libjson-c-dev libwebsockets-dev && apt-get clean
RUN git clone https://github.com/tsl0922/ttyd.git && cd ttyd && mkdir build && cd build && cmake .. && make && make install

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