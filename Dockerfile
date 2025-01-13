
# لطفاً اعتبار @VJ_Botz را حذف نکنید
# برای ربات‌های شگفت‌انگیز کانال یوتیوب @Tech_VJ را دنبال کنید
# سوالات خود را در تلگرام از @KingVJ01 بپرسید

FROM python:3.10.8-slim-buster

RUN apt update && apt upgrade -y
RUN apt install git -y
COPY requirements.txt /requirements.txt

RUN cd /
RUN pip3 install -U pip && pip3 install -U -r requirements.txt
RUN mkdir /VJ-FILTER-BOT
WORKDIR /VJ-FILTER-BOT
COPY . /VJ-FILTER-BOT
CMD ["python", "bot.py"]
