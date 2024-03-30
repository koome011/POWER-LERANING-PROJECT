try:
    # Writing to the file
    with open("my_file.txt", "w") as file:
        file.write("This is line 1.\n")
        file.write("12345\n")
        file.write("Another line with some numbers: 98765\n")
    
    # Reading and displaying the contents of the file
    with open("my_file.txt", "r") as file:
        print("Contents of my_file.txt:")
        for line in file:
            print(line.strip())
    
    # Appending to the file
    with open("my_file.txt", "a") as file:
        file.write("Appending line 1.\n")
        file.write("67890\n")
        file.write("One more line for appending: 54321\n")

except FileNotFoundError:
    print("Error: The file was not found.")
except PermissionError:
    print("Error: Permission denied.")
except Exception as e:
    print("An error occurred:", e)

finally:
    print("File operation completed.")
