file = open("Cleaned_HPV_information_no_header.csv","r")
line = file.readline()
while(line):
    print("INSERT INTO genome_info VALUES(" + line.rstrip()+ ");")
    line= file.readline()
