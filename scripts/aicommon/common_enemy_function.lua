function EmagencyEscapeStep(f1_arg0, f1_arg1, f1_arg2)
    if (f1_arg1:IsActiveGoal(GOAL_EnemyBeforeAttack) or f1_arg1:IsActiveGoal(GOAL_EnemyAfterAttack) or f1_arg1:IsActiveGoal(GOAL_EnemyAfterAction)) and (f1_arg0.FindAttackDist == nil or f1_arg0.FindAttackDist ~= nil and f1_arg1:GetDist(TARGET_ENE_0) <= f1_arg0.FindAttackDist) then
        f1_arg2:ClearSubGoal()
        f1_arg2:AddSubGoal(GOAL_EnemyStepBLR, 2, 6)
    end
    
end

function GuardOnProbability(f2_arg0, f2_arg1, f2_arg2)
    if f2_arg0.GuardRateOnDamged == nil then
        f2_arg0.GuardRateOnDamged = 0
    end
    local f2_local0 = f2_arg1:GetIdTimer(8000)
    if f2_local0 == nil or f2_local0 <= 0 then
        f2_local0 = 100
    end
    local f2_local1 = nil
    f2_local1 = 5 - f2_local0
    if f2_local1 > 0 then
        f2_arg0.GuardRateOnDamged = f2_arg0.GuardRateOnDamged + f2_local1 * 10 / 2.5
        if f2_arg0.GuardRateOnDamged > 60 then
            f2_arg0.GuardRateOnDamged = 60
        end
    else
        f2_arg0.GuardRateOnDamged = 0
    end
    if f2_arg1:GetRandam_Float(0, 100) < f2_arg0.GuardRateOnDamged then
        f2_arg2:ClearSubGoal()
        f2_arg2:AddSubGoal(GOAL_COMMON_Guard, 1, 9910, TARGET_ENE_0, true, 1)
    end
    f2_arg1:StartIdTimer(8000)
    
end

function Interrupt_FindAttack_Default(f3_arg0, f3_arg1, f3_arg2)
    
end

function Update_FinishOnNoSubGoal(f4_arg0, f4_arg1, f4_arg2)
    if f4_arg2:GetSubGoalNum() <= 0 then
        f4_arg1:TurnTo(TARGET_SELF)
        return GOAL_RESULT_Success
    end
    return GOAL_RESULT_Continue
    
end

function Interrupt_FindAttack_Guard(f5_arg0, f5_arg1, f5_arg2)
    if f5_arg1:GetDist(TARGET_ENE_0) <= 3 then
        local f5_local0 = 1
        if f5_arg1:GetIdTimer(7000) < 3 then
            f5_local0 = 2
        end
        if f5_arg1:GetRandam_Float(0, 100) < 10 then
            f5_arg2:ClearSubGoal()
            f5_arg2:AddSubGoal(GOAL_COMMON_Guard, 1, 9910, TARGET_ENE_0, true, 1)
        end
        f5_arg1:StartIdTimer(7000)
    end
    
end

function Interrupt_GuardBreak_ClearSubGoal(f6_arg0, f6_arg1, f6_arg2)
    f6_arg2:ClearSubGoal()
    f6_arg1:TurnTo(TARGET_SELF)
    
end

function GetDefaultParam(f7_arg0, f7_arg1, f7_arg2, f7_arg3, f7_arg4)
    local f7_local0 = f7_arg2:GetParam(f7_arg3)
    if f7_local0 == nil then
        return f7_arg4
    else
        return f7_local0
    end
    
end

function GetDistPos(f8_arg0, f8_arg1, f8_arg2, f8_arg3)
    if f8_arg3 <= f8_arg1:GetDistParam(DIST_Near) then
        return 0
    elseif f8_arg3 <= f8_arg1:GetDistParam(DIST_Middle) then
        return 1
    elseif f8_arg3 <= f8_arg1:GetDistParam(DIST_Far) then
        return 2
    else
        return 3
    end
    
end

function GetAttackRateByDist(f9_arg0, f9_arg1, f9_arg2, f9_arg3, f9_arg4)
    local f9_local0 = 0
    if f9_arg4 == 0 then
        f9_local0 = 0
    elseif f9_arg4 == 1 then
        f9_local0 = 0
    elseif f9_arg4 == 2 then
        f9_local0 = 0
    elseif f9_arg4 == 3 then
        f9_local0 = 0
    end
    if f9_local0 < 0 then
        f9_local0 = 0
    end
    return f9_local0
    
end

function GetAttackIdOffset(f10_arg0, f10_arg1, f10_arg2, f10_arg3)
    local f10_local0 = nil
    if f10_arg1:HasSpecialEffectId(TARGET_SELF, 5404) then
        f10_arg3 = f10_arg3 - 1000000
        f10_local0 = 1000000
    elseif f10_arg1:HasSpecialEffectId(TARGET_SELF, 5405) then
        f10_arg3 = f10_arg3 - 2000000
        f10_local0 = 2000000
    elseif f10_arg1:HasSpecialEffectId(TARGET_SELF, 5406) then
        f10_arg3 = f10_arg3 - 3000000
        f10_local0 = 3000000
    elseif f10_arg1:HasSpecialEffectId(TARGET_SELF, 5407) then
        f10_arg3 = f10_arg3 - 4000000
        f10_local0 = 4000000
    else
        f10_local0 = 0
    end
    if f10_arg3 < 0 or f10_arg3 > 1000000 then
        f10_arg3 = 9999999
    end
    return f10_arg3, f10_local0
    
end

function IsValidEnemySelect(f11_arg0, f11_arg1, f11_arg2, f11_arg3, f11_arg4)
    if 0 < 0 then
        local f11_local0 = f11_arg1:GetDist(f11_arg4)
        local f11_local1 = GetDistPos(f11_arg0, f11_arg1, f11_arg2, f11_local0)
        if 0 < GetAttackRateByDist(f11_arg0, f11_arg1, f11_arg2, f11_arg3, f11_local1) and f11_arg1:IsOptimalAttackRangeH(TARGET_ENE_0, f11_arg3) then
            if not f11_arg1:IsOptimalAttackDist(f11_arg4, f11_arg3) then
            end
            do
                return true
            end
            if false then
                if f11_local0 < 0 then
                    return true
                elseif 0 < f11_local0 then
                    return true
                end
            end
        end
    end
    return false
    
end

function SelectDeriveAttack(f12_arg0, f12_arg1, f12_arg2, f12_arg3, f12_arg4, f12_arg5)
    local f12_local0 = f12_arg1:GetDist(f12_arg4)
    local f12_local1 = nil
    local f12_local2 = {}
    local f12_local3 = 0
    for f12_local4 = 1, 16, 1 do
        f12_local1 = 0
        if f12_local1 <= 0 then
            break
        end
        f12_local1, offset = GetAttackIdOffset(f12_arg0, f12_arg1, f12_arg2, f12_local1)
        print("[SELECT DERIVE]" .. "?h?????[" .. f12_local1 .. "]")
    end
    local f12_local4 = {}
    local f12_local5 = 0
    local f12_local6 = 0
    if f12_local3 == 0 then
        print("[SELECT ENEMY]" .. "<<????>> ???I????[???]")
        return 9999999
    elseif f12_local3 > 1 then
        for f12_local7 = 1, f12_local3, 1 do
            local f12_local10 = f12_arg1:GetAttackPassedTime(f12_local2[f12_local7])
            if f12_local10 <= 0 then
                f12_local10 = 0 * 2
            end
            f12_local10 = f12_local10 - 0
            if f12_local10 < 0 then
                f12_local10 = 1
            end
            print("[SELECT DERIVE]" .. "[" .. f12_local2[f12_local7] .. "]?@?o?????[" .. f12_local10 .. "]?@?I?????[?g[" .. 0 .. "]")
            f12_local4[f12_local7] = f12_local10 * 0
            f12_local5 = f12_local4[f12_local7] + f12_local5
        end
        if f12_local5 > 0 then
            local f12_local7 = f12_arg1:GetRandam_Float(0, f12_local5)
            local f12_local8 = 0
            for f12_local9 = 1, f12_local3, 1 do
                f12_local8 = f12_local8 + f12_local4[f12_local9]
                if f12_local7 <= f12_local8 then
                    print("[SELECT ENEMY]" .. "<<????>> ???I????[" .. f12_local2[f12_local9] .. "]")
                    return f12_local2[f12_local9]
                end
            end
        end

    else
        print("[SELECT ENEMY]" .. "<<????>> ???I????[" .. f12_local2[1] .. "]")
        return f12_local2[1]
    end
    return 9999999
    

end


