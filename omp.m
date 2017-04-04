% NAME - SHRAVIKA MITTAL
% ROLL NUMBER - 2016093
% PROBABILITY AND STATISTICS ASSIGNMENT - 3
clear all;
close all;
clc;
a=input('Which file data do train : ','s');
w=strcmp(a,'Housing');
x=strcmp(a,'WhiteWine');
y=strcmp(a,'RedWine');
z=strcmp(a,'ComputerHardware');
if(w==1)%for Housing data
    file='housing.xls';
    B=xlsread(file);
    [p,q]=size(B);
    s=round(0.7*p);%for training(70 percent data)
    A=B(1:s,1:end-1);
    [m,n]=size(A);
    x=zeros(n,1);
    k=input('Enter the total number of peak variales : ');%sparsity
    lambda=[];
    y=B(1:s,end);
    residual=y;
    if(k==3)
        for i=1:k
            c=transpose(A)*residual;% implementation of Orthogonal Matching Pursuit
            [q,l]=max(abs(c));
            lambda=[lambda l];
            xlambda=mldivide(A(:,lambda),y);
            residual=y-A(:,lambda)*xlambda;
        end
        xout=zeros(n,1);
        xout(lambda)=xlambda;
        stem(x);hold on;stem(xout,'r+'); 
        final=B(s+1:end,1:end-1)*xout;%for testing
        RMSE = sqrt(mean((B(s+1:end,end)-final).^2));
        disp(RMSE);
    elseif(k==5)
        for i=1:k
            c=transpose(A)*residual;% implementation of Orthogonal Matching Pursuit
            [q,l]=max(abs(c));
            lambda=[lambda l];
            xlambda=mldivide(A(:,lambda),y);
            residual=y-A(:,lambda)*xlambda;
        end
        xout=zeros(n,1);
        xout(lambda)=xlambda;
        stem(x);hold on;stem(xout,'r+'); 
        final=B(s+1:end,1:end-1)*xout;%for testing
        RMSE = sqrt(mean((B(s+1:end,end)-final).^2));
        disp(RMSE);
    end
elseif(x==1)%for White wine data
    file='Wine_data.xlsx';
    B=xlsread(file);
    [p,q]=size(B);
    s=round(0.7*p);%for training(70 percent data)
    A=B(1:s,1:end-1);
    [m,n]=size(A);
    x=zeros(n,1);
    k=input('Enter the total number of peak variales : ');%sparsity
    lambda=[];
    y=B(1:s,end);
    residual=y;
    if(k==3)
        for i=1:k
            c=transpose(A)*residual;% implementation of Orthogonal Matching Pursuit
            [q,l]=max(abs(c));
            lambda=[lambda l];
            xlambda=mldivide(A(:,lambda),y);
            residual=y-A(:,lambda)*xlambda;
        end
        xout=zeros(n,1);
        xout(lambda)=xlambda;
        stem(x);hold on;stem(xout,'r+'); 
        final=B(s+1:end,1:end-1)*xout;%for testing
        RMSE = sqrt(mean((B(s+1:end,end)-final).^2));
        disp(RMSE);
    elseif(k==5)
        for i=1:k
            c=transpose(A)*residual;% implementation of Orthogonal Matching Pursuit
            [q,l]=max(abs(c));
            lambda=[lambda l];
            xlambda=mldivide(A(:,lambda),y);
            residual=y-A(:,lambda)*xlambda;
        end
        xout=zeros(n,1);
        xout(lambda)=xlambda;
        stem(x);hold on;stem(xout,'r+'); 
        final=B(s+1:end,1:end-1)*xout;%for testing
        RMSE = sqrt(mean((B(s+1:end,end)-final).^2));
        disp(RMSE);
    end
elseif(y==1)% for Red wine data
    file='Wine_data2.xlsx';
    B=xlsread(file);
    [p,q]=size(B);
    s=round(0.7*p); %for training(70 percent data)
    A=B(1:s,1:end-1);
    [m,n]=size(A);  
    x=zeros(n,1);
    k=input('Enter the total number of peak variales : ');%sparsity
    lambda=[];
    y=B(1:s,end);
    residual=y;
    if(k==3)
        for i=1:k
            c=transpose(A)*residual;% implementation of Orthogonal Matching Pursuit
            [q,l]=max(abs(c));
            lambda=[lambda l];
            xlambda=mldivide(A(:,lambda),y);
            residual=y-A(:,lambda)*xlambda;
        end
        xout=zeros(n,1);
        xout(lambda)=xlambda;
        stem(x);hold on;stem(xout,'r+'); 
        final=B(s+1:end,1:end-1)*xout;%for testing
        RMSE = sqrt(mean((B(s+1:end,end)-final).^2));
        disp(RMSE);
    elseif(k==5)
        for i=1:k
            c=transpose(A)*residual;% implementation of Orthogonal Matching Pursuit
            [q,l]=max(abs(c));
            lambda=[lambda l];
            xlambda=mldivide(A(:,lambda),y);
            residual=y-A(:,lambda)*xlambda;
        end
        xout=zeros(n,1);
        xout(lambda)=xlambda;
        stem(x);hold on;stem(xout,'r+'); 
        final=B(s+1:end,1:end-1)*xout;%for testing
        RMSE = sqrt(mean((B(s+1:end,end)-final).^2));
        disp(RMSE);
    end
elseif(z==1)% for Computer Hardware data
    file='computer.xlsx';
    B=xlsread(file);
    [p,q]=size(B);
    s=round(0.7*p);%for training(70 percent data)
    A=B(1:s,3:end-2);
    [m,n]=size(A);
    x=zeros(n,1);
    k=input('Enter the total number of peak variales : ');%sparsity
    lambda=[];
    y=B(1:s,end-1);
    residual=y;
    if(k==3)
        for i=1:k
            c=transpose(A)*residual;% implementation of Orthogonal Matching Pursuit
            [q,l]=max(abs(c));
            lambda=[lambda l];
            xlambda=mldivide(A(:,lambda),y);
            residual=y-A(:,lambda)*xlambda;
        end
        xout=zeros(n,1);
        xout(lambda)=xlambda;
        stem(x);hold on;stem(xout,'r+'); 
        final=B(s+1:end,3:end-2)*xout;%for testing
        RMSE = sqrt(mean((B(s+1:end,end-1)-final).^2));
        disp(RMSE);
    elseif(k==5)
        for i=1:k
            c=transpose(A)*residual;% implementation of Orthogonal Matching Pursuit
            [q,l]=max(abs(c));
            lambda=[lambda l];
            xlambda=mldivide(A(:,lambda),y);
            residual=y-A(:,lambda)*xlambda;
        end
        xout=zeros(n,1);
        xout(lambda)=xlambda;
        stem(x);hold on;stem(xout,'r+'); 
        final=B(s+1:end,3:end-2)*xout;%for testing
        RMSE = sqrt(mean((B(s+1:end,end-1)-final).^2));
        disp(RMSE);
    end
end