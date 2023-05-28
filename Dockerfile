FROM python:3.9
RUN apt-get update && apt-get install -y tesseract-ocr ffmpeg libsm6 libxext6
WORKDIR /
COPY requirements.txt .
RUN pip install -r requirements.txt
COPY . .
EXPOSE 8080
CMD ["python", "server.py"]