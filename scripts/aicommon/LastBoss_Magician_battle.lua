RegisterTableGoal(GOAL_LastBoss_Magician_Battle, "LastBoss_Magician")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_LastBoss_Magician_Battle, true)

Goal.Initialize = function (f1_arg0, f1_arg1, f1_arg2, f1_arg3)
    
end

Goal.Activate = function (f2_arg0, f2_arg1, f2_arg2)
    Init_Pseudo_Global(f2_arg1, f2_arg2)
    f2_arg1:SetStringIndexedNumber("Dist_SideStep", 7)
    f2_arg1:SetStringIndexedNumber("Dist_BackStep", 7)
    local f2_local0 = {}
    local f2_local1 = {}
    local f2_local2 = {}
    Common_Clear_Param(f2_local0, f2_local1, f2_local2)
    local f2_local3 = f2_arg1:GetDist(TARGET_ENE_0)
    local f2_local4 = 1
    local f2_local5 = 1
    local f2_local6 = 1
    local f2_local7 = 1
    local f2_local8 = 1
    local f2_local9 = 1
    local f2_local10 = 1
    local f2_local11 = 1
    local f2_local12 = 1
    local f2_local13 = 1
    local f2_local14 = f2_arg1:GetHpRate(TARGET_SELF)
    if f2_local14 <= 0.3 then
        f2_local10 = 2
    else
        f2_local10 = 1
    end
    if f2_arg1:HasSpecialEffectId(TARGET_SELF, 103581000) then
        f2_local11 = 0
    else
        f2_local11 = 1
    end
    if f2_arg1:GetNumber(2) >= 150 then
        f2_local4 = f2_arg1:GetRandam_Int(100, 120)
        f2_local6 = 50 * f2_local10
    elseif f2_arg1:GetNumber(2) >= 100 then
        f2_local4 = f2_arg1:GetRandam_Int(90, 120)
        f2_local6 = 40 * f2_local10
    elseif f2_arg1:GetNumber(2) >= 75 then
        f2_local4 = f2_arg1:GetRandam_Int(60, 120)
        f2_local6 = 30 * f2_local10
    elseif f2_arg1:GetNumber(2) >= 50 then
        f2_local4 = f2_arg1:GetRandam_Int(10, 110)
        f2_local6 = 10 * f2_local10
    else
        f2_local4 = f2_arg1:GetRandam_Int(1, 10)
        f2_local6 = 0
    end
    if f2_arg1:HasSpecialEffectId(TARGET_SELF, 12118) or f2_arg1:HasSpecialEffectId(TARGET_SELF, 12116) or f2_arg1:HasSpecialEffectId(TARGET_SELF, 12117) or f2_arg1:HasSpecialEffectId(TARGET_SELF, 12120) then
        f2_local5 = 0
    else
        f2_local5 = 1
    end
    if f2_arg1:HasSpecialEffectId(TARGET_SELF, 12120) then
        f2_local7 = 1.5
        f2_local8 = 1
        f2_local9 = 2
    else
        f2_local7 = 1
        f2_local8 = 1.7
        f2_local9 = 1
    end
    if f2_arg1:HasSpecialEffectId(TARGET_SELF, 12125) then
        f2_local12 = 1
    else
        f2_local12 = 20
    end
    if f2_arg1:HasSpecialEffectId(TARGET_SELF, 12126) then
        f2_local13 = 1
    else
        f2_local13 = 20
    end
    if f2_local4 >= 100 then
        f2_local0[30] = 100 * f2_local7
        f2_local0[31] = 100 * f2_local8 * f2_local12
        f2_local0[32] = 100 * f2_local9 * f2_local13
    elseif f2_local3 >= 15 then
        f2_local0[1] = 40
        f2_local0[2] = 10
        f2_local0[3] = 30 * f2_local5
        f2_local0[4] = 0 * f2_local11
        f2_local0[5] = 20 * f2_local6 * f2_local11
    elseif f2_local3 >= 10 then
        f2_local0[1] = 20
        f2_local0[2] = 20
        f2_local0[3] = 40 * f2_local5
        f2_local0[4] = 0 * f2_local11
        f2_local0[5] = 20 * f2_local6 * f2_local11
    elseif f2_local3 >= 5 then
        f2_local0[1] = 10
        f2_local0[2] = 30
        f2_local0[3] = 45 * f2_local5
        f2_local0[4] = 5 * f2_local11
        f2_local0[5] = 10 * f2_local6 * f2_local11
    else
        f2_local0[1] = 5
        f2_local0[2] = 15
        f2_local0[3] = 45 * f2_local5
        f2_local0[4] = 25 * f2_local11
        f2_local0[5] = 10 * f2_local6 * f2_local11
    end
    f2_local0[3] = SetCoolTime(f2_arg1, f2_arg2, 3003, 30, f2_local0[3], 0)
    f2_local0[4] = SetCoolTime(f2_arg1, f2_arg2, 3004, 8, f2_local0[4], 0)
    f2_local0[5] = SetCoolTime(f2_arg1, f2_arg2, 3009, 20, f2_local0[5], 0)
    f2_local1[1] = REGIST_FUNC(f2_arg1, f2_arg2, LastBoss_Magician_Act01)
    f2_local1[2] = REGIST_FUNC(f2_arg1, f2_arg2, LastBoss_Magician_Act02)
    f2_local1[3] = REGIST_FUNC(f2_arg1, f2_arg2, LastBoss_Magician_Act03)
    f2_local1[4] = REGIST_FUNC(f2_arg1, f2_arg2, LastBoss_Magician_Act04)
    f2_local1[5] = REGIST_FUNC(f2_arg1, f2_arg2, LastBoss_Magician_Act05)
    f2_local1[20] = REGIST_FUNC(f2_arg1, f2_arg2, LastBoss_Magician_Act20)
    f2_local1[30] = REGIST_FUNC(f2_arg1, f2_arg2, LastBoss_Magician_Act30)
    f2_local1[31] = REGIST_FUNC(f2_arg1, f2_arg2, LastBoss_Magician_Act31)
    f2_local1[32] = REGIST_FUNC(f2_arg1, f2_arg2, LastBoss_Magician_Act32)
    f2_local1[33] = REGIST_FUNC(f2_arg1, f2_arg2, LastBoss_Magician_Act33)
    local f2_local15 = REGIST_FUNC(f2_arg1, f2_arg2, LastBoss528000_ActAfter_AdjustSpace)
    Common_Battle_Activate(f2_arg1, f2_arg2, f2_local0, f2_local1, f2_local15, f2_local2)
    
end

function LastBoss_Magician_Act01(f3_arg0, f3_arg1, f3_arg2)
    local f3_local0 = f3_arg0:GetDist(TARGET_ENE_0)
    local f3_local1 = 30 - f3_arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local2 = 30 - f3_arg0:GetMapHitRadius(TARGET_SELF) + 5
    local f3_local3 = 999
    local f3_local4 = 100
    local f3_local5 = 0
    local f3_local6 = 3
    local f3_local7 = 5
    Approach_Act_Flex(f3_arg0, f3_arg1, f3_local1, f3_local2, f3_local3, f3_local4, f3_local5, f3_local6, f3_local7)
    local f3_local8 = 100 - f3_arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local9 = 0
    local f3_local10 = 0
    local f3_local11 = f3_arg0:GetRandam_Int(1, 100)
    local f3_local12 = f3_arg0:GetRandam_Int(1, 100)
    local f3_local13 = 1
    local f3_local14 = 1
    if f3_arg0:HasSpecialEffectId(TARGET_SELF, 103581000) then
        f3_local13 = 10
        f3_local14 = 0
    else
        f3_local13 = 1
        f3_local14 = 1
    end
    if f3_local0 <= 12 - f3_arg0:GetMapHitRadius(TARGET_SELF) then
        if f3_local11 <= 30 then
            f3_arg0:SetNumber(2, f3_arg0:GetNumber(2) + 8 * f3_local13)
            f3_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, f3_local8, f3_local9, f3_local10)
        else
            f3_arg0:SetNumber(2, f3_arg0:GetNumber(2) + 15 * f3_local13)
            if f3_local12 <= 30 then
                f3_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3000, TARGET_ENE_0, 30 - f3_arg0:GetMapHitRadius(TARGET_SELF))
                f3_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3000, TARGET_ENE_0, f3_local8)
            else
                f3_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3000, TARGET_ENE_0, 12 - f3_arg0:GetMapHitRadius(TARGET_SELF), f3_local9, f3_local10)
                f3_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, f3_local8)
            end
        end
    elseif f3_local11 <= 30 then
        f3_arg0:SetNumber(2, f3_arg0:GetNumber(2) + 8 * f3_local13)
        f3_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, f3_local8, f3_local9, f3_local10)
    else
        f3_arg0:SetNumber(2, f3_arg0:GetNumber(2) + 15 * f3_local13)
        f3_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3000, TARGET_ENE_0, 30 - f3_arg0:GetMapHitRadius(TARGET_SELF))
        f3_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3000, TARGET_ENE_0, f3_local8)
    end
    GetWellSpace_Odds = 100 * f3_local14
    return GetWellSpace_Odds
    
end

function LastBoss_Magician_Act02(f4_arg0, f4_arg1, f4_arg2)
    local f4_local0 = f4_arg0:GetDist(TARGET_ENE_0)
    local f4_local1 = 12 - f4_arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local2 = 12 - f4_arg0:GetMapHitRadius(TARGET_SELF) + 4
    local f4_local3 = 999
    local f4_local4 = 100
    local f4_local5 = 0
    local f4_local6 = 3
    local f4_local7 = 5
    Approach_Act_Flex(f4_arg0, f4_arg1, f4_local1, f4_local2, f4_local3, f4_local4, f4_local5, f4_local6, f4_local7)
    local f4_local8 = 100 - f4_arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local9 = 0
    local f4_local10 = 0
    local f4_local11 = f4_arg0:GetRandam_Int(1, 100)
    local f4_local12 = f4_arg0:GetRandam_Int(1, 100)
    local f4_local13 = 1
    local f4_local14 = 1
    if f4_arg0:HasSpecialEffectId(TARGET_SELF, 103581000) then
        f4_local13 = 10
        f4_local14 = 0
    else
        f4_local13 = 1
        f4_local14 = 1
    end
    if f4_local0 <= 3 then
        f4_arg0:SetNumber(2, f4_arg0:GetNumber(2) + 8 * f4_local13)
        f4_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 6001, TARGET_ENE_0, 12 - f4_arg0:GetMapHitRadius(TARGET_SELF), f4_local9, f4_local10)
        f4_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, f4_local8)
    elseif f4_local0 <= 10 then
        if f4_local11 <= 65 then
            f4_arg0:SetNumber(2, f4_arg0:GetNumber(2) + 8 * f4_local13)
            f4_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3001, TARGET_ENE_0, f4_local8, f4_local9, f4_local10)
        else
            f4_arg0:SetNumber(2, f4_arg0:GetNumber(2) + 15 * f4_local13)
            f4_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3001, TARGET_ENE_0, 12 - f4_arg0:GetMapHitRadius(TARGET_SELF), f4_local9, f4_local10)
            f4_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, f4_local8)
        end
    elseif f4_local11 <= 30 then
        f4_arg0:SetNumber(2, f4_arg0:GetNumber(2) + 8 * f4_local13)
        f4_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3001, TARGET_ENE_0, f4_local8, f4_local9, f4_local10)
    else
        f4_arg0:SetNumber(2, f4_arg0:GetNumber(2) + 15 * f4_local13)
        if f4_local12 <= 40 then
            f4_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3001, TARGET_ENE_0, 12 - f4_arg0:GetMapHitRadius(TARGET_SELF), f4_local9, f4_local10)
            f4_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, f4_local8)
        else
            f4_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3001, TARGET_ENE_0, 30 - f4_arg0:GetMapHitRadius(TARGET_SELF), f4_local9, f4_local10)
            f4_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3000, TARGET_ENE_0, f4_local8)
        end
    end
    GetWellSpace_Odds = 100 * f4_local14
    return GetWellSpace_Odds
    
end

function LastBoss_Magician_Act03(f5_arg0, f5_arg1, f5_arg2)
    local f5_local0 = 100 - f5_arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local1 = 0
    local f5_local2 = 0
    local f5_local3 = f5_arg0:GetRandam_Int(1, 100)
    local f5_local4 = f5_arg0:GetRandam_Int(1, 100)
    local f5_local5 = 1
    local f5_local6 = 1
    if f5_arg0:HasSpecialEffectId(TARGET_SELF, 103581000) then
        f5_local5 = 10
        f5_local6 = 0
    else
        f5_local5 = 1
        f5_local6 = 1
    end
    f5_arg0:SetNumber(2, f5_arg0:GetNumber(2) + 30 * f5_local5)
    f5_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3003, TARGET_ENE_0, f5_local0, f5_local1, f5_local2)
    GetWellSpace_Odds = 100 * f5_local6
    return GetWellSpace_Odds
    
end

function LastBoss_Magician_Act04(f6_arg0, f6_arg1, f6_arg2)
    local f6_local0 = f6_arg0:GetDist(TARGET_ENE_0)
    local f6_local1 = 5 - f6_arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local2 = 5 - f6_arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f6_local3 = 999
    local f6_local4 = 100
    local f6_local5 = 0
    local f6_local6 = 3
    local f6_local7 = 5
    Approach_Act_Flex(f6_arg0, f6_arg1, f6_local1, f6_local2, f6_local3, f6_local4, f6_local5, f6_local6, f6_local7)
    local f6_local8 = 100 - f6_arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local9 = 0
    local f6_local10 = 0
    local f6_local11 = f6_arg0:GetRandam_Int(1, 100)
    local f6_local12 = f6_arg0:GetRandam_Int(1, 100)
    local f6_local13 = 1
    local f6_local14 = 1
    if f6_arg0:HasSpecialEffectId(TARGET_SELF, 103581000) then
        f6_local13 = 10
        f6_local14 = 0
    else
        f6_local13 = 1
        f6_local14 = 1
    end
    if f6_local0 <= 2 then
        f6_arg0:SetNumber(2, f6_arg0:GetNumber(2) + 8 * f6_local13)
        f6_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 6001, TARGET_ENE_0, 12 - f6_arg0:GetMapHitRadius(TARGET_SELF), f6_local9, f6_local10)
        f6_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3004, TARGET_ENE_0, f6_local8)
    elseif f6_local11 <= 40 then
        f6_arg0:SetNumber(2, f6_arg0:GetNumber(2) + 8 * f6_local13)
        f6_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, f6_local8, f6_local9, f6_local10)
    else
        f6_arg0:SetNumber(2, f6_arg0:GetNumber(2) + 15 * f6_local13)
        if f6_local12 <= 40 then
            f6_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3004, TARGET_ENE_0, 30 - f6_arg0:GetMapHitRadius(TARGET_SELF), f6_local9, f6_local10)
            f6_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3000, TARGET_ENE_0, f6_local8)
        else
            f6_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3004, TARGET_ENE_0, 5 - f6_arg0:GetMapHitRadius(TARGET_SELF))
            f6_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3004, TARGET_ENE_0, f6_local8)
        end
    end
    GetWellSpace_Odds = 100 * f6_local14
    return GetWellSpace_Odds
    
end

function LastBoss_Magician_Act05(f7_arg0, f7_arg1, f7_arg2)
    local f7_local0 = f7_arg0:GetDist(TARGET_ENE_0)
    local f7_local1 = 0
    local f7_local2 = 0
    local f7_local3 = f7_arg0:GetRandam_Int(1, 100)
    local f7_local4 = f7_arg0:GetRandam_Int(1, 100)
    local f7_local5 = 1
    local f7_local6 = 1
    if f7_arg0:HasSpecialEffectId(TARGET_SELF, 103581000) then
        f7_local5 = 10
        f7_local6 = 0
    else
        f7_local5 = 1
        f7_local6 = 1
    end
    if f7_local0 <= 5 - f7_arg0:GetMapHitRadius(TARGET_SELF) then
        f7_arg0:SetNumber(2, f7_arg0:GetNumber(2) + 40 * f7_local5)
        f7_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3004, TARGET_ENE_0, 100 - f7_arg0:GetMapHitRadius(TARGET_SELF), f7_local1, f7_local2)
        f7_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3009, TARGET_ENE_0, SuccessDist)
    else
        f7_arg0:SetNumber(2, f7_arg0:GetNumber(2) + 40 * f7_local5)
        f7_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3009, TARGET_ENE_0, SuccessDist, f7_local1, f7_local2)
    end
    GetWellSpace_Odds = 100 * f7_local6
    return GetWellSpace_Odds
    
end

function LastBoss_Magician_Act30(f8_arg0, f8_arg1, f8_arg2)
    local f8_local0 = 100 - f8_arg0:GetMapHitRadius(TARGET_SELF)
    local f8_local1 = 0
    local f8_local2 = 0
    local f8_local3 = f8_arg0:GetRandam_Int(1, 100)
    local f8_local4 = f8_arg0:GetRandam_Int(1, 100)
    f8_arg0:SetNumber(2, 0)
    f8_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 20000, TARGET_ENE_0, f8_local0, f8_local1, f8_local2)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function LastBoss_Magician_Act31(f9_arg0, f9_arg1, f9_arg2)
    local f9_local0 = 100 - f9_arg0:GetMapHitRadius(TARGET_SELF)
    local f9_local1 = 0
    local f9_local2 = 0
    local f9_local3 = f9_arg0:GetRandam_Int(1, 100)
    local f9_local4 = f9_arg0:GetRandam_Int(1, 100)
    f9_arg0:SetNumber(2, 0)
    f9_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 20001, TARGET_ENE_0, f9_local0, f9_local1, f9_local2)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function LastBoss_Magician_Act32(f10_arg0, f10_arg1, f10_arg2)
    local f10_local0 = 100 - f10_arg0:GetMapHitRadius(TARGET_SELF)
    local f10_local1 = 0
    local f10_local2 = 0
    local f10_local3 = f10_arg0:GetRandam_Int(1, 100)
    local f10_local4 = f10_arg0:GetRandam_Int(1, 100)
    f10_arg0:SetNumber(2, 0)
    f10_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 20002, TARGET_ENE_0, f10_local0, f10_local1, f10_local2)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function LastBoss_Magician_Act33(f11_arg0, f11_arg1, f11_arg2)
    local f11_local0 = 100 - f11_arg0:GetMapHitRadius(TARGET_SELF)
    local f11_local1 = 0
    local f11_local2 = 0
    local f11_local3 = f11_arg0:GetRandam_Int(1, 100)
    local f11_local4 = f11_arg0:GetRandam_Int(1, 100)
    f11_arg0:SetNumber(2, 0)
    f11_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 20004, TARGET_ENE_0, f11_local0, f11_local1, f11_local2)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function LastBoss528000_ActAfter_AdjustSpace(f12_arg0, f12_arg1, f12_arg2)
    f12_arg1:AddSubGoal(GOAL_LastBoss_AfterAttackAct, 10)
    
end

Goal.Update = function (f13_arg0, f13_arg1, f13_arg2)
    return Update_Default_NoSubGoal(f13_arg0, f13_arg1, f13_arg2)
    
end

Goal.Terminate = function (f14_arg0, f14_arg1, f14_arg2)
    
end

Goal.Interrupt = function (f15_arg0, f15_arg1, f15_arg2)
    local f15_local0 = f15_arg1:GetDist(TARGET_ENE_0)
    local f15_local1 = f15_arg1:GetRandam_Int(1, 100)
    local f15_local2 = 1
    if f15_arg1:HasSpecialEffectId(TARGET_SELF, 103581000) then
        f15_local2 = 0
    else
        f15_local2 = 1
    end
    if f15_arg1:IsInterupt(INTERUPT_Shoot) then
        if f15_local0 >= 15 and f15_local1 <= 50 and f15_local2 >= 1 then
            f15_arg1:SetNumber(2, f15_arg1:GetNumber(2) + 8)
            f15_arg2:ClearSubGoal()
            f15_arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 2, 3000, TARGET_ENE_0, 20, 0, 0)
            return true
        elseif f15_local0 >= 5 and f15_local1 <= 40 and f15_local2 >= 1 then
            f15_arg1:SetNumber(2, f15_arg1:GetNumber(2) + 8)
            f15_arg2:ClearSubGoal()
            f15_arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 2, 3001, TARGET_ENE_0, 20, 0, 0)
            return true
        elseif f15_local0 >= 2 and f15_local1 <= 50 and f15_local2 >= 1 then
            f15_arg1:SetNumber(2, f15_arg1:GetNumber(2) + 8)
            f15_arg2:ClearSubGoal()
            f15_arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 2, 3004, TARGET_ENE_0, 20, 0, 0)
            return true
        else
        end
    end
    return false
    
end


