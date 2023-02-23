clf;
file='dialWav';
N=3500;
n=0:N-1;
[y,fs]=audioread('dialWav.wav');
t=n/fs;
a=0;
k=1;
l=1;%行数
f0=zeros(11,100);
mag0=zeros(11,100);
mag1=zeros(3501,11);%各个按键傅里叶分析数据

NN=80000;
nn=0:NN-1;
T=nn/fs;
Z=fft(y);
Z=fftshift(Z);
MAG=abs(Z)*2*10^3/NN;
F=(0:NN-1)*fs/NN;

while(k>=1&&k<=80000)
while(y(k)>0.02)
n=0:N-1;
y1=y(k:k+N);
z=fft(y1);
z=fftshift(z);
mag=abs(z)*2*10^3/N;
mag1(:,l)=mag;
an=angle(z)/pi*180;
f=(0:N)*fs/N;

i=1;
j=1;
while(i<=(N/2))
if(mag(i)>0.8)    %提取出需要的频率
    f0(l,j)=(N/2-i)*(80000/N)/10;
    mag0(l,j)=mag(i);%无用
    j=j+1;
end;
i=i+1;
end;

k=k+N;
l=l+1;
end;
k=k+1;
end;

p=1;
r=zeros(16,2);
r1=zeros(1,16);
vv=1;
mag2=mag1';
for l=1:10
    dd=0;
    for j=1:21
        if(f0(l,j)<=400)%删选出不是按键产生的频率
            dd=dd+1;
        end;
    end;
    if(dd==21)%将其删除
        f0(l,:)=[];
        mag2(l,:)=[];
    end;
end;
        
    
    

while(p>=1&&p<=10)
    q=1;
    while(q>=1&&q<=21)
        if(abs(f0(p,q)-697)<=20)
            r(1,1)=1;
            r(2,1)=1;
            r(3,1)=1;
            r(4,1)=1;
        end;
        if(abs(f0(p,q)-770)<=20)
            r(5,1)=1;
            r(6,1)=1;
            r(7,1)=1;
            r(8,1)=1;
        end;
        if(abs(f0(p,q)-852)<=20)
            r(9,1)=1;
            r(10,1)=1;
            r(11,1)=1;
            r(12,1)=1;
        end;
        if(abs(f0(p,q)-941)<=20)
            r(13,1)=1;
            r(14,1)=1;
            r(15,1)=1;
            r(16,1)=1;
        end;
        if(abs(f0(p,q)-1209)<=20)
            r(1,2)=1;
            r(5,2)=1;
            r(9,2)=1;
            r(13,2)=1;
        end;
        if(abs(f0(p,q)-1336)<=20)
            r(2,2)=1;
            r(6,2)=1;
            r(10,2)=1;
            r(14,2)=1;
        end;
        if(abs(f0(p,q)-1477)<=20)
            r(3,2)=1;
            r(7,2)=1;
            r(11,2)=1;
            r(15,2)=1;
        end;
        if(abs(f0(p,q)-1633)<=20)
            r(4,2)=1;
            r(8,2)=1;
            r(12,2)=1;
            r(16,2)=1;
        end;
        q=q+1;
    end;

for v=1:16;
    if(r(v,1)==1&&r(v,2)==1)
        r1(vv)=v;
    end;
end;
r=zeros(16,2);
vv=vv+1;
p=p+1;
end;

r2=r1;%电话号码
for iii=1:11%译码
    if(r1(iii)==4)
        r2(iii)=11;
    end;
    if(r1(iii)==5)
        r2(iii)=4;
    end;
    if(r1(iii)==6)
        r2(iii)=5;
    end;
    if(r1(iii)==7)
        r2(iii)=6;
    end;
    if(r1(iii)==8)
        r2(iii)=12;
    end;
    if(r1(iii)==9)
        r2(iii)=7;
    end;
    if(r1(iii)==10)
        r2(iii)=8;
    end;
    if(r1(iii)==11)
        r2(iii)=9;
    end;
    if(r1(iii)==12)
        r2(iii)=13;
    end;
    if(r1(iii)==13)
        r2(iii)=15;
    end;
    if(r1(iii)==14)
        r2(iii)=0;
    end;
    if(r1(iii)==15)
        r2(iii)=16;
    end;
    if(r1(iii)==16)
        r2(iii)=14;
    end;
end
for ii=1:11
        subplot(2,6,ii)
        if(ii<=10)
        bar(f,mag2(ii,:),0.3);
        title(['按键',num2str(r2(ii)),'的频谱图'])
        end;
        if(ii==11)
        bar(F,MAG,0.3);
         title('完整音频的频谱图')
        %title(['号码',num2str(r2(1)),num2str(r2(2)),num2str(r2(3)),num2str(r2(4)),num2str(r2(5)),num2str(r2(6)),num2str(r2(7)),num2str(r2(8)),num2str(r2(9)),num2str(r2(10)),num2str(r2(11)),num2str(r2(12)),num2str(r2(13)),num2str(r2(14)),num2str(r2(15)),num2str(r2(16)),'的频谱图'])
        end;
        axis([0,8000,0,2.5]);
end;