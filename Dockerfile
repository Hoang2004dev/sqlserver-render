# Image chính thức của Microsoft SQL Server 2022
FROM mcr.microsoft.com/mssql/server:2019-latest

# Chạy với quyền root (Render cần quyền này để không bị Operation not permitted)
USER root

# Thiết lập biến môi trường
ENV ACCEPT_EULA=Y
ENV MSSQL_PID=Express
ENV SA_PASSWORD=Str0ng@SQLpass2025

# Expose port SQL Server
EXPOSE 1433

# Start SQL Server
CMD /opt/mssql/bin/sqlservr
