FROM quay.io/hybridcloudpatterns/utility-container

RUN git clone https://github.com/validatedpatterns/common.git && \
    rm -rf common/.git

COPY Makefile .

RUN chmod 1777 /pattern
RUN git config --system --add safe.directory /pattern
