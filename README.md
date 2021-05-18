# Grundlagen IT-Sicherheit - Practical Exercise 2 - HASHCAT_demo

In the following exercise, we will try to regain access to the login-protected area. The main thing here is to restore or reset the password of Wurzelsepp.

## Preparation

To perform this exercise you must have `Docker` installed and running. Then you can use docker compose with the following command to create the containers:

```bash
>>> docker compose build
```

After everything has been successfully downloaded and builded, you can start our test scenario with the following command:

```bash
>>> docker compose up
```

## Important notes/restrictions

- Assume that you do not have direct access to the file server (i.e. you cannot modify code directly on the server).
- However, you have received all the source files (all the files in /webiste) from Wurzelsepp on a USB stick and can look at them and examine them.
- You also know that the system administrator at the time used phpmyadmin and that the web interface was accessible via http://localhost:8080.
- The actual web portal can be reached via http://localhost/login.php.

## Execution

### Preparation

In case you need the hashcat tool for your procedure, you will find a Docker container with hashcat installed and a word list called `uni_batavis.txt`.
To connect to our attacker, we can execute the following command:

```
docker exec -it <name_of_the_container> /bin/sh
```

(You can find out the name of the currenty running containers by executing `docker ps`)

### Tipps for using hashcat

- A detailed list with example hashes - https://hashcat.net/wiki/doku.php?id=example_hashes
- A tutorial on how to use hashcat - https://resources.infosecinstitute.com/topic/hashcat-tutorial-beginners/

## Validation

After you have successfully received the password for the user account from Wurzelsepp, you can log in to the frontend under `login.php` and should now be able to view `servus.php` in your browser.
