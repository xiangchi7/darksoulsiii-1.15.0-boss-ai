RegisterTableGoal(GOAL_LastBoss_CurvedBlade_Battle, "LastBoss_CurvedBlade")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_LastBoss_CurvedBlade_Battle, true)

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
    local f2_local12 = f2_arg1:GetHpRate(TARGET_SELF)
    if f2_arg1:GetNumber(2) >= 150 then
        f2_local4 = f2_arg1:GetRandam_Int(100, 120)
        f2_local6 = 20
    elseif f2_arg1:GetNumber(2) >= 100 then
        f2_local4 = f2_arg1:GetRandam_Int(90, 120)
        f2_local6 = 10
    elseif f2_arg1:GetNumber(2) >= 75 then
        f2_local4 = f2_arg1:GetRandam_Int(60, 120)
        f2_local6 = 5
    elseif f2_arg1:GetNumber(2) >= 50 then
        f2_local4 = f2_arg1:GetRandam_Int(10, 110)
        f2_local6 = 2
    else
        f2_local4 = f2_arg1:GetRandam_Int(1, 10)
        f2_local6 = 1
    end
    if f2_arg1:HasSpecialEffectId(TARGET_SELF, 12118) or f2_arg1:HasSpecialEffectId(TARGET_SELF, 12116) or f2_arg1:HasSpecialEffectId(TARGET_SELF, 12117) or f2_arg1:HasSpecialEffectId(TARGET_SELF, 12120) then
        f2_local5 = 0
    else
        f2_local5 = 1
    end
    if f2_arg1:HasSpecialEffectId(TARGET_SELF, 12117) then
        f2_local7 = 2.5
        f2_local8 = 1
        f2_local9 = 0.5
    else
        f2_local7 = 1.7
        f2_local8 = 1
        f2_local9 = 1
    end
    if f2_arg1:HasSpecialEffectId(TARGET_SELF, 12125) then
        f2_local10 = 1
    else
        f2_local10 = 20
    end
    if f2_arg1:HasSpecialEffectId(TARGET_SELF, 12127) then
        f2_local11 = 1
    else
        f2_local11 = 20
    end
    if f2_local4 >= 100 then
        f2_local0[30] = 100 * f2_local7
        f2_local0[31] = 100 * f2_local8 * f2_local10
        f2_local0[33] = 100 * f2_local9 * f2_local11
    elseif f2_local3 >= 15 then
        f2_local0[1] = 5
        f2_local0[2] = 10
        f2_local0[3] = 10
        f2_local0[4] = 0
        f2_local0[5] = 0
        f2_local0[7] = 0
        f2_local0[6] = 20
        f2_local0[8] = 0
        f2_local0[11] = 20 * f2_local6 / 3
        f2_local0[9] = 0
        f2_local0[10] = 20
        f2_local0[12] = 0
        f2_local0[13] = 15 * f2_local5 * f2_local6
    elseif f2_local3 >= 8 then
        f2_local0[1] = 10
        f2_local0[2] = 10
        f2_local0[3] = 15
        f2_local0[4] = 0
        f2_local0[5] = 0
        f2_local0[7] = 0
        f2_local0[6] = 15
        f2_local0[8] = 0
        f2_local0[11] = 15 * f2_local6 / 3
        f2_local0[9] = 0
        f2_local0[10] = 20
        f2_local0[12] = 0
        f2_local0[13] = 15 * f2_local5 * f2_local6
    elseif f2_local3 >= 5 then
        f2_local0[1] = 10
        f2_local0[2] = 10
        f2_local0[3] = 5
        f2_local0[4] = 0
        f2_local0[5] = 0
        f2_local0[7] = 0
        f2_local0[6] = 20
        f2_local0[8] = 0
        f2_local0[11] = 15 * f2_local6 / 3
        f2_local0[9] = 0
        f2_local0[10] = 10
        f2_local0[12] = 20
        f2_local0[13] = 10 * f2_local5 * f2_local6
    elseif f2_local3 >= 2 then
        f2_local0[1] = 10
        f2_local0[2] = 15
        f2_local0[3] = 10
        f2_local0[4] = 8
        f2_local0[5] = 7
        f2_local0[7] = 0
        f2_local0[6] = 10
        f2_local0[8] = 5
        f2_local0[11] = 10
        f2_local0[9] = 0
        f2_local0[10] = 0
        f2_local0[12] = 15
        f2_local0[13] = 10 * f2_local5 * f2_local6
    else
        f2_local0[1] = 10
        f2_local0[2] = 15
        f2_local0[3] = 5
        f2_local0[4] = 7
        f2_local0[5] = 8
        f2_local0[7] = 15
        f2_local0[6] = 0
        f2_local0[8] = 10
        f2_local0[11] = 0
        f2_local0[9] = 20
        f2_local0[10] = 0
        f2_local0[12] = 0
        f2_local0[13] = 10 * f2_local5 * f2_local6
    end
    f2_local0[12] = SetCoolTime(f2_arg1, f2_arg2, 3023, 30, f2_local0[12], 0)
    f2_local0[13] = SetCoolTime(f2_arg1, f2_arg2, 3025, 30, f2_local0[13], 0)
    f2_local1[1] = REGIST_FUNC(f2_arg1, f2_arg2, LastBoss_CurvedBlade_Act01)
    f2_local1[2] = REGIST_FUNC(f2_arg1, f2_arg2, LastBoss_CurvedBlade_Act02)
    f2_local1[3] = REGIST_FUNC(f2_arg1, f2_arg2, LastBoss_CurvedBlade_Act03)
    f2_local1[4] = REGIST_FUNC(f2_arg1, f2_arg2, LastBoss_CurvedBlade_Act04)
    f2_local1[5] = REGIST_FUNC(f2_arg1, f2_arg2, LastBoss_CurvedBlade_Act05)
    f2_local1[6] = REGIST_FUNC(f2_arg1, f2_arg2, LastBoss_CurvedBlade_Act06)
    f2_local1[7] = REGIST_FUNC(f2_arg1, f2_arg2, LastBoss_CurvedBlade_Act07)
    f2_local1[8] = REGIST_FUNC(f2_arg1, f2_arg2, LastBoss_CurvedBlade_Act08)
    f2_local1[9] = REGIST_FUNC(f2_arg1, f2_arg2, LastBoss_CurvedBlade_Act09)
    f2_local1[10] = REGIST_FUNC(f2_arg1, f2_arg2, LastBoss_CurvedBlade_Act10)
    f2_local1[11] = REGIST_FUNC(f2_arg1, f2_arg2, LastBoss_CurvedBlade_Act11)
    f2_local1[12] = REGIST_FUNC(f2_arg1, f2_arg2, LastBoss_CurvedBlade_Act12)
    f2_local1[13] = REGIST_FUNC(f2_arg1, f2_arg2, LastBoss_CurvedBlade_Act13)
    f2_local1[30] = REGIST_FUNC(f2_arg1, f2_arg2, LastBoss_CurvedBlade_Act30)
    f2_local1[31] = REGIST_FUNC(f2_arg1, f2_arg2, LastBoss_CurvedBlade_Act31)
    f2_local1[32] = REGIST_FUNC(f2_arg1, f2_arg2, LastBoss_CurvedBlade_Act32)
    f2_local1[33] = REGIST_FUNC(f2_arg1, f2_arg2, LastBoss_CurvedBlade_Act33)
    local f2_local13 = REGIST_FUNC(f2_arg1, f2_arg2, LastBoss528000_ActAfter_AdjustSpace)
    Common_Battle_Activate(f2_arg1, f2_arg2, f2_local0, f2_local1, f2_local13, f2_local2)
    
end

function LastBoss_CurvedBlade_Act01(f3_arg0, f3_arg1, f3_arg2)
    local f3_local0 = f3_arg0:GetDist(TARGET_ENE_0)
    local f3_local1 = 4 - f3_arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local2 = 4 - f3_arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local3 = 999
    local f3_local4 = 100
    local f3_local5 = 0
    local f3_local6 = 3
    local f3_local7 = 5
    Approach_Act_Flex(f3_arg0, f3_arg1, f3_local1, f3_local2, f3_local3, f3_local4, f3_local5, f3_local6, f3_local7)
    local f3_local8 = 20 - f3_arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local9 = 0
    local f3_local10 = 0
    local f3_local11 = f3_arg0:GetRandam_Int(1, 100)
    local f3_local12 = f3_arg0:GetRandam_Int(1, 100)
    if f3_local11 <= 0 then
        f3_arg0:SetNumber(2, f3_arg0:GetNumber(2) + 4)
        f3_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, f3_local8, f3_local9, f3_local10)
    elseif f3_local11 <= 50 then
        f3_arg0:SetNumber(2, f3_arg0:GetNumber(2) + 8)
        if f3_local12 <= 30 then
            f3_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3000, TARGET_ENE_0, 2 - f3_arg0:GetMapHitRadius(TARGET_SELF), f3_local9, f3_local10)
            f3_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3011, TARGET_ENE_0, f3_local8)
        else
            f3_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3000, TARGET_ENE_0, 4 - f3_arg0:GetMapHitRadius(TARGET_SELF), f3_local9, f3_local10)
            f3_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3012, TARGET_ENE_0, f3_local8)
        end
    elseif f3_local11 <= 80 then
        f3_arg0:SetNumber(2, f3_arg0:GetNumber(2) + 12)
        if f3_local12 <= 30 then
            f3_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3000, TARGET_ENE_0, 4.5 - f3_arg0:GetMapHitRadius(TARGET_SELF), f3_local9, f3_local10)
            f3_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3002, TARGET_ENE_0, 2 - f3_arg0:GetMapHitRadius(TARGET_SELF))
            f3_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3011, TARGET_ENE_0, f3_local8)
        else
            f3_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3000, TARGET_ENE_0, 4.5 - f3_arg0:GetMapHitRadius(TARGET_SELF), f3_local9, f3_local10)
            f3_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3002, TARGET_ENE_0, 4.5 - f3_arg0:GetMapHitRadius(TARGET_SELF))
            f3_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3010, TARGET_ENE_0, f3_local8)
        end
    else
        f3_arg0:SetNumber(2, f3_arg0:GetNumber(2) + 16)
        if f3_local12 <= 40 then
            f3_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3000, TARGET_ENE_0, 4.5 - f3_arg0:GetMapHitRadius(TARGET_SELF), f3_local9, f3_local10)
            f3_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3002, TARGET_ENE_0, 4 - f3_arg0:GetMapHitRadius(TARGET_SELF))
            f3_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3000, TARGET_ENE_0, 4 - f3_arg0:GetMapHitRadius(TARGET_SELF))
            f3_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3012, TARGET_ENE_0, f3_local8)
        else
            f3_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3000, TARGET_ENE_0, 4.5 - f3_arg0:GetMapHitRadius(TARGET_SELF), f3_local9, f3_local10)
            f3_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3002, TARGET_ENE_0, 4 - f3_arg0:GetMapHitRadius(TARGET_SELF))
            f3_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3000, TARGET_ENE_0, 2 - f3_arg0:GetMapHitRadius(TARGET_SELF))
            f3_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3011, TARGET_ENE_0, f3_local8)
        end
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function LastBoss_CurvedBlade_Act02(f4_arg0, f4_arg1, f4_arg2)
    local f4_local0 = f4_arg0:GetDist(TARGET_ENE_0)
    local f4_local1 = 4 - f4_arg0:GetMapHitRadius(TARGET_SELF) - 1
    local f4_local2 = 4 - f4_arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local3 = 999
    local f4_local4 = 100
    local f4_local5 = 0
    local f4_local6 = 3
    local f4_local7 = 5
    Approach_Act_Flex(f4_arg0, f4_arg1, f4_local1, f4_local2, f4_local3, f4_local4, f4_local5, f4_local6, f4_local7)
    local f4_local8 = 20 - f4_arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local9 = 0
    local f4_local10 = 0
    local f4_local11 = f4_arg0:GetRandam_Int(1, 100)
    local f4_local12 = f4_arg0:GetRandam_Int(1, 100)
    if f4_local11 <= 0 then
        f4_arg0:SetNumber(2, f4_arg0:GetNumber(2) + 4)
        f4_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3001, TARGET_ENE_0, f4_local8, f4_local9, f4_local10)
    elseif f4_local11 <= 60 then
        f4_arg0:SetNumber(2, f4_arg0:GetNumber(2) + 8)
        if f4_local12 <= 20 then
            f4_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3001, TARGET_ENE_0, 5 - f4_arg0:GetMapHitRadius(TARGET_SELF), f4_local9, f4_local10)
            f4_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3005, TARGET_ENE_0, f4_local8)
        elseif f4_local12 <= 40 then
            f4_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3001, TARGET_ENE_0, 5 - f4_arg0:GetMapHitRadius(TARGET_SELF), f4_local9, f4_local10)
            f4_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3006, TARGET_ENE_0, f4_local8)
        elseif f4_local12 <= 75 then
            f4_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3001, TARGET_ENE_0, 4.5 - f4_arg0:GetMapHitRadius(TARGET_SELF), f4_local9, f4_local10)
            f4_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3010, TARGET_ENE_0, f4_local8)
        else
            f4_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3001, TARGET_ENE_0, 5 - f4_arg0:GetMapHitRadius(TARGET_SELF), f4_local9, f4_local10)
            f4_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3020, TARGET_ENE_0, f4_local8)
        end
    else
        f4_arg0:SetNumber(2, f4_arg0:GetNumber(2) + 12)
        if f4_local12 <= 35 then
            f4_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3001, TARGET_ENE_0, 4 - f4_arg0:GetMapHitRadius(TARGET_SELF), f4_local9, f4_local10)
            f4_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3000, TARGET_ENE_0, 4.5 - f4_arg0:GetMapHitRadius(TARGET_SELF))
            f4_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, f4_local8)
        elseif f4_local12 <= 60 then
            f4_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3001, TARGET_ENE_0, 4 - f4_arg0:GetMapHitRadius(TARGET_SELF), f4_local9, f4_local10)
            f4_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3000, TARGET_ENE_0, 4.5 - f4_arg0:GetMapHitRadius(TARGET_SELF))
            f4_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3010, TARGET_ENE_0, f4_local8)
        elseif f4_local12 <= 80 then
            f4_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3001, TARGET_ENE_0, 4 - f4_arg0:GetMapHitRadius(TARGET_SELF), f4_local9, f4_local10)
            f4_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3000, TARGET_ENE_0, 5 - f4_arg0:GetMapHitRadius(TARGET_SELF))
            f4_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3005, TARGET_ENE_0, f4_local8)
        else
            f4_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3001, TARGET_ENE_0, 4 - f4_arg0:GetMapHitRadius(TARGET_SELF), f4_local9, f4_local10)
            f4_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3000, TARGET_ENE_0, 5 - f4_arg0:GetMapHitRadius(TARGET_SELF))
            f4_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3006, TARGET_ENE_0, f4_local8)
        end
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function LastBoss_CurvedBlade_Act03(f5_arg0, f5_arg1, f5_arg2)
    local f5_local0 = f5_arg0:GetDist(TARGET_ENE_0)
    local f5_local1 = 4.5 - f5_arg0:GetMapHitRadius(TARGET_SELF) - 1
    local f5_local2 = 4.5 - f5_arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local3 = 999
    local f5_local4 = 100
    local f5_local5 = 0
    local f5_local6 = 3
    local f5_local7 = 5
    Approach_Act_Flex(f5_arg0, f5_arg1, f5_local1, f5_local2, f5_local3, f5_local4, f5_local5, f5_local6, f5_local7)
    local f5_local8 = 20 - f5_arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local9 = 0
    local f5_local10 = 0
    local f5_local11 = f5_arg0:GetRandam_Int(1, 100)
    local f5_local12 = f5_arg0:GetRandam_Int(1, 100)
    if f5_local11 <= 0 then
        f5_arg0:SetNumber(2, f5_arg0:GetNumber(2) + 4)
        f5_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, f5_local8, f5_local9, f5_local10)
    elseif f5_local11 <= 30 then
        f5_arg0:SetNumber(2, f5_arg0:GetNumber(2) + 8)
        f5_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3002, TARGET_ENE_0, 4.5 - f5_arg0:GetMapHitRadius(TARGET_SELF), f5_local9, f5_local10)
        f5_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3010, TARGET_ENE_0, f5_local8)
    else
        f5_arg0:SetNumber(2, f5_arg0:GetNumber(2) + 12)
        if f5_local12 <= 25 then
            f5_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3002, TARGET_ENE_0, 5.5 - f5_arg0:GetMapHitRadius(TARGET_SELF), f5_local9, f5_local10)
            f5_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3014, TARGET_ENE_0, f5_local8)
            f5_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 6001, TARGET_ENE_0, f5_local8)
        else
            f5_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3002, TARGET_ENE_0, 5.5 - f5_arg0:GetMapHitRadius(TARGET_SELF), f5_local9, f5_local10)
            f5_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3014, TARGET_ENE_0, 6 - f5_arg0:GetMapHitRadius(TARGET_SELF))
            f5_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3015, TARGET_ENE_0, f5_local8)
        end
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function LastBoss_CurvedBlade_Act04(f6_arg0, f6_arg1, f6_arg2)
    local f6_local0 = 20 - f6_arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local1 = 0
    local f6_local2 = 0
    local f6_local3 = f6_arg0:GetRandam_Int(1, 100)
    local f6_local4 = f6_arg0:GetRandam_Int(1, 100)
    if f6_local3 <= 0 then
        f6_arg0:SetNumber(2, f6_arg0:GetNumber(2) + 4)
        f6_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, f6_local0, f6_local1, f6_local2)
    else
        f6_arg0:SetNumber(2, f6_arg0:GetNumber(2) + 8)
        if f6_local4 <= 30 then
            f6_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3005, TARGET_ENE_0, f6_local0, f6_local1, f6_local2)
            f6_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 6001, TARGET_ENE_0, f6_local0)
        else
            f6_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3005, TARGET_ENE_0, 5.5 - f6_arg0:GetMapHitRadius(TARGET_SELF), f6_local1, f6_local2)
            f6_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3020, TARGET_ENE_0, f6_local0)
        end
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function LastBoss_CurvedBlade_Act05(f7_arg0, f7_arg1, f7_arg2)
    local f7_local0 = 20 - f7_arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local1 = 0
    local f7_local2 = 0
    local f7_local3 = f7_arg0:GetRandam_Int(1, 100)
    local f7_local4 = f7_arg0:GetRandam_Int(1, 100)
    if f7_local3 <= 0 then
        f7_arg0:SetNumber(2, f7_arg0:GetNumber(2) + 4)
        f7_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, f7_local0, f7_local1, f7_local2)
    else
        f7_arg0:SetNumber(2, f7_arg0:GetNumber(2) + 8)
        if f7_local4 <= 70 then
            f7_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3006, TARGET_ENE_0, f7_local0, f7_local1, f7_local2)
            f7_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 6001, TARGET_ENE_0, f7_local0)
        else
            f7_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3006, TARGET_ENE_0, 5.5 - f7_arg0:GetMapHitRadius(TARGET_SELF), f7_local1, f7_local2)
            f7_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3020, TARGET_ENE_0, f7_local0)
        end
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function LastBoss_CurvedBlade_Act06(f8_arg0, f8_arg1, f8_arg2)
    local f8_local0 = f8_arg0:GetDist(TARGET_ENE_0)
    local f8_local1 = 4.5 - f8_arg0:GetMapHitRadius(TARGET_SELF) - 1
    local f8_local2 = 4.5 - f8_arg0:GetMapHitRadius(TARGET_SELF)
    local f8_local3 = 999
    local f8_local4 = 100
    local f8_local5 = 0
    local f8_local6 = 3
    local f8_local7 = 5
    Approach_Act_Flex(f8_arg0, f8_arg1, f8_local1, f8_local2, f8_local3, f8_local4, f8_local5, f8_local6, f8_local7)
    local f8_local8 = 20 - f8_arg0:GetMapHitRadius(TARGET_SELF)
    local f8_local9 = 0
    local f8_local10 = 0
    local f8_local11 = f8_arg0:GetRandam_Int(1, 100)
    local f8_local12 = f8_arg0:GetRandam_Int(1, 100)
    if f8_local11 <= 25 then
        f8_arg0:SetNumber(2, f8_arg0:GetNumber(2) + 6)
        f8_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3010, TARGET_ENE_0, f8_local8, f8_local9, f8_local10)
    elseif f8_local11 <= 70 then
        f8_arg0:SetNumber(2, f8_arg0:GetNumber(2) + 12)
        f8_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3010, TARGET_ENE_0, 4.5 - f8_arg0:GetMapHitRadius(TARGET_SELF), f8_local9, f8_local10)
        f8_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3010, TARGET_ENE_0, f8_local8)
    else
        f8_arg0:SetNumber(2, f8_arg0:GetNumber(2) + 18)
        f8_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3010, TARGET_ENE_0, 5.5 - f8_arg0:GetMapHitRadius(TARGET_SELF), f8_local9, f8_local10)
        f8_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3014, TARGET_ENE_0, 6 - f8_arg0:GetMapHitRadius(TARGET_SELF))
        f8_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3015, TARGET_ENE_0, f8_local8)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function LastBoss_CurvedBlade_Act07(f9_arg0, f9_arg1, f9_arg2)
    local f9_local0 = 20 - f9_arg0:GetMapHitRadius(TARGET_SELF)
    local f9_local1 = 0
    local f9_local2 = 0
    local f9_local3 = f9_arg0:GetRandam_Int(1, 100)
    local f9_local4 = f9_arg0:GetRandam_Int(1, 100)
    if f9_local3 <= 70 then
        f9_arg0:SetNumber(2, f9_arg0:GetNumber(2) + 4)
        f9_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3011, TARGET_ENE_0, f9_local0, f9_local1, f9_local2)
    else
        f9_arg0:SetNumber(2, f9_arg0:GetNumber(2) + 8)
        f9_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3011, TARGET_ENE_0, 5.5 - f9_arg0:GetMapHitRadius(TARGET_SELF), f9_local1, f9_local2)
        f9_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3014, TARGET_ENE_0, f9_local0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function LastBoss_CurvedBlade_Act08(f10_arg0, f10_arg1, f10_arg2)
    local f10_local0 = f10_arg0:GetDist(TARGET_ENE_0)
    local f10_local1 = 4 - f10_arg0:GetMapHitRadius(TARGET_SELF) - 1
    local f10_local2 = 4 - f10_arg0:GetMapHitRadius(TARGET_SELF) - 2
    local f10_local3 = 999
    local f10_local4 = 100
    local f10_local5 = 0
    local f10_local6 = 3
    local f10_local7 = 5
    Approach_Act_Flex(f10_arg0, f10_arg1, f10_local1, f10_local2, f10_local3, f10_local4, f10_local5, f10_local6, f10_local7)
    local f10_local8 = 20 - f10_arg0:GetMapHitRadius(TARGET_SELF)
    local f10_local9 = 0
    local f10_local10 = 0
    local f10_local11 = f10_arg0:GetRandam_Int(1, 100)
    local f10_local12 = f10_arg0:GetRandam_Int(1, 100)
    if f10_local11 <= 20 then
        f10_arg0:SetNumber(2, f10_arg0:GetNumber(2) + 4)
        f10_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3012, TARGET_ENE_0, f10_local8, f10_local9, f10_local10)
    else
        f10_arg0:SetNumber(2, f10_arg0:GetNumber(2) + 8)
        if f10_local12 <= 80 then
            f10_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3012, TARGET_ENE_0, f10_local8, f10_local9, f10_local10)
            f10_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 6001, TARGET_ENE_0, f10_local8)
        else
            f10_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3012, TARGET_ENE_0, f10_local8, f10_local9, f10_local10)
            f10_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3011, TARGET_ENE_0, f10_local8)
        end
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function LastBoss_CurvedBlade_Act09(f11_arg0, f11_arg1, f11_arg2)
    local f11_local0 = f11_arg0:GetDist(TARGET_ENE_0)
    local f11_local1 = 5 - f11_arg0:GetMapHitRadius(TARGET_SELF) - 2.5
    local f11_local2 = 5 - f11_arg0:GetMapHitRadius(TARGET_SELF)
    local f11_local3 = 999
    local f11_local4 = 100
    local f11_local5 = 0
    local f11_local6 = 3
    local f11_local7 = 5
    Approach_Act_Flex(f11_arg0, f11_arg1, f11_local1, f11_local2, f11_local3, f11_local4, f11_local5, f11_local6, f11_local7)
    local f11_local8 = 20 - f11_arg0:GetMapHitRadius(TARGET_SELF)
    local f11_local9 = 0
    local f11_local10 = 0
    local f11_local11 = f11_arg0:GetRandam_Int(1, 100)
    local f11_local12 = f11_arg0:GetRandam_Int(1, 100)
    f11_arg0:SetNumber(2, f11_arg0:GetNumber(2) + 4)
    f11_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3020, TARGET_ENE_0, f11_local8, f11_local9, f11_local10)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function LastBoss_CurvedBlade_Act10(f12_arg0, f12_arg1, f12_arg2)
    local f12_local0 = f12_arg0:GetDist(TARGET_ENE_0)
    local f12_local1 = 12 - f12_arg0:GetMapHitRadius(TARGET_SELF)
    local f12_local2 = 12 - f12_arg0:GetMapHitRadius(TARGET_SELF) + 3
    local f12_local3 = 999
    local f12_local4 = 100
    local f12_local5 = 0
    local f12_local6 = 3
    local f12_local7 = 5
    Approach_Act_Flex(f12_arg0, f12_arg1, f12_local1, f12_local2, f12_local3, f12_local4, f12_local5, f12_local6, f12_local7)
    local f12_local8 = 20 - f12_arg0:GetMapHitRadius(TARGET_SELF)
    local f12_local9 = 0
    local f12_local10 = 0
    local f12_local11 = f12_arg0:GetRandam_Int(1, 100)
    local f12_local12 = f12_arg0:GetRandam_Int(1, 100)
    local f12_local13 = 1
    if f12_arg0:HasSpecialEffectId(TARGET_SELF, 103581000) then
        f12_local13 = 0
    else
        f12_local13 = 1
    end
    if f12_local11 <= 70 or f12_local13 == 0 then
        f12_arg0:SetNumber(2, f12_arg0:GetNumber(2) + 4)
        f12_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3021, TARGET_ENE_0, f12_local8, f12_local9, f12_local10)
    else
        f12_arg0:SetNumber(2, f12_arg0:GetNumber(2) + 8)
        f12_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3021, TARGET_ENE_0, 12 - f12_arg0:GetMapHitRadius(TARGET_SELF), f12_local9, f12_local10)
        f12_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3021, TARGET_ENE_0, f12_local8)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function LastBoss_CurvedBlade_Act11(f13_arg0, f13_arg1, f13_arg2)
    local f13_local0 = f13_arg0:GetDist(TARGET_ENE_0)
    local f13_local1 = 5.5 - f13_arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f13_local2 = 5.5 - f13_arg0:GetMapHitRadius(TARGET_SELF)
    local f13_local3 = 999
    local f13_local4 = 100
    local f13_local5 = 0
    local f13_local6 = 1.5
    local f13_local7 = 5
    Approach_Act_Flex(f13_arg0, f13_arg1, f13_local1, f13_local2, f13_local3, f13_local4, f13_local5, f13_local6, f13_local7)
    local f13_local8 = 20 - f13_arg0:GetMapHitRadius(TARGET_SELF)
    local f13_local9 = 0
    local f13_local10 = 0
    local f13_local11 = f13_arg0:GetRandam_Int(1, 100)
    local f13_local12 = f13_arg0:GetRandam_Int(1, 100)
    if f13_local0 <= 5.5 - f13_arg0:GetMapHitRadius(TARGET_SELF) then
        f13_arg0:SetNumber(2, f13_arg0:GetNumber(2) + 10)
        f13_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3014, TARGET_ENE_0, 6 - f13_arg0:GetMapHitRadius(TARGET_SELF), f13_local9, f13_local10)
        f13_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3015, TARGET_ENE_0, f13_local8)
    else
        f13_arg0:SetNumber(2, f13_arg0:GetNumber(2) + 10)
        f13_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 6000, TARGET_ENE_0, 5.5 - f13_arg0:GetMapHitRadius(TARGET_SELF), f13_local9, f13_local10)
        f13_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3014, TARGET_ENE_0, 6 - f13_arg0:GetMapHitRadius(TARGET_SELF))
        f13_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3015, TARGET_ENE_0, f13_local8)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function LastBoss_CurvedBlade_Act12(f14_arg0, f14_arg1, f14_arg2)
    local f14_local0 = f14_arg0:GetDist(TARGET_ENE_0)
    local f14_local1 = 8 - f14_arg0:GetMapHitRadius(TARGET_SELF)
    local f14_local2 = 8 - f14_arg0:GetMapHitRadius(TARGET_SELF) + 3
    local f14_local3 = 999
    local f14_local4 = 100
    local f14_local5 = 0
    local f14_local6 = 1.5
    local f14_local7 = 5
    Approach_Act_Flex(f14_arg0, f14_arg1, f14_local1, f14_local2, f14_local3, f14_local4, f14_local5, f14_local6, f14_local7)
    local f14_local8 = 20 - f14_arg0:GetMapHitRadius(TARGET_SELF)
    local f14_local9 = 0
    local f14_local10 = 0
    local f14_local11 = f14_arg0:GetRandam_Int(1, 100)
    local f14_local12 = f14_arg0:GetRandam_Int(1, 100)
    f14_arg0:SetNumber(2, f14_arg0:GetNumber(2) + 10)
    f14_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3023, TARGET_ENE_0, f14_local8, f14_local9, f14_local10)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function LastBoss_CurvedBlade_Act13(f15_arg0, f15_arg1, f15_arg2)
    local f15_local0 = f15_arg0:GetDist(TARGET_ENE_0)
    local f15_local1 = 20 - f15_arg0:GetMapHitRadius(TARGET_SELF)
    local f15_local2 = 0
    local f15_local3 = 0
    local f15_local4 = f15_arg0:GetRandam_Int(1, 100)
    local f15_local5 = f15_arg0:GetRandam_Int(1, 100)
    if f15_local0 <= 5 then
        f15_arg0:SetNumber(2, f15_arg0:GetNumber(2) + 40)
        f15_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 6001, TARGET_ENE_0, 100 - f15_arg0:GetMapHitRadius(TARGET_SELF), f15_local2, f15_local3)
        f15_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 6001, TARGET_ENE_0, 100 - f15_arg0:GetMapHitRadius(TARGET_SELF))
        f15_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3025, TARGET_ENE_0, f15_local1)
    elseif f15_local0 <= 10 then
        f15_arg0:SetNumber(2, f15_arg0:GetNumber(2) + 40)
        f15_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 6001, TARGET_ENE_0, 100 - f15_arg0:GetMapHitRadius(TARGET_SELF), f15_local2, f15_local3)
        f15_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3025, TARGET_ENE_0, f15_local1)
    else
        f15_arg0:SetNumber(2, f15_arg0:GetNumber(2) + 40)
        f15_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3025, TARGET_ENE_0, f15_local1, f15_local2, f15_local3)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function LastBoss_CurvedBlade_Act30(f16_arg0, f16_arg1, f16_arg2)
    local f16_local0 = 20 - f16_arg0:GetMapHitRadius(TARGET_SELF)
    local f16_local1 = 0
    local f16_local2 = 0
    local f16_local3 = f16_arg0:GetRandam_Int(1, 100)
    local f16_local4 = f16_arg0:GetRandam_Int(1, 100)
    f16_arg0:SetNumber(2, 0)
    f16_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 20000, TARGET_ENE_0, f16_local0, f16_local1, f16_local2)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function LastBoss_CurvedBlade_Act31(f17_arg0, f17_arg1, f17_arg2)
    local f17_local0 = 20 - f17_arg0:GetMapHitRadius(TARGET_SELF)
    local f17_local1 = 0
    local f17_local2 = 0
    local f17_local3 = f17_arg0:GetRandam_Int(1, 100)
    local f17_local4 = f17_arg0:GetRandam_Int(1, 100)
    f17_arg0:SetNumber(2, 0)
    f17_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 20001, TARGET_ENE_0, f17_local0, f17_local1, f17_local2)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function LastBoss_CurvedBlade_Act32(f18_arg0, f18_arg1, f18_arg2)
    local f18_local0 = 20 - f18_arg0:GetMapHitRadius(TARGET_SELF)
    local f18_local1 = 0
    local f18_local2 = 0
    local f18_local3 = f18_arg0:GetRandam_Int(1, 100)
    local f18_local4 = f18_arg0:GetRandam_Int(1, 100)
    f18_arg0:SetNumber(2, 0)
    f18_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 20002, TARGET_ENE_0, f18_local0, f18_local1, f18_local2)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function LastBoss_CurvedBlade_Act33(f19_arg0, f19_arg1, f19_arg2)
    local f19_local0 = 20 - f19_arg0:GetMapHitRadius(TARGET_SELF)
    local f19_local1 = 0
    local f19_local2 = 0
    local f19_local3 = f19_arg0:GetRandam_Int(1, 100)
    local f19_local4 = f19_arg0:GetRandam_Int(1, 100)
    f19_arg0:SetNumber(2, 0)
    f19_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 20004, TARGET_ENE_0, f19_local0, f19_local1, f19_local2)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function LastBoss528000_ActAfter_AdjustSpace(f20_arg0, f20_arg1, f20_arg2)
    f20_arg1:AddSubGoal(GOAL_LastBoss_AfterAttackAct, 10)
    
end

Goal.Update = function (f21_arg0, f21_arg1, f21_arg2)
    return Update_Default_NoSubGoal(f21_arg0, f21_arg1, f21_arg2)
    
end

Goal.Terminate = function (f22_arg0, f22_arg1, f22_arg2)
    
end

Goal.Interrupt = function (f23_arg0, f23_arg1, f23_arg2)
    local f23_local0 = f23_arg1:GetDist(TARGET_ENE_0)
    local f23_local1 = f23_arg1:GetRandam_Int(1, 100)
    if f23_arg1:IsInterupt(INTERUPT_Shoot) then
        if f23_local0 >= 20 and f23_local1 <= 100 then
            f23_arg2:ClearSubGoal()
            f23_arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 2, 6000, TARGET_ENE_0, 20, 0, 0)
            return true
        elseif f23_local0 >= 12 and f23_local1 <= 50 then
            f23_arg2:ClearSubGoal()
            f23_arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 2, 6000, TARGET_ENE_0, 20, 0, 0)
            return true
        elseif f23_local0 >= 5 and f23_local1 <= 30 then
            f23_arg2:ClearSubGoal()
            f23_arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 2, 6000, TARGET_ENE_0, 20, 0, 0)
            return true
        else
        end
    end
    if f23_arg1:IsInterupt(INTERUPT_ParryTiming) then
        if InsideRange(f23_arg1, f23_arg2, 0, 120, -99, 2) then
            f23_arg2:ClearSubGoal()
            f23_arg2:AddSubGoal(GOAL_COMMON_StabCounterAttack, 1.25, 4000, TARGET_SELF, DIST_None, 0, 180, 0, 0)
            do
                return true
            end
            if false then
            end
        end
    elseif f23_arg1:IsInterupt(INTERUPT_SuccessParry) and InsideRange(f23_arg1, f23_arg2, 0, 120, -99, 3) then
        f23_arg2:ClearSubGoal()
        f23_arg2:AddSubGoal(GOAL_COMMON_ApproachTarget, 3, TARGET_ENE_0, 1, TARGET_SELF, false, -1)
        f23_arg2:AddSubGoal(GOAL_COMMON_Wait, f23_arg1:GetRandam_Float(0.3, 0.6), TARGET_ENE_0)
        f23_arg1:SetNumber(2, f23_arg1:GetNumber(2) + 20)
        f23_arg2:AddSubGoal(GOAL_COMMON_Attack, 10, 3110, TARGET_ENE_0, 3, 0)
        return true
    else
    end
    return false
    
end


