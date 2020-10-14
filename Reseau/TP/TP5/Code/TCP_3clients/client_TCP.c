#include <netinet/ip.h>
#include <arpa/inet.h>
#include <sys/socket.h>
#include <sys/types.h>
#include <unistd.h>
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <errno.h>

#define BUF_SIZE 256
#define CLIENT_PORT 12346

int main(int argc, char **argv) {
  if (argc != 3) {
    puts("Il faut une adresse et un port");
    exit(1);
  }
  
  int s = socket(AF_INET, SOCK_STREAM, 0);
  
  if (s < 0) {
    dprintf(2, "Erreur : socket\n");
    exit(1);
  }

  int cs = socket(AF_INET, SOCK_STREAM, 0);
  if (cs < 0) {
    dprintf(2, "Erreur : socket\n");
    exit(1);
  }


  struct sockaddr_in csin;
  csin.sin_family = AF_INET;
  csin.sin_port = htons(CLIENT_PORT);
  csin.sin_addr.s_addr = htonl(INADDR_ANY);
  for (int i = 0; i < 8; i++) {
    csin.sin_zero[i] = 0;
  }

 
  struct sockaddr_in sin;
  sin.sin_family = AF_INET;
  sin.sin_port = htons((unsigned short)atol(argv[2]));
  inet_aton(argv[1], &sin.sin_addr);
  for (int i = 0; i < 8; i++) {
    sin.sin_zero[i] = 0;
  }


  printf("Server: %s, Client: %s\n", inet_ntoa(sin.sin_addr), inet_ntoa(csin.sin_addr));

  if (connect(s, (struct sockaddr *)&sin, sizeof(struct sockaddr_in)) < 0) {
    dprintf(2, "La Connection à échouer : %s\n", strerror(errno));
    exit(1);
  }


  char buf[BUF_SIZE + 1];
  bzero(buf, BUF_SIZE + 1);
  ssize_t taille_msg;

   while (1) {
    bzero(buf, BUF_SIZE + 1);
    printf("Message: ");
    fgets(buf, BUF_SIZE, stdin);
    
    if (!strlen(buf)){
      break ;
    }
    
    taille_msg = send(s, (void *)buf, strlen(buf), 0);
    
    if (taille_msg < 0) {
      dprintf(2, "Echec de l'envoie : %s\n", strerror(errno));
      close(s);
      exit(1);
    }
    
    printf("Envoie => %s [Taille du message : %zd]\n", buf, taille_msg);
    
    if ((taille_msg = recv(s, (void *)buf, BUF_SIZE, 0)) <= 0) {
      printf("Serveur hors ligne : %s\n", strerror(errno));
    }
    else {
      printf("Reçu => %s [Taille du message : %zd]\n", buf, taille_msg);
    }
  }
  
  puts("Connection terminé");
  close(s);
  close(cs);
  return (0);
}
