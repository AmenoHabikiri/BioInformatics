X = input()

for i in range(len(X)-2):
    temp = X[i:i+3]
    if(temp == "ATG"):
        for j in range(i+3, len(X)-2):
            if (X[j:j+3] == "TAA"):
                print(X[i:j+3])
                
print ("Hi");
