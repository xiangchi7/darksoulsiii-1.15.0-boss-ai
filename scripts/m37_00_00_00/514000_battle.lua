RegisterTableGoal(GOAL_BlackOldKing_514000_Battle, "BlackOldKing_514000")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_BlackOldKing_514000_Battle, true)

Goal.Initialize = function (f1_arg0, f1_arg1, f1_arg2, f1_arg3)
    f1_arg1:SetNumber(0, 0)
    
end

Goal.Activate = function (f2_arg0, f2_arg1, f2_arg2)
    local f2_local0 = {}
    local f2_local1 = {}
    local f2_local2 = {}
    Common_Clear_Param(f2_local0, f2_local1, f2_local2)
    Init_Pseudo_Global(f2_arg1, f2_arg2)
    f2_arg1:SetStringIndexedNumber("Dist_SideStep", 3.8)
    f2_arg1:SetStringIndexedNumber("Dist_BackStep", 7.5)
    if f2_arg1:HasSpecialEffectId(TARGET_SELF, 10636) then
        f2_arg1:AddObserveSpecialEffectAttribute(TARGET_EVENT, 5027)
    end
    if f2_arg1:HasSpecialEffectId(TARGET_SELF, 10636) == false then
        f2_arg1:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 90)
    end
    local f2_local3 = f2_arg1:GetDist(TARGET_ENE_0)
    local f2_local4 = f2_arg1:GetRandam_Int(1, 100)
    local f2_local5 = f2_arg1:GetHpRate(TARGET_SELF)
    local f2_local6 = f2_arg1:GetDist(TARGET_EVENT)
    if f2_arg1:HasSpecialEffectId(TARGET_SELF, 5020) == false and f2_local5 <= 0.6 then
        f2_local0[25] = 10
    elseif f2_arg1:GetNumber(0) == 0 then
        f2_local0[6] = 100
    elseif f2_arg1:HasSpecialEffectId(TARGET_SELF, 10636) then
        if f2_arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 240) then
            if InsideRange(f2_arg1, f2_arg2, 145, 115, -1, 3.8 - f2_arg1:GetMapHitRadius(TARGET_SELF)) then
                f2_local0[14] = 70
                f2_local0[5] = 30
            elseif InsideRange(f2_arg1, f2_arg2, -145, 115, -1, 3.3 - f2_arg1:GetMapHitRadius(TARGET_SELF)) then
                f2_local0[15] = 70
                f2_local0[5] = 30
            else
                f2_local0[5] = 100
            end
        elseif f2_arg1:HasSpecialEffectId(TARGET_EVENT, 5025) or f2_arg1:HasSpecialEffectId(TARGET_EVENT, 5026) then
            f2_local0[48] = 100
        elseif f2_local3 >= 5 then
            f2_local0[6] = 100
        else
            f2_local0[7] = 100
        end
    elseif f2_arg1:HasSpecialEffectId(TARGET_SELF, 5020) == true and f2_arg1:HasSpecialEffectId(TARGET_SELF, 10637) == false and f2_arg1:IsFinishTimer(0) == true and (f2_local3 >= 10 or f2_local5 >= 0.35 or f2_arg1:IsFinishTimer(1) == false or f2_local5 <= 0.3 and f2_arg1:HasSpecialEffectId(TARGET_SELF, 5022) == false or f2_local5 <= 0.12) then
        f2_local0[24] = 10
    elseif f2_arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 210) then
        if InsideRange(f2_arg1, f2_arg2, 145, 115, -1, 3.8 - f2_arg1:GetMapHitRadius(TARGET_SELF)) then
            f2_local0[14] = 70
            f2_local0[9] = 20
            f2_local0[5] = 10
        elseif InsideRange(f2_arg1, f2_arg2, -145, 115, -1, 3.3 - f2_arg1:GetMapHitRadius(TARGET_SELF)) then
            f2_local0[15] = 70
            f2_local0[8] = 20
            f2_local0[5] = 10
        else
            f2_local0[5] = 10
        end
    elseif f2_arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 270) and f2_local3 >= 15 then
        f2_local0[5] = 10
    elseif f2_local3 >= 25 then
        f2_local0[10] = 10
        f2_local0[17] = 10
        f2_local0[18] = 10
        f2_local0[22] = 20
    elseif f2_local3 >= 15 then
        f2_local0[10] = 10
        f2_local0[11] = 10
        f2_local0[12] = 10
        f2_local0[17] = 10
        f2_local0[18] = 10
        f2_local0[22] = 20
        f2_local0[23] = 20
    elseif f2_local3 >= 8 then
        f2_local0[1] = 20
        f2_local0[2] = 20
        f2_local0[10] = 20
        f2_local0[11] = 20
        f2_local0[12] = 20
        f2_local0[13] = 10
        f2_local0[19] = 10
        f2_local0[20] = 10
        f2_local0[22] = 20
        f2_local0[23] = 20
    elseif f2_local3 >= 1.2 then
        f2_local0[1] = 20
        f2_local0[2] = 20
        f2_local0[11] = 20
        f2_local0[12] = 20
        f2_local0[13] = 10
        f2_local0[19] = 20
        f2_local0[20] = 10
        f2_local0[21] = 10
        f2_local0[23] = 20
    else
        f2_local0[8] = 10
        f2_local0[9] = 10
        f2_local0[16] = 10
        f2_local0[21] = 10
    end
    if f2_arg1:IsFinishTimer(1) == false and f2_arg1:HasSpecialEffectId(TARGET_SELF, 10636) == false and f2_local3 >= 10 then
        f2_local0[17] = f2_local0[17] + 10
        f2_local0[18] = f2_local0[18] + 10
        f2_local0[22] = f2_local0[22] + 10
    end
    if f2_arg1:IsFinishTimer(1) == false and f2_arg1:HasSpecialEffectId(TARGET_SELF, 10636) == false and f2_local3 >= 6 then
        f2_local0[10] = f2_local0[10] + 50
    end
    if f2_arg1:IsFinishTimer(0) == false and f2_local3 >= 8 then
        f2_local0[22] = f2_local0[22] + 100
        f2_local0[23] = f2_local0[23] + 100
    end
    if f2_arg1:HasSpecialEffectId(TARGET_SELF, 5020) == false then
        f2_local0[16] = 0
        f2_local0[17] = 0
        f2_local0[18] = 0
        f2_local0[19] = 0
        f2_local0[21] = 0
        f2_local0[22] = 0
        f2_local0[23] = 0
    end
    if f2_arg1:GetNumber(1) == 1 then
        f2_arg1:SetNumber(1, 0)
        if f2_arg1:HasSpecialEffectId(TARGET_SELF, 5020) then
            f2_local0[16] = f2_local0[16] + 10
            f2_local0[19] = f2_local0[19] + 10
            f2_local0[21] = f2_local0[21] + 10
        end
    end
    f2_local0[1] = SetCoolTime(f2_arg1, f2_arg2, 3003, 15, f2_local0[1], 1)
    f2_local0[2] = SetCoolTime(f2_arg1, f2_arg2, 3011, 15, f2_local0[2], 1)
    f2_local0[8] = SetCoolTime(f2_arg1, f2_arg2, 3000, 15, f2_local0[8], 1)
    f2_local0[9] = SetCoolTime(f2_arg1, f2_arg2, 3001, 15, f2_local0[9], 1)
    f2_local0[10] = SetCoolTime(f2_arg1, f2_arg2, 3002, 15, f2_local0[10], 1)
    f2_local0[11] = SetCoolTime(f2_arg1, f2_arg2, 3012, 15, f2_local0[11], 1)
    f2_local0[12] = SetCoolTime(f2_arg1, f2_arg2, 3013, 15, f2_local0[12], 1)
    f2_local0[13] = SetCoolTime(f2_arg1, f2_arg2, 3006, 15, f2_local0[13], 1)
    f2_local0[14] = SetCoolTime(f2_arg1, f2_arg2, 3014, 10, f2_local0[14], 1)
    f2_local0[15] = SetCoolTime(f2_arg1, f2_arg2, 3015, 10, f2_local0[15], 1)
    f2_local0[16] = SetCoolTime(f2_arg1, f2_arg2, 3016, 15, f2_local0[16], 1)
    f2_local0[17] = SetCoolTime(f2_arg1, f2_arg2, 3017, 15, f2_local0[17], 1)
    f2_local0[18] = SetCoolTime(f2_arg1, f2_arg2, 3018, 15, f2_local0[18], 1)
    f2_local0[19] = SetCoolTime(f2_arg1, f2_arg2, 3020, 15, f2_local0[19], 1)
    f2_local0[20] = SetCoolTime(f2_arg1, f2_arg2, 3021, 25, f2_local0[20], 1)
    f2_local0[21] = SetCoolTime(f2_arg1, f2_arg2, 3019, 25, f2_local0[21], 1)
    f2_local0[22] = SetCoolTime(f2_arg1, f2_arg2, 3024, 20, f2_local0[22], 1)
    f2_local0[23] = SetCoolTime(f2_arg1, f2_arg2, 3025, 20, f2_local0[23], 1)
    f2_local1[1] = REGIST_FUNC(f2_arg1, f2_arg2, BlackOldKing_Act01)
    f2_local1[2] = REGIST_FUNC(f2_arg1, f2_arg2, BlackOldKing_Act02)
    f2_local1[3] = REGIST_FUNC(f2_arg1, f2_arg2, BlackOldKing_Act03)
    f2_local1[4] = REGIST_FUNC(f2_arg1, f2_arg2, BlackOldKing_Act04)
    f2_local1[5] = REGIST_FUNC(f2_arg1, f2_arg2, BlackOldKing_Act05)
    f2_local1[6] = REGIST_FUNC(f2_arg1, f2_arg2, BlackOldKing_Act06)
    f2_local1[7] = REGIST_FUNC(f2_arg1, f2_arg2, BlackOldKing_Act07)
    f2_local1[8] = REGIST_FUNC(f2_arg1, f2_arg2, BlackOldKing_Act08)
    f2_local1[9] = REGIST_FUNC(f2_arg1, f2_arg2, BlackOldKing_Act09)
    f2_local1[10] = REGIST_FUNC(f2_arg1, f2_arg2, BlackOldKing_Act10)
    f2_local1[11] = REGIST_FUNC(f2_arg1, f2_arg2, BlackOldKing_Act11)
    f2_local1[12] = REGIST_FUNC(f2_arg1, f2_arg2, BlackOldKing_Act12)
    f2_local1[13] = REGIST_FUNC(f2_arg1, f2_arg2, BlackOldKing_Act13)
    f2_local1[14] = REGIST_FUNC(f2_arg1, f2_arg2, BlackOldKing_Act14)
    f2_local1[15] = REGIST_FUNC(f2_arg1, f2_arg2, BlackOldKing_Act15)
    f2_local1[16] = REGIST_FUNC(f2_arg1, f2_arg2, BlackOldKing_Act16)
    f2_local1[17] = REGIST_FUNC(f2_arg1, f2_arg2, BlackOldKing_Act17)
    f2_local1[18] = REGIST_FUNC(f2_arg1, f2_arg2, BlackOldKing_Act18)
    f2_local1[19] = REGIST_FUNC(f2_arg1, f2_arg2, BlackOldKing_Act19)
    f2_local1[20] = REGIST_FUNC(f2_arg1, f2_arg2, BlackOldKing_Act20)
    f2_local1[21] = REGIST_FUNC(f2_arg1, f2_arg2, BlackOldKing_Act21)
    f2_local1[22] = REGIST_FUNC(f2_arg1, f2_arg2, BlackOldKing_Act22)
    f2_local1[23] = REGIST_FUNC(f2_arg1, f2_arg2, BlackOldKing_Act23)
    f2_local1[24] = REGIST_FUNC(f2_arg1, f2_arg2, BlackOldKing_Act24)
    f2_local1[25] = REGIST_FUNC(f2_arg1, f2_arg2, BlackOldKing_Act25)
    f2_local1[26] = REGIST_FUNC(f2_arg1, f2_arg2, BlackOldKing_Act26)
    f2_local1[27] = REGIST_FUNC(f2_arg1, f2_arg2, BlackOldKing_Act27)
    f2_local1[28] = REGIST_FUNC(f2_arg1, f2_arg2, BlackOldKing_Act28)
    f2_local1[29] = REGIST_FUNC(f2_arg1, f2_arg2, BlackOldKing_Act29)
    f2_local1[30] = REGIST_FUNC(f2_arg1, f2_arg2, BlackOldKing_Act30)
    f2_local1[31] = REGIST_FUNC(f2_arg1, f2_arg2, BlackOldKing_Act31)
    f2_local1[32] = REGIST_FUNC(f2_arg1, f2_arg2, BlackOldKing_Act32)
    f2_local1[33] = REGIST_FUNC(f2_arg1, f2_arg2, BlackOldKing_Act33)
    f2_local1[34] = REGIST_FUNC(f2_arg1, f2_arg2, BlackOldKing_Act34)
    f2_local1[35] = REGIST_FUNC(f2_arg1, f2_arg2, BlackOldKing_Act35)
    f2_local1[36] = REGIST_FUNC(f2_arg1, f2_arg2, BlackOldKing_Act36)
    f2_local1[37] = REGIST_FUNC(f2_arg1, f2_arg2, BlackOldKing_Act37)
    f2_local1[38] = REGIST_FUNC(f2_arg1, f2_arg2, BlackOldKing_Act38)
    f2_local1[39] = REGIST_FUNC(f2_arg1, f2_arg2, BlackOldKing_Act39)
    f2_local1[40] = REGIST_FUNC(f2_arg1, f2_arg2, BlackOldKing_Act40)
    f2_local1[41] = REGIST_FUNC(f2_arg1, f2_arg2, BlackOldKing_Act41)
    f2_local1[42] = REGIST_FUNC(f2_arg1, f2_arg2, BlackOldKing_Act42)
    f2_local1[43] = REGIST_FUNC(f2_arg1, f2_arg2, BlackOldKing_Act43)
    f2_local1[44] = REGIST_FUNC(f2_arg1, f2_arg2, BlackOldKing_Act44)
    f2_local1[45] = REGIST_FUNC(f2_arg1, f2_arg2, BlackOldKing_Act45)
    f2_local1[46] = REGIST_FUNC(f2_arg1, f2_arg2, BlackOldKing_Act46)
    f2_local1[47] = REGIST_FUNC(f2_arg1, f2_arg2, BlackOldKing_Act47)
    f2_local1[48] = REGIST_FUNC(f2_arg1, f2_arg2, BlackOldKing_Act48)
    f2_local1[50] = REGIST_FUNC(f2_arg1, f2_arg2, BlackOldKing_Act50)
    local f2_local7 = REGIST_FUNC(f2_arg1, f2_arg2, BlackOldKing_ActAfter_AdjustSpace)
    Common_Battle_Activate(f2_arg1, f2_arg2, f2_local0, f2_local1, f2_local7, f2_local2)
    
end

function BlackOldKing_Act01(f3_arg0, f3_arg1, f3_arg2)
    local f3_local0 = 10.3 - f3_arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local1 = 999
    local f3_local2 = 999
    local f3_local3 = 0
    local f3_local4 = 0
    local f3_local5 = 2
    local f3_local6 = 5
    Approach_Act_Flex(f3_arg0, f3_arg1, f3_local0, f3_local1, f3_local2, f3_local3, f3_local4, f3_local5, f3_local6)
    local f3_local7 = 3003
    local f3_local8 = 3004
    local f3_local9 = 3005
    local f3_local10 = 8.3 - f3_arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local11 = 6.8 - f3_arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local12 = 999 - f3_arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local13 = 1
    local f3_local14 = 180
    f3_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f3_local7, TARGET_ENE_0, f3_local10, f3_local13, f3_local14)
    BlackOldKing_Act03(f3_arg0, f3_arg1, f3_arg2)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function BlackOldKing_Act02(f4_arg0, f4_arg1, f4_arg2)
    local f4_local0 = 10.8 - f4_arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local1 = 999
    local f4_local2 = 999
    local f4_local3 = 0
    local f4_local4 = 0
    local f4_local5 = 2
    local f4_local6 = 5
    Approach_Act_Flex(f4_arg0, f4_arg1, f4_local0, f4_local1, f4_local2, f4_local3, f4_local4, f4_local5, f4_local6)
    local f4_local7 = 3011
    local f4_local8 = 3005
    local f4_local9 = 3009
    local f4_local10 = 6.8 - f4_arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local11 = 8.3 - f4_arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local12 = 999 - f4_arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local13 = 1
    local f4_local14 = 150
    f4_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f4_local7, TARGET_ENE_0, f4_local10, f4_local13, f4_local14)
    BlackOldKing_Act04(f4_arg0, f4_arg1, f4_arg2)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function BlackOldKing_Act03(f5_arg0, f5_arg1, f5_arg2)
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
        f5_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f5_local0, TARGET_ENE_0, f5_local5):SetTargetRange(1, -99, 5)
        f5_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f5_local1, TARGET_ENE_0, f5_local8)
    elseif f5_local9 <= 70 then
        f5_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f5_local0, TARGET_ENE_0, f5_local6):SetTargetAngle(0, 0, 60)
        f5_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f5_local2, TARGET_ENE_0, f5_local5):SetTargetRange(1, -99, 5)
        f5_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f5_local1, TARGET_ENE_0, f5_local8)
    else
        f5_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f5_local3, TARGET_ENE_0, f5_local4)
        f5_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f5_local0, TARGET_ENE_0, f5_local5)
        f5_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f5_local1, TARGET_ENE_0, f5_local8):SetTargetRange(0, -99, 5)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function BlackOldKing_Act04(f6_arg0, f6_arg1, f6_arg2)
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
    if f6_arg0:HasSpecialEffectId(TARGET_SELF, 10636) == false and f6_local12 <= 30 then
        local f6_local13 = 3000
        local f6_local14 = 3001
        if f6_local11 <= 15 then
            f6_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f6_local0, TARGET_ENE_0, f6_local6):SetTargetRange(0, -99, 5)
            f6_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f6_local1, TARGET_ENE_0, f6_local10)
        elseif f6_local11 <= 30 then
            f6_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f6_local1, TARGET_ENE_0, f6_local7)
            f6_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f6_local2, TARGET_ENE_0, f6_local5):SetTargetRange(1, -99, 5)
            f6_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f6_local0, TARGET_ENE_0, f6_local9)
            f6_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f6_local4, TARGET_ENE_0, f6_local10)
        elseif f6_local11 <= 55 then
            f6_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f6_local1, TARGET_ENE_0, f6_local8)
            f6_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f6_local13, TARGET_ENE_0, f6_local9)
            f6_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f6_local4, TARGET_ENE_0, f6_local10)
        elseif f6_local11 <= 80 then
            f6_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f6_local1, TARGET_ENE_0, f6_local8)
            f6_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f6_local3, TARGET_ENE_0, f6_local9)
            f6_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f6_local4, TARGET_ENE_0, f6_local10)
        else
            f6_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f6_local1, TARGET_ENE_0, f6_local8)
            f6_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f6_local13, TARGET_ENE_0, f6_local9)
            f6_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f6_local14, TARGET_ENE_0, f6_local10)
        end
    elseif f6_local11 <= 40 then
        f6_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f6_local0, TARGET_ENE_0, f6_local6):SetTargetRange(0, -99, 5)
        f6_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f6_local1, TARGET_ENE_0, f6_local10)
    elseif f6_local11 <= 70 then
        f6_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f6_local1, TARGET_ENE_0, f6_local7)
        f6_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f6_local2, TARGET_ENE_0, f6_local5):SetTargetRange(1, -99, 5)
        f6_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f6_local0, TARGET_ENE_0, f6_local9)
        f6_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f6_local4, TARGET_ENE_0, f6_local10)
    else
        f6_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f6_local1, TARGET_ENE_0, f6_local8)
        f6_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f6_local3, TARGET_ENE_0, f6_local9)
        f6_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f6_local4, TARGET_ENE_0, f6_local10)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function BlackOldKing_Act05(f7_arg0, f7_arg1, f7_arg2)
    f7_arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 45)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BlackOldKing_Act06(f8_arg0, f8_arg1, f8_arg2)
    if f8_arg0:HasSpecialEffectId(TARGET_SELF, 10636) == false then
        f8_arg0:AddObserveArea(0, TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, 4.5)
    end
    if f8_arg0:HasSpecialEffectId(TARGET_SELF, 10636) == false then
        f8_arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 3, TARGET_ENE_0, 5, TARGET_SELF, true, -1)
    else
        f8_arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 0.3, TARGET_ENE_0, 5, TARGET_SELF, true, -1)
    end
    f8_arg0:SetNumber(0, 1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BlackOldKing_Act07(f9_arg0, f9_arg1, f9_arg2)
    local f9_local0 = f9_arg0:GetRandam_Float(4, 5.5)
    local f9_local1 = f9_arg0:GetRandam_Int(0, 1)
    local f9_local2 = f9_arg0:GetRandam_Int(30, 45)
    if f9_arg0:HasSpecialEffectId(TARGET_SELF, 10636) == false then
        f9_arg0:AddObserveArea(0, TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, 4.5)
    end
    f9_arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f9_local0, TARGET_ENE_0, f9_local1, f9_local2, true, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BlackOldKing_Act08(f10_arg0, f10_arg1, f10_arg2)
    local f10_local0 = 3000
    local f10_local1 = 3004
    local f10_local2 = 3008
    local f10_local3 = 3003
    local f10_local4 = 8.3 - f10_arg0:GetMapHitRadius(TARGET_SELF)
    local f10_local5 = 3.8 - f10_arg0:GetMapHitRadius(TARGET_SELF)
    local f10_local6 = 10.3 - f10_arg0:GetMapHitRadius(TARGET_SELF)
    local f10_local7 = 999 - f10_arg0:GetMapHitRadius(TARGET_SELF)
    local f10_local8 = 0
    local f10_local9 = 360
    f10_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f10_local0, TARGET_ENE_0, f10_local4, f10_local8, f10_local9)
    f10_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f10_local1, TARGET_ENE_0, f10_local5):SetTargetAngle(0, 0, 60)
    f10_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f10_local2, TARGET_ENE_0, f10_local6):SetTargetRange(1, -99, 5)
    f10_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f10_local3, TARGET_ENE_0, f10_local7)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function BlackOldKing_Act09(f11_arg0, f11_arg1, f11_arg2)
    local f11_local0 = 3001
    local f11_local1 = 3005
    local f11_local2 = 3009
    local f11_local3 = 3004
    local f11_local4 = 6.8 - f11_arg0:GetMapHitRadius(TARGET_SELF)
    local f11_local5 = 8.3 - f11_arg0:GetMapHitRadius(TARGET_SELF)
    local f11_local6 = 8.3 - f11_arg0:GetMapHitRadius(TARGET_SELF)
    local f11_local7 = 999 - f11_arg0:GetMapHitRadius(TARGET_SELF)
    local f11_local8 = 0
    local f11_local9 = 360
    f11_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f11_local0, TARGET_ENE_0, f11_local4, f11_local8, f11_local9)
    f11_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f11_local1, TARGET_ENE_0, f11_local5):SetTargetRange(0, -99, 5)
    f11_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f11_local2, TARGET_ENE_0, f11_local6)
    f11_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f11_local3, TARGET_ENE_0, f11_local7)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function BlackOldKing_Act10(f12_arg0, f12_arg1, f12_arg2)
    local f12_local0 = 25.8 - f12_arg0:GetMapHitRadius(TARGET_SELF) - 1
    local f12_local1 = 999
    local f12_local2 = 999
    local f12_local3 = 0
    local f12_local4 = 0
    local f12_local5 = 2
    local f12_local6 = 5
    Approach_Act_Flex(f12_arg0, f12_arg1, f12_local0, f12_local1, f12_local2, f12_local3, f12_local4, f12_local5, f12_local6)
    local f12_local7 = 3002
    local f12_local8 = 999 - f12_arg0:GetMapHitRadius(TARGET_SELF)
    local f12_local9 = 1
    local f12_local10 = 210
    f12_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f12_local7, TARGET_ENE_0, f12_local8, f12_local9, f12_local10)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function BlackOldKing_Act11(f13_arg0, f13_arg1, f13_arg2)
    local f13_local0 = 10.8 - f13_arg0:GetMapHitRadius(TARGET_SELF) - 1
    local f13_local1 = 999
    local f13_local2 = 999
    local f13_local3 = 0
    local f13_local4 = 0
    local f13_local5 = 2
    local f13_local6 = 5
    Approach_Act_Flex(f13_arg0, f13_arg1, f13_local0, f13_local1, f13_local2, f13_local3, f13_local4, f13_local5, f13_local6)
    local f13_local7 = 3012
    local f13_local8 = 3009
    local f13_local9 = 3010
    local f13_local10 = 8.3 - f13_arg0:GetMapHitRadius(TARGET_SELF)
    local f13_local11 = 6.8 - f13_arg0:GetMapHitRadius(TARGET_SELF)
    local f13_local12 = 999 - f13_arg0:GetMapHitRadius(TARGET_SELF)
    local f13_local13 = 1
    local f13_local14 = 240
    local f13_local15 = f13_arg0:GetHpRate(TARGET_SELF)
    if f13_arg0:HasSpecialEffectId(TARGET_SELF, 5020) and f13_local15 <= 0.35 then
        f13_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f13_local7, TARGET_ENE_0, f13_local10, f13_local13, f13_local14)
        f13_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f13_local8, TARGET_ENE_0, f13_local11)
        f13_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f13_local9, TARGET_ENE_0, f13_local12)
    else
        f13_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f13_local7, TARGET_ENE_0, f13_local12, f13_local13, f13_local14)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function BlackOldKing_Act12(f14_arg0, f14_arg1, f14_arg2)
    local f14_local0 = 9.8 - f14_arg0:GetMapHitRadius(TARGET_SELF) - 1
    local f14_local1 = 999
    local f14_local2 = 999
    local f14_local3 = 0
    local f14_local4 = 0
    local f14_local5 = 2
    local f14_local6 = 5
    Approach_Act_Flex(f14_arg0, f14_arg1, f14_local0, f14_local1, f14_local2, f14_local3, f14_local4, f14_local5, f14_local6)
    local f14_local7 = 3013
    local f14_local8 = 3007
    local f14_local9 = 3005
    local f14_local10 = 8.3 - f14_arg0:GetMapHitRadius(TARGET_SELF)
    local f14_local11 = 6.8 - f14_arg0:GetMapHitRadius(TARGET_SELF)
    local f14_local12 = 999 - f14_arg0:GetMapHitRadius(TARGET_SELF)
    local f14_local13 = 1
    local f14_local14 = 240
    local f14_local15 = f14_arg0:GetHpRate(TARGET_SELF)
    if f14_arg0:HasSpecialEffectId(TARGET_SELF, 5020) and f14_local15 <= 0.35 then
        f14_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f14_local7, TARGET_ENE_0, f14_local10, f14_local13, f14_local14)
        f14_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f14_local8, TARGET_ENE_0, f14_local11)
        f14_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f14_local9, TARGET_ENE_0, f14_local12)
    else
        f14_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f14_local7, TARGET_ENE_0, f14_local12, f14_local13, f14_local14)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function BlackOldKing_Act13(f15_arg0, f15_arg1, f15_arg2)
    local f15_local0 = 8.3 - f15_arg0:GetMapHitRadius(TARGET_SELF)
    local f15_local1 = 999
    local f15_local2 = 999
    local f15_local3 = 0
    local f15_local4 = 0
    local f15_local5 = 2
    local f15_local6 = 5
    Approach_Act_Flex(f15_arg0, f15_arg1, f15_local0, f15_local1, f15_local2, f15_local3, f15_local4, f15_local5, f15_local6)
    local f15_local7 = 3006
    local f15_local8 = 999 - f15_arg0:GetMapHitRadius(TARGET_SELF)
    local f15_local9 = 1
    local f15_local10 = 120
    f15_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f15_local7, TARGET_ENE_0, f15_local8, f15_local9, f15_local10)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function BlackOldKing_Act14(f16_arg0, f16_arg1, f16_arg2)
    local f16_local0 = 3014
    local f16_local1 = 3009
    local f16_local2 = 9.8 - f16_arg0:GetMapHitRadius(TARGET_SELF)
    local f16_local3 = 999 - f16_arg0:GetMapHitRadius(TARGET_SELF)
    local f16_local4 = 0
    local f16_local5 = 360
    f16_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f16_local0, TARGET_ENE_0, f16_local2, f16_local4, f16_local5)
    f16_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f16_local1, TARGET_ENE_0, f16_local3)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function BlackOldKing_Act15(f17_arg0, f17_arg1, f17_arg2)
    local f17_local0 = 3015
    local f17_local1 = 3010
    local f17_local2 = 6.8 - f17_arg0:GetMapHitRadius(TARGET_SELF)
    local f17_local3 = 999 - f17_arg0:GetMapHitRadius(TARGET_SELF)
    local f17_local4 = 0
    local f17_local5 = 360
    f17_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f17_local0, TARGET_ENE_0, f17_local2, f17_local4, f17_local5)
    f17_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f17_local1, TARGET_ENE_0, f17_local3)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function BlackOldKing_Act16(f18_arg0, f18_arg1, f18_arg2)
    local f18_local0 = 3016
    local f18_local1 = 999 - f18_arg0:GetMapHitRadius(TARGET_SELF)
    local f18_local2 = 0
    local f18_local3 = 360
    f18_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f18_local0, TARGET_ENE_0, f18_local1, f18_local2, f18_local3)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function BlackOldKing_Act17(f19_arg0, f19_arg1, f19_arg2)
    local f19_local0 = 29.8 - f19_arg0:GetMapHitRadius(TARGET_SELF)
    local f19_local1 = 999
    local f19_local2 = 999
    local f19_local3 = 0
    local f19_local4 = 0
    local f19_local5 = 2
    local f19_local6 = 5
    Approach_Act_Flex(f19_arg0, f19_arg1, f19_local0, f19_local1, f19_local2, f19_local3, f19_local4, f19_local5, f19_local6)
    local f19_local7 = 3017
    local f19_local8 = 999 - f19_arg0:GetMapHitRadius(TARGET_SELF)
    local f19_local9 = 1
    local f19_local10 = 180
    f19_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f19_local7, TARGET_ENE_0, f19_local8, f19_local9, f19_local10)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function BlackOldKing_Act18(f20_arg0, f20_arg1, f20_arg2)
    local f20_local0 = 23.8 - f20_arg0:GetMapHitRadius(TARGET_SELF)
    local f20_local1 = 999
    local f20_local2 = 999
    local f20_local3 = 0
    local f20_local4 = 0
    local f20_local5 = 2
    local f20_local6 = 5
    Approach_Act_Flex(f20_arg0, f20_arg1, f20_local0, f20_local1, f20_local2, f20_local3, f20_local4, f20_local5, f20_local6)
    local f20_local7 = 3018
    local f20_local8 = 999 - f20_arg0:GetMapHitRadius(TARGET_SELF)
    local f20_local9 = 1
    local f20_local10 = 180
    f20_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f20_local7, TARGET_ENE_0, f20_local8, f20_local9, f20_local10)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function BlackOldKing_Act19(f21_arg0, f21_arg1, f21_arg2)
    local f21_local0 = 3020
    local f21_local1 = 999 - f21_arg0:GetMapHitRadius(TARGET_SELF)
    local f21_local2 = 1
    local f21_local3 = 180
    f21_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f21_local0, TARGET_ENE_0, f21_local1, f21_local2, f21_local3)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function BlackOldKing_Act20(f22_arg0, f22_arg1, f22_arg2)
    local f22_local0 = 6.8 - f22_arg0:GetMapHitRadius(TARGET_SELF)
    local f22_local1 = 999
    local f22_local2 = 999
    local f22_local3 = 0
    local f22_local4 = 0
    local f22_local5 = 2
    local f22_local6 = 5
    Approach_Act_Flex(f22_arg0, f22_arg1, f22_local0, f22_local1, f22_local2, f22_local3, f22_local4, f22_local5, f22_local6)
    local f22_local7 = 3021
    local f22_local8 = 3022
    local f22_local9 = 6.8 - f22_arg0:GetMapHitRadius(TARGET_SELF)
    local f22_local10 = 999 - f22_arg0:GetMapHitRadius(TARGET_SELF)
    local f22_local11 = 1
    local f22_local12 = 150
    f22_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f22_local7, TARGET_ENE_0, f22_local9, f22_local11, f22_local12)
    f22_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f22_local8, TARGET_ENE_0, f22_local10)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function BlackOldKing_Act21(f23_arg0, f23_arg1, f23_arg2)
    local f23_local0 = 3019
    local f23_local1 = 999
    local f23_local2 = 0
    local f23_local3 = 360
    f23_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f23_local0, TARGET_ENE_0, f23_local1, f23_local2, f23_local3):SetTargetRange(2, -99, 8)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function BlackOldKing_Act22(f24_arg0, f24_arg1, f24_arg2)
    local f24_local0 = 3024
    local f24_local1 = 999 - f24_arg0:GetMapHitRadius(TARGET_SELF)
    local f24_local2 = 1
    local f24_local3 = 150
    f24_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f24_local0, TARGET_ENE_0, f24_local1, f24_local2, f24_local3)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function BlackOldKing_Act23(f25_arg0, f25_arg1, f25_arg2)
    local f25_local0 = 3025
    local f25_local1 = 999 - f25_arg0:GetMapHitRadius(TARGET_SELF)
    local f25_local2 = 1
    local f25_local3 = 180
    f25_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f25_local0, TARGET_ENE_0, f25_local1, f25_local2, f25_local3)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function BlackOldKing_Act24(f26_arg0, f26_arg1, f26_arg2)
    local f26_local0 = f26_arg0:GetDist(TARGET_ENE_0)
    local f26_local1 = 2
    if f26_local0 <= 5 then
        if InsideRange(f26_arg0, f26_arg1, 120, 120, -1, 3) and f26_arg0:HasSpecialEffectId(TARGET_SELF, 5032) == false then
            f26_arg1:AddSubGoal(GOAL_COMMON_SpinStep, 1.5, 6002, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0):SetLifeEndSuccess(true)
        elseif InsideRange(f26_arg0, f26_arg1, -120, 120, -1, 3) and f26_arg0:HasSpecialEffectId(TARGET_SELF, 5031) == false then
            f26_arg1:AddSubGoal(GOAL_COMMON_SpinStep, 1.5, 6003, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 0):SetLifeEndSuccess(true)
        elseif f26_arg0:HasSpecialEffectId(TARGET_SELF, 5030) == false then
            f26_arg1:AddSubGoal(GOAL_COMMON_SpinStep, 1.5, 6001, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0):SetLifeEndSuccess(true)
        end
    end
    f26_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3026, TARGET_ENE_0, 5, 0, 0)
    f26_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3025, TARGET_ENE_0, SuccessDist)
    f26_arg0:SetNumber(2, 1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BlackOldKing_Act25(f27_arg0, f27_arg1, f27_arg2)
    f27_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 1500, TARGET_ENE_0, 999)
    f27_arg0:SetTimer(0, 6)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BlackOldKing_Act26(f28_arg0, f28_arg1, f28_arg2)
    local f28_local0 = 3000
    local f28_local1 = 999 - f28_arg0:GetMapHitRadius(TARGET_SELF)
    local f28_local2 = 0
    local f28_local3 = 360
    f28_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 3, f28_local0, TARGET_ENE_0, f28_local1, f28_local2, f28_local3, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BlackOldKing_Act27(f29_arg0, f29_arg1, f29_arg2)
    local f29_local0 = 3001
    local f29_local1 = 999 - f29_arg0:GetMapHitRadius(TARGET_SELF)
    local f29_local2 = 0
    local f29_local3 = 360
    f29_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 3, f29_local0, TARGET_ENE_0, f29_local1, f29_local2, f29_local3, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BlackOldKing_Act28(f30_arg0, f30_arg1, f30_arg2)
    local f30_local0 = 3002
    local f30_local1 = 999 - f30_arg0:GetMapHitRadius(TARGET_SELF)
    local f30_local2 = 0
    local f30_local3 = 360
    f30_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, f30_local0, TARGET_ENE_0, f30_local1, f30_local2, f30_local3, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BlackOldKing_Act29(f31_arg0, f31_arg1, f31_arg2)
    local f31_local0 = 3003
    local f31_local1 = 999 - f31_arg0:GetMapHitRadius(TARGET_SELF)
    local f31_local2 = 0
    local f31_local3 = 360
    f31_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, f31_local0, TARGET_ENE_0, f31_local1, f31_local2, f31_local3, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BlackOldKing_Act30(f32_arg0, f32_arg1, f32_arg2)
    local f32_local0 = 3004
    local f32_local1 = 999 - f32_arg0:GetMapHitRadius(TARGET_SELF)
    local f32_local2 = 0
    local f32_local3 = 360
    f32_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, f32_local0, TARGET_ENE_0, f32_local1, f32_local2, f32_local3, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BlackOldKing_Act31(f33_arg0, f33_arg1, f33_arg2)
    local f33_local0 = 3005
    local f33_local1 = 999 - f33_arg0:GetMapHitRadius(TARGET_SELF)
    local f33_local2 = 0
    local f33_local3 = 360
    f33_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, f33_local0, TARGET_ENE_0, f33_local1, f33_local2, f33_local3, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BlackOldKing_Act32(f34_arg0, f34_arg1, f34_arg2)
    local f34_local0 = 3007
    local f34_local1 = 999 - f34_arg0:GetMapHitRadius(TARGET_SELF)
    local f34_local2 = 0
    local f34_local3 = 360
    f34_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, f34_local0, TARGET_ENE_0, f34_local1, f34_local2, f34_local3, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BlackOldKing_Act33(f35_arg0, f35_arg1, f35_arg2)
    local f35_local0 = 3008
    local f35_local1 = 999 - f35_arg0:GetMapHitRadius(TARGET_SELF)
    local f35_local2 = 0
    local f35_local3 = 360
    f35_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, f35_local0, TARGET_ENE_0, f35_local1, f35_local2, f35_local3, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BlackOldKing_Act34(f36_arg0, f36_arg1, f36_arg2)
    local f36_local0 = 3009
    local f36_local1 = 999 - f36_arg0:GetMapHitRadius(TARGET_SELF)
    local f36_local2 = 0
    local f36_local3 = 360
    f36_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, f36_local0, TARGET_ENE_0, f36_local1, f36_local2, f36_local3, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BlackOldKing_Act35(f37_arg0, f37_arg1, f37_arg2)
    local f37_local0 = 3010
    local f37_local1 = 999 - f37_arg0:GetMapHitRadius(TARGET_SELF)
    local f37_local2 = 0
    local f37_local3 = 360
    f37_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, f37_local0, TARGET_ENE_0, f37_local1, f37_local2, f37_local3, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BlackOldKing_Act36(f38_arg0, f38_arg1, f38_arg2)
    local f38_local0 = 3011
    local f38_local1 = 999 - f38_arg0:GetMapHitRadius(TARGET_SELF)
    local f38_local2 = 0
    local f38_local3 = 360
    f38_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, f38_local0, TARGET_ENE_0, f38_local1, f38_local2, f38_local3, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BlackOldKing_Act37(f39_arg0, f39_arg1, f39_arg2)
    local f39_local0 = 3012
    local f39_local1 = 999 - f39_arg0:GetMapHitRadius(TARGET_SELF)
    local f39_local2 = 0
    local f39_local3 = 360
    f39_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 3, f39_local0, TARGET_ENE_0, f39_local1, f39_local2, f39_local3, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BlackOldKing_Act38(f40_arg0, f40_arg1, f40_arg2)
    local f40_local0 = 3013
    local f40_local1 = 999 - f40_arg0:GetMapHitRadius(TARGET_SELF)
    local f40_local2 = 0
    local f40_local3 = 360
    f40_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 3, f40_local0, TARGET_ENE_0, f40_local1, f40_local2, f40_local3, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BlackOldKing_Act39(f41_arg0, f41_arg1, f41_arg2)
    local f41_local0 = 3013
    local f41_local1 = 999 - f41_arg0:GetMapHitRadius(TARGET_SELF)
    local f41_local2 = 0
    local f41_local3 = 360
    f41_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, f41_local0, TARGET_ENE_0, f41_local1, f41_local2, f41_local3, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BlackOldKing_Act40(f42_arg0, f42_arg1, f42_arg2)
    local f42_local0 = 3017
    local f42_local1 = 999 - f42_arg0:GetMapHitRadius(TARGET_SELF)
    local f42_local2 = 0
    local f42_local3 = 360
    f42_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, f42_local0, TARGET_ENE_0, f42_local1, f42_local2, f42_local3, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BlackOldKing_Act41(f43_arg0, f43_arg1, f43_arg2)
    local f43_local0 = 3018
    local f43_local1 = 999 - f43_arg0:GetMapHitRadius(TARGET_SELF)
    local f43_local2 = 0
    local f43_local3 = 360
    f43_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, f43_local0, TARGET_ENE_0, f43_local1, f43_local2, f43_local3, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BlackOldKing_Act42(f44_arg0, f44_arg1, f44_arg2)
    local f44_local0 = 3019
    local f44_local1 = 999 - f44_arg0:GetMapHitRadius(TARGET_SELF)
    local f44_local2 = 0
    local f44_local3 = 360
    f44_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, f44_local0, TARGET_ENE_0, f44_local1, f44_local2, f44_local3, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BlackOldKing_Act43(f45_arg0, f45_arg1, f45_arg2)
    local f45_local0 = 3020
    local f45_local1 = 999 - f45_arg0:GetMapHitRadius(TARGET_SELF)
    local f45_local2 = 0
    local f45_local3 = 360
    f45_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 3, f45_local0, TARGET_ENE_0, f45_local1, f45_local2, f45_local3, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BlackOldKing_Act44(f46_arg0, f46_arg1, f46_arg2)
    local f46_local0 = 3021
    local f46_local1 = 999 - f46_arg0:GetMapHitRadius(TARGET_SELF)
    local f46_local2 = 0
    local f46_local3 = 360
    f46_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 3, f46_local0, TARGET_ENE_0, f46_local1, f46_local2, f46_local3, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BlackOldKing_Act45(f47_arg0, f47_arg1, f47_arg2)
    local f47_local0 = 3022
    local f47_local1 = 999 - f47_arg0:GetMapHitRadius(TARGET_SELF)
    local f47_local2 = 0
    local f47_local3 = 360
    f47_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, f47_local0, TARGET_ENE_0, f47_local1, f47_local2, f47_local3, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BlackOldKing_Act46(f48_arg0, f48_arg1, f48_arg2)
    local f48_local0 = 3024
    local f48_local1 = 999 - f48_arg0:GetMapHitRadius(TARGET_SELF)
    local f48_local2 = 0
    local f48_local3 = 360
    f48_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 3, f48_local0, TARGET_ENE_0, f48_local1, f48_local2, f48_local3, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BlackOldKing_Act47(f49_arg0, f49_arg1, f49_arg2)
    local f49_local0 = 3025
    local f49_local1 = 999 - f49_arg0:GetMapHitRadius(TARGET_SELF)
    local f49_local2 = 0
    local f49_local3 = 360
    f49_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 3, f49_local0, TARGET_ENE_0, f49_local1, f49_local2, f49_local3, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BlackOldKing_Act48(f50_arg0, f50_arg1, f50_arg2)
    if f50_arg0:HasSpecialEffectId(TARGET_EVENT, 5025) == true or f50_arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 45) then
        f50_arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 0.3, TARGET_ENE_0, 1, 30, true, true, -1)
    elseif f50_arg0:HasSpecialEffectId(TARGET_EVENT, 5026) == true or f50_arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 45) then
        f50_arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 0.3, TARGET_ENE_0, 0, 30, true, true, -1)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BlackOldKing_Act50(f51_arg0, f51_arg1, f51_arg2)
    local f51_local0 = 3026
    local f51_local1 = 3025
    local f51_local2 = 3008
    local f51_local3 = 3008
    local f51_local4 = 999 - f51_arg0:GetMapHitRadius(TARGET_SELF)
    local f51_local5 = 0
    local f51_local6 = 0
    f51_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f51_local0, TARGET_ENE_0, f51_local4, f51_local5, f51_local6)
    f51_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f51_local1, TARGET_ENE_0, f51_local4)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BlackOldKing_StepAct(f52_arg0, f52_arg1, f52_arg2)
    local f52_local0 = f52_arg0:GetDist(TARGET_ENE_0)
    local f52_local1 = f52_arg0:GetRandam_Int(1, 100)
    if f52_arg2 == 1 then
        if f52_local1 <= 50 and f52_arg0:HasSpecialEffectId(TARGET_SELF, 5032) == false then
            f52_arg1:AddSubGoal(GOAL_COMMON_SpinStep, 1.5, 6002, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
        elseif f52_arg0:HasSpecialEffectId(TARGET_SELF, 5031) == false then
            f52_arg1:AddSubGoal(GOAL_COMMON_SpinStep, 1.5, 6003, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 0)
        else
            f52_arg1:AddSubGoal(GOAL_COMMON_SpinStep, 1.5, 6001, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
        end
    elseif f52_arg0:HasSpecialEffectId(TARGET_SELF, 5020) == false then
        if InsideRange(f52_arg0, f52_arg1, 120, 120, -1, 3) and f52_arg0:HasSpecialEffectId(TARGET_SELF, 5032) == false then
            f52_arg1:AddSubGoal(GOAL_COMMON_SpinStep, 1.5, 6002, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
        elseif InsideRange(f52_arg0, f52_arg1, -120, 120, -1, 3) and f52_arg0:HasSpecialEffectId(TARGET_SELF, 5031) == false then
            f52_arg1:AddSubGoal(GOAL_COMMON_SpinStep, 1.5, 6003, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 0)
        elseif f52_arg0:HasSpecialEffectId(TARGET_SELF, 5030) == false then
            f52_arg1:AddSubGoal(GOAL_COMMON_SpinStep, 1.5, 6001, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
        end
    elseif InsideRange(f52_arg0, f52_arg1, 120, 120, -1, 3) and f52_arg0:HasSpecialEffectId(TARGET_SELF, 5032) == false then
        f52_arg1:AddSubGoal(GOAL_COMMON_SpinStep, 1.5, 6002, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
    elseif InsideRange(f52_arg0, f52_arg1, -120, 120, -1, 3) and f52_arg0:HasSpecialEffectId(TARGET_SELF, 5031) == false then
        f52_arg1:AddSubGoal(GOAL_COMMON_SpinStep, 1.5, 6003, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 0)
    elseif f52_arg0:HasSpecialEffectId(TARGET_SELF, 5030) == false then
        f52_arg1:AddSubGoal(GOAL_COMMON_SpinStep, 1.5, 6001, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BlackOldKing_ActAfter_AdjustSpace(f53_arg0, f53_arg1, f53_arg2)
    f53_arg1:AddSubGoal(GOAL_BlackOldKing_514000_AfterAttackAct, 10)
    
end

Goal.Update = function (f54_arg0, f54_arg1, f54_arg2)
    return Update_Default_NoSubGoal(f54_arg0, f54_arg1, f54_arg2)
    
end

Goal.Terminate = function (f55_arg0, f55_arg1, f55_arg2)
    
end

Goal.Interrupt = function (f56_arg0, f56_arg1, f56_arg2)
    if f56_arg1:HasSpecialEffectId(TARGET_SELF, 5020) == true or HpRate >= 0.6 then
        if f56_arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) then
            if f56_arg1:GetSpecialEffectActivateInterruptType(0) == 5027 then
                f56_arg1:DeleteObserveSpecialEffectAttribute(TARGET_EVENT, 5027)
                local f56_local0 = f56_arg1:GetDist(TARGET_ENE_0)
                local f56_local1 = f56_arg1:GetDistAtoB(TARGET_EVENT, TARGET_ENE_0)
                if f56_local0 >= 8 then
                    BlackOldKing_Act07(f56_arg1, f56_arg2, paramTbl)
                elseif f56_local1 < f56_local0 or f56_local0 <= 7.5 then
                    BlackOldKing_Act06(f56_arg1, f56_arg2, paramTbl)
                else
                    BlackOldKing_Act07(f56_arg1, f56_arg2, paramTbl)
                end
            end
            if f56_arg1:GetSpecialEffectActivateInterruptType(0) == 90 then
                f56_arg1:SetTimer(1, 4)
                f56_arg2:ClearSubGoal()
                f56_arg1:Replaning()
                f56_arg1:DeleteObserveSpecialEffectAttribute(TARGET_ENE_0, 90)
                return true
            else
            end
        end
        if f56_arg1:IsInterupt(INTERUPT_GuardBreak) then
            f56_arg1:SetTimer(1, 2)
            return false
        end
        local f56_local0 = f56_arg1:GetRandam_Int(1, 100)
        if f56_arg1:IsInterupt(INTERUPT_UseItem) and f56_local0 <= 50 then
            f56_arg1:SetTimer(1, 3)
            f56_arg2:ClearSubGoal()
            f56_arg1:Replaning()
            return true
        end
        if f56_arg1:IsInterupt(INTERUPT_Shoot) then
            local f56_local1 = f56_arg1:GetRandam_Int(1, 100)
            f56_arg2:ClearSubGoal()
            if f56_arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 180) and f56_arg1:HasSpecialEffectId(TARGET_SELF, 5030) == false and f56_arg1:HasSpecialEffectId(TARGET_SELF, 5031) == false and f56_arg1:HasSpecialEffectId(TARGET_SELF, 5032) == false then
                f56_arg1:SetTimer(1, 3)
                if f56_local1 <= 50 then
                    f56_arg2:AddSubGoal(GOAL_COMMON_SpinStep, 1.5, 6002, TARGET_ENE_0, 0, AI_DIR_TYPE_L, f56_arg1:GetStringIndexedNumber("Dist_SideStep"))
                else
                    f56_arg2:AddSubGoal(GOAL_COMMON_SpinStep, 1.5, 6003, TARGET_ENE_0, 0, AI_DIR_TYPE_R, f56_arg1:GetStringIndexedNumber("Dist_SideStep"))
                end
                return true
            end
        end
        if f56_arg1:IsInterupt(INTERUPT_Inside_ObserveArea) and f56_arg1:IsInsideObserve(0) then
            f56_arg2:ClearSubGoal()
            f56_arg1:Replaning()
            f56_arg1:DeleteObserve(0)
            return true
        end
        if f56_arg1:IsInterupt(INTERUPT_Damaged) then
            local f56_local1 = f56_arg1:GetRandam_Int(1, 100)
            local f56_local2 = 2
            if f56_local1 <= 50 and f56_arg1:HasSpecialEffectId(TARGET_SELF, 5030) == false and f56_arg1:HasSpecialEffectId(TARGET_SELF, 5031) == false and f56_arg1:HasSpecialEffectId(TARGET_SELF, 5032) == false and f56_arg1:HasSpecialEffectId(TARGET_SELF, 5029) == false then
                f56_arg2:ClearSubGoal()
                BlackOldKing_StepAct(f56_arg1, f56_arg2, f56_local2)
                return true
            elseif f56_local1 <= 80 and f56_arg1:HasSpecialEffectId(TARGET_SELF, 5030) == false and f56_arg1:HasSpecialEffectId(TARGET_SELF, 5031) == false and f56_arg1:HasSpecialEffectId(TARGET_SELF, 5032) == false then
                f56_arg2:ClearSubGoal()
                f56_arg1:Replaning()
                return true
            end
        end
        if f56_arg1:IsInterupt(INTERUPT_TargetOutOfAngle) and f56_arg1:IsTargetOutOfAngleInterruptSlot(0) then
            f56_arg2:ClearSubGoal()
            f56_arg1:Replaning()
            return true
        end
        if f56_arg1:IsInterupt(INTERUPT_TargetOutOfRange) then
            if f56_arg1:IsTargetOutOfRangeInterruptSlot(0) and InsideRange(f56_arg1, f56_arg2, 0, 90, 5, 8.3 - f56_arg1:GetMapHitRadius(TARGET_SELF)) then
                f56_arg2:ClearSubGoal()
                f56_arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3007, TARGET_ENE_0, SuccessDist)
                return true
            end
            if f56_arg1:IsTargetOutOfRangeInterruptSlot(1) and InsideRange(f56_arg1, f56_arg2, 0, 90, 5, 25.8 - f56_arg1:GetMapHitRadius(TARGET_SELF)) then
                f56_arg2:ClearSubGoal()
                f56_arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, SuccessDist)
                return true
            end
            if f56_arg1:IsTargetOutOfRangeInterruptSlot(2) and f56_arg1:HasSpecialEffectId(TARGET_SELF, 5020) then
                if InsideRange(f56_arg1, f56_arg2, 0, 360, 8, 23.8 - f56_arg1:GetMapHitRadius(TARGET_SELF)) then
                    f56_arg2:ClearSubGoal()
                    f56_arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3018, TARGET_ENE_0, SuccessDist)
                    return true
                else
                    f56_arg2:ClearSubGoal()
                    f56_arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3017, TARGET_ENE_0, SuccessDist)
                    return true
                end
            end
        end
    end
    if f56_arg1:IsInterupt(INTERUPT_EventRequest) then
        local f56_local0 = f56_arg1:GetEventRequest()
        if f56_local0 == 10 then
            f56_arg2:ClearSubGoal()
            BlackOldKing_Act26(f56_arg1, f56_arg2, paramTbl)
            return true
        end
        if f56_local0 == 20 then
            f56_arg2:ClearSubGoal()
            BlackOldKing_Act27(f56_arg1, f56_arg2, paramTbl)
            return true
        end
        if f56_local0 == 200 then
            f56_arg2:ClearSubGoal()
            BlackOldKing_Act42(f56_arg1, f56_arg2, paramTbl)
            return true
        end
        if f56_arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 180) then
            if f56_local0 == 30 then
                f56_arg2:ClearSubGoal()
                BlackOldKing_Act28(f56_arg1, f56_arg2, paramTbl)
                return true
            end
            if f56_local0 == 40 then
                f56_arg2:ClearSubGoal()
                BlackOldKing_Act29(f56_arg1, f56_arg2, paramTbl)
                return true
            end
            if f56_local0 == 50 then
                f56_arg2:ClearSubGoal()
                BlackOldKing_Act30(f56_arg1, f56_arg2, paramTbl)
                return true
            end
            if f56_local0 == 60 then
                f56_arg2:ClearSubGoal()
                BlackOldKing_Act31(f56_arg1, f56_arg2, paramTbl)
                return true
            end
            if f56_local0 == 80 then
                f56_arg2:ClearSubGoal()
                BlackOldKing_Act32(f56_arg1, f56_arg2, paramTbl)
                return true
            end
            if f56_local0 == 90 then
                f56_arg2:ClearSubGoal()
                BlackOldKing_Act33(f56_arg1, f56_arg2, paramTbl)
                return true
            end
            if f56_local0 == 100 then
                f56_arg2:ClearSubGoal()
                BlackOldKing_Act34(f56_arg1, f56_arg2, paramTbl)
                return true
            end
            if f56_local0 == 110 then
                f56_arg2:ClearSubGoal()
                BlackOldKing_Act35(f56_arg1, f56_arg2, paramTbl)
                return true
            end
            if f56_local0 == 120 then
                f56_arg2:ClearSubGoal()
                BlackOldKing_Act36(f56_arg1, f56_arg2, paramTbl)
                return true
            end
            if f56_local0 == 130 then
                f56_arg2:ClearSubGoal()
                BlackOldKing_Act37(f56_arg1, f56_arg2, paramTbl)
                return true
            end
            if f56_local0 == 140 then
                f56_arg2:ClearSubGoal()
                BlackOldKing_Act38(f56_arg1, f56_arg2, paramTbl)
                return true
            end
            if f56_local0 == 170 then
                f56_arg2:ClearSubGoal()
                BlackOldKing_Act39(f56_arg1, f56_arg2, paramTbl)
                return true
            end
            if f56_local0 == 180 then
                f56_arg2:ClearSubGoal()
                BlackOldKing_Act40(f56_arg1, f56_arg2, paramTbl)
                return true
            end
            if f56_local0 == 190 then
                f56_arg2:ClearSubGoal()
                BlackOldKing_Act41(f56_arg1, f56_arg2, paramTbl)
                return true
            end
            if f56_local0 == 210 then
                f56_arg2:ClearSubGoal()
                BlackOldKing_Act43(f56_arg1, f56_arg2, paramTbl)
                return true
            end
            if f56_local0 == 220 then
                f56_arg2:ClearSubGoal()
                BlackOldKing_Act44(f56_arg1, f56_arg2, paramTbl)
                return true
            end
            if f56_local0 == 230 then
                f56_arg2:ClearSubGoal()
                BlackOldKing_Act45(f56_arg1, f56_arg2, paramTbl)
                return true
            end
            if f56_local0 == 250 then
                f56_arg2:ClearSubGoal()
                BlackOldKing_Act46(f56_arg1, f56_arg2, paramTbl)
                return true
            end
            if f56_local0 == 260 then
                f56_arg2:ClearSubGoal()
                BlackOldKing_Act47(f56_arg1, f56_arg2, paramTbl)
                return true
            end
        end
    end
    return false
    
end

RegisterTableGoal(GOAL_BlackOldKing_514000_AfterAttackAct, "BlackOldKing_514000_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_BlackOldKing_514000_AfterAttackAct, true)

Goal.Activate = function (f57_arg0, f57_arg1, f57_arg2)
    local f57_local0 = f57_arg1:GetDist(TARGET_ENE_0)
    local f57_local1 = f57_arg1:GetHpRate(TARGET_SELF)
    if f57_arg1:HasSpecialEffectId(TARGET_SELF, 10636) == false then
        f57_arg1:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 90)
    end
    if f57_local0 >= 4 and f57_local1 >= 0.35 and f57_arg1:HasSpecialEffectId(TARGET_SELF, 10636) == false then
        local f57_local2 = f57_arg1:GetRandam_Float(4, 5.5)
        local f57_local3 = f57_arg1:GetRandam_Int(0, 1)
        local f57_local4 = f57_arg1:GetRandam_Int(30, 45)
        local f57_local5 = f57_arg1:GetRandam_Int(1, 100)
        if f57_local5 <= 80 or f57_local1 <= 0.5 then
            f57_arg1:AddObserveArea(0, TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, 3.5)
        end
        f57_arg2:AddSubGoal(GOAL_COMMON_SidewayMove, f57_local2, TARGET_ENE_0, f57_local3, f57_local4, true, true, -1)
    end
    
end

Goal.Update = function (f58_arg0, f58_arg1, f58_arg2)
    return Update_Default_NoSubGoal(f58_arg0, f58_arg1, f58_arg2)
    
end

Goal.Terminate = function (f59_arg0, f59_arg1, f59_arg2)
    
end

Goal.Interrupt = function (f60_arg0, f60_arg1, f60_arg2)
    if f60_arg1:IsInterupt(INTERUPT_Inside_ObserveArea) and f60_arg1:IsInsideObserve(0) then
        f60_arg1:Replaning()
        f60_arg1:DeleteObserve(0)
        return true
    end
    if f60_arg1:IsInterupt(INTERUPT_Damaged) then
        f60_arg1:Replaning()
        return true
    end
    if f60_arg1:IsInterupt(INTERUPT_EventRequest) then
        f60_arg1:Replaning()
        return true
    end
    if f60_arg1:IsInterupt(INTERUPT_GuardBreak) then
        f60_arg1:SetTimer(1, 2)
        return false
    end
    if f60_arg1:IsInterupt(INTERUPT_UseItem) then
        f60_arg1:SetTimer(1, 3)
        f60_arg2:ClearSubGoal()
        f60_arg1:Replaning()
        return true
    end
    local f60_local0 = f60_arg1:GetRandam_Int(1, 100)
    if f60_arg1:IsInterupt(INTERUPT_Shoot) then
        f60_arg2:ClearSubGoal()
        if f60_local0 <= 50 then
            f60_arg2:AddSubGoal(GOAL_COMMON_SpinStep, 1.5, 6002, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
        else
            f60_arg2:AddSubGoal(GOAL_COMMON_SpinStep, 1.5, 6003, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 0)
        end
        return true
    end
    if f60_arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and f60_arg1:GetSpecialEffectActivateInterruptType(0) == 90 then
        f60_arg1:SetTimer(1, 4)
        f60_arg2:ClearSubGoal()
        f60_arg1:Replaning()
        f60_arg1:DeleteObserveSpecialEffectAttribute(TARGET_ENE_0, 90)
        return true
    else
    end
    return false
    
end


