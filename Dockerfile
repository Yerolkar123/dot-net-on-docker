#Temel imaj olarak en güncel microsoft/dotnet imajını kullanır.
FROM microsoft/dotnet:latest

# LABEL
LABEL author="tkilic"
LABEL version="1.0.0"
LABEL description="microsoft/dotnet demo"

#Hazırlayan kişinin isim ve e-posta adresi gibi bilgileri yer alır. 
MAINTAINER Tansel KILIC

#İmaj içerisinde app isimli bir klasör oluştur.
RUN mkdir /app

#Uygulama kodlarımızı az önce oluşturduğumuz /app klasörüne kopyalar.
COPY /app /app

#RUN, CMD, COPY, ADD gibi komutların çalışacağı klasörü ayarlar.
WORKDIR /app

#ASP.NET Core uygulamamızın çalışması için gerekli bağımlılıkları geri yükler.
RUN ["dotnet","restore"]

#ASP.NET Core uygulamamızı build eder.
RUN ["dotnet","build"]

#Çalışma zamanında uygulama sunucumuzun dinlediği 5000 portunu açar.
EXPOSE 5000/tcp

#Container oluşturulduğunda uygulamamızı çalıştırır.
ENTRYPOINT ["dotnet","run"]