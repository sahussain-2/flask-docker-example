# استخدم صورة بايثون الرسمية
FROM python:3.9-slim

# تعيين دليل العمل داخل الحاوية
WORKDIR /app

# نسخ ملفات المشروع إلى الحاوية
COPY requirements.txt requirements.txt
COPY app.py app.py

# تثبيت المتطلبات
RUN pip install -r requirements.txt

# تعيين منفذ التطبيق
EXPOSE 5000

# الأمر الذي سيتم تشغيله عند بدء الحاوية
CMD ["python", "app.py"]
