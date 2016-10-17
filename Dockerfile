FROM crystallang/crystal
MAINTAINER sameaton11@gmail.com
WORKDIR /app
ADD . ./
RUN crystal build parent.cr
RUN crystal build child.cr
CMD ./parent

