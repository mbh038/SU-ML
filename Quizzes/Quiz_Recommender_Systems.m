A=[1 2 3; 3 2 1;1 2 3;3 2 1;1 2 3]
B=[1 2 3 4 5;5 4 3 2 1;1 2 1 2 1]
R=zeros(5,5)
for i = 1:5
    for j= 1:5
        R(i,j)=randi(2)-1
    end
end


C=A*B;
tic
total=0;
for i=1:5
    for j=1:5
        if (R(i,j)==1)
            total=total+C(i,j);
        end
    end
end
total
toc

total1 = sum(sum((A * B) .* R)) % same as total

C = A * B;
tic
total2 = sum(C(R == 1)) % same as total
toc

C = (A * B) * R; total3 = sum(C(:)) % not the same
%total4 = sum(sum(A(R == 1) * B(R == 1)))