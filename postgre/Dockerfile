ARG PG_MAJOR=16

FROM arm64v8/postgres:$PG_MAJOR

# pgvector
RUN apt-get update && \
		apt-mark hold locales && \
		apt-get install -y --no-install-recommends ca-certificates git build-essential postgresql-server-dev-$PG_MAJOR && \
    git clone https://github.com/pgvector/pgvector.git /tmp/pgvector && \
		cd /tmp/pgvector && \
		make clean && \
		make OPTFLAGS="" && \
		make install && \
		mkdir /usr/share/doc/pgvector && \
		cp LICENSE README.md /usr/share/doc/pgvector && \
		rm -r /tmp/pgvector && \
		apt-get remove -y git build-essential postgresql-server-dev-$PG_MAJOR && \
		apt-get autoremove -y && \
		apt-mark unhold locales && \
		rm -rf /var/lib/apt/lists/*
