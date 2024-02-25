### Negpod_19 ALU Registration System Application (BSE Group Coding Session Summative)

# Installation

## Step 1: Clone the Repository and change to the respective directory

``` bash
git clone https://github.com/Emmanuel-kwizera/Negpod_19.git
cd Negpod_19
```

## Step 2: Set Permissions

Make sure that the shell scripts are executable:

```bash
chmod +x main.sh
chmod +x select-emails.sh
chmod +x move-to-directory.sh
chmod +x backup-Negpod_19.sh
```

## Step 3: Run the Application

### Question 1: Shell Programming

Execute the `main.sh` script to interact with the student registration system:

```bash
./main.sh
```

Follow the following on-screen instructions to create, view, delete, update student records, and perform searches.

![image](https://github.com/Emmanuel-kwizera/Negpod_19/assets/73703812/a59a5c31-753c-457a-8ffa-53f40e719cf6)


### Searching and Sorting

Execute the `select-emails.sh` script to select and save student emails:

```bash
./select-emails.sh
```
The selected emails will be saved in the file `student-emails.txt`.

### Question 2: Automation with Linux

Move the four expected files to the designated directory using the `move-to-directory.sh` script:

```bash
./move-to-directory.sh
```

Backup to Remote Server

verify if you linux have `sshpass` tool if not you can install by

```bash
sudo apt install sshpass
```

Execute the `backup-Negpod_19.sh` script to backup the directory to the remote server:

```bash
./backup-Negpod_19.sh
```

### Step 4: Verify the Results
Check the contents of the `Negpod_19` directory for the moved files and verify the backup on the remote server.


# Contributors

- [Felix Dusengimana](https://github.com/felixdusengimana)
- [Rwaka Junior Shima](https://github.com/jrwaka)
- [Emmanuel Kwizera](https://github.com/Emmanuel-kwizera)
- [J D Amour Tuyishime](https://github.com/tuyishimejeandamour)
- [Jacques Twizeyimana](https://github.com/jacques-twizeyimana)
