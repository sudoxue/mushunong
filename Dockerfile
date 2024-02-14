FROM alphine:latest
#create a group and user
RUN addgroup -S corgi && adduser -S mushu -G corgi
#set the working directory
WORKDIR /home/mushu/korgi
#copy the current directory contents into the container at /home/mushu/korgi
--chown=mushu:corgi . /home/mushu/korgi
USER mushu
# Default command
CMD ["sh","-c", "Hello, I am Mushu, the corgi!"]