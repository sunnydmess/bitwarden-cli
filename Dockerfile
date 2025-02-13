FROM node:22-slim

RUN npm install -g @bitwarden/cli

COPY entrypoint.sh /bw/.

WORKDIR /bw

ENV BW_HOST=https://api.bitwardent.com
ENV BW_CLIENTID=required
ENV BW_CLIENTSECRET=required

CMD ["/entrypoint.sh"]
