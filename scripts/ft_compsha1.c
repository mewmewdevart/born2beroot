#include <stdio.h>

#define BUFFER_SIZE 100 //Compare sha1sum

int main (int argc, char **argv)
{
    
}

int ft_compsha1(char *sha1, char *sha2)
{
    int i;

    i = 0;
    while (sha1[i] == sha2[i] && sha1[i] != '\0' && sha2[i] != '\0')
        i++;
    
    return (sha1[i] - sha2[i]);
}