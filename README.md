
# Task Management System

## How to Set Up and Run the Project on Localhost

Follow these steps to set up the project on your local machine:

### **Step 1: Install XAMPP**  
Ensure you have [XAMPP](https://www.apachefriends.org/index.html) installed on your system. XAMPP is essential to run the PHP server and MySQL database.

---

### **Step 2: Clone the Repository**  
1. Open the `htdocs` directory in your XAMPP installation folder.  
   - For example, `C:\xampp\htdocs`.  
2. Clone this repository into the `htdocs` folder using the following command:  
   ```bash
   git clone https://github.com/subiya-sultana/TaskManagementSystem.git
   ```

---

### **Step 3: Start Apache and MySQL**  
1. Open the XAMPP Control Panel.  
2. Start the **Apache** and **MySQL** modules.

---

### **Step 4: Set Up the Database**  
1. Open [phpMyAdmin](http://localhost/phpmyadmin) in your browser.  
2. Create a new database named **`taskmanagementsystem`**.  
3. Import the SQL file:  
   - Go to the **Import** tab.  
   - Select the `taskmanagementsystem.sql` file from the `database` directory in this repository.  
   - Click **Go** to execute the import.

---

### **Step 5: Access the Project**  
1. Open your browser and go to:  
   - [http://localhost/TaskManagementSystem](http://localhost/TaskManagementSystem)  
   - Or directly access the homepage: [http://localhost/TaskManagementSystem/index.php](http://localhost/TaskManagementSystem/index.php).  
2. You should now see the Task Management System running on your localhost.

---

### **Step 6: Demo Account Details**  
To explore the project as an admin, use the following demo account credentials:  
- **Email**: admin@gmail.com  
- **Username**: admin  
- **Password**: admin

---

Feel free to test and explore the features of the project. Let me know if you encounter any issues!
