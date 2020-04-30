FROM electronuserland/builder:wine

# Install JDK
RUN apt-get update && apt-get install default-jdk libcurl3 -y

# Cleanup
RUN rm -rf /var/lib/apt/lists/* && rm -rf /src/*.deb

CMD echo "This image is developed for build & sign Windows binaries using electron-builder"
