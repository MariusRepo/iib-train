
# APP Description
App is a simple flow that accepts and validates inputs through xml / csv file and MQ (located in 'scripts' folder named 'user_assign') which get saved to database. The file contains details about the user (for validation), the channel and the message to be posted on the channel (user will have permissions to post on certain channels).
If the user or the permissions are not validated the invalid details will be sent to their respective queue. In order for a user to get permission to post on a channel, an _HTTP POST_ request has to be made with the user id and channel name to [local](http://localhost:7800/assignchannel) server.

### SETUP - [Message Queue]
* Use WebSphere to create a _Queue Manager_ named: **QMDEMO**
* On the QMDEMO manager create the following queues: **ERRORQ / MQINVALIDA / MQINVALIDU / MQVALID / MQXMLINPUT**

### SETUP - [Database] [MYSQL] 
* Install MySQL (_recommended to use MySQL Workbench_).
* Execute **demo-db.sql** from the 'scripts' folder to create 'demo' database with minimal data inside.
* Execute the following command to create the default user to connect to database:

```bash
GRANT ALL PRIVILEGES ON demo.* TO 'LocalSystem'@'localhost'
```

### SETUP - [Database connection] 
* **!!!** Watch this youtube clip to see what is needed exactly: [DB Connection](https://www.youtube.com/watch?v=mnPqhJYgU5U)
* **!!!** Use ODBC Data sources on 64-bit & ran as administrator to be able to see the MySQL connector
* **!!!** In this case the name of the connection is named **_local_**
