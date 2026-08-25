FROM python:3.11-slim
WORKDIR /app
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt
COPY . .
CMD ["sh", "-c", "flake8 src/ tests/ && pytest -v --cov=math_utils --cov-report=term-missing"]