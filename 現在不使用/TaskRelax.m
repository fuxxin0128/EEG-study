if TaskStopper==0 
    set(t,'string','Relax!','color','c');        
    drawnow;
    D.queueOutputData(OutputSignal(3,:));
    D.startBackground();    
    TaskStopper=1;   
end
Signal = Buffer(1:Buffer_FreshRate,ch(4))...
            -Buffer(1:Buffer_FreshRate,ch(1))/6 ...
            -Buffer(1:Buffer_FreshRate,ch(2))/6 ...
            -Buffer(1:Buffer_FreshRate,ch(3))/6 ...
            -Buffer(1:Buffer_FreshRate,ch(5))/6 ...
            -Buffer(1:Buffer_FreshRate,ch(6))/6 ...
            -Buffer(1:Buffer_FreshRate,ch(7))/6;


