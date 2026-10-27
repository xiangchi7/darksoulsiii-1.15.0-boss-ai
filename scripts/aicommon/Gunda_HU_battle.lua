RegisterTableGoal(GOAL_Gunda_511000_HU_Battle, "GundaHUBattle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_Gunda_511000_HU_Battle, true)

Goal.Initialize = function (f1_arg0, f1_arg1, f1_arg2, f1_arg3)
    
end

Goal.Activate = function (f2_arg0, f2_arg1, f2_arg2)
    Init_Pseudo_Global(f2_arg1, f2_arg2)
    f2_arg1:SetStringIndexedNumber("Dist_SideStep", 4)
    f2_arg1:SetStringIndexedNumber("Dist_BackStep", 3.8)
    f2_arg1:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 90)
    local f2_local0 = {}
    local f2_local1 = {}
    local f2_local2 = {}
    Common_Clear_Param(f2_local0, f2_local1, f2_local2)
    local f2_local3 = f2_arg1:GetDist(TARGET_ENE_0)
    local f2_local4 = f2_arg1:GetRandam_Int(1, 100)
    if f2_arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 210) then
        if f2_local3 >= 5 then
            f2_local0[20] = 10
        else
            f2_local0[6] = 30
            f2_local0[20] = 70
        end
    elseif InsideRange(f2_arg1, f2_arg2, 130, 30, -1, 6 - f2_arg1:GetMapHitRadius(TARGET_SELF)) then
        f2_local0[6] = 10
        f2_local0[11] = 30
        f2_local0[20] = 30
    elseif InsideRange(f2_arg1, f2_arg2, -130, 30, -1, 6 - f2_arg1:GetMapHitRadius(TARGET_SELF)) then
        f2_local0[6] = 10
        f2_local0[10] = 20
        f2_local0[20] = 30
    elseif f2_local3 >= 18 then
        f2_local0[3] = 10
    elseif f2_local3 >= 15 then
        f2_local0[3] = 10
        f2_local0[9] = 30
    elseif f2_local3 >= 10 then
        f2_local0[1] = 10
        f2_local0[3] = 10
        f2_local0[9] = 10
    elseif f2_local3 >= 8 then
        f2_local0[1] = 30
        f2_local0[9] = 20
        f2_local0[8] = 10
    elseif f2_local3 >= 5 then
        f2_local0[1] = 30
        f2_local0[9] = 20
        f2_local0[5] = 20
        f2_local0[8] = 10
        f2_local0[11] = 20
    elseif f2_local3 >= 1.5 then
        f2_local0[5] = 20
        f2_local0[6] = 10
        f2_local0[8] = 10
        f2_local0[10] = 30
        f2_local0[11] = 20
    else
        f2_local0[6] = 30
        f2_local0[10] = 20
        f2_local0[11] = 20
    end
    f2_local0[1] = SetCoolTime(f2_arg1, f2_arg2, 3000, 8, f2_local0[1], 1)
    f2_local0[3] = SetCoolTime(f2_arg1, f2_arg2, 3005, 8, f2_local0[3], 1)
    f2_local0[4] = SetCoolTime(f2_arg1, f2_arg2, 3008, 8, f2_local0[4], 1)
    f2_local0[5] = SetCoolTime(f2_arg1, f2_arg2, 3009, 15, f2_local0[5], 1)
    f2_local0[6] = SetCoolTime(f2_arg1, f2_arg2, 3010, 10, f2_local0[6], 1)
    f2_local0[8] = SetCoolTime(f2_arg1, f2_arg2, 3012, 10, f2_local0[8], 1)
    f2_local0[9] = SetCoolTime(f2_arg1, f2_arg2, 3013, 8, f2_local0[9], 1)
    f2_local0[10] = SetCoolTime(f2_arg1, f2_arg2, 3014, 8, f2_local0[10], 1)
    f2_local0[11] = SetCoolTime(f2_arg1, f2_arg2, 3015, 8, f2_local0[11], 1)
    f2_local1[1] = REGIST_FUNC(f2_arg1, f2_arg2, GundaHUBattle_Act01)
    f2_local1[3] = REGIST_FUNC(f2_arg1, f2_arg2, GundaHUBattle_Act03)
    f2_local1[5] = REGIST_FUNC(f2_arg1, f2_arg2, GundaHUBattle_Act05)
    f2_local1[6] = REGIST_FUNC(f2_arg1, f2_arg2, GundaHUBattle_Act06)
    f2_local1[8] = REGIST_FUNC(f2_arg1, f2_arg2, GundaHUBattle_Act08)
    f2_local1[9] = REGIST_FUNC(f2_arg1, f2_arg2, GundaHUBattle_Act09)
    f2_local1[10] = REGIST_FUNC(f2_arg1, f2_arg2, GundaHUBattle_Act10)
    f2_local1[11] = REGIST_FUNC(f2_arg1, f2_arg2, GundaHUBattle_Act11)
    f2_local1[20] = REGIST_FUNC(f2_arg1, f2_arg2, GundaHUBattle_Act20)
    f2_local1[40] = REGIST_FUNC(f2_arg1, f2_arg2, GundaHUBattle_Act40)
    local f2_local5 = REGIST_FUNC(f2_arg1, f2_arg2, GundaHUBattle_ActAfter_AdjustSpace)
    Common_Battle_Activate(f2_arg1, f2_arg2, f2_local0, f2_local1, f2_local5, f2_local2)
    
end

function GundaHUBattle_Act01(f3_arg0, f3_arg1, f3_arg2)
    local f3_local0 = 10.5 - f3_arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local1 = 10.5 - f3_arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f3_local2 = 10.5 - f3_arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f3_local3 = 0
    local f3_local4 = 0
    local f3_local5 = 2
    local f3_local6 = 4
    Approach_Act_Flex(f3_arg0, f3_arg1, f3_local0, f3_local1, f3_local2, f3_local3, f3_local4, f3_local5, f3_local6)
    local f3_local7 = 3000
    local f3_local8 = 3001
    local f3_local9 = 3003
    local f3_local10 = 3006
    local f3_local11 = 5 - f3_arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f3_local12 = 12.5 - f3_arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f3_local13 = 16.5 - f3_arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f3_local14 = 12 - f3_arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local15 = 0
    local f3_local16 = 0
    local f3_local17 = f3_arg0:GetRandam_Int(1, 100)
    f3_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f3_local7, TARGET_ENE_0, f3_local11, f3_local15, f3_local16)
    f3_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f3_local8, TARGET_ENE_0, f3_local12)
    f3_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f3_local9, TARGET_ENE_0, f3_local14)
    GetWellSpace_Odds = 80
    return GetWellSpace_Odds
    
end

function GundaHUBattle_Act03(f4_arg0, f4_arg1, f4_arg2)
    local f4_local0 = 25.5 - f4_arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local1 = 25.5 - f4_arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f4_local2 = 25.5 - f4_arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f4_local3 = 0
    local f4_local4 = 0
    local f4_local5 = 2
    local f4_local6 = 4
    Approach_Act_Flex(f4_arg0, f4_arg1, f4_local0, f4_local1, f4_local2, f4_local3, f4_local4, f4_local5, f4_local6)
    local f4_local7 = 3005
    local f4_local8 = 3006
    local f4_local9 = 16.5 - f4_arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f4_local10 = 12 - f4_arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local11 = 0
    local f4_local12 = 0
    local f4_local13 = f4_arg0:GetRandam_Int(1, 100)
    if f4_local13 <= 25 then
        f4_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f4_local7, TARGET_ENE_0, f4_local10, f4_local11, f4_local12)
    else
        f4_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f4_local7, TARGET_ENE_0, f4_local9, f4_local11, f4_local12)
        f4_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f4_local8, TARGET_ENE_0, f4_local10)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function GundaHUBattle_Act04(f5_arg0, f5_arg1, f5_arg2)
    local f5_local0 = 3008
    local f5_local1 = 3004
    local f5_local2 = 14.5 - f5_arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f5_local3 = 12 - f5_arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local4 = 0
    local f5_local5 = 0
    local f5_local6 = f5_arg0:GetRandam_Int(1, 100)
    GetWellSpace_Odds = 50
    return GetWellSpace_Odds
    
end

function GundaHUBattle_Act05(f6_arg0, f6_arg1, f6_arg2)
    local f6_local0 = 11 - f6_arg0:GetMapHitRadius(TARGET_SELF) - 1
    local f6_local1 = 11 - f6_arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f6_local2 = 11 - f6_arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f6_local3 = 0
    local f6_local4 = 0
    local f6_local5 = 2.5
    local f6_local6 = 5
    Approach_Act_Flex(f6_arg0, f6_arg1, f6_local0, f6_local1, f6_local2, f6_local3, f6_local4, f6_local5, f6_local6)
    local f6_local7 = 3009
    local f6_local8 = 12 - f6_arg0:GetMapHitRadius(TARGET_SELF)
    f6_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f6_local7, TARGET_ENE_0, f6_local8, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function GundaHUBattle_Act06(f7_arg0, f7_arg1, f7_arg2)
    local f7_local0 = 3010
    local f7_local1 = 12 - f7_arg0:GetMapHitRadius(TARGET_SELF)
    f7_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f7_local0, TARGET_ENE_0, f7_local1, 0, 0)
    GetWellSpace_Odds = 50
    return GetWellSpace_Odds
    
end

function GundaHUBattle_Act08(f8_arg0, f8_arg1, f8_arg2)
    local f8_local0 = 14 - f8_arg0:GetMapHitRadius(TARGET_SELF) - 1
    local f8_local1 = 14 - f8_arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f8_local2 = 14 - f8_arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f8_local3 = 0
    local f8_local4 = 0
    local f8_local5 = 3
    local f8_local6 = nil
    Approach_Act_Flex(f8_arg0, f8_arg1, f8_local0, f8_local1, f8_local2, f8_local3, f8_local4, f8_local5, f8_local6)
    local f8_local7 = 3012
    local f8_local8 = 12 - f8_arg0:GetMapHitRadius(TARGET_SELF)
    f8_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f8_local7, TARGET_ENE_0, f8_local8, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GundaHUBattle_Act09(f9_arg0, f9_arg1, f9_arg2)
    local f9_local0 = 15.5 - f9_arg0:GetMapHitRadius(TARGET_SELF)
    local f9_local1 = 15.5 - f9_arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f9_local2 = 15.5 - f9_arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f9_local3 = 0
    local f9_local4 = 0
    local f9_local5 = 2
    local f9_local6 = 4
    Approach_Act_Flex(f9_arg0, f9_arg1, f9_local0, f9_local1, f9_local2, f9_local3, f9_local4, f9_local5, f9_local6)
    local f9_local7 = 3013
    local f9_local8 = 3003
    local f9_local9 = 3004
    local f9_local10 = 12.5 - f9_arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f9_local11 = 14.5 - f9_arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f9_local12 = 12 - f9_arg0:GetMapHitRadius(TARGET_SELF)
    local f9_local13 = 0
    local f9_local14 = 0
    local f9_local15 = f9_arg0:GetRandam_Int(1, 100)
    if f9_local15 <= 50 then
        f9_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f9_local7, TARGET_ENE_0, f9_local10, f9_local13, f9_local14)
        f9_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f9_local8, TARGET_ENE_0, f9_local12)
    else
        f9_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f9_local7, TARGET_ENE_0, f9_local10, f9_local13, f9_local14)
        f9_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f9_local8, TARGET_ENE_0, f9_local11)
        f9_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f9_local9, TARGET_ENE_0, f9_local12)
    end
    GetWellSpace_Odds = 80
    return GetWellSpace_Odds
    
end

function GundaHUBattle_Act10(f10_arg0, f10_arg1, f10_arg2)
    local f10_local0 = 3014
    local f10_local1 = 3004
    local f10_local2 = 14.5 - f10_arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f10_local3 = 12 - f10_arg0:GetMapHitRadius(TARGET_SELF)
    local f10_local4 = 0
    local f10_local5 = 0
    local f10_local6 = f10_arg0:GetRandam_Int(1, 100)
    f10_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f10_local0, TARGET_ENE_0, f10_local2, f10_local4, f10_local5)
    f10_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f10_local1, TARGET_ENE_0, f10_local3)
    GetWellSpace_Odds = 80
    return GetWellSpace_Odds
    
end

function GundaHUBattle_Act11(f11_arg0, f11_arg1, f11_arg2)
    local f11_local0 = 3015
    local f11_local1 = 3006
    local f11_local2 = 16.5 - f11_arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f11_local3 = 12 - f11_arg0:GetMapHitRadius(TARGET_SELF)
    local f11_local4 = 0
    local f11_local5 = 0
    local f11_local6 = f11_arg0:GetRandam_Int(1, 100)
    f11_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f11_local0, TARGET_ENE_0, f11_local3, f11_local4, f11_local5)
    GetWellSpace_Odds = 80
    return GetWellSpace_Odds
    
end

function GundaHUBattle_Act20(f12_arg0, f12_arg1, f12_arg2)
    f12_arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, f12_arg0:GetRandam_Int(15, 90))
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GundaHUBattle_Act40(f13_arg0, f13_arg1, f13_arg2)
    local f13_local0 = 3015
    local f13_local1 = 3008
    local f13_local2 = 3001
    local f13_local3 = 3008
    local f13_local4 = 12 - f13_arg0:GetMapHitRadius(TARGET_SELF)
    local f13_local5 = 0
    local f13_local6 = 0
    f13_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f13_local0, TARGET_ENE_0, f13_local4, f13_local5, f13_local6)
    f13_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f13_local1, TARGET_ENE_0, f13_local4)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GundaHUBattle_ActAfter_AdjustSpace(f14_arg0, f14_arg1, f14_arg2)
    f14_arg1:AddSubGoal(GOAL_Gunda_511000_HU_AfterAttackAct, 10)
    
end

Goal.Update = function (f15_arg0, f15_arg1, f15_arg2)
    return Update_Default_NoSubGoal(f15_arg0, f15_arg1, f15_arg2)
    
end

Goal.Interrupt = function (f16_arg0, f16_arg1, f16_arg2)
    if f16_arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) then
        local f16_local0 = f16_arg1:GetDist(TARGET_ENE_0)
        if f16_arg1:GetSpecialEffectActivateInterruptType(0) == 90 then
            f16_arg1:DeleteObserveSpecialEffectAttribute(TARGET_ENE_0, 90)
            f16_arg2:ClearSubGoal()
            f16_arg1:Replaning()
            return true
        else
        end
    end
    
end

RegisterTableGoal(GOAL_Gunda_511000_HU_AfterAttackAct, "GOAL_Gunda_511000_HU_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_Gunda_511000_HU_AfterAttackAct, true)

Goal.Activate = function (f17_arg0, f17_arg1, f17_arg2)
    if f17_arg1:HasSpecialEffectId(TARGET_SELF, 5404) == true then
        local f17_local0 = f17_arg1:GetDist(TARGET_ENE_0)
        local f17_local1 = f17_arg1:GetToTargetAngle(TARGET_ENE_0)
        f17_arg1:SetStringIndexedNumber("DistMin_AAA", 0)
        f17_arg1:SetStringIndexedNumber("DistMax_AAA", 25)
        f17_arg1:SetStringIndexedNumber("BaseDir_AAA", AI_DIR_TYPE_F)
        f17_arg1:SetStringIndexedNumber("Angle_AAA", 180)
        f17_arg1:SetStringIndexedNumber("DistMin_Inter_AAA", 0)
        f17_arg1:SetStringIndexedNumber("DistMax_Inter_AAA", 35)
        f17_arg1:SetStringIndexedNumber("BaseAng_Inter_AAA", 0)
        f17_arg1:SetStringIndexedNumber("Ang_Inter_AAA", 180)
        if f17_local0 >= 10 then
            f17_arg1:SetStringIndexedNumber("Odds_NoAct_AAA", 0)
            f17_arg1:SetStringIndexedNumber("Odds_BackAndSide_AAA", 20)
            f17_arg1:SetStringIndexedNumber("Odds_Back_AAA", 0)
            f17_arg1:SetStringIndexedNumber("Odds_Sidestep_AAA", 0)
        elseif f17_local0 >= 5 then
            f17_arg1:SetStringIndexedNumber("Odds_NoAct_AAA", 0)
            f17_arg1:SetStringIndexedNumber("Odds_BackAndSide_AAA", 30)
            f17_arg1:SetStringIndexedNumber("Odds_Back_AAA", 0)
            f17_arg1:SetStringIndexedNumber("Odds_Sidestep_AAA", 0)
        elseif f17_local0 >= 2 then
            f17_arg1:SetStringIndexedNumber("Odds_NoAct_AAA", 0)
            f17_arg1:SetStringIndexedNumber("Odds_BackAndSide_AAA", 30)
            f17_arg1:SetStringIndexedNumber("Odds_Back_AAA", 10)
            f17_arg1:SetStringIndexedNumber("Odds_Sidestep_AAA", 0)
        else
            f17_arg1:SetStringIndexedNumber("Odds_NoAct_AAA", 0)
            f17_arg1:SetStringIndexedNumber("Odds_BackAndSide_AAA", 10)
            f17_arg1:SetStringIndexedNumber("Odds_Back_AAA", 10)
            f17_arg1:SetStringIndexedNumber("Odds_Sidestep_AAA", 0)
        end
        f17_arg2:AddSubGoal(GOAL_COMMON_AfterAttackAct, 10)
    end
    
end

Goal.Update = function (f18_arg0, f18_arg1, f18_arg2)
    return Update_Default_NoSubGoal(f18_arg0, f18_arg1, f18_arg2)
    
end


