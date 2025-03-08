function opp_out=i_power(opp_in,r)

[m,n] = size(opp_in);
     for i=1 : m
        if opp_in(i,1)<=0 
              opp_out(i,1)=-1 *(abs(opp_in(i,1)) ^ r)  ;
              
        end 
        if opp_in(i,1)>0 
              opp_out(i,1)=opp_in(i,1)^ r;
        end         
     end



end