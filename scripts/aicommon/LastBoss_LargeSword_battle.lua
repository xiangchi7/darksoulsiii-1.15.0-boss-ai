RegisterTableGoal(GOAL_LastBoss_LargeSword_Battle, "LastBoss_LargeSword")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_LastBoss_LargeSword_Battle, true)

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
    f2_arg1:SetNumber(0, 0)
    f2_arg1:SetNumber(1, 0)
    local f2_local3 = f2_arg1:GetDist(TARGET_ENE_0)
    local f2_local4 = 1
    local f2_local5 = f2_arg1:GetRandam_Int(1, 100)
    local f2_local6 = 1
    local f2_local7 = 1
    local f2_local8 = 1
    local f2_local9 = 1
    local f2_local10 = 1
    local f2_local11 = 1
    local f2_local12 = f2_arg1:GetHpRate(TARGET_SELF)
    if f2_arg1:GetNumber(2) >= 150 then
        f2_local4 = f2_arg1:GetRandam_Int(100, 120)
    elseif f2_arg1:GetNumber(2) >= 100 then
        f2_local4 = f2_arg1:GetRandam_Int(90, 120)
    elseif f2_arg1:GetNumber(2) >= 75 then
        f2_local4 = f2_arg1:GetRandam_Int(60, 120)
    elseif f2_arg1:GetNumber(2) >= 50 then
        f2_local4 = f2_arg1:GetRandam_Int(10, 110)
    else
        f2_local4 = f2_arg1:GetRandam_Int(1, 10)
    end
    if f2_local12 <= 0.3 then
        f2_local6 = 4
        f2_local7 = 1
        f2_local8 = 1
    elseif f2_local12 >= 0.7 then
        f2_local6 = 1
        f2_local7 = 1
        f2_local8 = 4
    else
        f2_local6 = 1.5
        f2_local7 = 1.5
        f2_local8 = 0.5
    end
    if f2_arg1:HasSpecialEffectId(TARGET_SELF, 12125) then
        f2_local9 = 1
    else
        f2_local9 = 20
    end
    if f2_arg1:HasSpecialEffectId(TARGET_SELF, 12126) then
        f2_local10 = 1
    else
        f2_local10 = 20
    end
    if f2_arg1:HasSpecialEffectId(TARGET_SELF, 12127) then
        f2_local11 = 1
    else
        f2_local11 = 20
    end
    if f2_local4 >= 100 and f2_local12 <= 0.85 then
        f2_local0[31] = 100 * f2_local6 * f2_local9
        f2_local0[32] = 100 * f2_local7 * f2_local10
        f2_local0[33] = 100 * f2_local8 * f2_local11
    elseif f2_local3 >= 12 then
        f2_local0[1] = 10
        f2_local0[2] = 10
        f2_local0[3] = 5
        f2_local0[4] = 20
        f2_local0[5] = 20
        f2_local0[6] = 20
        f2_local0[10] = 5
        f2_local0[11] = 15
        f2_local0[12] = 0
    elseif f2_local3 >= 8 then
        f2_local0[1] = 5
        f2_local0[2] = 5
        f2_local0[3] = 10
        f2_local0[4] = 20
        f2_local0[5] = 10
        f2_local0[6] = 20
        f2_local0[10] = 10
        f2_local0[11] = 20
        f2_local0[12] = 0
    elseif f2_local3 >= 5 then
        f2_local0[1] = 10
        f2_local0[2] = 10
        f2_local0[3] = 5
        f2_local0[4] = 15
        f2_local0[5] = 15
        f2_local0[6] = 15
        f2_local0[10] = 10
        f2_local0[11] = 15
        f2_local0[12] = 5
    elseif f2_local3 >= 2 then
        f2_local0[1] = 15
        f2_local0[2] = 10
        f2_local0[3] = 15
        f2_local0[4] = 5
        f2_local0[5] = 10
        f2_local0[6] = 5
        f2_local0[10] = 15
        f2_local0[11] = 10
        f2_local0[12] = 15
    elseif f2_local5 >= 70 and InsideDir(f2_arg1, f2_arg2, 135, 45) then
        f2_local0[7] = 80
        f2_local0[9] = 20
    elseif f2_local5 >= 70 and InsideDir(f2_arg1, f2_arg2, -135, 45) then
        f2_local0[8] = 80
        f2_local0[9] = 20
    elseif f2_local5 >= 60 and InsideDir(f2_arg1, f2_arg2, -180, 45) then
        f2_local0[9] = 100
    else
        f2_local0[1] = 20
        f2_local0[2] = 20
        f2_local0[3] = 15
        f2_local0[4] = 0
        f2_local0[5] = 10
        f2_local0[6] = 5
        f2_local0[10] = 15
        f2_local0[11] = 0
        f2_local0[12] = 15
    end
    f2_local0[10] = SetCoolTime(f2_arg1, f2_arg2, 3015, 8, f2_local0[10], 0)
    f2_local0[11] = SetCoolTime(f2_arg1, f2_arg2, 3015, 8, f2_local0[11], 0)
    f2_local0[12] = SetCoolTime(f2_arg1, f2_arg2, 3015, 8, f2_local0[12], 0)
    f2_local1[1] = REGIST_FUNC(f2_arg1, f2_arg2, LastBoss_LargeSword_Act01)
    f2_local1[2] = REGIST_FUNC(f2_arg1, f2_arg2, LastBoss_LargeSword_Act02)
    f2_local1[3] = REGIST_FUNC(f2_arg1, f2_arg2, LastBoss_LargeSword_Act03)
    f2_local1[4] = REGIST_FUNC(f2_arg1, f2_arg2, LastBoss_LargeSword_Act04)
    f2_local1[5] = REGIST_FUNC(f2_arg1, f2_arg2, LastBoss_LargeSword_Act05)
    f2_local1[6] = REGIST_FUNC(f2_arg1, f2_arg2, LastBoss_LargeSword_Act06)
    f2_local1[7] = REGIST_FUNC(f2_arg1, f2_arg2, LastBoss_LargeSword_Act07)
    f2_local1[8] = REGIST_FUNC(f2_arg1, f2_arg2, LastBoss_LargeSword_Act08)
    f2_local1[9] = REGIST_FUNC(f2_arg1, f2_arg2, LastBoss_LargeSword_Act09)
    f2_local1[10] = REGIST_FUNC(f2_arg1, f2_arg2, LastBoss_LargeSword_Act10)
    f2_local1[11] = REGIST_FUNC(f2_arg1, f2_arg2, LastBoss_LargeSword_Act11)
    f2_local1[12] = REGIST_FUNC(f2_arg1, f2_arg2, LastBoss_LargeSword_Act12)
    f2_local1[30] = REGIST_FUNC(f2_arg1, f2_arg2, LastBoss_LargeSword_Act30)
    f2_local1[31] = REGIST_FUNC(f2_arg1, f2_arg2, LastBoss_LargeSword_Act31)
    f2_local1[32] = REGIST_FUNC(f2_arg1, f2_arg2, LastBoss_LargeSword_Act32)
    f2_local1[33] = REGIST_FUNC(f2_arg1, f2_arg2, LastBoss_LargeSword_Act33)
    local f2_local13 = REGIST_FUNC(f2_arg1, f2_arg2, LastBoss528000_ActAfter_AdjustSpace)
    Common_Battle_Activate(f2_arg1, f2_arg2, f2_local0, f2_local1, f2_local13, f2_local2)
    
end

function LastBoss_LargeSword_Act01(f3_arg0, f3_arg1, f3_arg2)
    local f3_local0 = f3_arg0:GetDist(TARGET_ENE_0)
    local f3_local1 = 5 - f3_arg0:GetMapHitRadius(TARGET_SELF) - 1
    local f3_local2 = 5 - f3_arg0:GetMapHitRadius(TARGET_SELF) + 1
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
    elseif f3_local11 <= 60 then
        f3_arg0:SetNumber(2, f3_arg0:GetNumber(2) + 8)
        if f3_local12 <= 20 then
            f3_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3000, TARGET_ENE_0, 4 - f3_arg0:GetMapHitRadius(TARGET_SELF), f3_local9, f3_local10)
            f3_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3020, TARGET_ENE_0, f3_local8)
        elseif f3_local12 <= 40 then
            f3_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3000, TARGET_ENE_0, 8 - f3_arg0:GetMapHitRadius(TARGET_SELF), f3_local9, f3_local10)
            f3_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3021, TARGET_ENE_0, f3_local8)
        elseif f3_local12 <= 75 then
            f3_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3000, TARGET_ENE_0, 6 - f3_arg0:GetMapHitRadius(TARGET_SELF), f3_local9, f3_local10)
            f3_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3004, TARGET_ENE_0, f3_local8)
        else
            f3_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3000, TARGET_ENE_0, 4 - f3_arg0:GetMapHitRadius(TARGET_SELF), f3_local9, f3_local10)
            f3_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3015, TARGET_ENE_0, 100)
            f3_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3010, TARGET_ENE_0, f3_local8)
        end
    else
        f3_arg0:SetNumber(2, f3_arg0:GetNumber(2) + 12)
        if f3_local12 <= 20 then
            f3_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3000, TARGET_ENE_0, 4 - f3_arg0:GetMapHitRadius(TARGET_SELF), f3_local9, f3_local10)
            f3_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3020, TARGET_ENE_0, 5.5 - f3_arg0:GetMapHitRadius(TARGET_SELF))
            f3_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3022, TARGET_ENE_0, f3_local8)
        elseif f3_local12 <= 30 then
            f3_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3000, TARGET_ENE_0, 4 - f3_arg0:GetMapHitRadius(TARGET_SELF), f3_local9, f3_local10)
            f3_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3020, TARGET_ENE_0, 7 - f3_arg0:GetMapHitRadius(TARGET_SELF))
            f3_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3023, TARGET_ENE_0, f3_local8)
        elseif f3_local12 <= 40 then
            f3_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3000, TARGET_ENE_0, 4 - f3_arg0:GetMapHitRadius(TARGET_SELF), f3_local9, f3_local10)
            f3_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3020, TARGET_ENE_0, 7.5 - f3_arg0:GetMapHitRadius(TARGET_SELF))
            f3_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3024, TARGET_ENE_0, f3_local8)
        elseif f3_local12 <= 50 then
            f3_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3000, TARGET_ENE_0, 8 - f3_arg0:GetMapHitRadius(TARGET_SELF), f3_local9, f3_local10)
            f3_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3021, TARGET_ENE_0, 5.5 - f3_arg0:GetMapHitRadius(TARGET_SELF))
            f3_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3022, TARGET_ENE_0, f3_local8)
        elseif f3_local12 <= 60 then
            f3_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3000, TARGET_ENE_0, 8 - f3_arg0:GetMapHitRadius(TARGET_SELF), f3_local9, f3_local10)
            f3_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3021, TARGET_ENE_0, 7 - f3_arg0:GetMapHitRadius(TARGET_SELF))
            f3_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3023, TARGET_ENE_0, f3_local8)
        else
            f3_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3000, TARGET_ENE_0, 8 - f3_arg0:GetMapHitRadius(TARGET_SELF), f3_local9, f3_local10)
            f3_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3021, TARGET_ENE_0, 7.5 - f3_arg0:GetMapHitRadius(TARGET_SELF))
            f3_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3024, TARGET_ENE_0, f3_local8)
        end
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function LastBoss_LargeSword_Act02(f4_arg0, f4_arg1, f4_arg2)
    local f4_local0 = f4_arg0:GetDist(TARGET_ENE_0)
    local f4_local1 = 5 - f4_arg0:GetMapHitRadius(TARGET_SELF) - 1
    local f4_local2 = 5 - f4_arg0:GetMapHitRadius(TARGET_SELF) + 1
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
        if f4_local12 <= 50 then
            f4_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3001, TARGET_ENE_0, 5.5 - f4_arg0:GetMapHitRadius(TARGET_SELF), f4_local9, f4_local10)
            f4_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3022, TARGET_ENE_0, f4_local8)
        else
            f4_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3001, TARGET_ENE_0, 7 - f4_arg0:GetMapHitRadius(TARGET_SELF), f4_local9, f4_local10)
            f4_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3023, TARGET_ENE_0, f4_local8)
        end
    else
        f4_arg0:SetNumber(2, f4_arg0:GetNumber(2) + 12)
        if f4_local12 <= 30 then
            f4_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3001, TARGET_ENE_0, 5.5 - f4_arg0:GetMapHitRadius(TARGET_SELF), f4_local9, f4_local10)
            f4_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3022, TARGET_ENE_0, 4 - f4_arg0:GetMapHitRadius(TARGET_SELF))
            f4_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3020, TARGET_ENE_0, f4_local8)
        elseif f4_local12 <= 50 then
            f4_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3001, TARGET_ENE_0, 5.5 - f4_arg0:GetMapHitRadius(TARGET_SELF), f4_local9, f4_local10)
            f4_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3022, TARGET_ENE_0, 7 - f4_arg0:GetMapHitRadius(TARGET_SELF))
            f4_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3023, TARGET_ENE_0, f4_local8)
        else
            f4_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3001, TARGET_ENE_0, 7.5 - f4_arg0:GetMapHitRadius(TARGET_SELF), f4_local9, f4_local10)
            f4_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3024, TARGET_ENE_0, 4 - f4_arg0:GetMapHitRadius(TARGET_SELF))
            f4_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, f4_local8)
        end
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function LastBoss_LargeSword_Act03(f5_arg0, f5_arg1, f5_arg2)
    local f5_local0 = f5_arg0:GetDist(TARGET_ENE_0)
    local f5_local1 = 4 - f5_arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local2 = 4 - f5_arg0:GetMapHitRadius(TARGET_SELF)
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
    else
        f5_arg0:SetNumber(2, f5_arg0:GetNumber(2) + 8)
        if f5_local12 <= 25 then
            f5_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3002, TARGET_ENE_0, 5 - f5_arg0:GetMapHitRadius(TARGET_SELF), f5_local9, f5_local10)
            f5_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3000, TARGET_ENE_0, f5_local8)
        elseif f5_local12 <= 50 then
            f5_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3002, TARGET_ENE_0, 4 - f5_arg0:GetMapHitRadius(TARGET_SELF), f5_local9, f5_local10)
            f5_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3020, TARGET_ENE_0, f5_local8)
        elseif f5_local12 <= 75 then
            f5_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3002, TARGET_ENE_0, 4 - f5_arg0:GetMapHitRadius(TARGET_SELF), f5_local9, f5_local10)
            f5_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, f5_local8)
        else
            f5_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3002, TARGET_ENE_0, 6 - f5_arg0:GetMapHitRadius(TARGET_SELF), f5_local9, f5_local10)
            f5_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3004, TARGET_ENE_0, f5_local8)
        end
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function LastBoss_LargeSword_Act04(f6_arg0, f6_arg1, f6_arg2)
    local f6_local0 = f6_arg0:GetDist(TARGET_ENE_0)
    local f6_local1 = 4 - f6_arg0:GetMapHitRadius(TARGET_SELF) - 1
    local f6_local2 = 4 - f6_arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f6_local3 = 999
    local f6_local4 = 100
    local f6_local5 = 0
    local f6_local6 = 3
    local f6_local7 = 5
    Approach_Act_Flex(f6_arg0, f6_arg1, f6_local1, f6_local2, f6_local3, f6_local4, f6_local5, f6_local6, f6_local7)
    local f6_local8 = 20 - f6_arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local9 = 0
    local f6_local10 = 0
    local f6_local11 = f6_arg0:GetRandam_Int(1, 100)
    local f6_local12 = f6_arg0:GetRandam_Int(1, 100)
    if f6_local11 <= 30 then
        f6_arg0:SetNumber(2, f6_arg0:GetNumber(2) + 6)
        f6_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3003, TARGET_ENE_0, f6_local8, f6_local9, f6_local10)
    else
        f6_arg0:SetNumber(2, f6_arg0:GetNumber(2) + 12)
        if f6_local12 <= 30 then
            f6_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3003, TARGET_ENE_0, 4 - f6_arg0:GetMapHitRadius(TARGET_SELF), f6_local9, f6_local10)
            f6_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, f6_local8)
        else
            f6_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3003, TARGET_ENE_0, 4 - f6_arg0:GetMapHitRadius(TARGET_SELF), f6_local9, f6_local10)
            f6_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3015, TARGET_ENE_0, 100)
            f6_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3010, TARGET_ENE_0, f6_local8)
        end
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function LastBoss_LargeSword_Act05(f7_arg0, f7_arg1, f7_arg2)
    local f7_local0 = f7_arg0:GetDist(TARGET_ENE_0)
    local f7_local1 = 6 - f7_arg0:GetMapHitRadius(TARGET_SELF) - 1
    local f7_local2 = 6 - f7_arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f7_local3 = 999
    local f7_local4 = 100
    local f7_local5 = 0
    local f7_local6 = 3
    local f7_local7 = 5
    Approach_Act_Flex(f7_arg0, f7_arg1, f7_local1, f7_local2, f7_local3, f7_local4, f7_local5, f7_local6, f7_local7)
    local f7_local8 = 20 - f7_arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local9 = 0
    local f7_local10 = 0
    local f7_local11 = f7_arg0:GetRandam_Int(1, 100)
    local f7_local12 = f7_arg0:GetRandam_Int(1, 100)
    if f7_local11 <= 20 then
        f7_arg0:SetNumber(2, f7_arg0:GetNumber(2) + 4)
        f7_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3004, TARGET_ENE_0, f7_local8, f7_local9, f7_local10)
    elseif f7_local11 <= 60 then
        f7_arg0:SetNumber(2, f7_arg0:GetNumber(2) + 8)
        if f7_local12 <= 50 then
            f7_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3004, TARGET_ENE_0, 4 - f7_arg0:GetMapHitRadius(TARGET_SELF), f7_local9, f7_local10)
            f7_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3020, TARGET_ENE_0, f7_local8)
        else
            f7_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3004, TARGET_ENE_0, 8 - f7_arg0:GetMapHitRadius(TARGET_SELF), f7_local9, f7_local10)
            f7_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3021, TARGET_ENE_0, f7_local8)
        end
    else
        f7_arg0:SetNumber(2, f7_arg0:GetNumber(2) + 12)
        if f7_local12 <= 50 then
            f7_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3004, TARGET_ENE_0, 4 - f7_arg0:GetMapHitRadius(TARGET_SELF), f7_local9, f7_local10)
            f7_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3020, TARGET_ENE_0, 5.5 - f7_arg0:GetMapHitRadius(TARGET_SELF))
            f7_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3022, TARGET_ENE_0, f7_local8)
        else
            f7_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3004, TARGET_ENE_0, 8 - f7_arg0:GetMapHitRadius(TARGET_SELF), f7_local9, f7_local10)
            f7_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3021, TARGET_ENE_0, 5.5 - f7_arg0:GetMapHitRadius(TARGET_SELF))
            f7_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3022, TARGET_ENE_0, f7_local8)
        end
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function LastBoss_LargeSword_Act06(f8_arg0, f8_arg1, f8_arg2)
    local f8_local0 = f8_arg0:GetDist(TARGET_ENE_0)
    local f8_local1 = 12 - f8_arg0:GetMapHitRadius(TARGET_SELF) - 4
    local f8_local2 = 0
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
    f8_arg0:SetNumber(2, f8_arg0:GetNumber(2) + 10)
    if f8_local0 >= 3 then
        f8_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3005, TARGET_ENE_0, f8_local8, f8_local9, f8_local10)
    else
        f8_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 6001, TARGET_ENE_0, 12 - f8_arg0:GetMapHitRadius(TARGET_SELF), f8_local9, f8_local10)
        f8_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3005, TARGET_ENE_0, f8_local8)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function LastBoss_LargeSword_Act07(f9_arg0, f9_arg1, f9_arg2)
    local f9_local0 = 20 - f9_arg0:GetMapHitRadius(TARGET_SELF)
    local f9_local1 = 0
    local f9_local2 = 0
    local f9_local3 = f9_arg0:GetRandam_Int(1, 100)
    f9_arg0:SetNumber(2, f9_arg0:GetNumber(2) + 4)
    f9_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, f9_local0, f9_local1, f9_local2)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function LastBoss_LargeSword_Act08(f10_arg0, f10_arg1, f10_arg2)
    local f10_local0 = 20 - f10_arg0:GetMapHitRadius(TARGET_SELF)
    local f10_local1 = 0
    local f10_local2 = 0
    local f10_local3 = f10_arg0:GetRandam_Int(1, 100)
    f10_arg0:SetNumber(2, f10_arg0:GetNumber(2) + 4)
    f10_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, f10_local0, f10_local1, f10_local2)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function LastBoss_LargeSword_Act09(f11_arg0, f11_arg1, f11_arg2)
    local f11_local0 = 20 - f11_arg0:GetMapHitRadius(TARGET_SELF)
    local f11_local1 = 0
    local f11_local2 = 0
    local f11_local3 = f11_arg0:GetRandam_Int(1, 100)
    f11_arg0:SetNumber(2, f11_arg0:GetNumber(2) + 4)
    f11_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3008, TARGET_ENE_0, f11_local0, f11_local1, f11_local2)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function LastBoss_LargeSword_Act10(f12_arg0, f12_arg1, f12_arg2)
    local f12_local0 = f12_arg0:GetDist(TARGET_ENE_0)
    local f12_local1 = 4 - f12_arg0:GetMapHitRadius(TARGET_SELF) - 1
    local f12_local2 = 4 - f12_arg0:GetMapHitRadius(TARGET_SELF) + 1
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
    if f12_local11 <= 30 then
        f12_arg0:SetNumber(2, f12_arg0:GetNumber(2) + 7)
        f12_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3015, TARGET_ENE_0, 100, f12_local9, f12_local10)
        f12_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3010, TARGET_ENE_0, f12_local8)
    elseif f12_local11 <= 75 then
        f12_arg0:SetNumber(2, f12_arg0:GetNumber(2) + 14)
        f12_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3015, TARGET_ENE_0, 100)
        f12_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3014, TARGET_ENE_0, 100)
        f12_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3013, TARGET_ENE_0, f12_local8)
    else
        f12_arg0:SetNumber(2, f12_arg0:GetNumber(2) + 21)
        f12_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3015, TARGET_ENE_0, 100)
        f12_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3014, TARGET_ENE_0, 100)
        f12_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3014, TARGET_ENE_0, 4 - f12_arg0:GetMapHitRadius(TARGET_SELF))
        f12_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3013, TARGET_ENE_0, f12_local8)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function LastBoss_LargeSword_Act11(f13_arg0, f13_arg1, f13_arg2)
    local f13_local0 = f13_arg0:GetDist(TARGET_ENE_0)
    local f13_local1 = 7 - f13_arg0:GetMapHitRadius(TARGET_SELF) - 1
    local f13_local2 = 7 - f13_arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f13_local3 = 999
    local f13_local4 = 100
    local f13_local5 = 0
    local f13_local6 = 3
    local f13_local7 = 5
    Approach_Act_Flex(f13_arg0, f13_arg1, f13_local1, f13_local2, f13_local3, f13_local4, f13_local5, f13_local6, f13_local7)
    local f13_local8 = 20 - f13_arg0:GetMapHitRadius(TARGET_SELF)
    local f13_local9 = 0
    local f13_local10 = 0
    local f13_local11 = f13_arg0:GetRandam_Int(1, 100)
    local f13_local12 = f13_arg0:GetRandam_Int(1, 100)
    f13_arg0:SetNumber(2, f13_arg0:GetNumber(2) + 14)
    f13_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3015, TARGET_ENE_0, 100)
    f13_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3011, TARGET_ENE_0, f13_local8)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function LastBoss_LargeSword_Act12(f14_arg0, f14_arg1, f14_arg2)
    local f14_local0 = f14_arg0:GetDist(TARGET_ENE_0)
    local f14_local1 = 4 - f14_arg0:GetMapHitRadius(TARGET_SELF) - 1
    local f14_local2 = 4 - f14_arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f14_local3 = 999
    local f14_local4 = 100
    local f14_local5 = 0
    local f14_local6 = 3
    local f14_local7 = 5
    Approach_Act_Flex(f14_arg0, f14_arg1, f14_local1, f14_local2, f14_local3, f14_local4, f14_local5, f14_local6, f14_local7)
    local f14_local8 = 20 - f14_arg0:GetMapHitRadius(TARGET_SELF)
    local f14_local9 = 0
    local f14_local10 = 0
    local f14_local11 = f14_arg0:GetRandam_Int(1, 100)
    local f14_local12 = f14_arg0:GetRandam_Int(1, 100)
    f14_arg0:SetNumber(2, f14_arg0:GetNumber(2) + 14)
    f14_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3015, TARGET_ENE_0, 100)
    f14_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3012, TARGET_ENE_0, f14_local8)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function LastBoss_LargeSword_Act30(f15_arg0, f15_arg1, f15_arg2)
    local f15_local0 = 20 - f15_arg0:GetMapHitRadius(TARGET_SELF)
    local f15_local1 = 0
    local f15_local2 = 0
    local f15_local3 = f15_arg0:GetRandam_Int(1, 100)
    local f15_local4 = f15_arg0:GetRandam_Int(1, 100)
    f15_arg0:SetNumber(2, 0)
    f15_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 20000, TARGET_ENE_0, f15_local0, f15_local1, f15_local2)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function LastBoss_LargeSword_Act31(f16_arg0, f16_arg1, f16_arg2)
    local f16_local0 = 20 - f16_arg0:GetMapHitRadius(TARGET_SELF)
    local f16_local1 = 0
    local f16_local2 = 0
    local f16_local3 = f16_arg0:GetRandam_Int(1, 100)
    local f16_local4 = f16_arg0:GetRandam_Int(1, 100)
    f16_arg0:SetNumber(2, 0)
    f16_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 20001, TARGET_ENE_0, f16_local0, f16_local1, f16_local2)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function LastBoss_LargeSword_Act32(f17_arg0, f17_arg1, f17_arg2)
    local f17_local0 = 20 - f17_arg0:GetMapHitRadius(TARGET_SELF)
    local f17_local1 = 0
    local f17_local2 = 0
    local f17_local3 = f17_arg0:GetRandam_Int(1, 100)
    local f17_local4 = f17_arg0:GetRandam_Int(1, 100)
    f17_arg0:SetNumber(2, 0)
    f17_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 20002, TARGET_ENE_0, f17_local0, f17_local1, f17_local2)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function LastBoss_LargeSword_Act33(f18_arg0, f18_arg1, f18_arg2)
    local f18_local0 = 20 - f18_arg0:GetMapHitRadius(TARGET_SELF)
    local f18_local1 = 0
    local f18_local2 = 0
    local f18_local3 = f18_arg0:GetRandam_Int(1, 100)
    local f18_local4 = f18_arg0:GetRandam_Int(1, 100)
    f18_arg0:SetNumber(2, 0)
    f18_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 20004, TARGET_ENE_0, f18_local0, f18_local1, f18_local2)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function LastBoss528000_ActAfter_AdjustSpace(f19_arg0, f19_arg1, f19_arg2)
    f19_arg1:AddSubGoal(GOAL_LastBoss_AfterAttackAct, 10)
    
end

Goal.Update = function (f20_arg0, f20_arg1, f20_arg2)
    return Update_Default_NoSubGoal(f20_arg0, f20_arg1, f20_arg2)
    
end

Goal.Terminate = function (f21_arg0, f21_arg1, f21_arg2)
    
end

Goal.Interrupt = function (f22_arg0, f22_arg1, f22_arg2)
    return false
    
end

RegisterTableGoal(GOAL_LastBoss_AfterAttackAct, "LastBoss_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_LastBoss_AfterAttackAct, true)

Goal.Activate = function (f23_arg0, f23_arg1, f23_arg2)
    local f23_local0 = f23_arg1:GetDist(TARGET_ENE_0)
    local f23_local1 = f23_arg1:GetRandam_Int(1, 100)
    local f23_local2 = f23_arg1:GetRandam_Int(1, 100)
    local f23_local3 = 0
    local f23_local4 = f23_arg1:GetRandam_Float(2, 3)
    local f23_local5 = f23_arg1:GetRandam_Int(0, 1)
    local f23_local6 = f23_arg1:GetRandam_Int(30, 45)
    local f23_local7 = f23_arg1:GetRandam_Float(2, 3)
    local f23_local8 = f23_local0 + f23_arg1:GetRandam_Float(6, 8)
    local f23_local9 = f23_arg1:GetRandam_Float(1, 2)
    local f23_local10 = f23_arg1:GetRandam_Float(1.3, 1.7)
    local f23_local11 = f23_local0 + f23_arg1:GetRandam_Float(3, 5)
    if f23_local0 >= 10 then
        if f23_local2 <= 80 then
            f23_arg2:AddSubGoal(GOAL_COMMON_SidewayMove, f23_local4, TARGET_ENE_0, f23_local5, f23_local6, true, true, IsGuard)
        elseif f23_local2 <= 100 then
            f23_arg2:AddSubGoal(GOAL_COMMON_LeaveTarget, f23_local7, TARGET_ENE_0, f23_local8, TARGET_ENE_0, true, IsGuard)
        else
            f23_arg2:AddSubGoal(GOAL_COMMON_ApproachTarget, 4, TARGET_ENE_0, 4, TARGET_SELF, true, -1)
        end
    elseif f23_local0 >= 6 then
        if f23_local2 <= 30 then
            f23_arg2:AddSubGoal(GOAL_COMMON_SidewayMove, f23_local4, TARGET_ENE_0, f23_local5, f23_local6, true, true, IsGuard)
        elseif f23_local2 <= 40 then
            f23_arg2:AddSubGoal(GOAL_COMMON_LeaveTarget, f23_local7, TARGET_ENE_0, f23_local8, TARGET_ENE_0, true, IsGuard)
            if false then
            end
        end
    elseif f23_local0 >= 3 then
        if f23_local2 <= 20 then
            f23_arg2:AddSubGoal(GOAL_COMMON_SidewayMove, f23_local9, TARGET_ENE_0, f23_local5, f23_local6, true, true, IsGuard)
        elseif f23_local2 <= 35 then
            f23_arg2:AddSubGoal(GOAL_COMMON_LeaveTarget, f23_local10, TARGET_ENE_0, f23_local11, TARGET_ENE_0, true, IsGuard)
            if false then
            end
        end
    elseif f23_local2 <= 0 then
        f23_arg2:AddSubGoal(GOAL_COMMON_SidewayMove, f23_local9, TARGET_ENE_0, f23_local5, f23_local6, true, true, IsGuard)
    elseif f23_local2 <= 30 then
        f23_arg2:AddSubGoal(GOAL_COMMON_LeaveTarget, f23_local10, TARGET_ENE_0, f23_local11, TARGET_ENE_0, true, IsGuard)
    else
    end
    
end

Goal.Update = function (f24_arg0, f24_arg1, f24_arg2)
    return Update_Default_NoSubGoal(f24_arg0, f24_arg1, f24_arg2)
    
end


