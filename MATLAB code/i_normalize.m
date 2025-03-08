function opp_out=i_normalize(opp_in,Range);
   
    [m,n] = size(opp_in);
     for i=1 : m
        if opp_in(i,1)<=0 
              opp_out(i,1)=opp_in(i,1)/ abs(Range(1)) ;
        end 
        if opp_in(i,1)>0 
              opp_out(i,1)=opp_in(i,1)/ Range(2) ;
        end         
     end
end