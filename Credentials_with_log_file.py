username = input("Enter your username: ")
password = input("Enter your password: ")

print(f"Username: {username}")
print(f"Password: {password}")

# Write to a log file
with open('credentials.log', 'a') as f:
    f.write(f"Username: {username}\n")
    f.write(f"Password: {password}\n")

print("Credentials saved to credentials.log")