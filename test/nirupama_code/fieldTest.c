#include<stdlib.h>
#include<stdio.h>
#include<unistd.h>

//Structure to contain the Server Data
struct srv_data {
int conf_file;
int pass_ref;
int collection[5];
char* password;
char * someData;
};


//Authentication Function
int Authenticate(struct srv_data srv1, int pass)
{
   if(pass==srv1.pass_ref)
        return 1;
   else
        return 0;
}


int processUserRequest(struct srv_data srv1)
{
 	int val;
	val  = srv1.pass_ref;
	return val;
}

//Main
int main(int argc, char* argv[]) 
{
        int in,b,c;
        char* b_string;
        char *inter;
         struct srv_data srv;
         int resourcesArr[6];
        char* inputString;
        b = atoi(argv[1]);  //cmd input source
        inputString =  argv[1];
        b_string =  argv[2];
        srv.conf_file = b;    //tainted by cmd input
        srv.password = inputString;  //tainted by cmd input

		c = processUserRequest(srv);
		int auth = Authenticate(srv, c); //Authenticate
		int sink;
		
		if(auth==1)
			{
			printf("Authenticated %d",auth);  
			 sink =  srv.conf_file;  //sink should be tainted
			}
		else
			{
			printf("Not authenticated %d",auth);  
			sink = srv.pass_ref;		//sink should not be tainted.
			}
		
	return b;
}
