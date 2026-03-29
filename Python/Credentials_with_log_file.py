import datetime

username = input("Enter your username: ")
password = input("Enter your password: ")

print(f"Username: {username}")
print(f"Password: {password}")

# Get current date and time
current_time = datetime.datetime.now()

# Write to a log file
with open('E:\\git\\FitstProject\\Python\\Credentials.log', 'a') as f:
    f.write(f"======================== {current_time} ========================:\n")
    f.write(f"Username: {username}\n")
    f.write(f"Password: {password}\n")
    f.write("\n") # Add a newline for better readability between entries

print(f"Credentials and timestamp saved to credentials.log on {current_time}")
