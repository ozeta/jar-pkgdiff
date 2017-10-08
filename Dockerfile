FROM buildpack-deps:stretch-curl

ARG PKGDIFF_VERSION=1.7.2

RUN apt-get update -y && apt-get install -y --no-install-recommends \
      perl \
      make \
      wdiff \
      file \
    && rm -rf /var/lib/apt/lists/*

RUN curl --fail --silent --show-error --location https://github.com/lvc/pkgdiff/archive/${PKGDIFF_VERSION}.tar.gz \
    | tar -xz \
    && make -C pkgdiff-${PKGDIFF_VERSION} install prefix=/usr \
    && rm -r pkgdiff-${PKGDIFF_VERSION}

VOLUME /pkgdiff_reports

ENTRYPOINT ["pkgdiff", "-report-path", "/pkgdiff_reports/report/index.html"]
