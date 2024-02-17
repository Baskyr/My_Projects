A=[25 5 1;64 8 1;144 12 1]
k=A(1,:)
A(1,:)=A(3,:)
A(3,:)=k
B=[106.8;177.2;279.2]
k=B(1)
B(1)=B(3)
B(3)=k
AB=[A B]
n=length(A)
x=zeros(n,1)
m=input('πόσες επαναλήψεις(προτείνω πάνω απο 100): ')% αν είναι λιγότερες απο 100 δεν είναι πολύ σωστά τα αποτελέσματα 
for k=1:m
    for i=1:n
        s=0;
        for j=1:n
            if (j~=i)
                s=s+A(i,j)*x(j);
            end
        end
        x(i)=(B(i)-s)/A(i,i)
    end
end

disp('Επαλήθευση ')
xepalitheyshs=A\B