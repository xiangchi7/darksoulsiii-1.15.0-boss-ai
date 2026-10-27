RegisterTableGoal(GOAL_Sullivan_515000_Switch, "GOAL_Sullivan_515000_Switch")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_Sullivan_515000_Switch, true)

Goal.Initialize = function (f1_arg0, f1_arg1, f1_arg2, f1_arg3)
    f1_arg1:SetNumber(0, 0)
    
end

Goal.Activate = function (f2_arg0, f2_arg1, f2_arg2)
    Init_Pseudo_Global(f2_arg1, f2_arg2)
    f2_arg1:SetStringIndexedNumber("Dist_SideStep", 0)
    f2_arg1:SetStringIndexedNumber("Dist_BackStep", 0)
    local f2_local0 = {}
    local f2_local1 = {}
    local f2_local2 = {}
    Common_Clear_Param(f2_local0, f2_local1, f2_local2)
    local f2_local3 = f2_arg1:GetDist(TARGET_ENE_0)
    local f2_local4 = f2_arg1:GetRandam_Int(1, 100)
    local f2_local5 = f2_arg1:GetHpRate(TARGET_SELF)
    if f2_arg1:GetNumber(0) == 0 and not f2_arg1:HasSpecialEffectId(TARGET_SELF, 10931) then
        f2_local0[19] = 100
    elseif not f2_arg1:HasSpecialEffectId(TARGET_SELF, 10930) and f2_local5 <= 0.6 then
        f2_local0[14] = 100
    elseif f2_local3 >= 20 then
        f2_local0[2] = 10
        f2_local0[3] = 40
        f2_local0[18] = 40
        if f2_arg1:HasSpecialEffectId(TARGET_SELF, 10930) then
            f2_local0[17] = 80
        end
    elseif f2_local3 >= 10 then
        f2_local0[2] = 30
        f2_local0[3] = 10
        f2_local0[17] = 30
        f2_local0[18] = 40
    elseif f2_local3 >= 6 then
        if f2_arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 180) then
            f2_local0[10] = 100
        else
            f2_local0[8] = 30
            f2_local0[15] = 30
            f2_local0[17] = 40
            if f2_arg1:HasSpecialEffectId(TARGET_SELF, 10930) then
                f2_local0[16] = 100
            end
        end
    elseif f2_arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 90) and f2_local3 >= 2.2 then
        f2_local0[4] = 10
        f2_local0[5] = 30
        f2_local0[6] = 10
        f2_local0[9] = 20
        f2_local0[12] = 30
        if not f2_arg1:HasSpecialEffectId(TARGET_SELF, 10930) then
            f2_local0[17] = 50
        end
    elseif f2_arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 90) and f2_local3 >= 0.2 then
        f2_local0[4] = 45
        f2_local0[9] = 45
        f2_local0[20] = 10
        if f2_arg1:HasSpecialEffectId(TARGET_SELF, 10930) then
            f2_local0[16] = 50
        end
    elseif f2_arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 90) and f2_local3 >= 0.2 then
        f2_local0[6] = 45
        f2_local0[9] = 45
        f2_local0[20] = 10
        if f2_arg1:HasSpecialEffectId(TARGET_SELF, 10930) then
            f2_local0[16] = 50
        end
    elseif f2_arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 90) and f2_local3 >= -1.5 then
        f2_local0[10] = 90
        f2_local0[20] = 10
    else
        f2_local0[1] = 100
    end
    f2_local0[1] = SetCoolTime(f2_arg1, f2_arg2, 3000, 30, f2_local0[1], 1)
    f2_local0[2] = SetCoolTime(f2_arg1, f2_arg2, 3001, 5, f2_local0[2], 1)
    f2_local0[3] = SetCoolTime(f2_arg1, f2_arg2, 3002, 15, f2_local0[3], 1)
    f2_local0[4] = SetCoolTime(f2_arg1, f2_arg2, 3003, 30, f2_local0[4], 1)
    f2_local0[5] = SetCoolTime(f2_arg1, f2_arg2, 3004, 30, f2_local0[5], 1)
    f2_local0[6] = SetCoolTime(f2_arg1, f2_arg2, 3005, 30, f2_local0[6], 1)
    f2_local0[8] = SetCoolTime(f2_arg1, f2_arg2, 3007, 30, f2_local0[8], 1)
    f2_local0[9] = SetCoolTime(f2_arg1, f2_arg2, 3008, 30, f2_local0[9], 1)
    f2_local0[10] = SetCoolTime(f2_arg1, f2_arg2, 3009, 30, f2_local0[10], 1)
    f2_local0[11] = SetCoolTime(f2_arg1, f2_arg2, 3010, 30, f2_local0[11], 1)
    f2_local0[12] = SetCoolTime(f2_arg1, f2_arg2, 3011, 30, f2_local0[12], 1)
    f2_local0[13] = SetCoolTime(f2_arg1, f2_arg2, 3012, 30, f2_local0[13], 1)
    f2_local0[15] = SetCoolTime(f2_arg1, f2_arg2, 3014, 30, f2_local0[15], 1)
    f2_local0[16] = SetCoolTime(f2_arg1, f2_arg2, 3015, 14, f2_local0[16], 1)
    f2_local0[17] = SetCoolTime(f2_arg1, f2_arg2, 3016, 20, f2_local0[17], 0)
    f2_local0[17] = SetCoolTime(f2_arg1, f2_arg2, 3023, 20, f2_local0[17], 0)
    f2_local0[18] = SetCoolTime(f2_arg1, f2_arg2, 3017, 5, f2_local0[18], 1)
    f2_local1[1] = REGIST_FUNC(f2_arg1, f2_arg2, SulivanNormal_Act01)
    f2_local1[2] = REGIST_FUNC(f2_arg1, f2_arg2, SulivanNormal_Act02)
    f2_local1[3] = REGIST_FUNC(f2_arg1, f2_arg2, SulivanNormal_Act03)
    f2_local1[4] = REGIST_FUNC(f2_arg1, f2_arg2, SulivanNormal_Act04)
    f2_local1[5] = REGIST_FUNC(f2_arg1, f2_arg2, SulivanNormal_Act05)
    f2_local1[6] = REGIST_FUNC(f2_arg1, f2_arg2, SulivanNormal_Act06)
    f2_local1[8] = REGIST_FUNC(f2_arg1, f2_arg2, SulivanNormal_Act08)
    f2_local1[9] = REGIST_FUNC(f2_arg1, f2_arg2, SulivanNormal_Act09)
    f2_local1[10] = REGIST_FUNC(f2_arg1, f2_arg2, SulivanNormal_Act10)
    f2_local1[11] = REGIST_FUNC(f2_arg1, f2_arg2, SulivanNormal_Act11)
    f2_local1[12] = REGIST_FUNC(f2_arg1, f2_arg2, SulivanNormal_Act12)
    f2_local1[13] = REGIST_FUNC(f2_arg1, f2_arg2, SulivanNormal_Act13)
    f2_local1[14] = REGIST_FUNC(f2_arg1, f2_arg2, SulivanNormal_Act14)
    f2_local1[15] = REGIST_FUNC(f2_arg1, f2_arg2, SulivanNormal_Act15)
    f2_local1[16] = REGIST_FUNC(f2_arg1, f2_arg2, SulivanNormal_Act16)
    f2_local1[17] = REGIST_FUNC(f2_arg1, f2_arg2, SulivanNormal_Act17)
    f2_local1[18] = REGIST_FUNC(f2_arg1, f2_arg2, SulivanNormal_Act18)
    f2_local1[19] = REGIST_FUNC(f2_arg1, f2_arg2, SulivanNormal_Act19)
    f2_local1[20] = REGIST_FUNC(f2_arg1, f2_arg2, SulivanNormal_Act20)
    f2_local1[21] = REGIST_FUNC(f2_arg1, f2_arg2, SulivanNormal_Act21)
    f2_local1[22] = REGIST_FUNC(f2_arg1, f2_arg2, SulivanNormal_Act22)
    local f2_local6 = REGIST_FUNC(f2_arg1, f2_arg2, SulivanNormal_ActAfter_AdjustSpace)
    Common_Battle_Activate(f2_arg1, f2_arg2, f2_local0, f2_local1, f2_local6, f2_local2)
    
end

function SulivanNormal_Act01(f3_arg0, f3_arg1, f3_arg2)
    local f3_local0 = 3000
    local f3_local1 = 999
    local f3_local2 = 0
    local f3_local3 = 0
    f3_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f3_local0, TARGET_ENE_0, 999, f3_local2, f3_local3, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function SulivanNormal_Act02(f4_arg0, f4_arg1, f4_arg2)
    local f4_local0 = 999
    local f4_local1 = 0
    local f4_local2 = 0
    local f4_local3 = f4_arg0:GetRandam_Int(1, 100)
    if f4_arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
        f4_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3021, TARGET_ENE_0, f4_local0, f4_local1, f4_local2, 0, 0)
    else
        f4_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3022, TARGET_ENE_0, f4_local0, f4_local1, f4_local2, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function SulivanNormal_Act03(f5_arg0, f5_arg1, f5_arg2)
    local f5_local0 = 3002
    local f5_local1 = 999
    local f5_local2 = 0
    local f5_local3 = 0
    f5_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f5_local0, TARGET_ENE_0, f5_local1, f5_local2, f5_local3, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function SulivanNormal_Act04(f6_arg0, f6_arg1, f6_arg2)
    local f6_local0 = 5
    local f6_local1 = 5 + 999
    local f6_local2 = 5 + 999
    local f6_local3 = 0
    local f6_local4 = 0
    local f6_local5 = 1.5
    local f6_local6 = 1.5
    local f6_local7 = f6_arg0:GetDist(TARGET_ENE_0)
    if f6_local7 <= f6_local0 then
        f6_arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 1.8, TARGET_ENE_0, 5, TARGET_SELF, false, 0):SetLifeEndSuccess(true)
    else
        Approach_Act_Flex(f6_arg0, f6_arg1, f6_local0, f6_local1, f6_local2, f6_local3, f6_local4, f6_local5, f6_local6)
    end
    local f6_local8 = 3003
    local f6_local9 = 999
    local f6_local10 = 0
    local f6_local11 = 0
    f6_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f6_local8, TARGET_ENE_0, f6_local9, f6_local10, f6_local11, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function SulivanNormal_Act05(f7_arg0, f7_arg1, f7_arg2)
    local f7_local0 = 5
    local f7_local1 = 5 + 999
    local f7_local2 = 5 + 999
    local f7_local3 = 0
    local f7_local4 = 0
    local f7_local5 = 1.5
    local f7_local6 = 1.5
    Approach_Act_Flex(f7_arg0, f7_arg1, f7_local0, f7_local1, f7_local2, f7_local3, f7_local4, f7_local5, f7_local6)
    local f7_local7 = 3004
    local f7_local8 = 999
    local f7_local9 = 0
    local f7_local10 = 0
    f7_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f7_local7, TARGET_ENE_0, f7_local8, f7_local9, f7_local10, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function SulivanNormal_Act06(f8_arg0, f8_arg1, f8_arg2)
    local f8_local0 = 5
    local f8_local1 = 5 + 999
    local f8_local2 = 5 + 999
    local f8_local3 = 0
    local f8_local4 = 0
    local f8_local5 = 1.5
    local f8_local6 = 1.5
    local f8_local7 = f8_arg0:GetDist(TARGET_ENE_0)
    if f8_local7 <= f8_local0 then
        f8_arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 1.8, TARGET_ENE_0, 5, TARGET_SELF, false, 0):SetLifeEndSuccess(true)
    else
        Approach_Act_Flex(f8_arg0, f8_arg1, f8_local0, f8_local1, f8_local2, f8_local3, f8_local4, f8_local5, f8_local6)
    end
    local f8_local8 = 3005
    local f8_local9 = 999
    local f8_local10 = 0
    local f8_local11 = 0
    f8_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f8_local8, TARGET_ENE_0, f8_local9, f8_local10, f8_local11, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function SulivanNormal_Act08(f9_arg0, f9_arg1, f9_arg2)
    local f9_local0 = 8
    local f9_local1 = 8 + 999
    local f9_local2 = 8 + 999
    local f9_local3 = 0
    local f9_local4 = 0
    local f9_local5 = 1.5
    local f9_local6 = 1.5
    Approach_Act_Flex(f9_arg0, f9_arg1, f9_local0, f9_local1, f9_local2, f9_local3, f9_local4, f9_local5, f9_local6)
    local f9_local7 = 3007
    local f9_local8 = 999
    local f9_local9 = 0
    local f9_local10 = 0
    f9_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f9_local7, TARGET_ENE_0, f9_local8, f9_local9, f9_local10, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function SulivanNormal_Act09(f10_arg0, f10_arg1, f10_arg2)
    local f10_local0 = 8
    local f10_local1 = 8 + 999
    local f10_local2 = 8 + 999
    local f10_local3 = 0
    local f10_local4 = 0
    local f10_local5 = 1.5
    local f10_local6 = 1.5
    Approach_Act_Flex(f10_arg0, f10_arg1, f10_local0, f10_local1, f10_local2, f10_local3, f10_local4, f10_local5, f10_local6)
    local f10_local7 = 3008
    local f10_local8 = 999
    local f10_local9 = 0
    local f10_local10 = 0
    f10_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f10_local7, TARGET_ENE_0, f10_local8, f10_local9, f10_local10, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function SulivanNormal_Act10(f11_arg0, f11_arg1, f11_arg2)
    local f11_local0 = 10
    local f11_local1 = 10 + 999
    local f11_local2 = 10 + 999
    local f11_local3 = 0
    local f11_local4 = 0
    local f11_local5 = 1.5
    local f11_local6 = 1.5
    Approach_Act_Flex(f11_arg0, f11_arg1, f11_local0, f11_local1, f11_local2, f11_local3, f11_local4, f11_local5, f11_local6)
    local f11_local7 = 3009
    local f11_local8 = 999
    local f11_local9 = 0
    local f11_local10 = 0
    f11_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f11_local7, TARGET_ENE_0, f11_local8, f11_local9, f11_local10, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function SulivanNormal_Act11(f12_arg0, f12_arg1, f12_arg2)
    local f12_local0 = 6.8
    local f12_local1 = 6.8 + 999
    local f12_local2 = 6.8 + 999
    local f12_local3 = 0
    local f12_local4 = 0
    local f12_local5 = 3.5
    local f12_local6 = 3.5
    Approach_Act_Flex(f12_arg0, f12_arg1, f12_local0, f12_local1, f12_local2, f12_local3, f12_local4, f12_local5, f12_local6)
    local f12_local7 = 3010
    local f12_local8 = 999
    local f12_local9 = 0
    local f12_local10 = 0
    f12_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f12_local7, TARGET_ENE_0, f12_local8, f12_local9, f12_local10, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function SulivanNormal_Act12(f13_arg0, f13_arg1, f13_arg2)
    local f13_local0 = 5
    local f13_local1 = 5 + 999
    local f13_local2 = 5 + 999
    local f13_local3 = 0
    local f13_local4 = 0
    local f13_local5 = 1.5
    local f13_local6 = 1.5
    Approach_Act_Flex(f13_arg0, f13_arg1, f13_local0, f13_local1, f13_local2, f13_local3, f13_local4, f13_local5, f13_local6)
    local f13_local7 = 3011
    local f13_local8 = 999
    local f13_local9 = 0
    local f13_local10 = 0
    f13_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f13_local7, TARGET_ENE_0, f13_local8, f13_local9, f13_local10, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function SulivanNormal_Act13(f14_arg0, f14_arg1, f14_arg2)
    local f14_local0 = 3012
    local f14_local1 = 999
    local f14_local2 = 0
    local f14_local3 = 0
    f14_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f14_local0, TARGET_ENE_0, f14_local1, f14_local2, f14_local3, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function SulivanNormal_Act14(f15_arg0, f15_arg1, f15_arg2)
    local f15_local0 = 3024
    local f15_local1 = 999
    local f15_local2 = 0
    local f15_local3 = 0
    f15_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f15_local0, TARGET_ENE_0, f15_local1, f15_local2, f15_local3, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function SulivanNormal_Act15(f16_arg0, f16_arg1, f16_arg2)
    local f16_local0 = 8
    local f16_local1 = 8 + 999
    local f16_local2 = 8 + 999
    local f16_local3 = 0
    local f16_local4 = 0
    local f16_local5 = 1.5
    local f16_local6 = 1.5
    f16_arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 1.8, TARGET_ENE_0, 2, TARGET_SELF, false, 0):SetLifeEndSuccess(true)
    Approach_Act_Flex(f16_arg0, f16_arg1, f16_local0, f16_local1, f16_local2, f16_local3, f16_local4, f16_local5, f16_local6)
    local f16_local7 = 3014
    local f16_local8 = 999
    local f16_local9 = 0
    local f16_local10 = 0
    f16_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f16_local7, TARGET_ENE_0, f16_local8, f16_local9, f16_local10, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function SulivanNormal_Act16(f17_arg0, f17_arg1, f17_arg2)
    local f17_local0 = 3015
    local f17_local1 = 0
    local f17_local2 = 0
    f17_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f17_local0, TARGET_ENE_0, 999, f17_local1, f17_local2, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function SulivanNormal_Act17(f18_arg0, f18_arg1, f18_arg2)
    local f18_local0 = 3016
    local f18_local1 = 999
    local f18_local2 = 0
    local f18_local3 = 0
    local f18_local4 = f18_arg0:GetHpRate(TARGET_SELF)
    if f18_arg0:HasSpecialEffectId(TARGET_SELF, 10930) then
        f18_local0 = 3023
    end
    f18_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f18_local0, TARGET_ENE_0, f18_local1, f18_local2, f18_local3, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function SulivanNormal_Act18(f19_arg0, f19_arg1, f19_arg2)
    local f19_local0 = 3017
    local f19_local1 = 999
    local f19_local2 = 0
    local f19_local3 = 0
    f19_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f19_local0, TARGET_ENE_0, f19_local1, f19_local2, f19_local3, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function SulivanNormal_Act19(f20_arg0, f20_arg1, f20_arg2)
    f20_arg0:SetNumber(0, 1)
    local f20_local0 = 3020
    local f20_local1 = 999
    local f20_local2 = 0
    local f20_local3 = 0
    f20_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f20_local0, TARGET_ENE_0, f20_local1, f20_local2, f20_local3, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function SulivanNormal_Act20(f21_arg0, f21_arg1, f21_arg2)
    f21_arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 90):SetLifeEndSuccess(true)
    f21_arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 1, TARGET_ENE_0, -3, TARGET_SELF, false, 0):SetLifeEndSuccess(true)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function SulivanNormal_Act21(f22_arg0, f22_arg1, f22_arg2)
    f22_arg1:AddSubGoal(GOAL_COMMON_Wait, 0.1, TARGET_NONE, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function SulivanNormal_Act22(f23_arg0, f23_arg1, f23_arg2)
    f23_arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 1, TARGET_ENE_0, 3, TARGET_SELF, false, 0):SetLifeEndSuccess(true)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function SulivanNormal_ActAfter_AdjustSpace(f24_arg0, f24_arg1, f24_arg2)
    
end

Goal.Update = function (f25_arg0, f25_arg1, f25_arg2)
    return Update_Default_NoSubGoal(f25_arg0, f25_arg1, f25_arg2)
    
end

Goal.Terminate = function (f26_arg0, f26_arg1, f26_arg2)
    
end

Goal.Interrupt = function (f27_arg0, f27_arg1, f27_arg2)
    local f27_local0 = f27_arg1:GetDist(TARGET_ENE_0)
    local f27_local1 = f27_arg1:GetRandam_Int(1, 100)
    local f27_local2 = f27_arg1:GetHpRate(TARGET_SELF)
    f27_arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    if f27_arg1:GetSpecialEffectActivateInterruptType(0) == 5025 then
        if not f27_arg1:HasSpecialEffectId(TARGET_SELF, 10930) and f27_local2 <= 0.65 then
            SulivanNormal_Act14(f27_arg1, f27_arg2, paramTbl)
        else
            SulivanNormal_Act13(f27_arg1, f27_arg2, paramTbl)
        end
    end
    f27_arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    if f27_arg1:GetSpecialEffectActivateInterruptType(0) == 5026 and f27_local0 >= 8 and f27_local1 <= 70 then
        f27_arg2:ClearSubGoal()
        f27_arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3018, TARGET_ENE_0, 999, 0, 0)
    end
    f27_arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    if f27_arg1:GetSpecialEffectActivateInterruptType(0) == 5027 and f27_local0 >= 8 and f27_local1 <= 30 then
        f27_arg2:ClearSubGoal()
        f27_arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3002, TARGET_ENE_0, 999, 0, 0)
    end
    return false
    
end


