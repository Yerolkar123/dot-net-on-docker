# dot-net-on-docker
ASP.NET Core on docker

dotnet new web 
dotnet build 
dotnet run 
code . 

docker build -t mydemos:core1 .
docker run -d -p 8080:5000 -t mydemos:core1
