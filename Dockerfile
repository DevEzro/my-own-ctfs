# PostgreSQL
FROM postgres:15

# PostgreSQL variables
ENV POSTGRES_USER=admin
ENV POSTGRES_PASSWORD=h4sta3l1nf1n1t0ym454ll4
ENV POSTGRES_DB=story_boris_db

# Initialize SQL script
COPY init.sql /docker-entrypoint-initdb.d/

# PostgreSQL port
EXPOSE 5432
