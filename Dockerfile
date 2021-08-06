FROM python:3.7
COPY . .
RUN pip install -r requirements.txt
RUN apt-get update \
    && apt-get install -y cron
RUN crontab crontab
CMD ["cron", "-f"]