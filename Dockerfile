FROM node:slim

# set timezone Shanghai
RUN ln -snf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && echo Asia/Shanghai > /etc/timezone

# See https://crbug.com/795759
RUN apt-get update && apt-get install -yq libgconf-2-4
# Install puppeteer so it's available in the container.
RUN yarn global add puppeteer && yarn cache clean