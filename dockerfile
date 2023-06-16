FROM node:latest
RUN git clone https://github.com/TuanManhCao/digital-garden.git /root/mindstone \
    && cd /root/mindstone/ && yarn \
    && rm -rf /root/mindstone/posts
CMD cd /root/mindstone/ && yarn && yarn run dev
EXPOSE 3000