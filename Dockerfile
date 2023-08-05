FROM python
WORKDIR /Users/alok/Desktop/Telecom
COPY requirements.txt /Users/alok/Desktop/Telecom
EXPOSE 8000
RUN pip install -r requirements.txt
COPY . /Users/alok/Desktop/Telecom
ENTRYPOINT ["python3"]
CMD ["Form_Enduser.py"]
