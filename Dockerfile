FROM mysql:5.6
RUN apt-get update -q && apt-get install -qy htop wamerican-huge && rm -rf /var/lib/apt/lists/*

