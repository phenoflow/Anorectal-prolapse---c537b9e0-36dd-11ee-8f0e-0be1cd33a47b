# Kuan V, Denaxas S, Gonzalez-Izquierdo A, Direk K, Bhatti O, Husain S, Sutaria S, Hingorani M, Nitsch D, Parisinos C, Lumbers T, Mathur R, Sofat R, Casas JP, Wong I, Hemingway H, Hingorani A, 2023.

import sys, csv, re

codes = [{"code":"103075.0","system":"med"},{"code":"12043.0","system":"med"},{"code":"12631.0","system":"med"},{"code":"19311.0","system":"med"},{"code":"24957.0","system":"med"},{"code":"28627.0","system":"med"},{"code":"35094.0","system":"med"},{"code":"36812.0","system":"med"},{"code":"37454.0","system":"med"},{"code":"43157.0","system":"med"},{"code":"43713.0","system":"med"},{"code":"51159.0","system":"med"},{"code":"51487.0","system":"med"},{"code":"52489.0","system":"med"},{"code":"53085.0","system":"med"},{"code":"55314.0","system":"med"},{"code":"59814.0","system":"med"},{"code":"60050.0","system":"med"},{"code":"61896.0","system":"med"},{"code":"65586.0","system":"med"},{"code":"65638.0","system":"med"},{"code":"66421.0","system":"med"},{"code":"68666.0","system":"med"},{"code":"7782.0","system":"med"},{"code":"8462.0","system":"med"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('anorectal-prolapse-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["anorectal-prolapse-procedure---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["anorectal-prolapse-procedure---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["anorectal-prolapse-procedure---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
