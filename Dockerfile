FROM python:2.7.15-alpine3.8
RUN apk add gcc build-base libxslt-dev jpeg-dev zlib-dev

WORKDIR /root/jexboss
ADD util/ /root/jexboss/util/
ADD _exploits.py _updates.py jexboss.py jexcsv.py requires.txt run.sh /root/jexboss/

RUN pip install -r requires.txt

ENTRYPOINT [ "./run.sh" ]
