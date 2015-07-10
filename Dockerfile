# Build this with: `docker build -t <image-name> .`
# Run a container with: `docker run -it --rm --name <container-name>`
FROM python:3-onbuild
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* \
	&& localedef -i de_DE -c -f UTF-8 -A /usr/share/locale/locale.alias de_DE.UTF-8
ENV LANG de_DE.utf8

# The following can be overwritten or parameters can be added:
CMD [ "python", "session.py" ]
