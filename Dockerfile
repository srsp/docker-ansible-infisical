FROM srsp/ansible:2.22.0 AS build

RUN curl -1sLf 'https://artifacts-cli.infisical.com/setup.deb.sh' | bash && \
    apt-get install -y --no-install-recommends infisical

FROM srsp/ansible:2.22.0

# infisical is a static Go binary; the package adds only shell completions and a man page.
COPY --from=build /usr/bin/infisical /usr/bin/infisical
RUN infisical --version

CMD ["/bin/sh"]
