
## Pkgdiff

Learn more about the pkgdiff tool here:
https://lvc.github.io/pkgdiff/
https://github.com/lvc/pkgdiff


## Usage

pkgdiff will write report files into /pkgdiff_reports/report
This directory needs to be mounted as a volume to be able to look at the results.

```
docker build -t jar-pkgdiff:latest .
docker run --rm \
    -v "$PWD":/pkgs:ro \
    -v "$PWD":/pkgdiff_reports \
    jar-pkgdiff:latest /pkgs/jar0.jar /pkgs/jar1.jar
```
