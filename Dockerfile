FROM akariv/dgp-server:latest

ADD requirements.txt /dgp/requirements.txt
RUN python -m pip install -r /dgp/requirements.txt

ADD taxonomies /dgp/taxonomies/
ADD server /dgp/server/

ENV SERVER_MODULE=server.server:app

WORKDIR /dgp/
