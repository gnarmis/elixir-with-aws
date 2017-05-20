FROM trenpixster/elixir:1.4.1

RUN apt-get update \
  && apt-get install --no-install-recommends -y \
          groff \
          python3-pip \
  && rm -rf /var/lib/apt/lists/*

RUN pip3 install awscli --upgrade

RUN set -x \
  && VER="17.03.0-ce" \
  && curl -L -o /tmp/docker-$VER.tgz https://get.docker.com/builds/Linux/x86_64/docker-$VER.tgz \
  && tar -xz -C /tmp -f /tmp/docker-$VER.tgz \
  && mv /tmp/docker/* /usr/bin

CMD iex
