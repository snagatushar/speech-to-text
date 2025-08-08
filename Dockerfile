# Use official python slim image
FROM python:3.10-slim

# Install ffmpeg dependencies for whisper audio processing
RUN apt-get update && apt-get install -y ffmpeg && rm -rf /var/lib/apt/lists/*

# Set working directory
WORKDIR /app

# Copy requirements and install
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy the transcription script
COPY transcribe.py .

# Default command just shows usage
CMD ["python", "transcribe.py"]
