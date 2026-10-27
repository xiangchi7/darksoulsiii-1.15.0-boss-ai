RegisterTableGoal(GOAL_BlackOldKingPhantom_Battle, "BlackOldKingPhantom")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_BlackOldKingPhantom_Battle, true)

Goal.Initialize = function (f1_arg0, f1_arg1, f1_arg2, f1_arg3)
    
end

Goal.Activate = function (f2_arg0, f2_arg1, f2_arg2)
    Init_Pseudo_Global(f2_arg1, f2_arg2)
    f2_arg1:SetStringIndexedNumber("Dist_SideStep", 5)
    f2_arg1:SetStringIndexedNumber("Dist_BackStep", 5)
    local f2_local0 = {}
    local f2_local1 = {}
    local f2_local2 = {}
    Common_Clear_Param(f2_local0, f2_local1, f2_local2)
    local f2_local3 = f2_arg1:GetDist(TARGET_ENE_0)
    local f2_local4 = f2_arg1:GetDist(TARGET_TEAM_LEADER)
    local f2_local5 = f2_arg1:GetDistAtoB(TARGET_TEAM_LEADER, TARGET_ENE_0)
    local f2_local6 = f2_arg1:GetHpRate(TARGET_TEAM_LEADER)
    if f2_local4 >= 1 and f2_local3 >= 3 and f2_arg1:HasSpecialEffectId(TARGET_SELF, 5029) == false and f2_arg1:IsFinishTimer(2) == true then
        f2_local0[36] = 10
    elseif f2_local4 >= 6 and f2_arg1:HasSpecialEffectId(TARGET_SELF, 5029) == false and f2_arg1:IsFinishTimer(2) == true then
        f2_local0[36] = 10
    elseif f2_local4 >= 11 and f2_arg1:IsFinishTimer(2) == true then
        f2_local0[36] = 10
    elseif f2_arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 240) then
        if InsideRange(f2_arg1, f2_arg2, 145, 115, -1, 3.8 - f2_arg1:GetMapHitRadius(TARGET_SELF)) then
            f2_local0[6] = 20
            f2_local0[34] = 10
        elseif InsideRange(f2_arg1, f2_arg2, -145, 115, -1, 3.3 - f2_arg1:GetMapHitRadius(TARGET_SELF)) then
            f2_local0[5] = 20
            f2_local0[34] = 10
        else
            f2_local0[34] = 10
        end
    elseif f2_local3 >= 25 then
        f2_local0[7] = 10
        f2_local0[14] = 10
        f2_local0[15] = 10
        f2_local0[19] = 20
        f2_local0[37] = 0
    elseif f2_local3 >= 15 then
        f2_local0[7] = 10
        f2_local0[8] = 10
        f2_local0[9] = 10
        f2_local0[14] = 10
        f2_local0[15] = 10
        f2_local0[19] = 20
        f2_local0[20] = 20
        f2_local0[37] = 0
    elseif f2_local3 >= 8 then
        f2_local0[1] = 10
        f2_local0[2] = 10
        f2_local0[7] = 10
        f2_local0[8] = 10
        f2_local0[9] = 10
        f2_local0[16] = 10
        f2_local0[19] = 20
        f2_local0[20] = 20
        f2_local0[37] = 0
    elseif f2_local3 >= 1.2 then
        f2_local0[1] = 10
        f2_local0[2] = 10
        f2_local0[8] = 10
        f2_local0[9] = 10
        f2_local0[16] = 10
        f2_local0[18] = 10
        f2_local0[20] = 20
        f2_local0[37] = 0
    else
        f2_local0[5] = 10
        f2_local0[6] = 10
        f2_local0[13] = 10
        f2_local0[18] = 10
    end
    if f2_arg1:IsFinishTimer(0) == true then
        f2_local0[37] = f2_local0[37] + 100
    end
    if f2_arg1:IsFinishTimer(1) == false and f2_local3 >= 8 then
        f2_local0[7] = f2_local0[7] + 40
        f2_local0[14] = f2_local0[14] + 10
        f2_local0[15] = f2_local0[15] + 10
        f2_local0[19] = f2_local0[19] + 10
    end
    f2_local0[1] = SetCoolTime(f2_arg1, f2_arg2, 3003, 10, f2_local0[1], 1)
    f2_local0[2] = SetCoolTime(f2_arg1, f2_arg2, 3011, 10, f2_local0[2], 1)
    f2_local0[5] = SetCoolTime(f2_arg1, f2_arg2, 3000, 15, f2_local0[5], 1)
    f2_local0[6] = SetCoolTime(f2_arg1, f2_arg2, 3001, 15, f2_local0[6], 1)
    f2_local0[7] = SetCoolTime(f2_arg1, f2_arg2, 3002, 12, f2_local0[7], 1)
    f2_local0[8] = SetCoolTime(f2_arg1, f2_arg2, 3012, 12, f2_local0[8], 1)
    f2_local0[9] = SetCoolTime(f2_arg1, f2_arg2, 3013, 12, f2_local0[9], 1)
    f2_local0[13] = SetCoolTime(f2_arg1, f2_arg2, 3016, 15, f2_local0[13], 1)
    f2_local0[14] = SetCoolTime(f2_arg1, f2_arg2, 3017, 15, f2_local0[14], 1)
    f2_local0[15] = SetCoolTime(f2_arg1, f2_arg2, 3018, 15, f2_local0[15], 1)
    f2_local0[16] = SetCoolTime(f2_arg1, f2_arg2, 3020, 15, f2_local0[16], 1)
    f2_local0[17] = SetCoolTime(f2_arg1, f2_arg2, 3021, 25, f2_local0[17], 1)
    f2_local0[18] = SetCoolTime(f2_arg1, f2_arg2, 3019, 25, f2_local0[18], 1)
    f2_local0[19] = SetCoolTime(f2_arg1, f2_arg2, 3024, 20, f2_local0[19], 1)
    f2_local0[20] = SetCoolTime(f2_arg1, f2_arg2, 3025, 20, f2_local0[20], 1)
    f2_local1[1] = REGIST_FUNC(f2_arg1, f2_arg2, BlackOldKingPhantom_Act01)
    f2_local1[2] = REGIST_FUNC(f2_arg1, f2_arg2, BlackOldKingPhantom_Act02)
    f2_local1[3] = REGIST_FUNC(f2_arg1, f2_arg2, BlackOldKingPhantom_Act03)
    f2_local1[4] = REGIST_FUNC(f2_arg1, f2_arg2, BlackOldKingPhantom_Act04)
    f2_local1[5] = REGIST_FUNC(f2_arg1, f2_arg2, BlackOldKingPhantom_Act05)
    f2_local1[6] = REGIST_FUNC(f2_arg1, f2_arg2, BlackOldKingPhantom_Act06)
    f2_local1[7] = REGIST_FUNC(f2_arg1, f2_arg2, BlackOldKingPhantom_Act07)
    f2_local1[8] = REGIST_FUNC(f2_arg1, f2_arg2, BlackOldKingPhantom_Act08)
    f2_local1[9] = REGIST_FUNC(f2_arg1, f2_arg2, BlackOldKingPhantom_Act09)
    f2_local1[13] = REGIST_FUNC(f2_arg1, f2_arg2, BlackOldKingPhantom_Act13)
    f2_local1[14] = REGIST_FUNC(f2_arg1, f2_arg2, BlackOldKingPhantom_Act14)
    f2_local1[15] = REGIST_FUNC(f2_arg1, f2_arg2, BlackOldKingPhantom_Act15)
    f2_local1[16] = REGIST_FUNC(f2_arg1, f2_arg2, BlackOldKingPhantom_Act16)
    f2_local1[17] = REGIST_FUNC(f2_arg1, f2_arg2, BlackOldKingPhantom_Act17)
    f2_local1[18] = REGIST_FUNC(f2_arg1, f2_arg2, BlackOldKingPhantom_Act18)
    f2_local1[19] = REGIST_FUNC(f2_arg1, f2_arg2, BlackOldKingPhantom_Act19)
    f2_local1[20] = REGIST_FUNC(f2_arg1, f2_arg2, BlackOldKingPhantom_Act20)
    f2_local1[30] = REGIST_FUNC(f2_arg1, f2_arg2, BlackOldKingPhantom_Act30)
    f2_local1[31] = REGIST_FUNC(f2_arg1, f2_arg2, BlackOldKingPhantom_Act31)
    f2_local1[32] = REGIST_FUNC(f2_arg1, f2_arg2, BlackOldKingPhantom_Act32)
    f2_local1[33] = REGIST_FUNC(f2_arg1, f2_arg2, BlackOldKingPhantom_Act33)
    f2_local1[34] = REGIST_FUNC(f2_arg1, f2_arg2, BlackOldKingPhantom_Act34)
    f2_local1[35] = REGIST_FUNC(f2_arg1, f2_arg2, BlackOldKingPhantom_Act35)
    f2_local1[36] = REGIST_FUNC(f2_arg1, f2_arg2, BlackOldKingPhantom_Act36)
    f2_local1[37] = REGIST_FUNC(f2_arg1, f2_arg2, BlackOldKingPhantom_Act37)
    local f2_local7 = REGIST_FUNC(f2_arg1, f2_arg2, BlackOldKingPhantom_ActAfter_AdjustSpace)
    Common_Battle_Activate(f2_arg1, f2_arg2, f2_local0, f2_local1, f2_local7, f2_local2)
    
end

function BlackOldKingPhantom_Act01(f3_arg0, f3_arg1, f3_arg2)
    local f3_local0 = 10.3 - f3_arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local1 = 999
    local f3_local2 = 999
    local f3_local3 = 0
    local f3_local4 = 0
    local f3_local5 = 2.5
    local f3_local6 = 5
    Approach_Act_Flex(f3_arg0, f3_arg1, f3_local0, f3_local1, f3_local2, f3_local3, f3_local4, f3_local5, f3_local6)
    local f3_local7 = 3003
    local f3_local8 = 3004
    local f3_local9 = 3005
    local f3_local10 = 8.3 - f3_arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local11 = 6.8 - f3_arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local12 = 999 - f3_arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local13 = 1
    local f3_local14 = 150
    f3_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f3_local7, TARGET_ENE_0, f3_local10, f3_local13, f3_local14, 0, 0)
    BlackOldKingPhantom_Act03(f3_arg0, f3_arg1, f3_arg2)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function BlackOldKingPhantom_Act02(f4_arg0, f4_arg1, f4_arg2)
    local f4_local0 = 10.8 - f4_arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local1 = 999
    local f4_local2 = 999
    local f4_local3 = 0
    local f4_local4 = 0
    local f4_local5 = 2.5
    local f4_local6 = 5
    Approach_Act_Flex(f4_arg0, f4_arg1, f4_local0, f4_local1, f4_local2, f4_local3, f4_local4, f4_local5, f4_local6)
    local f4_local7 = 3011
    local f4_local8 = 3005
    local f4_local9 = 3009
    local f4_local10 = 6.8 - f4_arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local11 = 8.3 - f4_arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local12 = 999 - f4_arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local13 = 1
    local f4_local14 = 120
    f4_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f4_local7, TARGET_ENE_0, f4_local10, f4_local13, f4_local14, 0, 0)
    BlackOldKingPhantom_Act04(f4_arg0, f4_arg1, f4_arg2)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function BlackOldKingPhantom_Act03(f5_arg0, f5_arg1, f5_arg2)
    local f5_local0 = 3004
    local f5_local1 = 3005
    local f5_local2 = 3008
    local f5_local3 = 3009
    local f5_local4 = 8.3 - f5_arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local5 = 6.8 - f5_arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local6 = 3.8 - f5_arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local7 = 8.3 - f5_arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local8 = 999 - f5_arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local9 = f5_arg0:GetRandam_Int(1, 100)
    if f5_local9 <= 40 then
        f5_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f5_local0, TARGET_ENE_0, f5_local5, 0, 0):SetTargetRange(1, -99, 5)
        f5_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f5_local1, TARGET_ENE_0, f5_local8, 0, 0)
    elseif f5_local9 <= 70 then
        f5_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f5_local0, TARGET_ENE_0, f5_local6, 0, 0):SetTargetAngle(0, 0, 60)
        f5_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f5_local2, TARGET_ENE_0, f5_local5, 0, 0):SetTargetRange(1, -99, 5)
        f5_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f5_local1, TARGET_ENE_0, f5_local8, 0, 0)
    else
        f5_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f5_local3, TARGET_ENE_0, f5_local4, 0, 0)
        f5_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f5_local0, TARGET_ENE_0, f5_local5, 0, 0)
        f5_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f5_local1, TARGET_ENE_0, f5_local8, 0, 0):SetTargetRange(0, -99, 5)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function BlackOldKingPhantom_Act04(f6_arg0, f6_arg1, f6_arg2)
    local f6_local0 = 3005
    local f6_local1 = 3009
    local f6_local2 = 3004
    local f6_local3 = 3010
    local f6_local4 = 3011
    local f6_local5 = 6.8 - f6_arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local6 = 8.3 - f6_arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local7 = 3.8 - f6_arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local8 = 6.8 - f6_arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local9 = 10.8 - f6_arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local10 = 999 - f6_arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local11 = f6_arg0:GetRandam_Int(1, 100)
    local f6_local12 = f6_arg0:GetRandam_Int(1, 100)
    if f6_local12 <= 30 then
        local f6_local13 = 3000
        local f6_local14 = 3001
        if f6_local11 <= 15 then
            f6_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f6_local0, TARGET_ENE_0, f6_local6, 0, 0):SetTargetRange(0, -99, 5)
            f6_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f6_local1, TARGET_ENE_0, f6_local10, 0, 0)
        elseif f6_local11 <= 30 then
            f6_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f6_local1, TARGET_ENE_0, f6_local7, 0, 0)
            f6_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f6_local2, TARGET_ENE_0, f6_local5, 0, 0):SetTargetRange(1, -99, 5)
            f6_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f6_local0, TARGET_ENE_0, f6_local9, 0, 0)
            f6_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f6_local4, TARGET_ENE_0, f6_local10, 0, 0)
        elseif f6_local11 <= 55 then
            f6_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f6_local1, TARGET_ENE_0, f6_local8, 0, 0)
            f6_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, f6_local13, TARGET_ENE_0, f6_local9, 0, 0)
            f6_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f6_local4, TARGET_ENE_0, f6_local10, 0, 0)
        elseif f6_local11 <= 80 then
            f6_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f6_local1, TARGET_ENE_0, f6_local8, 0, 0)
            f6_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f6_local3, TARGET_ENE_0, f6_local9, 0, 0)
            f6_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f6_local4, TARGET_ENE_0, f6_local10, 0, 0)
        else
            f6_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f6_local1, TARGET_ENE_0, f6_local8, 0, 0)
            f6_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, f6_local13, TARGET_ENE_0, f6_local9, 0, 0)
            f6_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f6_local14, TARGET_ENE_0, f6_local10, 0, 0)
        end
    elseif f6_local11 <= 40 then
        f6_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f6_local0, TARGET_ENE_0, f6_local6, 0, 0):SetTargetRange(0, -99, 5)
        f6_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f6_local1, TARGET_ENE_0, f6_local10, 0, 0)
    elseif f6_local11 <= 70 then
        f6_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f6_local1, TARGET_ENE_0, f6_local7, 0, 0)
        f6_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f6_local2, TARGET_ENE_0, f6_local5, 0, 0):SetTargetRange(1, -99, 5)
        f6_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f6_local0, TARGET_ENE_0, f6_local9, 0, 0)
        f6_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f6_local4, TARGET_ENE_0, f6_local10, 0, 0)
    else
        f6_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f6_local1, TARGET_ENE_0, f6_local8, 0, 0)
        f6_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f6_local3, TARGET_ENE_0, f6_local9, 0, 0)
        f6_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f6_local4, TARGET_ENE_0, f6_local10, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function BlackOldKingPhantom_Act05(f7_arg0, f7_arg1, f7_arg2)
    local f7_local0 = 8.3 - f7_arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local1 = 3000
    local f7_local2 = 3004
    local f7_local3 = 3008
    local f7_local4 = 3003
    local f7_local5 = 8.3 - f7_arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local6 = 3.8 - f7_arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local7 = 10.3 - f7_arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local8 = 999 - f7_arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local9 = 1
    local f7_local10 = 120
    f7_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f7_local1, TARGET_ENE_0, f7_local5, f7_local9, f7_local10)
    f7_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f7_local2, TARGET_ENE_0, f7_local6):SetTargetAngle(0, 0, 60)
    f7_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f7_local3, TARGET_ENE_0, f7_local7):SetTargetRange(1, -99, 5)
    f7_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f7_local4, TARGET_ENE_0, f7_local8)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function BlackOldKingPhantom_Act06(f8_arg0, f8_arg1, f8_arg2)
    local f8_local0 = 5.8 - f8_arg0:GetMapHitRadius(TARGET_SELF)
    local f8_local1 = 3001
    local f8_local2 = 3005
    local f8_local3 = 3009
    local f8_local4 = 3004
    local f8_local5 = 6.8 - f8_arg0:GetMapHitRadius(TARGET_SELF)
    local f8_local6 = 8.3 - f8_arg0:GetMapHitRadius(TARGET_SELF)
    local f8_local7 = 8.3 - f8_arg0:GetMapHitRadius(TARGET_SELF)
    local f8_local8 = 999 - f8_arg0:GetMapHitRadius(TARGET_SELF)
    local f8_local9 = 1
    local f8_local10 = 105
    f8_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f8_local1, TARGET_ENE_0, f8_local5, f8_local9, f8_local10)
    f8_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f8_local2, TARGET_ENE_0, f8_local6):SetTargetRange(0, -99, 5)
    f8_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f8_local3, TARGET_ENE_0, f8_local7)
    f8_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f8_local4, TARGET_ENE_0, f8_local8)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function BlackOldKingPhantom_Act07(f9_arg0, f9_arg1, f9_arg2)
    local f9_local0 = 25.8 - f9_arg0:GetMapHitRadius(TARGET_SELF) - 1
    local f9_local1 = 999
    local f9_local2 = 999
    local f9_local3 = 0
    local f9_local4 = 0
    local f9_local5 = 2.5
    local f9_local6 = 5
    Approach_Act_Flex(f9_arg0, f9_arg1, f9_local0, f9_local1, f9_local2, f9_local3, f9_local4, f9_local5, f9_local6)
    local f9_local7 = f9_arg0:GetRandam_Int(0, 1)
    local f9_local8 = f9_arg0:GetRandam_Int(30, 45)
    f9_arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 1, TARGET_ENE_0, f9_local7, f9_local8, true, true, -1)
    local f9_local9 = 3002
    local f9_local10 = 999 - f9_arg0:GetMapHitRadius(TARGET_SELF)
    local f9_local11 = 1
    local f9_local12 = 180
    f9_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f9_local9, TARGET_ENE_0, f9_local10, f9_local11, f9_local12)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function BlackOldKingPhantom_Act08(f10_arg0, f10_arg1, f10_arg2)
    local f10_local0 = 10.8 - f10_arg0:GetMapHitRadius(TARGET_SELF) - 1
    local f10_local1 = 999
    local f10_local2 = 999
    local f10_local3 = 0
    local f10_local4 = 0
    local f10_local5 = 2.5
    local f10_local6 = 5
    Approach_Act_Flex(f10_arg0, f10_arg1, f10_local0, f10_local1, f10_local2, f10_local3, f10_local4, f10_local5, f10_local6)
    local f10_local7 = 3012
    local f10_local8 = 3009
    local f10_local9 = 3010
    local f10_local10 = 8.3 - f10_arg0:GetMapHitRadius(TARGET_SELF)
    local f10_local11 = 6.8 - f10_arg0:GetMapHitRadius(TARGET_SELF)
    local f10_local12 = 999 - f10_arg0:GetMapHitRadius(TARGET_SELF)
    local f10_local13 = 1
    local f10_local14 = 180
    local f10_local15 = f10_arg0:GetHpRate(TARGET_TEAM_LEADER)
    f10_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f10_local7, TARGET_ENE_0, f10_local12, f10_local13, f10_local14)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function BlackOldKingPhantom_Act09(f11_arg0, f11_arg1, f11_arg2)
    local f11_local0 = 9.8 - f11_arg0:GetMapHitRadius(TARGET_SELF) - 1
    local f11_local1 = 999
    local f11_local2 = 999
    local f11_local3 = 0
    local f11_local4 = 0
    local f11_local5 = 2.5
    local f11_local6 = 5
    Approach_Act_Flex(f11_arg0, f11_arg1, f11_local0, f11_local1, f11_local2, f11_local3, f11_local4, f11_local5, f11_local6)
    local f11_local7 = 3013
    local f11_local8 = 3007
    local f11_local9 = 3005
    local f11_local10 = 8.3 - f11_arg0:GetMapHitRadius(TARGET_SELF)
    local f11_local11 = 6.8 - f11_arg0:GetMapHitRadius(TARGET_SELF)
    local f11_local12 = 999 - f11_arg0:GetMapHitRadius(TARGET_SELF)
    local f11_local13 = 1
    local f11_local14 = 180
    local f11_local15 = f11_arg0:GetHpRate(TARGET_TEAM_LEADER)
    f11_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f11_local7, TARGET_ENE_0, f11_local12, f11_local13, f11_local14)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function BlackOldKingPhantom_Act13(f12_arg0, f12_arg1, f12_arg2)
    local f12_local0 = 2.3 - f12_arg0:GetMapHitRadius(TARGET_SELF)
    local f12_local1 = 3016
    local f12_local2 = 999 - f12_arg0:GetMapHitRadius(TARGET_SELF)
    local f12_local3 = 0
    local f12_local4 = 360
    f12_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f12_local1, TARGET_ENE_0, f12_local2, f12_local3, f12_local4)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function BlackOldKingPhantom_Act14(f13_arg0, f13_arg1, f13_arg2)
    local f13_local0 = 29.8 - f13_arg0:GetMapHitRadius(TARGET_SELF)
    local f13_local1 = 999
    local f13_local2 = 999
    local f13_local3 = 0
    local f13_local4 = 0
    local f13_local5 = 2.5
    local f13_local6 = 5
    Approach_Act_Flex(f13_arg0, f13_arg1, f13_local0, f13_local1, f13_local2, f13_local3, f13_local4, f13_local5, f13_local6)
    local f13_local7 = 3017
    local f13_local8 = 999 - f13_arg0:GetMapHitRadius(TARGET_SELF)
    local f13_local9 = 1
    local f13_local10 = 120
    f13_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f13_local7, TARGET_ENE_0, f13_local8, f13_local9, f13_local10)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function BlackOldKingPhantom_Act15(f14_arg0, f14_arg1, f14_arg2)
    local f14_local0 = 23.8 - f14_arg0:GetMapHitRadius(TARGET_SELF)
    local f14_local1 = 999
    local f14_local2 = 999
    local f14_local3 = 0
    local f14_local4 = 0
    local f14_local5 = 2.5
    local f14_local6 = 5
    Approach_Act_Flex(f14_arg0, f14_arg1, f14_local0, f14_local1, f14_local2, f14_local3, f14_local4, f14_local5, f14_local6)
    local f14_local7 = 3018
    local f14_local8 = 999 - f14_arg0:GetMapHitRadius(TARGET_SELF)
    local f14_local9 = 1
    local f14_local10 = 120
    f14_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f14_local7, TARGET_ENE_0, f14_local8, f14_local9, f14_local10)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function BlackOldKingPhantom_Act16(f15_arg0, f15_arg1, f15_arg2)
    local f15_local0 = 9.8 - f15_arg0:GetMapHitRadius(TARGET_SELF)
    local f15_local1 = 3020
    local f15_local2 = 999 - f15_arg0:GetMapHitRadius(TARGET_SELF)
    local f15_local3 = 1
    local f15_local4 = 120
    f15_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f15_local1, TARGET_ENE_0, f15_local2, f15_local3, f15_local4)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function BlackOldKingPhantom_Act17(f16_arg0, f16_arg1, f16_arg2)
    local f16_local0 = 6.8 - f16_arg0:GetMapHitRadius(TARGET_SELF)
    local f16_local1 = 999
    local f16_local2 = 999
    local f16_local3 = 0
    local f16_local4 = 0
    local f16_local5 = 2.5
    local f16_local6 = 5
    Approach_Act_Flex(f16_arg0, f16_arg1, f16_local0, f16_local1, f16_local2, f16_local3, f16_local4, f16_local5, f16_local6)
    local f16_local7 = 3021
    local f16_local8 = 3022
    local f16_local9 = 6.8 - f16_arg0:GetMapHitRadius(TARGET_SELF)
    local f16_local10 = 999 - f16_arg0:GetMapHitRadius(TARGET_SELF)
    local f16_local11 = 1
    local f16_local12 = 120
    f16_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f16_local7, TARGET_ENE_0, f16_local9, f16_local11, f16_local12)
    f16_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f16_local8, TARGET_ENE_0, f16_local10)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function BlackOldKingPhantom_Act18(f17_arg0, f17_arg1, f17_arg2)
    local f17_local0 = 1.8 - f17_arg0:GetMapHitRadius(TARGET_SELF)
    local f17_local1 = 3019
    local f17_local2 = 999
    local f17_local3 = 1
    local f17_local4 = 180
    f17_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f17_local1, TARGET_ENE_0, f17_local2, f17_local3, f17_local4):SetTargetRange(2, -99, 8)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function BlackOldKingPhantom_Act19(f18_arg0, f18_arg1, f18_arg2)
    local f18_local0 = 50.8 - f18_arg0:GetMapHitRadius(TARGET_SELF)
    local f18_local1 = 3024
    local f18_local2 = 999 - f18_arg0:GetMapHitRadius(TARGET_SELF)
    local f18_local3 = 1
    local f18_local4 = 180
    local f18_local5 = f18_arg0:GetRandam_Int(0, 1)
    local f18_local6 = f18_arg0:GetRandam_Int(30, 45)
    f18_arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 1, TARGET_ENE_0, f18_local5, f18_local6, true, true, -1)
    f18_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f18_local1, TARGET_ENE_0, f18_local2, f18_local3, f18_local4)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function BlackOldKingPhantom_Act20(f19_arg0, f19_arg1, f19_arg2)
    local f19_local0 = 15.8 - f19_arg0:GetMapHitRadius(TARGET_SELF)
    local f19_local1 = 3025
    local f19_local2 = 999 - f19_arg0:GetMapHitRadius(TARGET_SELF)
    local f19_local3 = 1
    local f19_local4 = 210
    local f19_local5 = f19_arg0:GetRandam_Int(0, 1)
    local f19_local6 = f19_arg0:GetRandam_Int(30, 45)
    f19_arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 1, TARGET_ENE_0, f19_local5, f19_local6, true, true, -1)
    f19_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f19_local1, TARGET_ENE_0, f19_local2, f19_local3, f19_local4)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function BlackOldKingPhantom_Act30(f20_arg0, f20_arg1, f20_arg2)
    local f20_local0 = f20_arg0:GetDist(TARGET_ENE_0)
    local f20_local1 = f20_arg0:GetDist(TARGET_TEAM_LEADER)
    local f20_local2 = f20_arg0:GetDistAtoB(TARGET_TEAM_LEADER, TARGET_ENE_0)
    if f20_local1 <= 0 and f20_arg0:HasSpecialEffectId(TARGET_TEAM_LEADER, 5033) == false then
        if f20_arg0:IsInsideTarget(TARGET_TEAM_LEADER, AI_DIR_TYPE_F, 45) and f20_arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 45) then
            f20_arg1:AddSubGoal(GOAL_COMMON_Wait, 0.3, TARGET_ENE_0, 0, 0, 0)
        else
            f20_arg1:AddSubGoal(GOAL_COMMON_Wait, 0.3, TARGET_TEAM_LEADER, 0, 0, 0)
        end
    elseif f20_arg0:IsInsideTarget(TARGET_TEAM_LEADER, AI_DIR_TYPE_F, 180) and f20_arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 180) and f20_local0 >= 5 then
        if f20_arg0:HasSpecialEffectId(TARGET_TEAM_LEADER, 5025) == true or f20_arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 30) then
            f20_arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 0.3, TARGET_ENE_0, 1, 30, true, true, -1)
        elseif f20_arg0:HasSpecialEffectId(TARGET_TEAM_LEADER, 5026) == true or f20_arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 30) then
            f20_arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 0.3, TARGET_ENE_0, 0, 30, true, true, -1)
        else
            f20_arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 0.3, TARGET_TEAM_LEADER, -0.5, TARGET_TEAM_LEADER, true, -1, false, AI_CALC_DIST_TYPE_XZ)
        end
    elseif f20_arg0:IsInsideTarget(TARGET_TEAM_LEADER, AI_DIR_TYPE_F, 180) and f20_arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 180) and f20_local0 <= 5 then
        if f20_arg0:HasSpecialEffectId(TARGET_TEAM_LEADER, 5025) == true or f20_arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 30) then
            f20_arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 0.3, TARGET_ENE_0, 1, 30, true, true, -1)
        elseif f20_arg0:HasSpecialEffectId(TARGET_TEAM_LEADER, 5026) == true or f20_arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 30) then
            f20_arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 0.3, TARGET_ENE_0, 0, 30, true, true, -1)
        else
            f20_arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 0.3, TARGET_TEAM_LEADER, -0.5, TARGET_ENE_0, true, -1, false, AI_CALC_DIST_TYPE_XZ)
        end
    else
        f20_arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 0.3, TARGET_TEAM_LEADER, -0.5, TARGET_ENE_0, true, -1, false, AI_CALC_DIST_TYPE_XZ)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BlackOldKingPhantom_Act31(f21_arg0, f21_arg1, f21_arg2)
    local f21_local0 = f21_arg0:GetDist(TARGET_ENE_0)
    local f21_local1 = f21_arg0:GetDist(TARGET_TEAM_LEADER)
    local f21_local2 = f21_arg0:GetDistAtoB(TARGET_TEAM_LEADER, TARGET_ENE_0)
    f21_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 1, 3035, TARGET_ENE_0, 999, 0, 360, 0, 0)
    f21_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 1, 3037, TARGET_TEAM_LEADER, 999, 0, 0)
    if f21_arg0:HasSpecialEffectId(TARGET_TEAM_LEADER, 10634) == true then
        f21_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 1, 3037, TARGET_TEAM_LEADER, 999, 0, 0)
        f21_arg1:AddSubGoal(GOAL_COMMON_ToTargetWarp, 0.09, TARGET_TEAM_LEADER, AI_DIR_TYPE_B, 0, TARGET_TEAM_LEADER)
        f21_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 1, 3038, TARGET_TEAM_LEADER, 999, 0, 0)
    else
        f21_arg1:AddSubGoal(GOAL_COMMON_ToTargetWarp, 0.09, TARGET_TEAM_LEADER, AI_DIR_TYPE_B, 0, TARGET_TEAM_LEADER)
        f21_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 1, 3038, TARGET_TEAM_LEADER, 999, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BlackOldKingPhantom_Act32(f22_arg0, f22_arg1, f22_arg2)
    local f22_local0 = f22_arg0:GetDist(TARGET_ENE_0)
    local f22_local1 = f22_arg0:GetDist(TARGET_TEAM_LEADER)
    local f22_local2 = f22_arg0:GetDistAtoB(TARGET_TEAM_LEADER, TARGET_ENE_0)
    f22_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 1, 3036, TARGET_TEAM_LEADER, 999, 0, 360, 0, 0)
    f22_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 1, 3037, TARGET_TEAM_LEADER, 999, 0, 0)
    if f22_arg0:HasSpecialEffectId(TARGET_TEAM_LEADER, 10634) == true then
        f22_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 1, 3037, TARGET_TEAM_LEADER, 999, 0, 0)
        f22_arg1:AddSubGoal(GOAL_COMMON_ToTargetWarp, 0.09, TARGET_TEAM_LEADER, AI_DIR_TYPE_F, -0.8, TARGET_NONE)
        f22_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 1, 3038, TARGET_TEAM_LEADER, 999, 0, 0)
    else
        f22_arg1:AddSubGoal(GOAL_COMMON_ToTargetWarp, 0.09, TARGET_TEAM_LEADER, AI_DIR_TYPE_F, -0.8, TARGET_NONE)
        f22_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 1, 3038, TARGET_TEAM_LEADER, 999, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BlackOldKingPhantom_Act33(f23_arg0, f23_arg1, f23_arg2)
    f23_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 1, 3037, TARGET_TEAM_LEADER, 999, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BlackOldKingPhantom_Act34(f24_arg0, f24_arg1, f24_arg2)
    local f24_local0 = f24_arg0:GetDist(TARGET_ENE_0)
    local f24_local1 = f24_arg0:GetDist(TARGET_TEAM_LEADER)
    local f24_local2 = f24_arg0:GetDistAtoB(TARGET_TEAM_LEADER, TARGET_ENE_0)
    f24_arg1:AddSubGoal(GOAL_COMMON_Turn, 1.5, TARGET_ENE_0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BlackOldKingPhantom_Act35(f25_arg0, f25_arg1, f25_arg2)
    local f25_local0 = f25_arg0:GetDist(TARGET_ENE_0)
    local f25_local1 = f25_arg0:GetDist(TARGET_TEAM_LEADER)
    local f25_local2 = f25_arg0:GetDistAtoB(TARGET_TEAM_LEADER, TARGET_ENE_0)
    f25_arg1:AddSubGoal(GOAL_COMMON_Wait, 0.15, TARGET_TEAM_LEADER, 0, 0, 0)
    f25_arg1:AddSubGoal(GOAL_COMMON_ToTargetWarp, 0.09, TARGET_TEAM_LEADER, AI_DIR_TYPE_B, 0, TARGET_TEAM_LEADER)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BlackOldKingPhantom_Act36(f26_arg0, f26_arg1, f26_arg2)
    f26_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3035, TARGET_ENE_0, 999, 0, 0)
    f26_arg1:AddSubGoal(GOAL_COMMON_ToTargetWarp, 10, TARGET_TEAM_LEADER, AI_DIR_TYPE_F, 0, TARGET_ENE_0)
    f26_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3038, TARGET_ENE_0, 999, 0, 0)
    f26_arg0:SetTimer(2, 1.5)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BlackOldKingPhantom_Act37(f27_arg0, f27_arg1, f27_arg2)
    local f27_local0 = f27_arg0:GetRandam_Float(4.5, 6)
    local f27_local1 = f27_arg0:GetRandam_Int(0, 1)
    local f27_local2 = f27_arg0:GetRandam_Int(30, 45)
    local f27_local3 = f27_arg0:GetHpRate(TARGET_TEAM_LEADER)
    f27_arg0:AddObserveArea(0, TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, 3)
    f27_arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f27_local0, TARGET_ENE_0, f27_local1, f27_local2, true, true, -1)
    if f27_local3 >= 0.5 then
        local f27_local4 = f27_arg0:GetRandam_Float(7, 10.5)
        f27_arg0:SetTimer(0, f27_local4)
    elseif f27_local3 >= 3.5 then
        local f27_local4 = f27_arg0:GetRandam_Float(8.5, 13)
        f27_arg0:SetTimer(0, f27_local4)
    elseif f27_local3 >= 1 then
        local f27_local4 = f27_arg0:GetRandam_Float(10, 14)
        f27_arg0:SetTimer(0, f27_local4)
    else
        local f27_local4 = f27_arg0:GetRandam_Float(16, 20)
        f27_arg0:SetTimer(0, f27_local4)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BlackOldKingPhantom_Alignment(f28_arg0, f28_arg1, f28_arg2)
    local f28_local0 = f28_arg0:GetDist(TARGET_ENE_0)
    local f28_local1 = f28_arg0:GetDist(TARGET_TEAM_LEADER)
    local f28_local2 = f28_arg0:GetDistAtoB(TARGET_TEAM_LEADER, TARGET_ENE_0)
    local f28_local3 = f28_local2 - f28_arg2
    
end

function BlackOldKingPhantom_ActAfter_AdjustSpace(f29_arg0, f29_arg1, f29_arg2)
    f29_arg1:AddSubGoal(GOAL_BlackOldKingPhantom_AfterAttackAct, 10)
    
end

Goal.Update = function (f30_arg0, f30_arg1, f30_arg2)
    return Update_Default_NoSubGoal(f30_arg0, f30_arg1, f30_arg2)
    
end

Goal.Terminate = function (f31_arg0, f31_arg1, f31_arg2)
    
end

Goal.Interrupt = function (f32_arg0, f32_arg1, f32_arg2)
    if f32_arg1:IsInterupt(INTERUPT_Inside_ObserveArea) and f32_arg1:IsInsideObserve(0) then
        f32_arg2:ClearSubGoal()
        f32_arg1:Replaning()
        f32_arg1:DeleteObserve(0)
        return true
    end
    if (f32_arg1:HasSpecialEffectId(TARGET_SELF, 5025) == true or f32_arg1:HasSpecialEffectId(TARGET_SELF, 5026) == true) and f32_arg1:IsInterupt(INTERUPT_Damaged) then
        f32_arg2:ClearSubGoal()
        f32_arg1:Replaning()
        return true
    end
    if (f32_arg1:HasSpecialEffectId(TARGET_SELF, 5025) == true or f32_arg1:HasSpecialEffectId(TARGET_SELF, 5026) == true) == false then
        local f32_local0 = f32_arg1:GetRandam_Int(1, 100)
        if f32_arg1:IsInterupt(INTERUPT_UseItem) and f32_local0 <= 50 then
            f32_arg1:SetTimer(1, 3)
            f32_arg2:ClearSubGoal()
            f32_arg1:Replaning()
            return true
        end
        if f32_arg1:IsInterupt(INTERUPT_Shoot) and f32_local0 <= 50 then
            f32_arg1:SetTimer(1, 3)
            f32_arg2:ClearSubGoal()
            f32_arg1:Replaning()
            return true
        end
    end
    if f32_arg1:IsInterupt(INTERUPT_TargetOutOfAngle) and f32_arg1:IsTargetOutOfAngleInterruptSlot(0) then
        f32_arg2:ClearSubGoal()
        f32_arg1:Replaning()
        return true
    end
    if f32_arg1:IsInterupt(INTERUPT_TargetOutOfRange) then
        if f32_arg1:IsTargetOutOfRangeInterruptSlot(0) and InsideRange(f32_arg1, f32_arg2, 0, 90, 5, 8.3 - f32_arg1:GetMapHitRadius(TARGET_SELF)) then
            f32_arg2:ClearSubGoal()
            f32_arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3007, TARGET_ENE_0, SuccessDist)
            f32_arg2:AddSubGoal(GOAL_BlackOldKingPhantom_AfterAttackAct, 10)
            return true
        end
        if f32_arg1:IsTargetOutOfRangeInterruptSlot(1) and InsideRange(f32_arg1, f32_arg2, 0, 90, 5, 25.8 - f32_arg1:GetMapHitRadius(TARGET_SELF)) then
            f32_arg2:ClearSubGoal()
            f32_arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3002, TARGET_ENE_0, SuccessDist)
            f32_arg2:AddSubGoal(GOAL_BlackOldKingPhantom_AfterAttackAct, 10)
            return true
        end
    end
    return false
    
end

RegisterTableGoal(GOAL_BlackOldKingPhantom_AfterAttackAct, "BlackOldKingPhantom_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_BlackOldKingPhantom_AfterAttackAct, true)

Goal.Activate = function (f33_arg0, f33_arg1, f33_arg2)
    local f33_local0 = f33_arg1:GetDist(TARGET_ENE_0)
    local f33_local1 = f33_arg1:GetDist(TARGET_TEAM_LEADER)
    local f33_local2 = f33_arg1:GetDistAtoB(TARGET_TEAM_LEADER, TARGET_ENE_0)
    if f33_local1 > 0.5 then
        f33_arg2:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3035, TARGET_ENE_0, 999, 0, 0)
        f33_arg2:AddSubGoal(GOAL_COMMON_ToTargetWarp, 10, TARGET_TEAM_LEADER, AI_DIR_TYPE_F, 0, TARGET_ENE_0)
        f33_arg2:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3038, TARGET_ENE_0, 999, 0, 0)
        f33_arg1:SetTimer(2, 1.5)
    end
    
end

Goal.Update = function (f34_arg0, f34_arg1, f34_arg2)
    return Update_Default_NoSubGoal(f34_arg0, f34_arg1, f34_arg2)
    
end

Goal.Terminate = function (f35_arg0, f35_arg1, f35_arg2)
    
end

Goal.Interrupt = function (f36_arg0, f36_arg1, f36_arg2)
    
end


