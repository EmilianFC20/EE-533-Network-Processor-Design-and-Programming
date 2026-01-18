#include <stdio.h>
#include <sys/types.h> 
#include <sys/socket.h>
#include <netinet/in.h>

void error(char *msg)
{
    perror(msg);
    exit(1);
}

int main(int argc, char *argv[])
{
     int sockfd, newsockfd, portno;
     socklen_t clilen;
     char buffer[256];
     struct sockaddr_in serv_addr, cli_addr;
     int n;
     if (argc < 2) {
         fprintf(stderr,"ERROR, no port provided\n");
         exit(1);
     }
     sockfd = socket(AF_INET, SOCK_DGRAM, 0);
     if (sockfd < 0) 
        error("ERROR opening socket");
     bzero((char *) &serv_addr, sizeof(serv_addr));
     portno = atoi(argv[1]);
     serv_addr.sin_family = AF_INET;
     serv_addr.sin_addr.s_addr = INADDR_ANY;
     serv_addr.sin_port = htons(portno);
     if (bind(sockfd, (struct sockaddr *) &serv_addr,
              sizeof(serv_addr)) < 0) 
              error("ERROR on binding");
     clilen = sizeof(struct sockaddr_in); 
     while (1) 
     { 
        n = recvfrom(sockfd,buffer,255,0,(struct sockaddr *)&cli_addr, &clilen); 
        if (n < 0) error("recvfrom");
        buffer[n] = '\0';
        printf("Here is the datagram message: %s\n",buffer);
        n = sendto(sockfd,"Got your message",17,0,(struct sockaddr *)&cli_addr,clilen); 
        if (n < 0)
        error("sendto");
     }
}
