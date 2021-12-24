## dockerfile-for-omifood-using-curl-and-copy
``To download a file or directory from remote to Dockerfile, you can use curl (RUN apt update && apt install curl -y && curl -o <destination folder> link or url && apt remove curl -y ``
``Again, you can clone the repo if the file or the folder is located on github. This will download the file to your local and you can go ahead to use COPY to copy the file from the local to a destination in the container or Dockerfile (COPY omnifood /var/www/html)``
``Furthermore, you can use ADD to copy link too (ADD <destination> followed by link/url)``
### TO be able to execute the downloaded file, you have allow permission by RUNNING chmod +WRX(777)
RUN chmod +x /var/www/html/omnifood
