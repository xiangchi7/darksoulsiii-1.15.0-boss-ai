RegisterTableGoal(GOAL_Gunda_511000_Battle, "GundaBattle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_Gunda_511000_Battle, true)

Goal.Initialize = function (f1_arg0, f1_arg1, f1_arg2, f1_arg3)
    f1_arg1:SetTimer(10, 3)
    f1_arg1:SetNumber(0, 0)
    
end

Goal.Activate = function (f2_arg0, f2_arg1, f2_arg2)
    Init_Pseudo_Global(f2_arg1, f2_arg2)
    f2_arg1:SetStringIndexedNumber("Dist_SideStep", 4)
    f2_arg1:SetStringIndexedNumber("Dist_BackStep", 3.8)
    if f2_arg1:GetNpcThinkParamID() == 511100 and f2_arg1:HasSpecialEffectId(TARGET_SELF, 5020) then
        f2_arg1:SetStringIndexedNumber("Gunda_ADAdjustment", -1)
        f2_arg1:SetStringIndexedNumber("Gunda_ForceRunDist", 999)
        f2_arg1:SetStringIndexedNumber("Gunda_Odds_Run", 100)
    elseif f2_arg1:GetNpcThinkParamID() == 511100 then
        f2_arg1:SetStringIndexedNumber("Gunda_ADAdjustment", -1)
        f2_arg1:SetStringIndexedNumber("Gunda_ForceRunDist", 999)
        f2_arg1:SetStringIndexedNumber("Gunda_Odds_Run", 0)
    else
        f2_arg1:SetStringIndexedNumber("Gunda_ADAdjustment", 0)
        f2_arg1:SetStringIndexedNumber("Gunda_ForceRunDist", 999)
        f2_arg1:SetStringIndexedNumber("Gunda_Odds_Run", 0)
    end
    local f2_local0 = {}
    local f2_local1 = {}
    local f2_local2 = {}
    Common_Clear_Param(f2_local0, f2_local1, f2_local2)
    f2_arg1:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 90)
    f2_arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    f2_arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    f2_arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    f2_arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    f2_arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    local f2_local3 = f2_arg1:GetDist(TARGET_ENE_0)
    local f2_local4 = f2_arg1:GetRandam_Int(1, 100)
    if f2_arg1:GetHpRate(TARGET_SELF) <= 0.55 and f2_arg1:GetNpcThinkParamID() == 511100 == false and f2_arg1:HasSpecialEffectId(TARGET_SELF, 5404) == false then
        f2_local0[50] = 100
    elseif f2_arg1:GetHpRate(TARGET_SELF) < 0.65 and f2_arg1:GetNpcThinkParamID() == 511100 and f2_arg1:HasSpecialEffectId(TARGET_SELF, 5020) == false then
        f2_local0[30] = 100
    elseif f2_arg1:GetNumber(0) == 0 then
        f2_local0[21] = 10
    elseif f2_arg1:GetNpcThinkParamID() == 511100 and f2_arg1:HasSpecialEffectId(TARGET_SELF, 5020) then
        if f2_arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 150) then
            if InsideRange(f2_arg1, f2_arg2, 180, 150, -1, 4 - f2_arg1:GetMapHitRadius(TARGET_SELF)) then
                f2_local0[6] = 90
                f2_local0[12] = 30
                f2_local0[13] = 20
                f2_local0[20] = 10
            else
                f2_local0[20] = 10
            end
        elseif InsideRange(f2_arg1, f2_arg2, 105, 60, -1, 2) then
            f2_local0[12] = 10
            f2_local0[13] = 20
            f2_local0[16] = 20
        elseif InsideRange(f2_arg1, f2_arg2, -105, 60, -1, 2) then
            f2_local0[3] = 30
            f2_local0[11] = 30
            f2_local0[12] = 10
            f2_local0[13] = 10
        elseif f2_local3 >= 10 then
            f2_local0[1] = 30
            f2_local0[2] = 25
            f2_local0[9] = 10
            f2_local0[16] = 10
        elseif f2_local3 >= 8 then
            f2_local0[1] = 30
            f2_local0[4] = 10
            f2_local0[5] = 10
            f2_local0[9] = 10
            f2_local0[16] = 10
        elseif f2_local3 >= 3 then
            f2_local0[4] = 20
            f2_local0[5] = 20
            f2_local0[9] = 20
            f2_local0[10] = 10
            f2_local0[16] = 20
        else
            f2_local0[3] = 20
            f2_local0[7] = 20
            f2_local0[8] = 20
            f2_local0[10] = 10
            f2_local0[11] = 10
            f2_local0[12] = 10
            f2_local0[13] = 20
            f2_local0[16] = 20
        end
    elseif f2_arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 150) then
        if InsideRange(f2_arg1, f2_arg2, 180, 150, -1, 4 - f2_arg1:GetMapHitRadius(TARGET_SELF)) then
            f2_local0[6] = 70
            f2_local0[20] = 30
        else
            f2_local0[20] = 10
        end
    elseif InsideRange(f2_arg1, f2_arg2, 105, 60, -1, 3) then
        f2_local0[4] = 55
        f2_local0[5] = 45
    elseif InsideRange(f2_arg1, f2_arg2, -105, 60, -1, 3) then
        f2_local0[4] = 25
        f2_local0[5] = 35
        f2_local0[8] = 40
    elseif f2_local3 >= 10 then
        f2_local0[1] = 75
        f2_local0[2] = 25
    elseif f2_local3 >= 8 then
        f2_local0[1] = 30
        f2_local0[2] = 55
        f2_local0[9] = 15
    elseif f2_local3 >= 3 then
        f2_local0[4] = 10
        f2_local0[5] = 10
        f2_local0[9] = 75
    elseif f2_local3 >= 1.5 then
        f2_local0[4] = 10
        f2_local0[5] = 10
        f2_local0[7] = 35
        f2_local0[8] = 10
        f2_local0[9] = 35
    else
        f2_local0[3] = 20
        f2_local0[4] = 10
        f2_local0[5] = 10
        f2_local0[7] = 25
        f2_local0[8] = 10
        f2_local0[9] = 25
    end
    if f2_arg1:GetNpcThinkParamID() == 511100 then
        f2_local0[2] = 0
    end
    if f2_arg1:HasSpecialEffectAttribute(TARGET_ENE_0, SP_EFFECT_TYPE_TARGET_DOWN) then
        if f2_arg1:GetNpcThinkParamID() == 511100 then
            f2_local0[1] = f2_local0[1] + 30
            f2_local0[2] = f2_local0[2] + 30
        else
            f2_local0[21] = f2_local0[21] + 300
        end
    end
    f2_local0[1] = SetCoolTime(f2_arg1, f2_arg2, 3000, 10, f2_local0[1], 1)
    f2_local0[2] = SetCoolTime(f2_arg1, f2_arg2, 3002, 8, f2_local0[2], 1)
    f2_local0[3] = SetCoolTime(f2_arg1, f2_arg2, 3003, 8, f2_local0[3], 1)
    f2_local0[4] = SetCoolTime(f2_arg1, f2_arg2, 3004, 8, f2_local0[4], 1)
    f2_local0[5] = SetCoolTime(f2_arg1, f2_arg2, 3007, 8, f2_local0[5], 1)
    f2_local0[6] = SetCoolTime(f2_arg1, f2_arg2, 3009, 8, f2_local0[6], 1)
    f2_local0[7] = SetCoolTime(f2_arg1, f2_arg2, 3010, 16, f2_local0[7], 1)
    f2_local0[8] = SetCoolTime(f2_arg1, f2_arg2, 3011, 8, f2_local0[8], 1)
    f2_local0[9] = SetCoolTime(f2_arg1, f2_arg2, 3012, 8, f2_local0[9], 1)
    f2_local0[10] = SetCoolTime(f2_arg1, f2_arg2, 3020, 16, f2_local0[10], 1)
    f2_local0[11] = SetCoolTime(f2_arg1, f2_arg2, 3021, 8, f2_local0[11], 1)
    f2_local0[12] = SetCoolTime(f2_arg1, f2_arg2, 3022, 12, f2_local0[12], 1)
    f2_local0[13] = SetCoolTime(f2_arg1, f2_arg2, 3026, 8, f2_local0[13], 1)
    f2_local0[13] = SetCoolTime(f2_arg1, f2_arg2, 3021, 8, f2_local0[13], 1)
    f2_local0[16] = SetCoolTime(f2_arg1, f2_arg2, 3026, 8, f2_local0[16], 1)
    if f2_arg1:GetNpcThinkParamID() == 511000 then
        f2_local0[6] = 0
        f2_local0[7] = f2_local0[7] * 0.2
        f2_local0[7] = SetCoolTime(f2_arg1, f2_arg2, 3010, 30, f2_local0[7], 1)
    end
    if f2_arg1:GetNpcThinkParamID() == 511100 and f2_arg1:HasSpecialEffectId(TARGET_SELF, 5020) == false then
        f2_local0[10] = 0
        f2_local0[11] = 0
        f2_local0[12] = 0
    end
    f2_local1[1] = REGIST_FUNC(f2_arg1, f2_arg2, GundaBattle_Act01)
    f2_local1[2] = REGIST_FUNC(f2_arg1, f2_arg2, GundaBattle_Act02)
    f2_local1[3] = REGIST_FUNC(f2_arg1, f2_arg2, GundaBattle_Act03)
    f2_local1[4] = REGIST_FUNC(f2_arg1, f2_arg2, GundaBattle_Act04)
    f2_local1[5] = REGIST_FUNC(f2_arg1, f2_arg2, GundaBattle_Act05)
    f2_local1[6] = REGIST_FUNC(f2_arg1, f2_arg2, GundaBattle_Act06)
    f2_local1[7] = REGIST_FUNC(f2_arg1, f2_arg2, GundaBattle_Act07)
    f2_local1[8] = REGIST_FUNC(f2_arg1, f2_arg2, GundaBattle_Act08)
    f2_local1[9] = REGIST_FUNC(f2_arg1, f2_arg2, GundaBattle_Act09)
    f2_local1[10] = REGIST_FUNC(f2_arg1, f2_arg2, GundaBattle_Act10)
    f2_local1[11] = REGIST_FUNC(f2_arg1, f2_arg2, GundaBattle_Act11)
    f2_local1[12] = REGIST_FUNC(f2_arg1, f2_arg2, GundaBattle_Act12)
    f2_local1[13] = REGIST_FUNC(f2_arg1, f2_arg2, GundaBattle_Act13)
    f2_local1[14] = REGIST_FUNC(f2_arg1, f2_arg2, GundaBattle_Act14)
    f2_local1[15] = REGIST_FUNC(f2_arg1, f2_arg2, GundaBattle_Act15)
    f2_local1[16] = REGIST_FUNC(f2_arg1, f2_arg2, GundaBattle_Act16)
    f2_local1[17] = REGIST_FUNC(f2_arg1, f2_arg2, GundaBattle_Act17)
    f2_local1[20] = REGIST_FUNC(f2_arg1, f2_arg2, GundaBattle_Act20)
    f2_local1[21] = REGIST_FUNC(f2_arg1, f2_arg2, GundaBattle_Act21)
    f2_local1[30] = REGIST_FUNC(f2_arg1, f2_arg2, GundaBattle_Act30)
    f2_local1[40] = REGIST_FUNC(f2_arg1, f2_arg2, GundaBattle_Act40)
    f2_local1[50] = REGIST_FUNC(f2_arg1, f2_arg2, GundaBattle_Act50)
    local f2_local5 = REGIST_FUNC(f2_arg1, f2_arg2, GundaBattle_ActAfter_AdjustSpace)
    Common_Battle_Activate(f2_arg1, f2_arg2, f2_local0, f2_local1, f2_local5, f2_local2)
    
end

function GundaBattle_Act01(f3_arg0, f3_arg1, f3_arg2)
    local f3_local0 = 18 - f3_arg0:GetMapHitRadius(TARGET_SELF) + f3_arg0:GetStringIndexedNumber("Gunda_ADAdjustment")
    local f3_local1 = 18 - f3_arg0:GetMapHitRadius(TARGET_SELF) + f3_arg0:GetStringIndexedNumber("Gunda_ADAdjustment")
    local f3_local2 = f3_arg0:GetStringIndexedNumber("Gunda_ForceRunDist")
    local f3_local3 = f3_arg0:GetStringIndexedNumber("Gunda_Odds_Run")
    local f3_local4 = 0
    local f3_local5 = 1
    local f3_local6 = 3
    Approach_Act_Flex(f3_arg0, f3_arg1, f3_local0, f3_local1, f3_local2, f3_local3, f3_local4, f3_local5, f3_local6)
    local f3_local7 = 3000
    local f3_local8 = 3001
    local f3_local9 = 3029
    local f3_local10 = 3006
    local f3_local11 = 3014
    local f3_local12 = 3024
    local f3_local13 = 3026
    local f3_local14 = 3027
    local f3_local15 = 8.5 - f3_arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local16 = 11.5 - f3_arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local17 = 9.8 - f3_arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local18 = 7.2 - f3_arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local19 = 3.8 - f3_arg0:GetMapHitRadius(TARGET_SELF) - 1.5
    local f3_local20 = 4.5 - f3_arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local21 = 5.2 - f3_arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local22 = 12 - f3_arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local23 = 0
    local f3_local24 = 0
    local f3_local25 = f3_arg0:GetRandam_Int(1, 100)
    f3_arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    if f3_arg0:GetNpcThinkParamID() == 511100 and f3_arg0:HasSpecialEffectId(TARGET_SELF, 5020) then
        if f3_local25 <= 30 then
            f3_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f3_local7, TARGET_ENE_0, f3_local15, f3_local23, f3_local24)
            f3_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, f3_local8, TARGET_ENE_0, f3_local20)
            f3_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f3_local13, TARGET_ENE_0, f3_local21)
            f3_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f3_local14, TARGET_ENE_0, f3_local22)
        elseif f3_local25 <= 60 then
            f3_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f3_local7, TARGET_ENE_0, f3_local18, f3_local23, f3_local24)
            f3_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f3_local11, TARGET_ENE_0, f3_local15)
            f3_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, f3_local8, TARGET_ENE_0, f3_local16)
            f3_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f3_local9, TARGET_ENE_0, f3_local18)
            f3_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f3_local10, TARGET_ENE_0, f3_local22)
        else
            f3_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f3_local7, TARGET_ENE_0, f3_local18, f3_local23, f3_local24)
            f3_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f3_local11, TARGET_ENE_0, f3_local15)
            f3_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, f3_local8, TARGET_ENE_0, f3_local19)
            f3_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f3_local12, TARGET_ENE_0, f3_local22)
        end
    elseif f3_local25 <= 25 then
        f3_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f3_local7, TARGET_ENE_0, f3_local22, f3_local23, f3_local24)
    elseif f3_local25 <= 50 then
        f3_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f3_local7, TARGET_ENE_0, f3_local15, f3_local23, f3_local24)
        f3_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f3_local8, TARGET_ENE_0, f3_local22)
    elseif f3_local25 <= 75 then
        f3_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f3_local7, TARGET_ENE_0, f3_local15, f3_local23, f3_local24)
        f3_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f3_local8, TARGET_ENE_0, f3_local16)
        f3_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f3_local9, TARGET_ENE_0, f3_local22)
    else
        f3_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f3_local7, TARGET_ENE_0, f3_local18, f3_local23, f3_local24)
        f3_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f3_local11, TARGET_ENE_0, f3_local22)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function GundaBattle_Act02(f4_arg0, f4_arg1, f4_arg2)
    local f4_local0 = 16.8 - f4_arg0:GetMapHitRadius(TARGET_SELF) + f4_arg0:GetStringIndexedNumber("Gunda_ADAdjustment")
    local f4_local1 = 16.8 - f4_arg0:GetMapHitRadius(TARGET_SELF) + f4_arg0:GetStringIndexedNumber("Gunda_ADAdjustment")
    local f4_local2 = f4_arg0:GetStringIndexedNumber("Gunda_ForceRunDist")
    local f4_local3 = f4_arg0:GetStringIndexedNumber("Gunda_Odds_Run")
    local f4_local4 = 0
    local f4_local5 = 2.5
    local f4_local6 = 5
    Approach_Act_Flex(f4_arg0, f4_arg1, f4_local0, f4_local1, f4_local2, f4_local3, f4_local4, f4_local5, f4_local6)
    local f4_local7 = 3002
    local f4_local8 = 12 - f4_arg0:GetMapHitRadius(TARGET_SELF)
    f4_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f4_local7, TARGET_ENE_0, f4_local8, 0, 0)
    GetWellSpace_Odds = 50
    return GetWellSpace_Odds
    
end

function GundaBattle_Act03(f5_arg0, f5_arg1, f5_arg2)
    local f5_local0 = 3.5 - f5_arg0:GetMapHitRadius(TARGET_SELF) + f5_arg0:GetStringIndexedNumber("Gunda_ADAdjustment")
    local f5_local1 = 3.5 - f5_arg0:GetMapHitRadius(TARGET_SELF) + f5_arg0:GetStringIndexedNumber("Gunda_ADAdjustment")
    local f5_local2 = f5_arg0:GetStringIndexedNumber("Gunda_ForceRunDist")
    local f5_local3 = f5_arg0:GetStringIndexedNumber("Gunda_Odds_Run")
    local f5_local4 = 0
    local f5_local5 = 1
    local f5_local6 = 3
    Approach_Act_Flex(f5_arg0, f5_arg1, f5_local0, f5_local1, f5_local2, f5_local3, f5_local4, f5_local5, f5_local6)
    local f5_local7 = 3003
    local f5_local8 = 3005
    local f5_local9 = 3006
    local f5_local10 = 3014
    local f5_local11 = 3001
    local f5_local12 = 3004
    local f5_local13 = 3027
    local f5_local14 = 4.5 - f5_arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local15 = 9.8 - f5_arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local16 = 7.2 - f5_arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local17 = 8.5 - f5_arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local18 = 8.5 - f5_arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local19 = 5.2 - f5_arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local20 = 12 - f5_arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local21 = 0
    local f5_local22 = 0
    local f5_local23 = f5_arg0:GetRandam_Int(1, 100)
    f5_arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    if f5_arg0:GetNpcThinkParamID() == 511100 and f5_arg0:HasSpecialEffectId(TARGET_SELF, 5020) then
        if f5_local23 <= 30 then
            f5_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f5_local7, TARGET_ENE_0, f5_local14, f5_local21, f5_local22):SetTargetAngle(0, 0, 75)
            f5_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f5_local8, TARGET_ENE_0, f5_local15):SetTargetRange(0, 6.3 - f5_arg0:GetMapHitRadius(TARGET_SELF), 999)
            f5_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f5_local9, TARGET_ENE_0, f5_local20)
        elseif f5_local23 <= 60 then
            f5_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f5_local7, TARGET_ENE_0, f5_local15, f5_local21, f5_local22)
            f5_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f5_local9, TARGET_ENE_0, f5_local16)
            f5_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f5_local10, TARGET_ENE_0, f5_local20)
        else
            f5_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f5_local7, TARGET_ENE_0, f5_local15, f5_local21, f5_local22)
            f5_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f5_local9, TARGET_ENE_0, f5_local16)
            f5_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f5_local10, TARGET_ENE_0, f5_local17)
            f5_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, f5_local11, TARGET_ENE_0, f5_local18)
            f5_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f5_local12, TARGET_ENE_0, f5_local19)
            f5_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f5_local13, TARGET_ENE_0, f5_local20)
        end
    elseif f5_local23 <= 30 then
        f5_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f5_local7, TARGET_ENE_0, f5_local14, f5_local21, f5_local22)
        f5_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f5_local8, TARGET_ENE_0, f5_local20)
    elseif f5_local23 <= 65 then
        f5_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f5_local7, TARGET_ENE_0, f5_local14, f5_local21, f5_local22)
        f5_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f5_local8, TARGET_ENE_0, f5_local15)
        f5_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f5_local9, TARGET_ENE_0, f5_local20)
    else
        f5_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f5_local7, TARGET_ENE_0, f5_local15, f5_local21, f5_local22)
        f5_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f5_local9, TARGET_ENE_0, f5_local20)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function GundaBattle_Act04(f6_arg0, f6_arg1, f6_arg2)
    local f6_local0 = 8.5 - f6_arg0:GetMapHitRadius(TARGET_SELF) + f6_arg0:GetStringIndexedNumber("Gunda_ADAdjustment")
    local f6_local1 = 8.5 - f6_arg0:GetMapHitRadius(TARGET_SELF) + f6_arg0:GetStringIndexedNumber("Gunda_ADAdjustment")
    local f6_local2 = f6_arg0:GetStringIndexedNumber("Gunda_ForceRunDist")
    local f6_local3 = f6_arg0:GetStringIndexedNumber("Gunda_Odds_Run")
    local f6_local4 = 0
    local f6_local5 = 2.5
    local f6_local6 = 5
    Approach_Act_Flex(f6_arg0, f6_arg1, f6_local0, f6_local1, f6_local2, f6_local3, f6_local4, f6_local5, f6_local6)
    local f6_local7 = 3004
    local f6_local8 = 3005
    local f6_local9 = 3006
    local f6_local10 = 3003
    local f6_local11 = 3010
    local f6_local12 = 3024
    local f6_local13 = 4.5 - f6_arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local14 = 9.8 - f6_arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local15 = 3.5 - f6_arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local16 = 5 - f6_arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local17 = 3.8 - f6_arg0:GetMapHitRadius(TARGET_SELF) - 1.5
    local f6_local18 = 12 - f6_arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local19 = 0
    local f6_local20 = 0
    local f6_local21 = f6_arg0:GetRandam_Int(1, 100)
    f6_arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    f6_arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    f6_arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    if f6_arg0:GetNpcThinkParamID() == 511100 and f6_arg0:HasSpecialEffectId(TARGET_SELF, 5020) then
        if f6_local21 <= 20 then
            f6_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f6_local7, TARGET_ENE_0, f6_local13, f6_local19, f6_local20):SetTargetRange(0, 6.3 - f6_arg0:GetMapHitRadius(TARGET_SELF), 999):SetTargetAngle(0, 0, 75)
            f6_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f6_local8, TARGET_ENE_0, f6_local14):SetTargetRange(0, 6.3 - f6_arg0:GetMapHitRadius(TARGET_SELF), 999):SetTargetAngle(0, 0, 75)
            f6_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f6_local9, TARGET_ENE_0, f6_local18)
        elseif f6_local21 <= 70 then
            f6_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f6_local7, TARGET_ENE_0, f6_local15, f6_local19, f6_local20):SetTargetRange(0, 6.3 - f6_arg0:GetMapHitRadius(TARGET_SELF), 999)
            f6_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f6_local10, TARGET_ENE_0, f6_local13):SetTargetAngle(0, 0, 75)
            f6_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f6_local8, TARGET_ENE_0, f6_local14):SetTargetRange(0, 6.3 - f6_arg0:GetMapHitRadius(TARGET_SELF), 999)
            f6_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f6_local9, TARGET_ENE_0, f6_local17)
            f6_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f6_local12, TARGET_ENE_0, f6_local18)
        else
            f6_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f6_local7, TARGET_ENE_0, f6_local13, f6_local19, f6_local20):SetTargetRange(0, 6.3 - f6_arg0:GetMapHitRadius(TARGET_SELF), 999):SetTargetAngle(0, 0, 75)
            f6_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f6_local8, TARGET_ENE_0, f6_local16)
            f6_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f6_local11, TARGET_ENE_0, f6_local14)
            f6_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f6_local9, TARGET_ENE_0, f6_local18)
        end
    elseif f6_local21 <= 50 then
        f6_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f6_local7, TARGET_ENE_0, f6_local13, f6_local19, f6_local20)
        f6_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f6_local8, TARGET_ENE_0, f6_local18)
    else
        f6_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f6_local7, TARGET_ENE_0, f6_local13, f6_local19, f6_local20)
        f6_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f6_local8, TARGET_ENE_0, f6_local14)
        f6_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f6_local9, TARGET_ENE_0, f6_local18)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function GundaBattle_Act05(f7_arg0, f7_arg1, f7_arg2)
    local f7_local0 = 7 - f7_arg0:GetMapHitRadius(TARGET_SELF) + f7_arg0:GetStringIndexedNumber("Gunda_ADAdjustment")
    local f7_local1 = 7 - f7_arg0:GetMapHitRadius(TARGET_SELF) + f7_arg0:GetStringIndexedNumber("Gunda_ADAdjustment")
    local f7_local2 = f7_arg0:GetStringIndexedNumber("Gunda_ForceRunDist")
    local f7_local3 = f7_arg0:GetStringIndexedNumber("Gunda_Odds_Run")
    local f7_local4 = 0
    local f7_local5 = 2.5
    local f7_local6 = 5
    Approach_Act_Flex(f7_arg0, f7_arg1, f7_local0, f7_local1, f7_local2, f7_local3, f7_local4, f7_local5, f7_local6)
    local f7_local7 = 3007
    local f7_local8 = 3008
    local f7_local9 = 3024
    local f7_local10 = 3006
    local f7_local11 = 3029
    local f7_local12 = 3020
    local f7_local13 = 3027
    local f7_local14 = 7 - f7_arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local15 = 3.8 - f7_arg0:GetMapHitRadius(TARGET_SELF) - 1.5
    local f7_local16 = 9.8 - f7_arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f7_local17 = 11.5 - f7_arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local18 = 22 - f7_arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local19 = 5.2 - f7_arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local20 = 12 - f7_arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local21 = 0
    local f7_local22 = 0
    local f7_local23 = f7_arg0:GetRandam_Int(1, 100)
    f7_arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    f7_arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    if f7_arg0:GetNpcThinkParamID() == 511100 and f7_arg0:HasSpecialEffectId(TARGET_SELF, 5020) then
        if f7_local23 <= 25 then
            f7_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f7_local7, TARGET_ENE_0, f7_local14, f7_local21, f7_local22):SetTargetRange(0, 6.3 - f7_arg0:GetMapHitRadius(TARGET_SELF), 999)
            f7_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, f7_local8, TARGET_ENE_0, f7_local15)
            f7_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f7_local9, TARGET_ENE_0, f7_local16):SetTargetRange(0, 6.3 - f7_arg0:GetMapHitRadius(TARGET_SELF), 999)
            f7_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f7_local10, TARGET_ENE_0, f7_local20)
        elseif f7_local23 <= 75 then
            f7_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f7_local7, TARGET_ENE_0, f7_local14, f7_local21, f7_local22):SetTargetRange(0, 6.3 - f7_arg0:GetMapHitRadius(TARGET_SELF), 999)
            f7_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, f7_local8, TARGET_ENE_0, f7_local17)
            f7_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f7_local11, TARGET_ENE_0, f7_local19)
            f7_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f7_local13, TARGET_ENE_0, f7_local20)
        else
            f7_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f7_local7, TARGET_ENE_0, f7_local14, f7_local21, f7_local22):SetTargetRange(0, 6.3 - f7_arg0:GetMapHitRadius(TARGET_SELF), 999)
            f7_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, f7_local8, TARGET_ENE_0, f7_local17)
            f7_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f7_local11, TARGET_ENE_0, f7_local18)
            f7_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f7_local12, TARGET_ENE_0, f7_local20)
        end
    else
        f7_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f7_local7, TARGET_ENE_0, f7_local14, f7_local21, f7_local22)
        f7_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f7_local8, TARGET_ENE_0, f7_local20)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function GundaBattle_Act06(f8_arg0, f8_arg1, f8_arg2)
    local f8_local0 = 3009
    local f8_local1 = 3008
    local f8_local2 = 3004
    local f8_local3 = 3026
    local f8_local4 = 3027
    local f8_local5 = 3011
    local f8_local6 = 3029
    local f8_local7 = 9 - f8_arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f8_local8 = 8.5 - f8_arg0:GetMapHitRadius(TARGET_SELF)
    local f8_local9 = 4.5 - f8_arg0:GetMapHitRadius(TARGET_SELF)
    local f8_local10 = 5.2 - f8_arg0:GetMapHitRadius(TARGET_SELF)
    local f8_local11 = 8 - f8_arg0:GetMapHitRadius(TARGET_SELF)
    local f8_local12 = 11.5 - f8_arg0:GetMapHitRadius(TARGET_SELF)
    local f8_local13 = 12 - f8_arg0:GetMapHitRadius(TARGET_SELF)
    local f8_local14 = 0
    local f8_local15 = 0
    local f8_local16 = f8_arg0:GetRandam_Int(1, 100)
    f8_arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    f8_arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    if f8_arg0:GetNpcThinkParamID() == 511100 and f8_arg0:HasSpecialEffectId(TARGET_SELF, 5020) then
        if f8_local16 <= 30 then
            f8_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f8_local0, TARGET_ENE_0, f8_local7, f8_local14, f8_local15)
            f8_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, f8_local1, TARGET_ENE_0, f8_local9)
            f8_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, f8_local3, TARGET_ENE_0, f8_local10)
            f8_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f8_local4, TARGET_ENE_0, f8_local13)
        elseif f8_local16 <= 60 then
            f8_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f8_local0, TARGET_ENE_0, f8_local7, f8_local14, f8_local15)
            f8_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, f8_local1, TARGET_ENE_0, f8_local12)
            f8_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, f8_local6, TARGET_ENE_0, f8_local9)
            f8_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, f8_local3, TARGET_ENE_0, f8_local10)
            f8_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f8_local4, TARGET_ENE_0, f8_local13)
        else
            f8_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f8_local0, TARGET_ENE_0, f8_local10, f8_local14, f8_local15)
            f8_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f8_local4, TARGET_ENE_0, f8_local11)
            f8_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f8_local5, TARGET_ENE_0, f8_local8)
            f8_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f8_local2, TARGET_ENE_0, f8_local13)
        end
    else
        f8_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f8_local0, TARGET_ENE_0, f8_local13, f8_local14, f8_local15)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GundaBattle_Act07(f9_arg0, f9_arg1, f9_arg2)
    local f9_local0 = 5 - f9_arg0:GetMapHitRadius(TARGET_SELF) + f9_arg0:GetStringIndexedNumber("Gunda_ADAdjustment")
    local f9_local1 = 5 - f9_arg0:GetMapHitRadius(TARGET_SELF) + f9_arg0:GetStringIndexedNumber("Gunda_ADAdjustment")
    local f9_local2 = f9_arg0:GetStringIndexedNumber("Gunda_ForceRunDist")
    local f9_local3 = f9_arg0:GetStringIndexedNumber("Gunda_Odds_Run")
    local f9_local4 = 0
    local f9_local5 = 3
    local f9_local6 = 3
    Approach_Act_Flex(f9_arg0, f9_arg1, f9_local0, f9_local1, f9_local2, f9_local3, f9_local4, f9_local5, f9_local6)
    local f9_local7 = 3010
    local f9_local8 = 3028
    local f9_local9 = 3029
    local f9_local10 = 3027
    local f9_local11 = 3021
    local f9_local12 = 11.5 - f9_arg0:GetMapHitRadius(TARGET_SELF)
    local f9_local13 = 11.5 - f9_arg0:GetMapHitRadius(TARGET_SELF)
    local f9_local14 = 5.2 - f9_arg0:GetMapHitRadius(TARGET_SELF)
    local f9_local15 = 6.3 - f9_arg0:GetMapHitRadius(TARGET_SELF)
    local f9_local16 = 12 - f9_arg0:GetMapHitRadius(TARGET_SELF)
    local f9_local17 = 0
    local f9_local18 = 0
    local f9_local19 = f9_arg0:GetRandam_Int(1, 100)
    if f9_arg0:GetNpcThinkParamID() == 511100 then
        f9_arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
        f9_arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
        f9_arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    end
    if f9_arg0:GetNpcThinkParamID() == 511100 and f9_arg0:HasSpecialEffectId(TARGET_SELF, 5020) then
        if f9_local19 <= 50 then
            f9_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f9_local7, TARGET_ENE_0, f9_local12, f9_local17, f9_local18)
            f9_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f9_local8, TARGET_ENE_0, f9_local13)
            f9_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f9_local9, TARGET_ENE_0, f9_local14)
            f9_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f9_local10, TARGET_ENE_0, f9_local16)
        else
            f9_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f9_local7, TARGET_ENE_0, f9_local15, f9_local17, f9_local18)
            f9_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f9_local11, TARGET_ENE_0, f9_local14)
            f9_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f9_local10, TARGET_ENE_0, f9_local16)
        end
    else
        f9_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f9_local7, TARGET_ENE_0, f9_local16, f9_local17, f9_local18)
    end
    if f9_arg0:GetNpcThinkParamID() == 511000 then
        GundaBattle_Act21(f9_arg0, f9_arg1, f9_arg2)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function GundaBattle_Act08(f10_arg0, f10_arg1, f10_arg2)
    local f10_local0 = 8 - f10_arg0:GetMapHitRadius(TARGET_SELF) + f10_arg0:GetStringIndexedNumber("Gunda_ADAdjustment")
    local f10_local1 = 8 - f10_arg0:GetMapHitRadius(TARGET_SELF) + f10_arg0:GetStringIndexedNumber("Gunda_ADAdjustment")
    local f10_local2 = f10_arg0:GetStringIndexedNumber("Gunda_ForceRunDist")
    local f10_local3 = f10_arg0:GetStringIndexedNumber("Gunda_Odds_Run")
    local f10_local4 = 0
    local f10_local5 = 1.5
    local f10_local6 = 3
    Approach_Act_Flex(f10_arg0, f10_arg1, f10_local0, f10_local1, f10_local2, f10_local3, f10_local4, f10_local5, f10_local6)
    local f10_local7 = 3011
    local f10_local8 = 3024
    local f10_local9 = 3004
    local f10_local10 = 3027
    local f10_local11 = 3.8 - f10_arg0:GetMapHitRadius(TARGET_SELF) - 1.5
    local f10_local12 = 8.5 - f10_arg0:GetMapHitRadius(TARGET_SELF)
    local f10_local13 = 5.2 - f10_arg0:GetMapHitRadius(TARGET_SELF)
    local f10_local14 = 12 - f10_arg0:GetMapHitRadius(TARGET_SELF)
    local f10_local15 = 0
    local f10_local16 = 0
    local f10_local17 = f10_arg0:GetRandam_Int(1, 100)
    if f10_arg0:GetNpcThinkParamID() == 511100 and f10_arg0:HasSpecialEffectId(TARGET_SELF, 5020) then
        if f10_local17 <= 50 then
            f10_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f10_local7, TARGET_ENE_0, f10_local11, f10_local15, f10_local16)
            f10_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f10_local8, TARGET_ENE_0, f10_local14)
        else
            f10_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f10_local7, TARGET_ENE_0, f10_local12, f10_local15, f10_local16)
            f10_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f10_local9, TARGET_ENE_0, f10_local13)
            f10_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f10_local10, TARGET_ENE_0, f10_local14)
        end
    else
        f10_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f10_local7, TARGET_ENE_0, f10_local14, f10_local15, f10_local16)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GundaBattle_Act09(f11_arg0, f11_arg1, f11_arg2)
    local f11_local0 = 6.3 - f11_arg0:GetMapHitRadius(TARGET_SELF) + f11_arg0:GetStringIndexedNumber("Gunda_ADAdjustment")
    local f11_local1 = 6.3 - f11_arg0:GetMapHitRadius(TARGET_SELF) + f11_arg0:GetStringIndexedNumber("Gunda_ADAdjustment")
    local f11_local2 = f11_arg0:GetStringIndexedNumber("Gunda_ForceRunDist")
    local f11_local3 = f11_arg0:GetStringIndexedNumber("Gunda_Odds_Run")
    local f11_local4 = 0
    local f11_local5 = 3
    local f11_local6 = 3
    Approach_Act_Flex(f11_arg0, f11_arg1, f11_local0, f11_local1, f11_local2, f11_local3, f11_local4, f11_local5, f11_local6)
    local f11_local7 = 3012
    local f11_local8 = 3001
    local f11_local9 = 3013
    local f11_local10 = 3014
    local f11_local11 = 3026
    local f11_local12 = 3027
    local f11_local13 = 3024
    local f11_local14 = 8.5 - f11_arg0:GetMapHitRadius(TARGET_SELF)
    local f11_local15 = 7.8 - f11_arg0:GetMapHitRadius(TARGET_SELF)
    local f11_local16 = 7.2 - f11_arg0:GetMapHitRadius(TARGET_SELF)
    local f11_local17 = 4.5 - f11_arg0:GetMapHitRadius(TARGET_SELF)
    local f11_local18 = 5.2 - f11_arg0:GetMapHitRadius(TARGET_SELF)
    local f11_local19 = 3.8 - f11_arg0:GetMapHitRadius(TARGET_SELF) - 1.5
    local f11_local20 = 12 - f11_arg0:GetMapHitRadius(TARGET_SELF)
    local f11_local21 = 0
    local f11_local22 = 0
    local f11_local23 = f11_arg0:GetRandam_Int(1, 100)
    if f11_arg0:GetNpcThinkParamID() == 511100 and f11_arg0:HasSpecialEffectId(TARGET_SELF, 5020) then
        if f11_local23 <= 25 then
            f11_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f11_local7, TARGET_ENE_0, f11_local15, f11_local21, f11_local22)
            f11_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f11_local9, TARGET_ENE_0, f11_local16)
            f11_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f11_local10, TARGET_ENE_0, f11_local15)
            f11_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f11_local9, TARGET_ENE_0, f11_local16)
            f11_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f11_local10, TARGET_ENE_0, f11_local20)
        elseif f11_local23 <= 50 then
            f11_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f11_local7, TARGET_ENE_0, f11_local15, f11_local21, f11_local22)
            f11_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f11_local9, TARGET_ENE_0, f11_local16)
            f11_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f11_local10, TARGET_ENE_0, f11_local16)
            f11_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f11_local10, TARGET_ENE_0, f11_local20)
        elseif f11_local23 <= 75 then
            f11_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f11_local7, TARGET_ENE_0, f11_local15, f11_local21, f11_local22)
            f11_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f11_local9, TARGET_ENE_0, f11_local16)
            f11_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f11_local10, TARGET_ENE_0, f11_local14)
            f11_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, f11_local8, TARGET_ENE_0, f11_local19)
            f11_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f11_local13, TARGET_ENE_0, f11_local20)
        else
            f11_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f11_local7, TARGET_ENE_0, f11_local15, f11_local21, f11_local22)
            f11_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f11_local9, TARGET_ENE_0, f11_local16)
            f11_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f11_local10, TARGET_ENE_0, f11_local17)
            f11_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f11_local11, TARGET_ENE_0, f11_local18)
            f11_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f11_local12, TARGET_ENE_0, f11_local20)
        end
    elseif f11_local23 <= 30 then
        f11_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f11_local7, TARGET_ENE_0, f11_local14, f11_local21, f11_local22)
        f11_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f11_local8, TARGET_ENE_0, f11_local20)
    elseif f11_local23 <= 50 then
        f11_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f11_local7, TARGET_ENE_0, f11_local15, f11_local21, f11_local22)
        f11_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f11_local9, TARGET_ENE_0, f11_local20)
    elseif f11_local23 <= 75 then
        f11_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f11_local7, TARGET_ENE_0, f11_local15, f11_local21, f11_local22)
        f11_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f11_local9, TARGET_ENE_0, f11_local16)
        f11_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f11_local10, TARGET_ENE_0, f11_local20)
    else
        f11_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f11_local7, TARGET_ENE_0, f11_local16, f11_local21, f11_local22)
        f11_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f11_local10, TARGET_ENE_0, f11_local20)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function GundaBattle_Act10(f12_arg0, f12_arg1, f12_arg2)
    local f12_local0 = 3023
    local f12_local1 = 3020
    local f12_local2 = 3028
    local f12_local3 = 3029
    local f12_local4 = 3006
    local f12_local5 = 11.5 - f12_arg0:GetMapHitRadius(TARGET_SELF)
    local f12_local6 = 11.5 - f12_arg0:GetMapHitRadius(TARGET_SELF)
    local f12_local7 = 9.8 - f12_arg0:GetMapHitRadius(TARGET_SELF)
    local f12_local8 = 12 - f12_arg0:GetMapHitRadius(TARGET_SELF)
    local f12_local9 = f12_arg0:GetHpRate(TARGET_SELF)
    if f12_local9 >= 0.4 then
        f12_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f12_local0, TARGET_ENE_0, 15, 0, 0)
        f12_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f12_local1, TARGET_ENE_0, f12_local8)
    else
        f12_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f12_local0, TARGET_ENE_0, 15, 0, 0)
        f12_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f12_local1, TARGET_ENE_0, f12_local5)
        f12_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f12_local2, TARGET_ENE_0, f12_local6)
        f12_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f12_local3, TARGET_ENE_0, f12_local7)
        f12_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f12_local4, TARGET_ENE_0, f12_local8)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GundaBattle_Act11(f13_arg0, f13_arg1, f13_arg2)
    local f13_local0 = 3.5 - f13_arg0:GetMapHitRadius(TARGET_SELF) + f13_arg0:GetStringIndexedNumber("Gunda_ADAdjustment")
    local f13_local1 = 3.5 - f13_arg0:GetMapHitRadius(TARGET_SELF) + f13_arg0:GetStringIndexedNumber("Gunda_ADAdjustment")
    local f13_local2 = f13_arg0:GetStringIndexedNumber("Gunda_ForceRunDist")
    local f13_local3 = f13_arg0:GetStringIndexedNumber("Gunda_Odds_Run")
    local f13_local4 = 0
    local f13_local5 = 1
    local f13_local6 = 3
    Approach_Act_Flex(f13_arg0, f13_arg1, f13_local0, f13_local1, f13_local2, f13_local3, f13_local4, f13_local5, f13_local6)
    local f13_local7 = 3003
    local f13_local8 = 3021
    local f13_local9 = 3006
    local f13_local10 = 6.3 - f13_arg0:GetMapHitRadius(TARGET_SELF)
    local f13_local11 = 9.8 - f13_arg0:GetMapHitRadius(TARGET_SELF)
    local f13_local12 = 12 - f13_arg0:GetMapHitRadius(TARGET_SELF)
    local f13_local13 = 0
    local f13_local14 = 0
    local f13_local15 = f13_arg0:GetRandam_Int(1, 100)
    f13_arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    f13_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f13_local7, TARGET_ENE_0, f13_local10, f13_local13, f13_local14)
    f13_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f13_local8, TARGET_ENE_0, f13_local11)
    f13_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f13_local9, TARGET_ENE_0, f13_local12)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GundaBattle_Act12(f14_arg0, f14_arg1, f14_arg2)
    local f14_local0 = 3022
    local f14_local1 = 12 - f14_arg0:GetMapHitRadius(TARGET_SELF)
    local f14_local2 = 0
    local f14_local3 = 0
    f14_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f14_local0, TARGET_ENE_0, f14_local1, f14_local2, f14_local3)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GundaBattle_Act13(f15_arg0, f15_arg1, f15_arg2)
    local f15_local0 = 3026
    local f15_local1 = 3021
    local f15_local2 = 3027
    local f15_local3 = 5.2 - f15_arg0:GetMapHitRadius(TARGET_SELF)
    local f15_local4 = 12 - f15_arg0:GetMapHitRadius(TARGET_SELF)
    f15_arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    if f15_arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 180) then
        if f15_arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
            f15_arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6002, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0):SetTargetRange(1, -99, 5)
            f15_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f15_local0, TARGET_ENE_0, f15_local3)
            f15_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f15_local2, TARGET_ENE_0, f15_local4)
        else
            f15_arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6003, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 0):SetTargetRange(1, -99, 5)
            f15_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f15_local1, TARGET_ENE_0, f15_local3)
            f15_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f15_local2, TARGET_ENE_0, f15_local4)
        end
    elseif f15_arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
        f15_arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6003, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 0):SetTargetRange(1, -99, 5)
        f15_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f15_local1, TARGET_ENE_0, f15_local3)
        f15_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f15_local2, TARGET_ENE_0, f15_local4)
    else
        f15_arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6002, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0):SetTargetRange(1, -99, 5)
        f15_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f15_local0, TARGET_ENE_0, f15_local3)
        f15_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f15_local2, TARGET_ENE_0, f15_local4)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GundaBattle_Act14(f16_arg0, f16_arg1, f16_arg2)
    local f16_local0 = 3009
    local f16_local1 = 3008
    local f16_local2 = 3004
    local f16_local3 = 3026
    local f16_local4 = 3027
    local f16_local5 = 3011
    local f16_local6 = 9 - f16_arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f16_local7 = 8.5 - f16_arg0:GetMapHitRadius(TARGET_SELF)
    local f16_local8 = 4.5 - f16_arg0:GetMapHitRadius(TARGET_SELF)
    local f16_local9 = 5.2 - f16_arg0:GetMapHitRadius(TARGET_SELF)
    local f16_local10 = 8 - f16_arg0:GetMapHitRadius(TARGET_SELF)
    local f16_local11 = 12 - f16_arg0:GetMapHitRadius(TARGET_SELF)
    local f16_local12 = 0
    local f16_local13 = 0
    local f16_local14 = f16_arg0:GetRandam_Int(1, 100)
    f16_arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    if f16_local14 <= 50 then
        f16_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, f16_local1, TARGET_ENE_0, f16_local8)
        f16_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, f16_local3, TARGET_ENE_0, f16_local9)
        f16_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f16_local4, TARGET_ENE_0, f16_local11)
    else
        f16_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f16_local4, TARGET_ENE_0, f16_local10):SetTargetRange(0, 6.3 - f16_arg0:GetMapHitRadius(TARGET_SELF), 999)
        f16_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f16_local5, TARGET_ENE_0, f16_local7)
        f16_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f16_local2, TARGET_ENE_0, f16_local11)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GundaBattle_Act15(f17_arg0, f17_arg1, f17_arg2)
    local f17_local0 = 3000
    local f17_local1 = 3001
    local f17_local2 = 3029
    local f17_local3 = 3006
    local f17_local4 = 3014
    local f17_local5 = 3024
    local f17_local6 = 3026
    local f17_local7 = 3027
    local f17_local8 = 8.5 - f17_arg0:GetMapHitRadius(TARGET_SELF)
    local f17_local9 = 11.5 - f17_arg0:GetMapHitRadius(TARGET_SELF)
    local f17_local10 = 9.8 - f17_arg0:GetMapHitRadius(TARGET_SELF)
    local f17_local11 = 7.2 - f17_arg0:GetMapHitRadius(TARGET_SELF)
    local f17_local12 = 3.8 - f17_arg0:GetMapHitRadius(TARGET_SELF) - 1.5
    local f17_local13 = 4.5 - f17_arg0:GetMapHitRadius(TARGET_SELF)
    local f17_local14 = 5.2 - f17_arg0:GetMapHitRadius(TARGET_SELF)
    local f17_local15 = 12 - f17_arg0:GetMapHitRadius(TARGET_SELF)
    local f17_local16 = 0
    local f17_local17 = 0
    local f17_local18 = f17_arg0:GetRandam_Int(1, 100)
    f17_arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    if f17_local18 <= 30 then
        f17_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, f17_local1, TARGET_ENE_0, f17_local13)
        f17_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f17_local6, TARGET_ENE_0, f17_local14)
        f17_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f17_local7, TARGET_ENE_0, f17_local15)
    elseif f17_local18 <= 60 then
        f17_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f17_local4, TARGET_ENE_0, f17_local8)
        f17_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, f17_local1, TARGET_ENE_0, f17_local9)
        f17_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f17_local2, TARGET_ENE_0, f17_local11)
        f17_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f17_local3, TARGET_ENE_0, f17_local15)
    else
        f17_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f17_local4, TARGET_ENE_0, f17_local8)
        f17_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, f17_local1, TARGET_ENE_0, f17_local12)
        f17_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f17_local5, TARGET_ENE_0, f17_local15)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function GundaBattle_Act16(f18_arg0, f18_arg1, f18_arg2)
    local f18_local0 = 4.5 - f18_arg0:GetMapHitRadius(TARGET_SELF) + f18_arg0:GetStringIndexedNumber("Gunda_ADAdjustment")
    local f18_local1 = 4.5 - f18_arg0:GetMapHitRadius(TARGET_SELF) + f18_arg0:GetStringIndexedNumber("Gunda_ADAdjustment")
    local f18_local2 = f18_arg0:GetStringIndexedNumber("Gunda_ForceRunDist")
    local f18_local3 = f18_arg0:GetStringIndexedNumber("Gunda_Odds_Run")
    local f18_local4 = 0
    local f18_local5 = 1
    local f18_local6 = 3
    Approach_Act_Flex(f18_arg0, f18_arg1, f18_local0, f18_local1, f18_local2, f18_local3, f18_local4, f18_local5, f18_local6)
    local f18_local7 = 3026
    local f18_local8 = 3027
    local f18_local9 = 3011
    local f18_local10 = 3004
    local f18_local11 = 3024
    local f18_local12 = 3021
    local f18_local13 = 5.2 - f18_arg0:GetMapHitRadius(TARGET_SELF)
    local f18_local14 = 8 - f18_arg0:GetMapHitRadius(TARGET_SELF)
    local f18_local15 = 8.5 - f18_arg0:GetMapHitRadius(TARGET_SELF)
    local f18_local16 = 3.8 - f18_arg0:GetMapHitRadius(TARGET_SELF) - 1.5
    local f18_local17 = 6.3 - f18_arg0:GetMapHitRadius(TARGET_SELF)
    local f18_local18 = 12 - f18_arg0:GetMapHitRadius(TARGET_SELF)
    local f18_local19 = 0
    local f18_local20 = 0
    local f18_local21 = f18_arg0:GetRandam_Int(1, 100)
    f18_arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    f18_arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    f18_arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    if f18_local21 <= 30 then
        f18_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f18_local7, TARGET_ENE_0, f18_local17)
        f18_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f18_local12, TARGET_ENE_0, f18_local13)
        f18_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f18_local8, TARGET_ENE_0, f18_local18)
    elseif f18_local21 <= 65 then
        f18_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f18_local7, TARGET_ENE_0, f18_local13):SetTargetAngle(0, 0, 75)
        f18_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f18_local8, TARGET_ENE_0, f18_local14)
        f18_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f18_local9, TARGET_ENE_0, f18_local15)
        f18_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f18_local10, TARGET_ENE_0, f18_local18)
    else
        f18_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f18_local7, TARGET_ENE_0, f18_local13):SetTargetAngle(0, 0, 75)
        f18_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f18_local8, TARGET_ENE_0, f18_local14)
        f18_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f18_local9, TARGET_ENE_0, f18_local16)
        f18_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f18_local11, TARGET_ENE_0, f18_local18)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GundaBattle_Act17(f19_arg0, f19_arg1, f19_arg2)
    local f19_local0 = 3021
    local f19_local1 = 3026
    local f19_local2 = 3027
    local f19_local3 = 3028
    local f19_local4 = 3029
    local f19_local5 = 3006
    local f19_local6 = 4.5 - f19_arg0:GetMapHitRadius(TARGET_SELF)
    local f19_local7 = 5.2 - f19_arg0:GetMapHitRadius(TARGET_SELF)
    local f19_local8 = 11.5 - f19_arg0:GetMapHitRadius(TARGET_SELF)
    local f19_local9 = 11.5 - f19_arg0:GetMapHitRadius(TARGET_SELF)
    local f19_local10 = 9.8 - f19_arg0:GetMapHitRadius(TARGET_SELF)
    local f19_local11 = 12 - f19_arg0:GetMapHitRadius(TARGET_SELF)
    local f19_local12 = f19_arg0:GetRandam_Int(1, 100)
    local f19_local13 = f19_arg0:GetHpRate(TARGET_SELF)
    f19_arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    if f19_local12 <= 60 then
        f19_arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6001, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0):SetTargetRange(1, -99, 5)
        f19_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f19_local0, TARGET_ENE_0, f19_local6)
        f19_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f19_local1, TARGET_ENE_0, f19_local7):SetTargetAngle(0, 0, 75)
        f19_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f19_local2, TARGET_ENE_0, f19_local11)
    else
        f19_arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6001, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
        if f19_local13 >= 0.4 then
            f19_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3020, TARGET_ENE_0, f19_local11)
        else
            f19_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3020, TARGET_ENE_0, f19_local8)
            f19_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f19_local3, TARGET_ENE_0, f19_local9)
            f19_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f19_local4, TARGET_ENE_0, f19_local10)
            f19_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f19_local5, TARGET_ENE_0, f19_local11)
        end
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GundaBattle_Act20(f20_arg0, f20_arg1, f20_arg2)
    f20_arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, f20_arg0:GetRandam_Int(15, 90))
    return 0
    
end

function GundaBattle_Act21(f21_arg0, f21_arg1, f21_arg2)
    f21_arg0:AddObserveArea(0, TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, 4.5)
    local f21_local0 = f21_arg0:GetRandam_Float(4, 6)
    f21_arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f21_local0, TARGET_ENE_0, 5, TARGET_SELF, true, -1)
    f21_arg0:SetNumber(0, 1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GundaBattle_Act30(f22_arg0, f22_arg1, f22_arg2)
    local f22_local0 = 1600
    local f22_local1 = 3020
    local f22_local2 = 22 - f22_arg0:GetMapHitRadius(TARGET_SELF) - 1
    local f22_local3 = 12 - f22_arg0:GetMapHitRadius(TARGET_SELF)
    local f22_local4 = 0
    local f22_local5 = 0
    f22_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f22_local0, TARGET_ENE_0, f22_local2, f22_local4, f22_local5)
    f22_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f22_local1, TARGET_ENE_0, f22_local3)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GundaBattle_Act40(f23_arg0, f23_arg1, f23_arg2)
    local f23_local0 = 3008
    local f23_local1 = 3029
    local f23_local2 = 3020
    local f23_local3 = 3029
    local f23_local4 = 3000
    local f23_local5 = 3002
    local f23_local6 = 12 - f23_arg0:GetMapHitRadius(TARGET_SELF)
    local f23_local7 = 0
    local f23_local8 = 0
    f23_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f23_local0, TARGET_ENE_0, 999, f23_local7, f23_local8)
    f23_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f23_local1, TARGET_ENE_0, 999)
    f23_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f23_local2, TARGET_ENE_0, 999)
    f23_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f23_local3, TARGET_ENE_0, 999)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GundaBattle_Act50(f24_arg0, f24_arg1, f24_arg2)
    f24_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 1500, TARGET_ENE_0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GundaBattle_ActAfter_AdjustSpace(f25_arg0, f25_arg1, f25_arg2)
    if f25_arg0:GetNpcThinkParamID() == 511100 == false then
        f25_arg1:AddSubGoal(GOAL_Gunda_511000_AfterAttackAct, 10)
    end
    
end

Goal.Update = function (f26_arg0, f26_arg1, f26_arg2)
    return Update_Default_NoSubGoal(f26_arg0, f26_arg1, f26_arg2)
    
end

Goal.Terminate = function (f27_arg0, f27_arg1, f27_arg2)
    
end

Goal.Interrupt = function (f28_arg0, f28_arg1, f28_arg2)
    if f28_arg1:GetNpcThinkParamID() == 511100 then
        if f28_arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) then
            local f28_local0 = f28_arg1:GetDist(TARGET_ENE_0)
            local f28_local1 = 12 - f28_arg1:GetMapHitRadius(TARGET_SELF)
            local f28_local2 = f28_arg1:GetRandam_Int(1, 100)
            local f28_local3 = f28_arg1:GetHpRate(TARGET_SELF)
            if f28_arg1:GetSpecialEffectActivateInterruptType(0) == 5027 and InsideRange(f28_arg1, f28_arg2, 0, 120, 6.8 - f28_arg1:GetMapHitRadius(TARGET_SELF) - 1, 16.8 - f28_arg1:GetMapHitRadius(TARGET_SELF) + 1) and f28_arg1:HasSpecialEffectId(TARGET_ENE_0, 12301) == true and f28_arg1:HasSpecialEffectId(TARGET_ENE_0, 90) == true then
                if f28_local2 <= 30 then
                    f28_arg2:ClearSubGoal()
                    f28_arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, f28_local1)
                    return true
                else
                    f28_arg2:ClearSubGoal()
                    f28_arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, f28_local1)
                    return true
                end
            else
            end
            if f28_arg1:GetSpecialEffectActivateInterruptType(0) == 5026 and f28_arg1:HasSpecialEffectId(TARGET_ENE_0, 90) and f28_arg1:HasSpecialEffectId(TARGET_ENE_0, 12302) then
                f28_arg2:ClearSubGoal()
                f28_arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3025, TARGET_ENE_0, f28_local1)
                return true
            else
            end
            if f28_arg1:GetSpecialEffectActivateInterruptType(0) == 90 and f28_arg1:HasSpecialEffectId(TARGET_ENE_0, 12301) == false and f28_arg1:HasSpecialEffectId(TARGET_ENE_0, 12302) == false then
                f28_arg2:ClearSubGoal()
                f28_arg1:Replaning()
                return true
            else
            end
            if f28_arg1:GetSpecialEffectActivateInterruptType(0) == 5029 and InsideRange(f28_arg1, f28_arg2, 210, 150, -99 - f28_arg1:GetMapHitRadius(TARGET_SELF) - 1, 4 - f28_arg1:GetMapHitRadius(TARGET_SELF) + 1) and f28_arg1:HasSpecialEffectId(TARGET_SELF, 5020) then
                f28_arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5029)
                f28_arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
                f28_arg2:ClearSubGoal()
                f28_arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3009, TARGET_ENE_0, 0)
                GundaBattle_Act14(f28_arg1, f28_arg2, paramTbl)
                return true
            else
            end
            if f28_arg1:GetSpecialEffectActivateInterruptType(0) == 5030 and InsideRange(f28_arg1, f28_arg2, 0, 210, 5.5, 22 - f28_arg1:GetMapHitRadius(TARGET_SELF)) and f28_arg1:HasSpecialEffectId(TARGET_SELF, 5020) then
                f28_arg2:ClearSubGoal()
                if f28_local3 >= 0.4 then
                    f28_arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3020, TARGET_ENE_0, 999)
                else
                    f28_arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3020, TARGET_ENE_0, 11.5 - f28_arg1:GetMapHitRadius(TARGET_SELF))
                    f28_arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3028, TARGET_ENE_0, 11.5 - f28_arg1:GetMapHitRadius(TARGET_SELF))
                    f28_arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3029, TARGET_ENE_0, 9.8 - f28_arg1:GetMapHitRadius(TARGET_SELF))
                    f28_arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3006, TARGET_ENE_0, 999)
                end
                return true
            else
            end
            if f28_arg1:GetSpecialEffectActivateInterruptType(0) == 5032 and InsideRange(f28_arg1, f28_arg2, 180, 180, -99, 2) and f28_arg1:HasSpecialEffectId(TARGET_SELF, 5020) and f28_local3 <= 0.4 then
                f28_arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5032)
                f28_arg2:ClearSubGoal()
                GundaBattle_Act13(f28_arg1, f28_arg2, paramTbl)
                return true
            else
            end
        end
        if f28_arg1:IsInterupt(INTERUPT_FindAttack) then
            local f28_local0 = f28_arg1:GetRandam_Int(1, 100)
            local f28_local1 = f28_arg1:GetHpRate(TARGET_SELF)
            if InsideRange(f28_arg1, f28_arg2, 0, 240, -99, 2.5) and f28_local1 <= 0.4 and f28_arg1:HasSpecialEffectId(TARGET_SELF, 5020) and f28_arg1:HasSpecialEffectId(TARGET_SELF, 5032) then
                f28_arg2:ClearSubGoal()
                GundaBattle_Act17(f28_arg1, f28_arg2, paramTbl)
                return true
            end
        end
        if f28_arg1:IsInterupt(INTERUPT_TargetOutOfRange) then
            if f28_arg1:IsTargetOutOfRangeInterruptSlot(0) and InsideRange(f28_arg1, f28_arg2, 0, 120, -99 - f28_arg1:GetMapHitRadius(TARGET_SELF), 6.3 - f28_arg1:GetMapHitRadius(TARGET_SELF)) and f28_arg1:HasSpecialEffectId(TARGET_SELF, 5028) and f28_arg1:HasSpecialEffectId(TARGET_SELF, 5020) and f28_arg1:IsFinishTimer(1) == true then
                f28_arg1:SetTimer(1, 6)
                f28_arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
                f28_arg2:ClearSubGoal()
                f28_arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3021, TARGET_ENE_0, 3.8 - f28_arg1:GetMapHitRadius(TARGET_SELF))
                return true
            end
            if f28_arg1:IsTargetOutOfRangeInterruptSlot(1) then
                f28_arg2:ClearSubGoal()
                f28_arg1:Replaning()
                return true
            end
        end
        if f28_arg1:IsInterupt(INTERUPT_TargetOutOfAngle) and f28_arg1:IsTargetOutOfAngleInterruptSlot(0) then
            f28_arg2:ClearSubGoal()
            f28_arg1:Replaning()
            return true
        end
        if f28_arg1:IsInterupt(INTERUPT_Damaged) then
            if f28_arg1:HasSpecialEffectId(TARGET_SELF, 5025) and targetDist <= 5 then
                f28_arg1:Replaning()
                return true
            end
            if InsideRange(f28_arg1, f28_arg2, 180, 150, -1, 4 - f28_arg1:GetMapHitRadius(TARGET_SELF)) then
                f28_arg2:ClearSubGoal()
                f28_arg1:Replaning()
                return true
            end
        end
        if f28_arg1:IsInterupt(INTERUPT_Inside_ObserveArea) and f28_arg1:IsInsideObserve(0) then
            f28_arg2:ClearSubGoal()
            f28_arg1:Replaning()
            f28_arg1:DeleteObserve(0)
            return true
        end
        if f28_arg1:IsFinishTimer(2) == true then
            local f28_local0 = f28_arg1:GetDist(TARGET_ENE_0)
            local f28_local1 = 5
            local f28_local2 = 100
            local f28_local3 = 12 - f28_arg1:GetMapHitRadius(TARGET_SELF)
            if GuardBreak_Act(f28_arg1, f28_arg2, f28_local1, f28_local2) then
                if f28_arg1:HasSpecialEffectId(TARGET_SELF, 5034) == false then
                    f28_arg1:SetTimer(2, 5)
                    f28_arg2:ClearSubGoal()
                    f28_arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3013, TARGET_ENE_0, 7.2 - f28_arg1:GetMapHitRadius(TARGET_SELF))
                    f28_arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3014, TARGET_ENE_0, f28_local3)
                    return true
                else
                end
                if f28_arg1:HasSpecialEffectId(TARGET_SELF, 5034) == true and f28_arg1:HasSpecialEffectId(TARGET_SELF, 5033) == true and f28_arg1:HasSpecialEffectId(TARGET_SELF, 5020) then
                    f28_arg1:SetTimer(2, 5)
                    f28_arg2:ClearSubGoal()
                    f28_arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3027, TARGET_ENE_0, f28_local3)
                    return true
                else
                end
            end
            if f28_arg1:IsInterupt(INTERUPT_UseItem) and f28_arg1:HasSpecialEffectId(TARGET_SELF, 5020) then
                if InsideRange(f28_arg1, f28_arg2, 0, 180, 10 - f28_arg1:GetMapHitRadius(TARGET_SELF) - 3, 18 - f28_arg1:GetMapHitRadius(TARGET_SELF)) then
                    f28_arg1:SetTimer(2, 5)
                    f28_arg2:ClearSubGoal()
                    f28_arg2:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 5, 3000, TARGET_ENE_0, 5)
                    GundaBattle_Act15(f28_arg1, f28_arg2, paramTbl)
                    return true
                elseif InsideRange(f28_arg1, f28_arg2, 0, 180, 2 - f28_arg1:GetMapHitRadius(TARGET_SELF), 4.5 - f28_arg1:GetMapHitRadius(TARGET_SELF)) then
                    f28_arg1:SetTimer(2, 5)
                    f28_arg2:ClearSubGoal()
                    GundaBattle_Act16(f28_arg1, f28_arg2, paramTbl)
                    return true
                end
            end
        end
        local f28_local0 = f28_arg1:GetRandam_Int(1, 100)
        local f28_local1 = f28_arg1:GetDist(TARGET_ENE_0)
        if f28_arg1:IsInterupt(INTERUPT_Shoot) then
            if f28_arg1:HasSpecialEffectId(TARGET_SELF, 5032) and f28_arg1:HasSpecialEffectId(TARGET_SELF, 5020) then
                if InsideRange(f28_arg1, f28_arg2, 0, 210, 5, 10) then
                    f28_arg2:ClearSubGoal()
                    f28_arg2:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6000, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 0)
                    if InsideRange(f28_arg1, f28_arg2, 0, 150, 9 - f28_arg1:GetMapHitRadius(TARGET_SELF), 22 - f28_arg1:GetMapHitRadius(TARGET_SELF)) then
                        f28_arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3020, TARGET_ENE_0, 999)
                        return true
                    end
                elseif InsideRange(f28_arg1, f28_arg2, 0, 210, 10, 18 - f28_arg1:GetMapHitRadius(TARGET_SELF)) then
                    f28_arg2:ClearSubGoal()
                    f28_arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3000, TARGET_ENE_0, 999)
                    return true
                end
            elseif f28_arg1:HasSpecialEffectId(TARGET_SELF, 5025) and f28_arg1:HasSpecialEffectId(TARGET_SELF, 5020) == false then
                f28_arg2:ClearSubGoal()
                GundaBattle_Act01(f28_arg1, f28_arg2, paramTbl)
                return true
            end
        end
    end
    return false
    
end

RegisterTableGoal(GOAL_Gunda_511000_AfterAttackAct, "GOAL_Gunda_511000_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_Gunda_511000_AfterAttackAct, true)

Goal.Activate = function (f29_arg0, f29_arg1, f29_arg2)
    if f29_arg1:HasSpecialEffectId(TARGET_SELF, 5404) == false then
        local f29_local0 = f29_arg1:GetDist(TARGET_ENE_0)
        local f29_local1 = f29_arg1:GetRandam_Int(0, 1)
        if InsideRange(f29_arg1, f29_arg2, 90, 180, -99, 5) then
            f29_arg2:AddSubGoal(GOAL_COMMON_SidewayMove, f29_arg1:GetRandam_Float(2, 3.5), TARGET_ENE_0, 1, 45, true, true, 0)
        elseif InsideRange(f29_arg1, f29_arg2, -90, 180, -99, 5) then
            f29_arg2:AddSubGoal(GOAL_COMMON_SidewayMove, f29_arg1:GetRandam_Float(2, 3.5), TARGET_ENE_0, 0, 45, true, true, 0)
        elseif f29_local0 >= 5 then
            f29_arg2:AddSubGoal(GOAL_COMMON_SidewayMove, f29_arg1:GetRandam_Float(2.5, 4.5), TARGET_ENE_0, f29_local1, 45, true, true, 0)
        end
    end
    
end

Goal.Update = function (f30_arg0, f30_arg1, f30_arg2)
    return Update_Default_NoSubGoal(f30_arg0, f30_arg1, f30_arg2)
    
end


