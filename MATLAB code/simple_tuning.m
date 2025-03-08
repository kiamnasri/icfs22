function fuzzyfis_output = simple_tuning(fuzzyfis,k)

numInputs=length(fuzzyfis.input);
numinputmfs=getfis(fuzzyfis,'numinputmfs');

if numInputs<1, error('System has no inputs.'); end

r=(30*k^3)+(37*k^2)+(52*k)+1;
r=r/40;

% middle of each input variable's range
inRange=getfis(fuzzyfis,'inRange');

 
   for i=1:numInputs
       for n=1 : numinputmfs(i)
    
        
             opp = fuzzyfis.input(i).mf(n).params(:);
             opp_out=i_normalize(opp,inRange(i,:));
             opp_out=i_power(opp_out,r);
             opp=i_denormalize(opp_out,inRange(i,:));
             
             fuzzyfis.input(i).mf(n).params(:)=opp;
       end
   end
   
  fuzzyfis_output= fuzzyfis;
end