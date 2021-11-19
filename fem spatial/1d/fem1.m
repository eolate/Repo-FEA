function  fem1(N)

a=1/N; 
Kg=zeros(N+1,N+1); 
Ke=(1/a)*[1 -1; -1 1];


% for i=1:N;
%    
%     for k=1:2;
%        for l=1:2;
%            grow=i+k-1;
%            lrow=k;
%            gcol=i+l-1;
%            lcol=l;
%            Kg(grow, gcol)=Kg(grow, gcol)+Ke(lrow,lcol); 
%             
%         end   
%     end
% end  
for i=1:N
    C(i,:)=[i i+1];
end

for i=1:N
    
    for j=1:2
    for k=1:2
       Kg(C(i,j),C(i,k))=Kg(C(i,j),C(i,k))+Ke(j,k);
    end
    end

end

Kg(1,1)=1;
Kg(N+1,N+1)=1;
for h=2:N;
    Kg(1,h)=0;
    Kg(N+1,h)=0;
end  

f=(a/2)*[1;1]; 

fe=zeros(N+1,1); 

for i=2:N
    for p=1:2;
        ferow=i+p-1;
        frow=p;
        fe(ferow,1)=fe(ferow,1)+f(frow,1); 
    end
end

fe(1,1)=0;
fe(N+1,1)=0; 

fe;

u=Kg\fe;

y=0:1/N:1;
p=-0.5*y.^2+0.5*y;

plot(y,u',y,p,'r')





end