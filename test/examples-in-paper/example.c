

int validate(char *username) {
   char *password;
   char *checksum;

   password = read_password();
   checksum = compute_checksum(password);
   password = 0;
   return !strcmp(checksum, get_stored_checksum(username));
}
