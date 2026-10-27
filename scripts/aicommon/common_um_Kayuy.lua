function KAY_ApproachAct_Default(f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9)
    local f1_local0 = 1.8
    local f1_local1 = 5
    local f1_local2 = 50
    local f1_local3 = 0
    if f1_arg4 == -1 or f1_arg4 == nil then
        f1_arg4 = TARGET_ENE_0
    end
    if f1_arg5 == -1 or f1_arg5 == nil then
        f1_arg5 = 0
    end
    if f1_arg6 == -1 or f1_arg6 == nil then
        f1_arg6 = f1_local0
    end
    if f1_arg7 == -1 or f1_arg7 == nil then
        f1_arg7 = f1_local1
    end
    if f1_arg8 == -1 or f1_arg8 == nil then
        f1_arg8 = f1_local2
    end
    if f1_arg9 == -1 or f1_arg9 == nil then
        f1_arg9 = f1_local3
    end
    local f1_local4 = f1_arg1:GetDist(TARGET_ENE_0)
    local f1_local5 = false
    if f1_local4 < warkDist then
        f1_local5 = true
    elseif f1_local4 < runDist and f1_arg1:GetRandam_Int(1, 100) <= rateRunFar then
        f1_local5 = true
    end
    local f1_local6 = -1
    if f1_local5 == true and f1_arg1:GetRandam_Int(1, 100) <= rateGuard then
        f1_local6 = 9910
    end
    f1_arg2:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, f1_arg4, f1_arg5, TARGET_ENE_0, f1_local5, f1_local6)
    
end

function KAY_ApproachAct_Threshold(f2_arg0, f2_arg1, f2_arg2, f2_arg3, f2_arg4, f2_arg5, f2_arg6, f2_arg7, f2_arg8, f2_arg9)
    local f2_local0 = 3
    local f2_local1 = 50
    local f2_local2 = 100
    local f2_local3 = 50
    if f2_arg4 == -1 or f2_arg4 == nil then
        f2_arg4 = TARGET_ENE_0
    end
    if f2_arg5 == -1 or f2_arg5 == nil then
        f2_arg5 = 0
    end
    if f2_arg6 == -1 or f2_arg6 == nil then
        f2_arg6 = f2_local0
    end
    if f2_arg7 == -1 or f2_arg7 == nil then
        f2_arg7 = f2_local1
    end
    if f2_arg8 == -1 or f2_arg8 == nil then
        f2_arg8 = f2_local2
    end
    if f2_arg9 == -1 or f2_arg9 == nil then
        f2_arg9 = f2_local3
    end
    local f2_local4 = f2_arg1:GetDist(TARGET_ENE_0)
    local f2_local5 = true
    if f2_arg5 + f2_arg6 < f2_local4 then
        if f2_arg1:GetRandam_Int(1, 100) <= f2_arg8 then
            f2_local5 = false
        end
    elseif f2_arg1:GetRandam_Int(1, 100) <= f2_arg7 then
        f2_local5 = false
    end
    local f2_local6 = -1
    if f2_local5 == true and f2_arg1:GetRandam_Int(1, 100) <= f2_arg9 then
        f2_local6 = 9910
    end
    f2_arg2:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, f2_arg4, f2_arg5, TARGET_ENE_0, f2_local5, f2_local6)
    
end

function KAY_Select_ListIndex(f3_arg0, f3_arg1, f3_arg2, f3_arg3)
    local f3_local0 = 0
    for f3_local1 = 1, table.getn(f3_arg3), 1 do
        f3_local0 = f3_local0 + f3_arg3[f3_local1]
    end
    local f3_local1 = f3_arg1:GetRandam_Int(0, f3_local0)
    local f3_local2 = 0
    for f3_local3 = 1, table.getn(f3_arg3), 1 do
        f3_local2 = f3_arg3[f3_local3] + f3_local2
        if f3_local1 < f3_local2 and 0 < f3_arg3[f3_local3] then
            return f3_local3
        end
    end
    


end

function KAY_Dumy(f4_arg0, f4_arg1, f4_arg2)
    
end


