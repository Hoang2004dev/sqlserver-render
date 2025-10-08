# Image chính thức của Microsoft SQL Server 2022
FROM mcr.microsoft.com/mssql/server:2022-latest

# Chấp nhận điều khoản và đặt thông tin cần thiết
ENV ACCEPT_EULA=Y
ENV MSSQL_PID=Express
ENV SA_PASSWORD=Str0ng@SQLpass2025

# Expose port SQL Server
EXPOSE 1433

# Chạy SQL Server
CMD ["/opt/mssql/bin/sqlservr"]
