function refreshLooperView

global Lstate GUIhandles

set(GUIhandles.looper.repeats,'string',Lstate.reps)
set(GUIhandles.looper.randomflag,'value',Lstate.rand)
if isfield(Lstate,'blank')
    set(GUIhandles.looper.blankflag,'value',Lstate.blank)
    set(GUIhandles.looper.blankPeriod,'enable','on')
end

if isfield(Lstate,'blankPeriod')
    set(GUIhandles.looper.blankPeriod,'string',num2str(Lstate.blankPeriod))
end

set(GUIhandles.looper.formula,'string',Lstate.formula)

%First clear them
Nfields = 5;
for i = 1:Nfields
    eval(['symhandle = GUIhandles.looper.symbol' num2str(i) ';'])
    eval(['valhandle = GUIhandles.looper.valvec' num2str(i) ';'])
    set(symhandle,'string','')
    set(valhandle,'string','')    
end

%Now update
for i = 1:length(Lstate.param)
    
    eval(['symhandle = GUIhandles.looper.symbol' num2str(i) ';'])
    eval(['valhandle = GUIhandles.looper.valvec' num2str(i) ';'])

    set(symhandle,'string',Lstate.param{i}{1})
    set(valhandle,'string',Lstate.param{i}{2})

end


