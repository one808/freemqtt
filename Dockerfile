FROM python:3.9-slim

# 使用绝对路径
WORKDIR /app

# 先复制 requirements.txt 安装依赖，利用缓存
COPY requirements.txt .

# 安装依赖
RUN pip install --no-cache-dir -r requirements.txt

# 复制其余文件
COPY . .

CMD ["python", "freemqttd.py"]
