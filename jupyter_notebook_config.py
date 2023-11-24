from notebook.auth import passwd

# Replace 'sauser_password' with your desired password
hashed_password = passwd('labuser')
print(hashed_password)
