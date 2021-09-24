log_file = open("um-server-01.txt")


def sales_reports(log_file):    #Function for accessing data in 'um-server-01.txt'
    for line in log_file:       #Loops over each line in the file
        line = line.rstrip()    #Removes any trailing characters
        day = line[0:3]         #Declares variable for 'day'. Starts at index 0 and
                                #stops at 3.
        if day == "Mon":        #If the day is Tuesday, print that line of data
            print(line)


sales_reports(log_file)         #Calls the function 'sales_report'

