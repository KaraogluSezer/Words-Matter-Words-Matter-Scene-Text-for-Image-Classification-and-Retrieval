function [comb,gen] = create_combSmN(final_path)

%   *****************************************
%   LAST VERSION 29.03.2018
%	Copyright by Sezer Karaoglu
%   *****************************************

comb={};
gen =[];
ct=1;
for mm=1:length(final_path)
   
    pth = final_path{mm};
    num = length(pth);
    
    if num<30
    
    if num>10
        num =10;
        dur =1;
    end    
        
    for ii=1:num
          
        if ii>1
    
            for gg=1:length(pth)+1-ii
            eleman = pth(gg:gg+ii-1);    
            comb{ct} = eleman;
            gen(ct)  = mm;
            ct = ct+1;    
            end
            
        else    
            
            for hh=1:num
            comb{ct} = pth(hh);
            gen(ct)  = mm;
            ct = ct+1;
            
            end
        
            end        
    end
    else
        dur =1;
    end
end
    
end