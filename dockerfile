FROM python:3.8-slim

# Install dependencies
RUN apt-get update
RUN apt-get install -y ffmpeg build-essential cmake git libjson-c-dev libwebsockets-dev
RUN apt-get clean

RUN git clone https://github.com/tsl0922/ttyd.git
RUN cd ttyd
RUN mkdir build
RUN cd build
RUN cmake ttyd ..
RUN make
RUN sudo make install

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