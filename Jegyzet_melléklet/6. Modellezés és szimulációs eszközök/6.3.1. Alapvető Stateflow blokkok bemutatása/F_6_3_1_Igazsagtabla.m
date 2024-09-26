function y = fcn(u)
aVarTruthTableCondition_1 = false;
aVarTruthTableCondition_2 = false;
 
% Example condition 1
aVarTruthTableCondition_1 = logical(u >= 0);
% Example condition 2
aVarTruthTableCondition_2 = logical(u^2 <= 1);
 
if (aVarTruthTableCondition_1 &&  
  aVarTruthTableCondition_2)
  		aFcnTruthTableAction_1();
elseif (~aVarTruthTableCondition_1 && 
    ~aVarTruthTableCondition_2)
  		aFcnTruthTableAction_1();
else % Default
  		aFcnTruthTableAction_2();
end

function aFcnTruthTableAction_1()
% Example action 1 called from D1 & D2 column in 
% condition table
y = u;
 
function aFcnTruthTableAction_2()
% Example action 2 called from D3 column in condition 
% table
y = 1 / u
