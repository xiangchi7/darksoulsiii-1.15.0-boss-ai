RegisterTableGoal(GOAL_KingAndDragon_503000_Battle, "KingAndDragon_503000_Battle")

Goal.Initialize = function (f1_arg0, f1_arg1, f1_arg2, f1_arg3)
    
end

Goal.Activate = function (f2_arg0, f2_arg1, f2_arg2)
    Init_Pseudo_Global(f2_arg1, f2_arg2)
    f2_arg1:SetStringIndexedNumber("Dist_SideStep", 8)
    f2_arg1:SetStringIndexedNumber("Dist_BackStep", 8)
    local f2_local0 = {}
    local f2_local1 = {}
    local f2_local2 = {}
    Common_Clear_Param(f2_local0, f2_local1, f2_local2)
    f2_arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    local f2_local3 = f2_arg1:GetDist(TARGET_ENE_0)
    local f2_local4 = f2_arg1:GetRandam_Int(1, 100)
    local f2_local5 = f2_arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local f2_local6 = f2_arg1:GetEventRequest()
    if InsideRange(f2_arg1, f2_arg2, -40, 60, -5 - f2_arg1:GetMapHitRadius(TARGET_SELF), 1.3 - f2_arg1:GetMapHitRadius(TARGET_SELF)) then
        f2_local0[1] = 100
    end
    if InsideRange(f2_arg1, f2_arg2, 115, 60, 1 - f2_arg1:GetMapHitRadius(TARGET_SELF), 5 - f2_arg1:GetMapHitRadius(TARGET_SELF)) then
        f2_local0[2] = 100
    end
    if InsideRange(f2_arg1, f2_arg2, 0, 90, 12 - f2_arg1:GetMapHitRadius(TARGET_SELF), 16 - f2_arg1:GetMapHitRadius(TARGET_SELF)) then
        f2_local0[3] = 100
    end
    if InsideRange(f2_arg1, f2_arg2, 0, 90, 11.4 - f2_arg1:GetMapHitRadius(TARGET_SELF), 15.4 - f2_arg1:GetMapHitRadius(TARGET_SELF)) then
        f2_local0[4] = 100
    end
    if InsideRange(f2_arg1, f2_arg2, 0, 90, 19 - f2_arg1:GetMapHitRadius(TARGET_SELF), 24 - f2_arg1:GetMapHitRadius(TARGET_SELF)) then
        f2_local0[5] = 100
    end
    if InsideRange(f2_arg1, f2_arg2, 10, 45, 12 - f2_arg1:GetMapHitRadius(TARGET_SELF), 15 - f2_arg1:GetMapHitRadius(TARGET_SELF)) then
        f2_local0[6] = 100
    end
    if InsideRange(f2_arg1, f2_arg2, 10, 45, 18 - f2_arg1:GetMapHitRadius(TARGET_SELF), 22 - f2_arg1:GetMapHitRadius(TARGET_SELF)) then
        f2_local0[7] = 100
    end
    if InsideRange(f2_arg1, f2_arg2, 10, 45, 24 - f2_arg1:GetMapHitRadius(TARGET_SELF), 29 - f2_arg1:GetMapHitRadius(TARGET_SELF)) then
        f2_local0[8] = 100
    end
    if InsideRange(f2_arg1, f2_arg2, 0, 45, 8 - f2_arg1:GetMapHitRadius(TARGET_SELF), 13 - f2_arg1:GetMapHitRadius(TARGET_SELF)) then
        f2_local0[9] = 100
    end
    if InsideRange(f2_arg1, f2_arg2, 0, 90, 7 - f2_arg1:GetMapHitRadius(TARGET_SELF), 19 - f2_arg1:GetMapHitRadius(TARGET_SELF)) then
        f2_local0[10] = 100
    end
    if InsideRange(f2_arg1, f2_arg2, 0, 360, 17 - f2_arg1:GetMapHitRadius(TARGET_SELF), 67 - f2_arg1:GetMapHitRadius(TARGET_SELF)) then
        f2_local0[11] = 100
    end
    if InsideRange(f2_arg1, f2_arg2, 0, 360, -999 - f2_arg1:GetMapHitRadius(TARGET_SELF), 11 - f2_arg1:GetMapHitRadius(TARGET_SELF)) then
        f2_local0[12] = 100
    end
    if InsideRange(f2_arg1, f2_arg2, 0, 360, 17 - f2_arg1:GetMapHitRadius(TARGET_SELF), 27 - f2_arg1:GetMapHitRadius(TARGET_SELF)) then
        f2_local0[13] = 250
    end
    if InsideRange(f2_arg1, f2_arg2, 0, 360, 29 - f2_arg1:GetMapHitRadius(TARGET_SELF), 42 - f2_arg1:GetMapHitRadius(TARGET_SELF)) then
        f2_local0[14] = 100
    end
    if InsideRange(f2_arg1, f2_arg2, 0, 360, 47 - f2_arg1:GetMapHitRadius(TARGET_SELF), 67.2 - f2_arg1:GetMapHitRadius(TARGET_SELF)) then
        f2_local0[15] = 100
    end
    if InsideRange(f2_arg1, f2_arg2, 0, 360, -999 - f2_arg1:GetMapHitRadius(TARGET_SELF), 11 - f2_arg1:GetMapHitRadius(TARGET_SELF)) then
        f2_local0[16] = 100
    end
    if InsideRange(f2_arg1, f2_arg2, 0, 360, 15, 20) then
        f2_local0[16] = 100
    end
    if InsideRange(f2_arg1, f2_arg2, 10, 45, 22.1 - f2_arg1:GetMapHitRadius(TARGET_SELF), 27.1 - f2_arg1:GetMapHitRadius(TARGET_SELF)) then
        f2_local0[17] = 100
    end
    if InsideRange(f2_arg1, f2_arg2, 0, 45, 4 - f2_arg1:GetMapHitRadius(TARGET_SELF), 8 - f2_arg1:GetMapHitRadius(TARGET_SELF)) then
        f2_local0[18] = 100
    end
    if f2_local3 >= 22 then
        f2_local0[20] = 10
        f2_local0[21] = 10
        f2_local0[16] = 0
    elseif f2_local3 >= 17 then
        f2_local0[20] = 10
        f2_local0[21] = 10
        f2_local0[16] = 0
    elseif f2_local3 >= 5 then
        f2_local0[20] = 10
        f2_local0[21] = 10
        f2_local0[16] = 0
    else
        f2_local0[20] = 10
        f2_local0[21] = 10
        f2_local0[16] = 10
    end
    f2_local0[1] = SetCoolTime(f2_arg1, f2_arg2, 3002, 20, f2_local0[1], 25)
    f2_local0[2] = SetCoolTime(f2_arg1, f2_arg2, 3017, 20, f2_local0[2], 25)
    f2_local0[3] = SetCoolTime(f2_arg1, f2_arg2, 3013, 45, f2_local0[3], 1)
    f2_local0[3] = SetCoolTime(f2_arg1, f2_arg2, 3000, 45, f2_local0[3], 1)
    f2_local0[3] = SetCoolTime(f2_arg1, f2_arg2, 3006, 45, f2_local0[3], 1)
    f2_local0[4] = SetCoolTime(f2_arg1, f2_arg2, 3000, 45, f2_local0[4], 1)
    f2_local0[4] = SetCoolTime(f2_arg1, f2_arg2, 3013, 45, f2_local0[4], 1)
    f2_local0[4] = SetCoolTime(f2_arg1, f2_arg2, 3006, 45, f2_local0[4], 1)
    f2_local0[5] = SetCoolTime(f2_arg1, f2_arg2, 3006, 45, f2_local0[5], 1)
    f2_local0[5] = SetCoolTime(f2_arg1, f2_arg2, 3013, 45, f2_local0[5], 1)
    f2_local0[5] = SetCoolTime(f2_arg1, f2_arg2, 3000, 45, f2_local0[5], 1)
    f2_local0[6] = SetCoolTime(f2_arg1, f2_arg2, 3016, 45, f2_local0[6], 1)
    f2_local0[6] = SetCoolTime(f2_arg1, f2_arg2, 3004, 45, f2_local0[6], 1)
    f2_local0[6] = SetCoolTime(f2_arg1, f2_arg2, 3019, 45, f2_local0[6], 1)
    f2_local0[7] = SetCoolTime(f2_arg1, f2_arg2, 3004, 45, f2_local0[7], 1)
    f2_local0[7] = SetCoolTime(f2_arg1, f2_arg2, 3016, 45, f2_local0[7], 1)
    f2_local0[7] = SetCoolTime(f2_arg1, f2_arg2, 3019, 45, f2_local0[7], 1)
    f2_local0[8] = SetCoolTime(f2_arg1, f2_arg2, 3019, 45, f2_local0[8], 1)
    f2_local0[8] = SetCoolTime(f2_arg1, f2_arg2, 3016, 45, f2_local0[8], 1)
    f2_local0[8] = SetCoolTime(f2_arg1, f2_arg2, 3004, 45, f2_local0[8], 1)
    f2_local0[9] = SetCoolTime(f2_arg1, f2_arg2, 3007, 45, f2_local0[9], 1)
    f2_local0[10] = SetCoolTime(f2_arg1, f2_arg2, 3008, 55, f2_local0[10], 1)
    f2_local0[11] = SetCoolTime(f2_arg1, f2_arg2, 3011, 30, f2_local0[11], 1)
    f2_local0[12] = SetCoolTime(f2_arg1, f2_arg2, 3009, 30, f2_local0[12], 1)
    f2_local0[13] = SetCoolTime(f2_arg1, f2_arg2, 3001, 60, f2_local0[13], 1)
    f2_local0[14] = SetCoolTime(f2_arg1, f2_arg2, 3003, 30, f2_local0[14], 1)
    f2_local0[14] = SetCoolTime(f2_arg1, f2_arg2, 3018, 30, f2_local0[14], 1)
    f2_local0[15] = SetCoolTime(f2_arg1, f2_arg2, 3003, 30, f2_local0[15], 1)
    f2_local0[15] = SetCoolTime(f2_arg1, f2_arg2, 3018, 30, f2_local0[15], 1)
    f2_local0[22] = SetCoolTime(f2_arg1, f2_arg2, 6001, 10, f2_local0[22], 1)
    f2_local0[16] = SetCoolTime(f2_arg1, f2_arg2, 3010, 30, f2_local0[16], 1)
    f2_local0[17] = SetCoolTime(f2_arg1, f2_arg2, 3023, 30, f2_local0[17], 1)
    f2_local0[18] = SetCoolTime(f2_arg1, f2_arg2, 3030, 45, f2_local0[18], 1)
    if f2_local3 <= -1 then
        f2_local0[11] = 40
        f2_local0[12] = 20
        f2_local0[13] = 20
        f2_local0[16] = 20
    end
    f2_local1[1] = REGIST_FUNC(f2_arg1, f2_arg2, KingAndDragon_503000_Act01)
    f2_local1[2] = REGIST_FUNC(f2_arg1, f2_arg2, KingAndDragon_503000_Act02)
    f2_local1[3] = REGIST_FUNC(f2_arg1, f2_arg2, KingAndDragon_503000_Act03)
    f2_local1[4] = REGIST_FUNC(f2_arg1, f2_arg2, KingAndDragon_503000_Act04)
    f2_local1[5] = REGIST_FUNC(f2_arg1, f2_arg2, KingAndDragon_503000_Act05)
    f2_local1[6] = REGIST_FUNC(f2_arg1, f2_arg2, KingAndDragon_503000_Act06)
    f2_local1[7] = REGIST_FUNC(f2_arg1, f2_arg2, KingAndDragon_503000_Act07)
    f2_local1[8] = REGIST_FUNC(f2_arg1, f2_arg2, KingAndDragon_503000_Act08)
    f2_local1[9] = REGIST_FUNC(f2_arg1, f2_arg2, KingAndDragon_503000_Act09)
    f2_local1[10] = REGIST_FUNC(f2_arg1, f2_arg2, KingAndDragon_503000_Act10)
    f2_local1[11] = REGIST_FUNC(f2_arg1, f2_arg2, KingAndDragon_503000_Act11)
    f2_local1[12] = REGIST_FUNC(f2_arg1, f2_arg2, KingAndDragon_503000_Act12)
    f2_local1[13] = REGIST_FUNC(f2_arg1, f2_arg2, KingAndDragon_503000_Act13)
    f2_local1[14] = REGIST_FUNC(f2_arg1, f2_arg2, KingAndDragon_503000_Act14)
    f2_local1[15] = REGIST_FUNC(f2_arg1, f2_arg2, KingAndDragon_503000_Act15)
    f2_local1[16] = REGIST_FUNC(f2_arg1, f2_arg2, KingAndDragon_503000_Act16)
    f2_local1[17] = REGIST_FUNC(f2_arg1, f2_arg2, KingAndDragon_503000_Act17)
    f2_local1[18] = REGIST_FUNC(f2_arg1, f2_arg2, KingAndDragon_503000_Act18)
    f2_local1[19] = REGIST_FUNC(f2_arg1, f2_arg2, KingAndDragon_503000_Act19)
    f2_local1[20] = REGIST_FUNC(f2_arg1, f2_arg2, KingAndDragon_503000_Act20)
    f2_local1[21] = REGIST_FUNC(f2_arg1, f2_arg2, KingAndDragon_503000_Act21)
    f2_local1[22] = REGIST_FUNC(f2_arg1, f2_arg2, KingAndDragon_503000_Act22)
    local f2_local7 = REGIST_FUNC(f2_arg1, f2_arg2, KingAndDragon_503000_ActAfter_AdjustSpace)
    Common_Battle_Activate(f2_arg1, f2_arg2, f2_local0, f2_local1, f2_local7, f2_local2)
    
end

function KingAndDragon_503000_Act01(f3_arg0, f3_arg1, f3_arg2)
    local f3_local0 = 3002
    local f3_local1 = 8 - f3_arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local2 = 0
    local f3_local3 = 0
    f3_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f3_local0, TARGET_ENE_0, f3_local1, f3_local2, f3_local3, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function KingAndDragon_503000_Act02(f4_arg0, f4_arg1, f4_arg2)
    local f4_local0 = 3017
    local f4_local1 = 8 - f4_arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local2 = 0
    local f4_local3 = 0
    f4_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f4_local0, TARGET_ENE_0, f4_local1, f4_local2, f4_local3, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function KingAndDragon_503000_Act03(f5_arg0, f5_arg1, f5_arg2)
    local f5_local0 = 16 - f5_arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local1 = 16 - f5_arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f5_local2 = 16 - f5_arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f5_local3 = 0
    local f5_local4 = 0
    local f5_local5 = 3
    local f5_local6 = 3
    Approach_Act_Flex(f5_arg0, f5_arg1, f5_local0, f5_local1, f5_local2, f5_local3, f5_local4, f5_local5, f5_local6)
    local f5_local7 = 3013
    local f5_local8 = 3014
    local f5_local9 = 3015
    local f5_local10 = 3024
    local f5_local11 = 22 - f5_arg0:GetMapHitRadius(TARGET_SELF) + 0
    local f5_local12 = 22 - f5_arg0:GetMapHitRadius(TARGET_SELF) + 0
    local f5_local13 = 27.1 - f5_arg0:GetMapHitRadius(TARGET_SELF) + 0
    local f5_local14 = 8 - f5_arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local15 = 1.5
    local f5_local16 = 90
    local f5_local17 = f5_arg0:GetRandam_Int(1, 100)
    if f5_local17 <= 10 then
        f5_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f5_local7, TARGET_ENE_0, f5_local14, f5_local15, f5_local16, 0, 0)
    elseif f5_local17 <= 40 then
        f5_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f5_local7, TARGET_ENE_0, f5_local11, f5_local15, f5_local16, 0, 0)
        f5_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f5_local8, TARGET_ENE_0, f5_local14, 0, 0)
    elseif f5_local17 <= 70 then
        f5_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f5_local7, TARGET_ENE_0, f5_local11, f5_local15, f5_local16, 0, 0)
        f5_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f5_local8, TARGET_ENE_0, f5_local12, 0, 0)
        f5_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f5_local9, TARGET_ENE_0, f5_local14, 0, 0)
    else
        f5_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f5_local7, TARGET_ENE_0, f5_local11, f5_local15, f5_local16, 0, 0)
        f5_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f5_local8, TARGET_ENE_0, f5_local13, 0, 0)
        f5_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f5_local10, TARGET_ENE_0, f5_local14, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function KingAndDragon_503000_Act04(f6_arg0, f6_arg1, f6_arg2)
    local f6_local0 = 15.4 - f6_arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local1 = 15.4 - f6_arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f6_local2 = 15.4 - f6_arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f6_local3 = 0
    local f6_local4 = 0
    local f6_local5 = 3
    local f6_local6 = 3
    Approach_Act_Flex(f6_arg0, f6_arg1, f6_local0, f6_local1, f6_local2, f6_local3, f6_local4, f6_local5, f6_local6)
    local f6_local7 = 3000
    local f6_local8 = 3014
    local f6_local9 = 3015
    local f6_local10 = 22 - f6_arg0:GetMapHitRadius(TARGET_SELF) + 0
    local f6_local11 = 22 - f6_arg0:GetMapHitRadius(TARGET_SELF) + 0
    local f6_local12 = 8 - f6_arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local13 = 1.5
    local f6_local14 = 90
    local f6_local15 = f6_arg0:GetRandam_Int(1, 100)
    if f6_local15 <= 10 then
        f6_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f6_local7, TARGET_ENE_0, f6_local12, f6_local13, f6_local14, 0, 0)
    elseif f6_local15 <= 60 then
        f6_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f6_local7, TARGET_ENE_0, f6_local10, f6_local13, f6_local14, 0, 0)
        f6_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f6_local8, TARGET_ENE_0, f6_local12, 0, 0)
    else
        f6_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f6_local7, TARGET_ENE_0, f6_local10, f6_local13, f6_local14, 0, 0)
        f6_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f6_local8, TARGET_ENE_0, f6_local11, 0, 0)
        f6_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f6_local9, TARGET_ENE_0, f6_local12, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function KingAndDragon_503000_Act05(f7_arg0, f7_arg1, f7_arg2)
    local f7_local0 = 24 - f7_arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local1 = 24 - f7_arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f7_local2 = 24 - f7_arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f7_local3 = 0
    local f7_local4 = 0
    local f7_local5 = 3
    local f7_local6 = 3
    Approach_Act_Flex(f7_arg0, f7_arg1, f7_local0, f7_local1, f7_local2, f7_local3, f7_local4, f7_local5, f7_local6)
    local f7_local7 = 3006
    local f7_local8 = 3014
    local f7_local9 = 3015
    local f7_local10 = 22 - f7_arg0:GetMapHitRadius(TARGET_SELF) + 0
    local f7_local11 = 22 - f7_arg0:GetMapHitRadius(TARGET_SELF) + 0
    local f7_local12 = 8 - f7_arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local13 = 1.5
    local f7_local14 = 90
    local f7_local15 = f7_arg0:GetRandam_Int(1, 100)
    if f7_local15 <= 10 then
        f7_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f7_local7, TARGET_ENE_0, f7_local12, f7_local13, f7_local14, 0, 0)
    elseif f7_local15 <= 60 then
        f7_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f7_local7, TARGET_ENE_0, f7_local10, f7_local13, f7_local14, 0, 0)
        f7_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f7_local8, TARGET_ENE_0, f7_local12, 0, 0)
    else
        f7_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f7_local7, TARGET_ENE_0, f7_local10, f7_local13, f7_local14, 0, 0)
        f7_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f7_local8, TARGET_ENE_0, f7_local11, 0, 0)
        f7_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f7_local9, TARGET_ENE_0, f7_local12, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function KingAndDragon_503000_Act06(f8_arg0, f8_arg1, f8_arg2)
    local f8_local0 = 15 - f8_arg0:GetMapHitRadius(TARGET_SELF)
    local f8_local1 = 15 - f8_arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f8_local2 = 15 - f8_arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f8_local3 = 0
    local f8_local4 = 0
    local f8_local5 = 3
    local f8_local6 = 3
    Approach_Act_Flex(f8_arg0, f8_arg1, f8_local0, f8_local1, f8_local2, f8_local3, f8_local4, f8_local5, f8_local6)
    local f8_local7 = 3016
    local f8_local8 = 3028
    local f8_local9 = 22 - f8_arg0:GetMapHitRadius(TARGET_SELF) + 0
    local f8_local10 = 8 - f8_arg0:GetMapHitRadius(TARGET_SELF)
    local f8_local11 = 1.5
    local f8_local12 = 30
    local f8_local13 = f8_arg0:GetRandam_Int(1, 100)
    if f8_local13 <= 50 then
        f8_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f8_local7, TARGET_ENE_0, f8_local10, f8_local11, f8_local12, 0, 0)
    else
        f8_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f8_local7, TARGET_ENE_0, f8_local9, f8_local11, f8_local12, 0, 0)
        f8_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f8_local8, TARGET_ENE_0, f8_local10, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function KingAndDragon_503000_Act07(f9_arg0, f9_arg1, f9_arg2)
    local f9_local0 = 22 - f9_arg0:GetMapHitRadius(TARGET_SELF)
    local f9_local1 = 22 - f9_arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f9_local2 = 22 - f9_arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f9_local3 = 0
    local f9_local4 = 0
    local f9_local5 = 3
    local f9_local6 = 3
    Approach_Act_Flex(f9_arg0, f9_arg1, f9_local0, f9_local1, f9_local2, f9_local3, f9_local4, f9_local5, f9_local6)
    local f9_local7 = 3004
    local f9_local8 = 8 - f9_arg0:GetMapHitRadius(TARGET_SELF)
    local f9_local9 = 1.5
    local f9_local10 = 60
    f9_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f9_local7, TARGET_ENE_0, f9_local8, f9_local9, f9_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function KingAndDragon_503000_Act08(f10_arg0, f10_arg1, f10_arg2)
    local f10_local0 = 29 - f10_arg0:GetMapHitRadius(TARGET_SELF)
    local f10_local1 = 29 - f10_arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f10_local2 = 29 - f10_arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f10_local3 = 0
    local f10_local4 = 0
    local f10_local5 = 3
    local f10_local6 = 3
    Approach_Act_Flex(f10_arg0, f10_arg1, f10_local0, f10_local1, f10_local2, f10_local3, f10_local4, f10_local5, f10_local6)
    local f10_local7 = 3019
    local f10_local8 = 8 - f10_arg0:GetMapHitRadius(TARGET_SELF)
    local f10_local9 = 1.5
    local f10_local10 = 60
    f10_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f10_local7, TARGET_ENE_0, f10_local8, f10_local9, f10_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function KingAndDragon_503000_Act09(f11_arg0, f11_arg1, f11_arg2)
    local f11_local0 = 13 - f11_arg0:GetMapHitRadius(TARGET_SELF)
    local f11_local1 = 13 - f11_arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f11_local2 = 13 - f11_arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f11_local3 = 0
    local f11_local4 = 0
    local f11_local5 = 3
    local f11_local6 = 3
    Approach_Act_Flex(f11_arg0, f11_arg1, f11_local0, f11_local1, f11_local2, f11_local3, f11_local4, f11_local5, f11_local6)
    local f11_local7 = 3007
    local f11_local8 = 3026
    local f11_local9 = 3029
    local f11_local10 = 27.1 - f11_arg0:GetMapHitRadius(TARGET_SELF) + 0
    local f11_local11 = 22 - f11_arg0:GetMapHitRadius(TARGET_SELF) + 0
    local f11_local12 = 8 - f11_arg0:GetMapHitRadius(TARGET_SELF)
    local f11_local13 = 1.5
    local f11_local14 = 90
    local f11_local15 = f11_arg0:GetRandam_Int(1, 100)
    if f11_local15 <= 10 then
        f11_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f11_local7, TARGET_ENE_0, f11_local12, f11_local13, f11_local14, 0, 0)
    elseif f11_local15 <= 55 then
        f11_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f11_local7, TARGET_ENE_0, f11_local10, f11_local13, f11_local14, 0, 0)
        f11_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f11_local8, TARGET_ENE_0, f11_local12, 0, 0)
    else
        f11_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f11_local7, TARGET_ENE_0, f11_local11, f11_local13, f11_local14, 0, 0)
        f11_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f11_local9, TARGET_ENE_0, f11_local12, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function KingAndDragon_503000_Act10(f12_arg0, f12_arg1, f12_arg2)
    local f12_local0 = 19 - f12_arg0:GetMapHitRadius(TARGET_SELF)
    local f12_local1 = 19 - f12_arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f12_local2 = 19 - f12_arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f12_local3 = 0
    local f12_local4 = 0
    local f12_local5 = 3
    local f12_local6 = 3
    Approach_Act_Flex(f12_arg0, f12_arg1, f12_local0, f12_local1, f12_local2, f12_local3, f12_local4, f12_local5, f12_local6)
    local f12_local7 = 3008
    local f12_local8 = 8 - f12_arg0:GetMapHitRadius(TARGET_SELF)
    local f12_local9 = 1.5
    local f12_local10 = 60
    f12_arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    f12_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f12_local7, TARGET_ENE_0, f12_local8, f12_local9, f12_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function KingAndDragon_503000_Act11(f13_arg0, f13_arg1, f13_arg2)
    local f13_local0 = 67 - f13_arg0:GetMapHitRadius(TARGET_SELF)
    local f13_local1 = 67 - f13_arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f13_local2 = 67 - f13_arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f13_local3 = 0
    local f13_local4 = 0
    local f13_local5 = 3
    local f13_local6 = 3
    Approach_Act_Flex(f13_arg0, f13_arg1, f13_local0, f13_local1, f13_local2, f13_local3, f13_local4, f13_local5, f13_local6)
    f13_arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    local f13_local7 = 3011
    local f13_local8 = 8 - f13_arg0:GetMapHitRadius(TARGET_SELF)
    local f13_local9 = 1.5
    local f13_local10 = 90
    f13_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f13_local7, TARGET_ENE_0, f13_local8, f13_local9, f13_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function KingAndDragon_503000_Act12(f14_arg0, f14_arg1, f14_arg2)
    local f14_local0 = 11 - f14_arg0:GetMapHitRadius(TARGET_SELF)
    local f14_local1 = 11 - f14_arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f14_local2 = 11 - f14_arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f14_local3 = 0
    local f14_local4 = 0
    local f14_local5 = 3
    local f14_local6 = 3
    Approach_Act_Flex(f14_arg0, f14_arg1, f14_local0, f14_local1, f14_local2, f14_local3, f14_local4, f14_local5, f14_local6)
    local f14_local7 = 3009
    local f14_local8 = 8 - f14_arg0:GetMapHitRadius(TARGET_SELF)
    local f14_local9 = 0
    local f14_local10 = 0
    f14_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f14_local7, TARGET_ENE_0, f14_local8, f14_local9, f14_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function KingAndDragon_503000_Act13(f15_arg0, f15_arg1, f15_arg2)
    local f15_local0 = 27 - f15_arg0:GetMapHitRadius(TARGET_SELF)
    local f15_local1 = 27 - f15_arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f15_local2 = 27 - f15_arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f15_local3 = 0
    local f15_local4 = 0
    local f15_local5 = 3
    local f15_local6 = 3
    Approach_Act_Flex(f15_arg0, f15_arg1, f15_local0, f15_local1, f15_local2, f15_local3, f15_local4, f15_local5, f15_local6)
    local f15_local7 = 3001
    local f15_local8 = 8 - f15_arg0:GetMapHitRadius(TARGET_SELF)
    local f15_local9 = 1.5
    local f15_local10 = 60
    f15_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, f15_local7, TARGET_ENE_0, f15_local8, f15_local9, f15_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function KingAndDragon_503000_Act14(f16_arg0, f16_arg1, f16_arg2)
    local f16_local0 = 42 - f16_arg0:GetMapHitRadius(TARGET_SELF)
    local f16_local1 = 42 - f16_arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f16_local2 = 42 - f16_arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f16_local3 = 0
    local f16_local4 = 0
    local f16_local5 = 3
    local f16_local6 = 3
    Approach_Act_Flex(f16_arg0, f16_arg1, f16_local0, f16_local1, f16_local2, f16_local3, f16_local4, f16_local5, f16_local6)
    local f16_local7 = 3018
    local f16_local8 = 3005
    local f16_local9 = 3012
    local f16_local10 = 22 - f16_arg0:GetMapHitRadius(TARGET_SELF) + 0
    local f16_local11 = 15.4 - f16_arg0:GetMapHitRadius(TARGET_SELF) + 0
    local f16_local12 = 8 - f16_arg0:GetMapHitRadius(TARGET_SELF)
    local f16_local13 = 1.5
    local f16_local14 = 30
    local f16_local15 = f16_arg0:GetRandam_Int(1, 100)
    if f16_local15 <= 50 then
        f16_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f16_local7, TARGET_ENE_0, f16_local10, f16_local13, f16_local14, 0, 0)
        f16_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f16_local8, TARGET_ENE_0, f16_local12, 0, 0)
    else
        f16_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f16_local7, TARGET_ENE_0, f16_local11, f16_local13, f16_local14, 0, 0)
        f16_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f16_local9, TARGET_ENE_0, f16_local12, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function KingAndDragon_503000_Act15(f17_arg0, f17_arg1, f17_arg2)
    local f17_local0 = 67.2 - f17_arg0:GetMapHitRadius(TARGET_SELF)
    local f17_local1 = 67.2 - f17_arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f17_local2 = 67.2 - f17_arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f17_local3 = 0
    local f17_local4 = 0
    local f17_local5 = 3
    local f17_local6 = 3
    Approach_Act_Flex(f17_arg0, f17_arg1, f17_local0, f17_local1, f17_local2, f17_local3, f17_local4, f17_local5, f17_local6)
    local f17_local7 = 3003
    local f17_local8 = 3005
    local f17_local9 = 3012
    local f17_local10 = 22 - f17_arg0:GetMapHitRadius(TARGET_SELF) + 0
    local f17_local11 = 15.4 - f17_arg0:GetMapHitRadius(TARGET_SELF) + 0
    local f17_local12 = 8 - f17_arg0:GetMapHitRadius(TARGET_SELF)
    local f17_local13 = 1.5
    local f17_local14 = 30
    local f17_local15 = f17_arg0:GetRandam_Int(1, 100)
    if f17_local15 <= 50 then
        f17_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f17_local7, TARGET_ENE_0, f17_local10, f17_local13, f17_local14, 0, 0)
        f17_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f17_local8, TARGET_ENE_0, f17_local12, 0, 0)
    else
        f17_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f17_local7, TARGET_ENE_0, f17_local11, f17_local13, f17_local14, 0, 0)
        f17_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f17_local9, TARGET_ENE_0, f17_local12, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function KingAndDragon_503000_Act16(f18_arg0, f18_arg1, f18_arg2)
    local f18_local0 = 11 - f18_arg0:GetMapHitRadius(TARGET_SELF)
    local f18_local1 = 11 - f18_arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f18_local2 = 11 - f18_arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f18_local3 = 0
    local f18_local4 = 0
    local f18_local5 = 3
    local f18_local6 = 3
    Approach_Act_Flex(f18_arg0, f18_arg1, f18_local0, f18_local1, f18_local2, f18_local3, f18_local4, f18_local5, f18_local6)
    local f18_local7 = 3010
    local f18_local8 = 8 - f18_arg0:GetMapHitRadius(TARGET_SELF)
    local f18_local9 = 1.5
    local f18_local10 = 60
    f18_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f18_local7, TARGET_ENE_0, f18_local8, f18_local9, f18_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function KingAndDragon_503000_Act17(f19_arg0, f19_arg1, f19_arg2)
    local f19_local0 = 27.1 - f19_arg0:GetMapHitRadius(TARGET_SELF)
    local f19_local1 = 27.1 - f19_arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f19_local2 = 27.1 - f19_arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f19_local3 = 0
    local f19_local4 = 0
    local f19_local5 = 3
    local f19_local6 = 3
    Approach_Act_Flex(f19_arg0, f19_arg1, f19_local0, f19_local1, f19_local2, f19_local3, f19_local4, f19_local5, f19_local6)
    local f19_local7 = 3023
    local f19_local8 = 8 - f19_arg0:GetMapHitRadius(TARGET_SELF)
    local f19_local9 = 1.5
    local f19_local10 = 60
    f19_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f19_local7, TARGET_ENE_0, f19_local8, f19_local9, f19_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function KingAndDragon_503000_Act18(f20_arg0, f20_arg1, f20_arg2)
    local f20_local0 = 8 - f20_arg0:GetMapHitRadius(TARGET_SELF)
    local f20_local1 = 8 - f20_arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f20_local2 = 8 - f20_arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f20_local3 = 0
    local f20_local4 = 0
    local f20_local5 = 3
    local f20_local6 = 3
    Approach_Act_Flex(f20_arg0, f20_arg1, f20_local0, f20_local1, f20_local2, f20_local3, f20_local4, f20_local5, f20_local6)
    local f20_local7 = 3030
    local f20_local8 = 8 - f20_arg0:GetMapHitRadius(TARGET_SELF)
    local f20_local9 = 1.5
    local f20_local10 = 60
    f20_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f20_local7, TARGET_ENE_0, f20_local8, f20_local9, f20_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function KingAndDragon_503000_Act19(f21_arg0, f21_arg1, f21_arg2)
    local f21_local0 = 3032
    local f21_local1 = 8 - f21_arg0:GetMapHitRadius(TARGET_SELF)
    local f21_local2 = 0
    local f21_local3 = 0
    local f21_local4 = f21_arg0:GetRandam_Int(1, 100)
    f21_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f21_local0, TARGET_ENE_0, f21_local1, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function KingAndDragon_503000_Act20(f22_arg0, f22_arg1, f22_arg2)
    f22_arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 20)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function KingAndDragon_503000_Act21(f23_arg0, f23_arg1, f23_arg2)
    f23_arg1:AddSubGoal(GOAL_COMMON_KeepDist, f23_arg0:GetRandam_Float(2.5, 4), TARGET_ENE_0, 1, 16, TARGET_ENE_0, true, -1)
    
end

function KingAndDragon_503000_Act22(f24_arg0, f24_arg1, f24_arg2)
    f24_arg1:AddSubGoal(GOAL_COMMON_SpinStep, 10, 6001, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 10)
    
end

function KingAndDragon_503000_ActAfter_AdjustSpace(f25_arg0, f25_arg1, f25_arg2)
    f25_arg1:AddSubGoal(GOAL_KingAndDragon_503000_AfterAttackAct, 10)
    
end

Goal.Update = function (f26_arg0, f26_arg1, f26_arg2)
    return Update_Default_NoSubGoal(f26_arg0, f26_arg1, f26_arg2)
    
end

Goal.Terminate = function (f27_arg0, f27_arg1, f27_arg2)
    
end

Goal.Interrupt = function (f28_arg0, f28_arg1, f28_arg2)
    if f28_arg1:IsLadderAct(TARGET_SELF) then
        return false
    end
    local f28_local0 = 8 - f28_arg1:GetMapHitRadius(TARGET_SELF)
    local f28_local1 = 0
    local f28_local2 = 0
    local f28_local3 = f28_arg1:GetDist(TARGET_ENE_0)
    local f28_local4 = f28_arg1:GetRandam_Int(1, 100)
    if f28_arg1:GetSpecialEffectActivateInterruptType(0) == 5025 then
        if InsideRange(f28_arg1, f28_arg2, 0, 10 + 45, 22.1 - f28_arg1:GetMapHitRadius(TARGET_SELF), 27.1 - f28_arg1:GetMapHitRadius(TARGET_SELF)) then
            f28_arg2:ClearSubGoal()
            f28_arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3025, TARGET_ENE_0, f28_local0, f28_local1, f28_local2, 0, 0)
            return true
        elseif InsideRange(f28_arg1, f28_arg2, 0, 90 + 10, 16 - f28_arg1:GetMapHitRadius(TARGET_SELF), 20 - f28_arg1:GetMapHitRadius(TARGET_SELF)) then
            f28_arg2:ClearSubGoal()
            f28_arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3021, TARGET_ENE_0, f28_local0, f28_local1, f28_local2, 0, 0)
            return true
        elseif InsideRange(f28_arg1, f28_arg2, 0, 10 + 45, 9 - f28_arg1:GetMapHitRadius(TARGET_SELF), 16 - f28_arg1:GetMapHitRadius(TARGET_SELF)) then
            f28_arg2:ClearSubGoal()
            f28_arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3022, TARGET_ENE_0, f28_local0, f28_local1, f28_local2, 0, 0)
            return true
        else
        end
    end
    if f28_arg1:GetSpecialEffectActivateInterruptType(0) == 5029 and InsideRange(f28_arg1, f28_arg2, 0, 120, -3 - f28_arg1:GetMapHitRadius(TARGET_SELF), 15 - f28_arg1:GetMapHitRadius(TARGET_SELF)) and f28_local4 <= 30 then
        f28_arg2:ClearSubGoal()
        KingAndDragon_503000_Act19(f28_arg1, f28_arg2, paramTbl)
    end
    return false
    
end

RegisterTableGoal(GOAL_KingAndDragon_503000_AfterAttackAct, "KingAndDragon_503000_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_KingAndDragon_503000_AfterAttackAct, true)

Goal.Activate = function (f29_arg0, f29_arg1, f29_arg2)
    local f29_local0 = f29_arg1:GetRandam_Int(1, 100)
    if f29_local0 <= 0 then
        f29_arg2:AddSubGoal(GOAL_COMMON_Wait, f29_arg1:GetRandam_Float(2, 4), TARGET_ENE_0, 0, 0, 0)
    elseif f29_local0 <= 0 then
        f29_arg2:AddSubGoal(GOAL_COMMON_Wait, f29_arg1:GetRandam_Float(2, 4), TARGET_NONE, 0, 0, 0)
    else
    end
    
end

Goal.Update = function (f30_arg0, f30_arg1, f30_arg2)
    return Update_Default_NoSubGoal(f30_arg0, f30_arg1, f30_arg2)
    
end


