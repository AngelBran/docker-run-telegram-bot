FROM python:3

WORKDIR /home/user/app

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

# Add a new user "user" with user id 1000
RUN useradd -u 1000 user
# Change to non-root privilege
USER user
