RegisterTableGoal(GOAL_LastBoss_Gwyn_Battle, "LastBoss_Gwyn")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_LastBoss_Gwyn_Battle, true)

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
    f2_arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    local f2_local3 = f2_arg1:GetDist(TARGET_ENE_0)
    local f2_local4 = 1
    local f2_local5 = f2_arg1:GetRandam_Int(1, 100)
    local f2_local6 = f2_arg1:GetHpRate(TARGET_SELF)
    if f2_arg1:GetNumber(0) >= 100 or f2_arg1:HasSpecialEffectId(TARGET_SELF, 12123) then
        f2_local0[12] = 100
    elseif f2_arg1:GetNumber(1) >= 100 and f2_local6 <= 0.75 then
        f2_local0[11] = 100
    elseif f2_local3 >= 15 then
        f2_local0[1] = 10
        f2_local0[2] = 0
        f2_local0[3] = 15
        f2_local0[4] = 15
        f2_local0[5] = 5
        f2_local0[6] = 35
        f2_local0[8] = 0
        f2_local0[9] = 0
        f2_local0[10] = 20
    elseif f2_local3 >= 10 then
        f2_local0[1] = 5
        f2_local0[2] = 0
        f2_local0[3] = 20
        f2_local0[4] = 20
        f2_local0[5] = 10
        f2_local0[6] = 20
        f2_local0[8] = 0
        f2_local0[9] = 0
        f2_local0[10] = 25
    elseif f2_local3 >= 6 then
        f2_local0[1] = 10
        f2_local0[2] = 0
        f2_local0[3] = 20
        f2_local0[4] = 20
        f2_local0[5] = 10
        f2_local0[6] = 10
        f2_local0[8] = 0
        f2_local0[9] = 0
        f2_local0[10] = 30
    elseif f2_local3 >= 2 then
        f2_local0[1] = 15
        f2_local0[2] = 10
        f2_local0[3] = 20
        f2_local0[4] = 20
        f2_local0[5] = 15
        f2_local0[6] = 0
        f2_local0[8] = 0
        f2_local0[9] = 20
        f2_local0[10] = 0
    else
        f2_local0[1] = 25
        f2_local0[2] = 20
        f2_local0[3] = 0
        f2_local0[4] = 0
        f2_local0[5] = 20
        f2_local0[6] = 0
        f2_local0[8] = 20
        f2_local0[9] = 20
        f2_local0[10] = 0
    end
    f2_local0[8] = SetCoolTime(f2_arg1, f2_arg2, 3021, 8, f2_local0[8], 0)
    f2_local0[10] = SetCoolTime(f2_arg1, f2_arg2, 3023, 8, f2_local0[10], 0)
    f2_local1[1] = REGIST_FUNC(f2_arg1, f2_arg2, LastBoss_Gwyn_Act01)
    f2_local1[2] = REGIST_FUNC(f2_arg1, f2_arg2, LastBoss_Gwyn_Act02)
    f2_local1[3] = REGIST_FUNC(f2_arg1, f2_arg2, LastBoss_Gwyn_Act03)
    f2_local1[4] = REGIST_FUNC(f2_arg1, f2_arg2, LastBoss_Gwyn_Act04)
    f2_local1[5] = REGIST_FUNC(f2_arg1, f2_arg2, LastBoss_Gwyn_Act05)
    f2_local1[6] = REGIST_FUNC(f2_arg1, f2_arg2, LastBoss_Gwyn_Act06)
    f2_local1[8] = REGIST_FUNC(f2_arg1, f2_arg2, LastBoss_Gwyn_Act08)
    f2_local1[9] = REGIST_FUNC(f2_arg1, f2_arg2, LastBoss_Gwyn_Act09)
    f2_local1[10] = REGIST_FUNC(f2_arg1, f2_arg2, LastBoss_Gwyn_Act10)
    f2_local1[11] = REGIST_FUNC(f2_arg1, f2_arg2, LastBoss_Gwyn_Act11)
    f2_local1[12] = REGIST_FUNC(f2_arg1, f2_arg2, LastBoss_Gwyn_Act12)
    local f2_local7 = REGIST_FUNC(f2_arg1, f2_arg2, LastBoss528000_ActAfter_AdjustSpace)
    Common_Battle_Activate(f2_arg1, f2_arg2, f2_local0, f2_local1, f2_local7, f2_local2)
    
end

function LastBoss_Gwyn_Act01(f3_arg0, f3_arg1, f3_arg2)
    local f3_local0 = f3_arg0:GetDist(TARGET_ENE_0)
    local f3_local1 = 6 - f3_arg0:GetMapHitRadius(TARGET_SELF) - 1
    local f3_local2 = 6 - f3_arg0:GetMapHitRadius(TARGET_SELF) + 1
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
    local f3_local13 = f3_arg0:GetHpRate(TARGET_SELF)
    if f3_local11 <= 0 then
        f3_arg0:SetNumber(0, f3_arg0:GetNumber(0) + 4)
        f3_arg0:SetNumber(1, f3_arg0:GetNumber(1) + 4)
        f3_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, f3_local8, f3_local9, f3_local10)
    elseif f3_local11 <= 60 then
        f3_arg0:SetNumber(0, f3_arg0:GetNumber(0) + 8)
        f3_arg0:SetNumber(1, f3_arg0:GetNumber(1) + 4)
        if f3_local12 <= 60 then
            f3_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3000, TARGET_ENE_0, 5 - f3_arg0:GetMapHitRadius(TARGET_SELF), f3_local9, f3_local10)
            f3_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3011, TARGET_ENE_0, f3_local8)
        else
            f3_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3000, TARGET_ENE_0, 5 - f3_arg0:GetMapHitRadius(TARGET_SELF), f3_local9, f3_local10)
            f3_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3013, TARGET_ENE_0, f3_local8)
        end
    else
        f3_arg0:SetNumber(0, f3_arg0:GetNumber(0) + 12)
        f3_arg0:SetNumber(1, f3_arg0:GetNumber(1) + 8)
        if f3_local12 <= 30 then
            f3_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3000, TARGET_ENE_0, 6 - f3_arg0:GetMapHitRadius(TARGET_SELF), f3_local9, f3_local10)
            f3_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, 5 - f3_arg0:GetMapHitRadius(TARGET_SELF))
            f3_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, f3_local8)
        elseif f3_local12 <= 60 then
            f3_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3000, TARGET_ENE_0, 6 - f3_arg0:GetMapHitRadius(TARGET_SELF), f3_local9, f3_local10)
            f3_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, 5 - f3_arg0:GetMapHitRadius(TARGET_SELF))
            f3_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, f3_local8)
        elseif f3_local12 <= 80 then
            f3_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3000, TARGET_ENE_0, 5 - f3_arg0:GetMapHitRadius(TARGET_SELF), f3_local9, f3_local10)
            f3_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3013, TARGET_ENE_0, 5 - f3_arg0:GetMapHitRadius(TARGET_SELF))
            f3_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3014, TARGET_ENE_0, f3_local8)
        else
            f3_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3000, TARGET_ENE_0, 5 - f3_arg0:GetMapHitRadius(TARGET_SELF), f3_local9, f3_local10)
            f3_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3013, TARGET_ENE_0, 5 - f3_arg0:GetMapHitRadius(TARGET_SELF))
            f3_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3016, TARGET_ENE_0, f3_local8)
        end
    end
    if f3_local13 >= 0.5 then
        GetWellSpace_Odds = 70
    else
        GetWellSpace_Odds = 30
    end
    return GetWellSpace_Odds
    
end

function LastBoss_Gwyn_Act02(f4_arg0, f4_arg1, f4_arg2)
    local f4_local0 = f4_arg0:GetDist(TARGET_ENE_0)
    local f4_local1 = 4.5 - f4_arg0:GetMapHitRadius(TARGET_SELF) - 1
    local f4_local2 = 4.5 - f4_arg0:GetMapHitRadius(TARGET_SELF)
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
    local f4_local13 = f4_arg0:GetHpRate(TARGET_SELF)
    f4_arg0:SetNumber(0, f4_arg0:GetNumber(0) + 8)
    f4_arg0:SetNumber(1, f4_arg0:GetNumber(1) + 8)
    f4_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3006, TARGET_ENE_0, f4_local8, f4_local9, f4_local10)
    GetWellSpace_Odds = 70
    return GetWellSpace_Odds
    
end

function LastBoss_Gwyn_Act03(f5_arg0, f5_arg1, f5_arg2)
    local f5_local0 = f5_arg0:GetDist(TARGET_ENE_0)
    local f5_local1 = 13 - f5_arg0:GetMapHitRadius(TARGET_SELF) - 1
    local f5_local2 = 13 - f5_arg0:GetMapHitRadius(TARGET_SELF) + 1
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
    local f5_local13 = f5_arg0:GetHpRate(TARGET_SELF)
    if f5_local11 <= 25 then
        f5_arg0:SetNumber(0, f5_arg0:GetNumber(0) + 8)
        f5_arg0:SetNumber(1, f5_arg0:GetNumber(1) + 4)
        f5_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3008, TARGET_ENE_0, f5_local8, f5_local9, f5_local10)
    else
        f5_arg0:SetNumber(0, f5_arg0:GetNumber(0) + 12)
        f5_arg0:SetNumber(1, f5_arg0:GetNumber(1) + 8)
        if f5_local12 <= 40 then
            f5_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3008, TARGET_ENE_0, 6 - f5_arg0:GetMapHitRadius(TARGET_SELF), f5_local9, f5_local10)
            f5_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3012, TARGET_ENE_0, f5_local8)
        elseif f5_local12 <= 70 then
            f5_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3008, TARGET_ENE_0, 5 - f5_arg0:GetMapHitRadius(TARGET_SELF), f5_local9, f5_local10)
            f5_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3009, TARGET_ENE_0, f5_local8)
        else
            f5_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3008, TARGET_ENE_0, 4.5 - f5_arg0:GetMapHitRadius(TARGET_SELF), f5_local9, f5_local10)
            f5_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3006, TARGET_ENE_0, f5_local8)
        end
    end
    if f5_local13 >= 0.5 then
        GetWellSpace_Odds = 70
    else
        GetWellSpace_Odds = 30
    end
    return GetWellSpace_Odds
    
end

function LastBoss_Gwyn_Act04(f6_arg0, f6_arg1, f6_arg2)
    local f6_local0 = f6_arg0:GetDist(TARGET_ENE_0)
    local f6_local1 = 12.5 - f6_arg0:GetMapHitRadius(TARGET_SELF) - 1
    local f6_local2 = 12.5 - f6_arg0:GetMapHitRadius(TARGET_SELF) + 1
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
    local f6_local13 = f6_arg0:GetHpRate(TARGET_SELF)
    if f6_local11 <= 35 then
        f6_arg0:SetNumber(0, f6_arg0:GetNumber(0) + 10)
        f6_arg0:SetNumber(1, f6_arg0:GetNumber(1) + 5)
        f6_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3010, TARGET_ENE_0, f6_local8, f6_local9, f6_local10)
    else
        f6_arg0:SetNumber(0, f6_arg0:GetNumber(0) + 15)
        f6_arg0:SetNumber(1, f6_arg0:GetNumber(1) + 10)
        if f6_local12 <= 65 then
            f6_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3010, TARGET_ENE_0, 5 - f6_arg0:GetMapHitRadius(TARGET_SELF), f6_local9, f6_local10)
            f6_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3011, TARGET_ENE_0, f6_local8)
        else
            f6_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3010, TARGET_ENE_0, 6.5 - f6_arg0:GetMapHitRadius(TARGET_SELF), f6_local9, f6_local10)
            f6_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3015, TARGET_ENE_0, f6_local8)
        end
    end
    if f6_local13 >= 0.5 then
        GetWellSpace_Odds = 70
    else
        GetWellSpace_Odds = 30
    end
    return GetWellSpace_Odds
    
end

function LastBoss_Gwyn_Act05(f7_arg0, f7_arg1, f7_arg2)
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
    local f7_local13 = f7_arg0:GetHpRate(TARGET_SELF)
    if f7_local11 <= 0 then
        f7_arg0:SetNumber(0, f7_arg0:GetNumber(0) + 5)
        f7_arg0:SetNumber(1, f7_arg0:GetNumber(1) + 5)
        f7_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3012, TARGET_ENE_0, f7_local8, f7_local9, f7_local10)
    elseif f7_local11 <= 60 then
        f7_arg0:SetNumber(0, f7_arg0:GetNumber(0) + 10)
        f7_arg0:SetNumber(1, f7_arg0:GetNumber(1) + 10)
        if f7_local12 <= 30 then
            f7_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3012, TARGET_ENE_0, 5 - f7_arg0:GetMapHitRadius(TARGET_SELF), f7_local9, f7_local10)
            f7_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3011, TARGET_ENE_0, f7_local8)
        elseif f7_local12 <= 65 then
            f7_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3012, TARGET_ENE_0, 5 - f7_arg0:GetMapHitRadius(TARGET_SELF), f7_local9, f7_local10)
            f7_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3013, TARGET_ENE_0, f7_local8)
        else
            f7_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3012, TARGET_ENE_0, 6.5 - f7_arg0:GetMapHitRadius(TARGET_SELF), f7_local9, f7_local10)
            f7_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3015, TARGET_ENE_0, f7_local8)
        end
    else
        f7_arg0:SetNumber(0, f7_arg0:GetNumber(0) + 15)
        f7_arg0:SetNumber(1, f7_arg0:GetNumber(1) + 15)
        if f7_local12 <= 40 then
            f7_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3012, TARGET_ENE_0, 5 - f7_arg0:GetMapHitRadius(TARGET_SELF), f7_local9, f7_local10)
            f7_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3013, TARGET_ENE_0, 5 - f7_arg0:GetMapHitRadius(TARGET_SELF))
            f7_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3014, TARGET_ENE_0, f7_local8)
        elseif f7_local12 <= 80 then
            f7_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3012, TARGET_ENE_0, 5 - f7_arg0:GetMapHitRadius(TARGET_SELF), f7_local9, f7_local10)
            f7_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3013, TARGET_ENE_0, 5 - f7_arg0:GetMapHitRadius(TARGET_SELF))
            f7_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3016, TARGET_ENE_0, f7_local8)
        else
            f7_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3012, TARGET_ENE_0, 6.5 - f7_arg0:GetMapHitRadius(TARGET_SELF), f7_local9, f7_local10)
            f7_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3015, TARGET_ENE_0, 6 - f7_arg0:GetMapHitRadius(TARGET_SELF))
            f7_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3012, TARGET_ENE_0, f7_local8)
        end
    end
    GetWellSpace_Odds = 50
    return GetWellSpace_Odds
    
end

function LastBoss_Gwyn_Act06(f8_arg0, f8_arg1, f8_arg2)
    local f8_local0 = f8_arg0:GetDist(TARGET_ENE_0)
    local f8_local1 = 17 - f8_arg0:GetMapHitRadius(TARGET_SELF) - 1
    local f8_local2 = 17 - f8_arg0:GetMapHitRadius(TARGET_SELF) + 1
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
    local f8_local13 = f8_arg0:GetHpRate(TARGET_SELF)
    f8_arg0:SetNumber(0, f8_arg0:GetNumber(0) + 15)
    f8_arg0:SetNumber(1, f8_arg0:GetNumber(1) + 10)
    f8_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3018, TARGET_ENE_0, f8_local8, f8_local9, f8_local10)
    if f8_local13 >= 0.5 then
        GetWellSpace_Odds = 70
    else
        GetWellSpace_Odds = 50
    end
    return GetWellSpace_Odds
    
end

function LastBoss_Gwyn_Act08(f9_arg0, f9_arg1, f9_arg2)
    local f9_local0 = 20 - f9_arg0:GetMapHitRadius(TARGET_SELF)
    local f9_local1 = 0
    local f9_local2 = 0
    local f9_local3 = f9_arg0:GetRandam_Int(1, 100)
    local f9_local4 = f9_arg0:GetRandam_Int(1, 100)
    local f9_local5 = f9_arg0:GetHpRate(TARGET_SELF)
    if f9_local3 <= 20 then
        f9_arg0:SetNumber(0, f9_arg0:GetNumber(0) + 4)
        f9_arg0:SetNumber(1, f9_arg0:GetNumber(1) + 4)
        f9_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3021, TARGET_ENE_0, f9_local0, f9_local1, f9_local2)
    else
        f9_arg0:SetNumber(0, f9_arg0:GetNumber(0) + 6)
        f9_arg0:SetNumber(1, f9_arg0:GetNumber(1) + 6)
        if f9_local4 <= 30 then
            f9_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3021, TARGET_ENE_0, 2 - f9_arg0:GetMapHitRadius(TARGET_SELF), f9_local1, f9_local2)
            f9_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3021, TARGET_ENE_0, f9_local0)
        else
            f9_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3021, TARGET_ENE_0, 4.5 - f9_arg0:GetMapHitRadius(TARGET_SELF), f9_local1, f9_local2)
            f9_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3006, TARGET_ENE_0, f9_local0)
        end
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function LastBoss_Gwyn_Act09(f10_arg0, f10_arg1, f10_arg2)
    local f10_local0 = f10_arg0:GetDist(TARGET_ENE_0)
    local f10_local1 = 2.5 - f10_arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f10_local2 = 2.5 - f10_arg0:GetMapHitRadius(TARGET_SELF) + 1
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
    local f10_local13 = f10_arg0:GetHpRate(TARGET_SELF)
    if f10_local11 <= 40 then
        f10_arg0:SetNumber(0, f10_arg0:GetNumber(0) + 0)
        f10_arg0:SetNumber(1, f10_arg0:GetNumber(1) + 15)
        f10_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3022, TARGET_ENE_0, f10_local8, f10_local9, f10_local10)
    else
        f10_arg0:SetNumber(0, f10_arg0:GetNumber(0) + 5)
        f10_arg0:SetNumber(1, f10_arg0:GetNumber(1) + 15)
        if f10_local12 <= 50 then
            f10_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3022, TARGET_ENE_0, 5 - f10_arg0:GetMapHitRadius(TARGET_SELF), f10_local9, f10_local10)
            f10_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3014, TARGET_ENE_0, f10_local8)
        else
            f10_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3022, TARGET_ENE_0, 5 - f10_arg0:GetMapHitRadius(TARGET_SELF), f10_local9, f10_local10)
            f10_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3016, TARGET_ENE_0, f10_local8)
        end
    end
    GetWellSpace_Odds = 50
    return GetWellSpace_Odds
    
end

function LastBoss_Gwyn_Act10(f11_arg0, f11_arg1, f11_arg2)
    local f11_local0 = f11_arg0:GetDist(TARGET_ENE_0)
    local f11_local1 = 100 - f11_arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f11_local2 = 100 - f11_arg0:GetMapHitRadius(TARGET_SELF)
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
    local f11_local13 = f11_arg0:GetHpRate(TARGET_SELF)
    if f11_local0 <= 10 then
        f11_arg0:SetNumber(0, f11_arg0:GetNumber(0) + 0)
        f11_arg0:SetNumber(1, f11_arg0:GetNumber(1) + 15)
        f11_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3023, TARGET_ENE_0, f11_local8, f11_local9, f11_local10)
    elseif f11_local11 <= 60 then
        f11_arg0:SetNumber(0, f11_arg0:GetNumber(0) + 0)
        f11_arg0:SetNumber(1, f11_arg0:GetNumber(1) + 15)
        f11_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3023, TARGET_ENE_0, f11_local8, f11_local9, f11_local10)
    else
        f11_arg0:SetNumber(0, f11_arg0:GetNumber(0) + 0)
        f11_arg0:SetNumber(1, f11_arg0:GetNumber(1) + 15)
        f11_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3023, TARGET_ENE_0, 100 - f11_arg0:GetMapHitRadius(TARGET_SELF), f11_local9, f11_local10)
        f11_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3023, TARGET_ENE_0, f11_local8)
    end
    if f11_local13 >= 0.5 then
        GetWellSpace_Odds = 70
    else
        GetWellSpace_Odds = 50
    end
    return GetWellSpace_Odds
    
end

function LastBoss_Gwyn_Act11(f12_arg0, f12_arg1, f12_arg2)
    local f12_local0 = f12_arg0:GetDist(TARGET_ENE_0)
    local f12_local1 = 20 - f12_arg0:GetMapHitRadius(TARGET_SELF)
    local f12_local2 = 0
    local f12_local3 = 0
    local f12_local4 = f12_arg0:GetRandam_Int(1, 100)
    local f12_local5 = f12_arg0:GetRandam_Int(1, 100)
    local f12_local6 = f12_arg0:GetHpRate(TARGET_SELF)
    if f12_local0 <= 10 then
        f12_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 6001, TARGET_ENE_0, 100 - f12_arg0:GetMapHitRadius(TARGET_SELF), f12_local2, f12_local3)
        f12_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3024, TARGET_ENE_0, 100, f12_local2, f12_local3)
        f12_arg0:SetNumber(0, f12_arg0:GetNumber(0) + 15)
        f12_arg0:SetNumber(1, 20)
    else
        f12_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3024, TARGET_ENE_0, 100, f12_local2, f12_local3)
        f12_arg0:SetNumber(0, f12_arg0:GetNumber(0) + 15)
        f12_arg0:SetNumber(1, 20)
    end
    local f12_local7 = f12_arg0:GetRandam_Float(3, 3)
    local f12_local8 = f12_local0 + f12_arg0:GetRandam_Float(20, 20)
    local f12_local9 = 0
    f12_arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, f12_local7, TARGET_ENE_0, f12_local8, TARGET_ENE_0, true, IsGuard)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function LastBoss_Gwyn_Act12(f13_arg0, f13_arg1, f13_arg2)
    local f13_local0 = f13_arg0:GetDist(TARGET_ENE_0)
    local f13_local1 = 5 - f13_arg0:GetMapHitRadius(TARGET_SELF)
    local f13_local2 = 5 - f13_arg0:GetMapHitRadius(TARGET_SELF)
    local f13_local3 = 999
    local f13_local4 = 100
    local f13_local5 = 0
    local f13_local6 = 3
    local f13_local7 = 5
    local f13_local8 = 20 - f13_arg0:GetMapHitRadius(TARGET_SELF)
    local f13_local9 = 0
    local f13_local10 = 0
    local f13_local11 = f13_arg0:GetRandam_Int(1, 100)
    local f13_local12 = f13_arg0:GetRandam_Int(1, 100)
    local f13_local13 = f13_arg0:GetHpRate(TARGET_SELF)
    if f13_local0 <= 5 - f13_arg0:GetMapHitRadius(TARGET_SELF) then
        f13_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3030, TARGET_ENE_0, f13_local8, f13_local9, f13_local10)
        f13_arg0:SetNumber(0, 20)
        f13_arg0:SetNumber(1, f13_arg0:GetNumber(1) + 15)
    elseif f13_local0 <= 13 - f13_arg0:GetMapHitRadius(TARGET_SELF) - 2 then
        f13_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3008, TARGET_ENE_0, 100, f13_local9, f13_local10)
        f13_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3030, TARGET_ENE_0, f13_local8)
        f13_arg0:SetNumber(0, 20)
        f13_arg0:SetNumber(1, f13_arg0:GetNumber(1) + 15)
    elseif f13_local0 <= 17 - f13_arg0:GetMapHitRadius(TARGET_SELF) - 2 then
        f13_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3018, TARGET_ENE_0, 100, f13_local9, f13_local10)
        f13_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3030, TARGET_ENE_0, f13_local8)
        f13_arg0:SetNumber(0, 20)
        f13_arg0:SetNumber(1, f13_arg0:GetNumber(1) + 15)
    else
        Approach_Act_Flex(f13_arg0, f13_arg1, f13_local1 + 10, f13_local2, f13_local3, f13_local4, f13_local5, f13_local6, f13_local7)
        f13_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3018, TARGET_ENE_0, 100, f13_local9, f13_local10)
        f13_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3030, TARGET_ENE_0, f13_local8)
        f13_arg0:SetNumber(0, 20)
        f13_arg0:SetNumber(1, f13_arg0:GetNumber(1) + 15)
    end
    local f13_local14 = f13_arg0:GetRandam_Float(1.5, 1.5)
    local f13_local15 = f13_local0 + f13_arg0:GetRandam_Float(15, 15)
    local f13_local16 = 0
    if f13_local13 >= 0.2 then
        f13_arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, f13_local14, TARGET_ENE_0, f13_local15, TARGET_ENE_0, true, IsGuard)
    else
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function LastBoss528000_ActAfter_AdjustSpace(f14_arg0, f14_arg1, f14_arg2)
    f14_arg1:AddSubGoal(GOAL_LastBoss_AfterAttackAct, 10)
    
end

Goal.Update = function (f15_arg0, f15_arg1, f15_arg2)
    return Update_Default_NoSubGoal(f15_arg0, f15_arg1, f15_arg2)
    
end

Goal.Terminate = function (f16_arg0, f16_arg1, f16_arg2)
    
end

Goal.Interrupt = function (f17_arg0, f17_arg1, f17_arg2)
    local f17_local0 = f17_arg1:GetDist(TARGET_ENE_0)
    local f17_local1 = f17_arg1:GetRandam_Int(1, 100)
    local f17_local2 = f17_arg1:GetRandam_Int(1, 100)
    local f17_local3 = f17_arg1:GetHpRate(TARGET_ENE_0)
    if f17_arg1:IsInterupt(INTERUPT_Shoot) then
        if f17_local0 >= 20 and f17_local1 <= 100 then
            f17_arg2:ClearSubGoal()
            f17_arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 2, 6000, TARGET_ENE_0, 20, 0, 0)
            return true
        elseif f17_local0 >= 12 and f17_local1 <= 50 then
            f17_arg2:ClearSubGoal()
            f17_arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 2, 6000, TARGET_ENE_0, 20, 0, 0)
            return true
        elseif f17_local0 >= 5 and f17_local1 <= 30 then
            f17_arg2:ClearSubGoal()
            f17_arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 2, 6000, TARGET_ENE_0, 20, 0, 0)
            return true
        else
        end
    end
    if f17_arg1:IsInterupt(INTERUPT_AIGuardBroken) then
        f17_arg1:SetNumber(0, f17_arg1:GetNumber(0) + 25)
        f17_arg1:SetNumber(1, f17_arg1:GetNumber(1) + 25)
    end
    if f17_local3 <= 0.5 then
        f17_local1 = f17_local1 * 2
    else
        f17_local1 = f17_local1 * 1
    end
    if f17_arg1:IsInterupt(INTERUPT_SuccessThrow) then
        f17_arg1:SetNumber(0, f17_arg1:GetNumber(0) + 20)
        f17_arg1:SetNumber(1, f17_arg1:GetNumber(1) + 5)
        if f17_local1 >= 60 then
            if f17_local2 <= 50 then
                f17_arg2:ClearSubGoal()
                f17_arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 7, 3025, TARGET_ENE_0, 20 - f17_arg1:GetMapHitRadius(TARGET_SELF), 0, 0)
                return true
            else
                f17_arg2:ClearSubGoal()
                f17_arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 7, 3026, TARGET_ENE_0, 20 - f17_arg1:GetMapHitRadius(TARGET_SELF), 0, 0)
                return true
            end
        else
        end
    end
    return false
    
end


