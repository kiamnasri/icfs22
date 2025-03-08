function out=lookup_fis(fis)


% Error checking
numInputs=length(fis.input);
numOutputs=length(fis.output);


x=[];
y=[];
z=[];

inputs=[1 2];
output=1;
grids=1; 

% If no reference input has been provided, let the reference input equal the
% middle of each input variable's range
inRange=getfis(fis,'inRange');

refInput=mean(inRange,2)';

% If no number of sample points, use 101
numofpoints=101;

xIndex=1; 
yIndex=2;

zIndex=output;
xGrids=1; 
yGrids=1;


% if yIndex is empty then xzFlag is true
    xzFlag=0;


% Prepare the input


    xRange=inRange(xIndex,1):xGrids:inRange(xIndex,2);
    yRange=inRange(yIndex,1):yGrids:inRange(yIndex,2);
    [x,y]=meshgrid(xRange,yRange);

    u=refInput(ones(numel(x),1),:);
    u(:,xIndex)=x(:);
    u(:,yIndex)=y(:);


% Evaluate the input
v=evalfis(u,fis,numofpoints);

% Prepare the output
%v=v(:,zIndex);
%z=reshape(v,size(x,1),size(x,2));
out=[u,v];

end
