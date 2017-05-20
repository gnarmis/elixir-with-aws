FROM trenpixster/elixir:1.4.1

RUN apt-get update \
  && apt-get install --no-install-recommends -y \
          groff \
          python3-pip \
  && rm -rf /var/lib/apt/lists/*

RUN pip3 install awscli --upgrade

CMD iex
