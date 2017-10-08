
## Pkgdiff

Learn more about the pkgdiff tool here:
https://lvc.github.io/pkgdiff/
https://github.com/lvc/pkgdiff


## Usage

pkgdiff will write report files into /pkgdiff_reports/report
This directory needs to be mounted as a volume to be able to look at the results.

```
docker run --rm -v "$PWD":/pkgs:ro -v "$PWD":/pkgdiff_reports mattias/pkgdiff /pkgs/package-1.7.1-linux-ubuntu-trusty-amd64.deb /pkgs/package-1.7.2-linux-debian-jessie-amd64.deb
```
