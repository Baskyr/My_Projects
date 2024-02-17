A=[25 5 1;64 8 1;144 12 1]
B=[106.8;177.2;279.2]
AB=[A B]
n=length(A)
for i=1:n-1
    r=AB(i+1:n,i)/AB(i,i)
    AB(i+1:n,:)=AB(i+1:n,:)-r*AB(i,:)
end
    
for i=n:-1:1
    x(i)=(AB(i,end)-AB(i,i+1:n)*x(i+1:n))/AB(i,i)
end
    
    
    
    
    
    
    
    