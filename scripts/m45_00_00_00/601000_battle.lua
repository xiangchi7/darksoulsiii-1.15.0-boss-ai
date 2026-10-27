RegisterTableGoal(GOAL_BossFather_601000_Battle, "GOAL_BossFather_601000")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_BossFather_601000_Battle, true)

Goal.Initialize = function (f1_arg0, f1_arg1, f1_arg2, f1_arg3)
    f1_arg1:SetNumber(0, 0)
    
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
    local f2_local4 = f2_arg1:GetRandam_Int(1, 100)
    local f2_local5 = f2_arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkattr_doAdmirer)
    local f2_local6 = f2_arg1:GetEventRequest()
    local f2_local7 = f2_arg1:GetHpRate(TARGET_SELF)
    f2_arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    if f2_arg1:HasSpecialEffectId(TARGET_SELF, 5404) == true then
        if f2_local7 <= 0.6 and not f2_arg1:HasSpecialEffectId(TARGET_SELF, 13137) == true then
            if f2_local3 >= 5 then
                f2_local0[4] = 40
            else
                f2_local0[12] = 100
            end
        elseif f2_arg1:GetNumber(0) == 0 then
            f2_local0[10] = 100
        elseif f2_arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 180) and f2_arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) and f2_local3 <= 3 then
            f2_local0[7] = 70
            f2_local0[12] = 30
            f2_local0[20] = 1
        elseif f2_arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 180) and f2_arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) and f2_local3 <= 3 then
            f2_local0[6] = 30
            f2_local0[13] = 40
            f2_local0[12] = 30
            f2_local0[20] = 1
        elseif f2_local3 >= 20 then
            f2_local0[15] = 100
        elseif f2_local3 >= 15 then
            f2_local0[1] = 0
            f2_local0[2] = 0
            f2_local0[3] = 0
            f2_local0[4] = 40
            f2_local0[5] = 0
            f2_local0[8] = 40
            f2_local0[9] = 0
            f2_local0[11] = 0
            f2_local0[12] = 0
            f2_local0[15] = 20
        elseif f2_local3 >= 10 then
            f2_local0[1] = 0
            f2_local0[2] = 0
            f2_local0[3] = 0
            f2_local0[4] = 50
            f2_local0[5] = 0
            f2_local0[8] = 20
            f2_local0[9] = 0
            f2_local0[11] = 0
            f2_local0[12] = 0
            f2_local0[15] = 30
        elseif f2_local3 >= 4.5 then
            f2_local0[1] = 0
            f2_local0[2] = 20
            f2_local0[3] = 20
            f2_local0[4] = 40
            f2_local0[5] = 0
            f2_local0[8] = 0
            f2_local0[9] = 0
            f2_local0[11] = 0
            f2_local0[12] = 0
            f2_local0[15] = 20
        elseif f2_local3 >= 2.5 then
            f2_local0[1] = 0
            f2_local0[2] = 20
            f2_local0[3] = 0
            f2_local0[4] = 10
            f2_local0[5] = 20
            f2_local0[8] = 0
            f2_local0[9] = 0
            f2_local0[10] = 0
            f2_local0[11] = 20
            f2_local0[12] = 15
            f2_local0[15] = 15
        else
            f2_local0[1] = 20
            f2_local0[2] = 0
            f2_local0[3] = 0
            f2_local0[4] = 0
            f2_local0[5] = 0
            f2_local0[8] = 0
            f2_local0[9] = 30
            f2_local0[10] = 0
            f2_local0[11] = 20
            f2_local0[12] = 30
        end
    else
        f2_local0[25] = 50
        f2_local0[26] = 50
    end
    if f2_local7 >= 0.6 then
        f2_local0[12] = 0
    end
    f2_local0[1] = SetCoolTime(f2_arg1, f2_arg2, 3000, 15, f2_local0[1], 1)
    f2_local0[2] = SetCoolTime(f2_arg1, f2_arg2, 3001, 15, f2_local0[2], 1)
    f2_local0[3] = SetCoolTime(f2_arg1, f2_arg2, 3003, 15, f2_local0[3], 1)
    f2_local0[4] = SetCoolTime(f2_arg1, f2_arg2, 3006, 40, f2_local0[4], 1)
    f2_local0[5] = SetCoolTime(f2_arg1, f2_arg2, 3008, 15, f2_local0[5], 1)
    f2_local0[6] = SetCoolTime(f2_arg1, f2_arg2, 3010, 15, f2_local0[6], 1)
    f2_local0[7] = SetCoolTime(f2_arg1, f2_arg2, 3011, 15, f2_local0[7], 1)
    f2_local0[8] = SetCoolTime(f2_arg1, f2_arg2, 3015, 15, f2_local0[8], 0)
    f2_local0[9] = SetCoolTime(f2_arg1, f2_arg2, 3016, 15, f2_local0[9], 1)
    f2_local0[11] = SetCoolTime(f2_arg1, f2_arg2, 3012, 15, f2_local0[11], 1)
    f2_local0[12] = SetCoolTime(f2_arg1, f2_arg2, 3013, 80, f2_local0[12], 1)
    f2_local0[13] = SetCoolTime(f2_arg1, f2_arg2, 3014, 15, f2_local0[13], 1)
    f2_local0[14] = SetCoolTime(f2_arg1, f2_arg2, 3019, 90, f2_local0[14], 0)
    f2_local0[15] = SetCoolTime(f2_arg1, f2_arg2, 3021, 60, f2_local0[15], 1)
    f2_local1[1] = REGIST_FUNC(f2_arg1, f2_arg2, BossFather_601000_Act01)
    f2_local1[2] = REGIST_FUNC(f2_arg1, f2_arg2, BossFather_601000_Act02)
    f2_local1[3] = REGIST_FUNC(f2_arg1, f2_arg2, BossFather_601000_Act03)
    f2_local1[4] = REGIST_FUNC(f2_arg1, f2_arg2, BossFather_601000_Act04)
    f2_local1[5] = REGIST_FUNC(f2_arg1, f2_arg2, BossFather_601000_Act05)
    f2_local1[6] = REGIST_FUNC(f2_arg1, f2_arg2, BossFather_601000_Act06)
    f2_local1[7] = REGIST_FUNC(f2_arg1, f2_arg2, BossFather_601000_Act07)
    f2_local1[8] = REGIST_FUNC(f2_arg1, f2_arg2, BossFather_601000_Act08)
    f2_local1[9] = REGIST_FUNC(f2_arg1, f2_arg2, BossFather_601000_Act09)
    f2_local1[10] = REGIST_FUNC(f2_arg1, f2_arg2, BossFather_601000_Act10)
    f2_local1[11] = REGIST_FUNC(f2_arg1, f2_arg2, BossFather_601000_Act11)
    f2_local1[12] = REGIST_FUNC(f2_arg1, f2_arg2, BossFather_601000_Act12)
    f2_local1[13] = REGIST_FUNC(f2_arg1, f2_arg2, BossFather_601000_Act13)
    f2_local1[14] = REGIST_FUNC(f2_arg1, f2_arg2, BossFather_601000_Act14)
    f2_local1[15] = REGIST_FUNC(f2_arg1, f2_arg2, BossFather_601000_Act15)
    f2_local1[20] = REGIST_FUNC(f2_arg1, f2_arg2, BossFather_601000_Act20)
    f2_local1[25] = REGIST_FUNC(f2_arg1, f2_arg2, BossFather_601000_Act25)
    f2_local1[26] = REGIST_FUNC(f2_arg1, f2_arg2, BossFather_601000_Act26)
    local f2_local8 = REGIST_FUNC(f2_arg1, f2_arg2, BossFather_ActAfter_AdjustSpace)
    Common_Battle_Activate(f2_arg1, f2_arg2, f2_local0, f2_local1, f2_local8, f2_local2)
    
end

function BossFather_601000_Act01(f3_arg0, f3_arg1, f3_arg2)
    local f3_local0 = 3000
    local f3_local1 = 999
    local f3_local2 = 0
    local f3_local3 = 0
    local f3_local4 = f3_arg0:GetRandam_Int(1, 100)
    f3_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f3_local0, TARGET_ENE_0, f3_local1, f3_local2, f3_local3, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function BossFather_601000_Act02(f4_arg0, f4_arg1, f4_arg2)
    local f4_local0 = 4.54
    local f4_local1 = 4.54 + 2
    local f4_local2 = 4.54 + 2
    local f4_local3 = 100
    local f4_local4 = 0
    local f4_local5 = 1.8
    local f4_local6 = 1.8
    Approach_Act_Flex(f4_arg0, f4_arg1, f4_local0, f4_local1, f4_local2, f4_local3, f4_local4, f4_local5, f4_local6)
    local f4_local7 = 3001
    local f4_local8 = 999
    local f4_local9 = 0
    local f4_local10 = 0
    local f4_local11 = f4_arg0:GetRandam_Int(1, 100)
    f4_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f4_local7, TARGET_ENE_0, f4_local8, f4_local9, f4_local10, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function BossFather_601000_Act03(f5_arg0, f5_arg1, f5_arg2)
    local f5_local0 = 5.57
    local f5_local1 = 5.57 + 2
    local f5_local2 = 5.57 + 2
    local f5_local3 = 100
    local f5_local4 = 0
    local f5_local5 = 1.8
    local f5_local6 = 1.8
    Approach_Act_Flex(f5_arg0, f5_arg1, f5_local0, f5_local1, f5_local2, f5_local3, f5_local4, f5_local5, f5_local6)
    local f5_local7 = 3003
    local f5_local8 = 999
    local f5_local9 = 0
    local f5_local10 = 0
    local f5_local11 = f5_arg0:GetRandam_Int(1, 100)
    f5_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f5_local7, TARGET_ENE_0, f5_local8, f5_local9, f5_local10, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function BossFather_601000_Act04(f6_arg0, f6_arg1, f6_arg2)
    local f6_local0 = 99
    local f6_local1 = 99 + 2
    local f6_local2 = 99 + 2
    local f6_local3 = 100
    local f6_local4 = 0
    local f6_local5 = 1.8
    local f6_local6 = 1.8
    Approach_Act_Flex(f6_arg0, f6_arg1, f6_local0, f6_local1, f6_local2, f6_local3, f6_local4, f6_local5, f6_local6)
    local f6_local7 = 3006
    local f6_local8 = 999
    local f6_local9 = 3
    local f6_local10 = 60
    local f6_local11 = f6_arg0:GetRandam_Int(1, 100)
    f6_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f6_local7, TARGET_ENE_0, 5.57, f6_local9, f6_local10, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function BossFather_601000_Act05(f7_arg0, f7_arg1, f7_arg2)
    local f7_local0 = 4.66
    local f7_local1 = 4.66 + 2
    local f7_local2 = 4.66 + 2
    local f7_local3 = 100
    local f7_local4 = 0
    local f7_local5 = 1.8
    local f7_local6 = 1.8
    Approach_Act_Flex(f7_arg0, f7_arg1, f7_local0, f7_local1, f7_local2, f7_local3, f7_local4, f7_local5, f7_local6)
    local f7_local7 = 3008
    local f7_local8 = 999
    local f7_local9 = 0
    local f7_local10 = 0
    local f7_local11 = f7_arg0:GetRandam_Int(1, 100)
    f7_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, f7_local7, TARGET_ENE_0, f7_local8, f7_local9, f7_local10, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function BossFather_601000_Act06(f8_arg0, f8_arg1, f8_arg2)
    local f8_local0 = 99
    local f8_local1 = 99 + 2
    local f8_local2 = 99 + 2
    local f8_local3 = 100
    local f8_local4 = 0
    local f8_local5 = 1.8
    local f8_local6 = 1.8
    Approach_Act_Flex(f8_arg0, f8_arg1, f8_local0, f8_local1, f8_local2, f8_local3, f8_local4, f8_local5, f8_local6)
    local f8_local7 = 3010
    local f8_local8 = 999
    local f8_local9 = 0
    local f8_local10 = 0
    local f8_local11 = f8_arg0:GetRandam_Int(1, 100)
    f8_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f8_local7, TARGET_ENE_0, f8_local8, f8_local9, f8_local10, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function BossFather_601000_Act07(f9_arg0, f9_arg1, f9_arg2)
    local f9_local0 = 99
    local f9_local1 = 99 + 2
    local f9_local2 = 99 + 2
    local f9_local3 = 100
    local f9_local4 = 0
    local f9_local5 = 1.8
    local f9_local6 = 1.8
    Approach_Act_Flex(f9_arg0, f9_arg1, f9_local0, f9_local1, f9_local2, f9_local3, f9_local4, f9_local5, f9_local6)
    local f9_local7 = 3011
    local f9_local8 = 999
    local f9_local9 = 0
    local f9_local10 = 0
    local f9_local11 = f9_arg0:GetRandam_Int(1, 100)
    f9_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f9_local7, TARGET_ENE_0, f9_local8, f9_local9, f9_local10, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function BossFather_601000_Act08(f10_arg0, f10_arg1, f10_arg2)
    local f10_local0 = 15
    local f10_local1 = 15 + 2
    local f10_local2 = 15 + 2
    local f10_local3 = 100
    local f10_local4 = 0
    local f10_local5 = 1.8
    local f10_local6 = 1.8
    Approach_Act_Flex(f10_arg0, f10_arg1, f10_local0, f10_local1, f10_local2, f10_local3, f10_local4, f10_local5, f10_local6)
    local f10_local7 = 3015
    local f10_local8 = 999
    local f10_local9 = 0
    local f10_local10 = 0
    local f10_local11 = f10_arg0:GetRandam_Int(1, 100)
    f10_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, f10_local7, TARGET_ENE_0, f10_local8, f10_local9, f10_local10, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function BossFather_601000_Act09(f11_arg0, f11_arg1, f11_arg2)
    local f11_local0 = 99
    local f11_local1 = 99 + 2
    local f11_local2 = 99 + 2
    local f11_local3 = 100
    local f11_local4 = 0
    local f11_local5 = 1.8
    local f11_local6 = 1.8
    Approach_Act_Flex(f11_arg0, f11_arg1, f11_local0, f11_local1, f11_local2, f11_local3, f11_local4, f11_local5, f11_local6)
    local f11_local7 = 3016
    local f11_local8 = 999
    local f11_local9 = 0
    local f11_local10 = 0
    local f11_local11 = f11_arg0:GetRandam_Int(1, 100)
    f11_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f11_local7, TARGET_ENE_0, f11_local8, f11_local9, f11_local10, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function BossFather_601000_Act10(f12_arg0, f12_arg1, f12_arg2)
    f12_arg0:SetNumber(0, 1)
    local f12_local0 = 3020
    local f12_local1 = 999
    local f12_local2 = 0
    local f12_local3 = 0
    local f12_local4 = f12_arg0:GetRandam_Int(1, 100)
    f12_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f12_local0, TARGET_ENE_0, f12_local1, f12_local2, f12_local3, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function BossFather_601000_Act11(f13_arg0, f13_arg1, f13_arg2)
    local f13_local0 = 2.8
    local f13_local1 = 2.8 + 2
    local f13_local2 = 2.8 + 2
    local f13_local3 = 100
    local f13_local4 = 0
    local f13_local5 = 1.8
    local f13_local6 = 1.8
    Approach_Act_Flex(f13_arg0, f13_arg1, f13_local0, f13_local1, f13_local2, f13_local3, f13_local4, f13_local5, f13_local6)
    local f13_local7 = 3012
    local f13_local8 = 999
    local f13_local9 = 0
    local f13_local10 = 0
    local f13_local11 = f13_arg0:GetRandam_Int(1, 100)
    f13_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f13_local7, TARGET_ENE_0, f13_local8, f13_local9, f13_local10, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function BossFather_601000_Act12(f14_arg0, f14_arg1, f14_arg2)
    local f14_local0 = 4
    local f14_local1 = 4 + 2
    local f14_local2 = 4 + 2
    local f14_local3 = 100
    local f14_local4 = 0
    local f14_local5 = 3
    local f14_local6 = 3
    Approach_Act_Flex(f14_arg0, f14_arg1, f14_local0, f14_local1, f14_local2, f14_local3, f14_local4, f14_local5, f14_local6)
    local f14_local7 = 3013
    local f14_local8 = 999
    local f14_local9 = 0
    local f14_local10 = 0
    local f14_local11 = f14_arg0:GetRandam_Int(1, 100)
    f14_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f14_local7, TARGET_ENE_0, f14_local8, f14_local9, f14_local10, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function BossFather_601000_Act13(f15_arg0, f15_arg1, f15_arg2)
    local f15_local0 = 3014
    local f15_local1 = 999
    local f15_local2 = 0
    local f15_local3 = 0
    local f15_local4 = f15_arg0:GetRandam_Int(1, 100)
    f15_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f15_local0, TARGET_ENE_0, f15_local1, f15_local2, f15_local3, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function BossFather_601000_Act14(f16_arg0, f16_arg1, f16_arg2)
    f16_arg0:SetTimer(1, 60)
    local f16_local0 = 3019
    local f16_local1 = 999
    local f16_local2 = 0
    local f16_local3 = 0
    local f16_local4 = f16_arg0:GetRandam_Int(1, 100)
    f16_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f16_local0, TARGET_ENE_0, f16_local1, f16_local2, f16_local3, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function BossFather_601000_Act15(f17_arg0, f17_arg1, f17_arg2)
    local f17_local0 = 3021
    local f17_local1 = 999
    local f17_local2 = 3
    local f17_local3 = 60
    local f17_local4 = f17_arg0:GetRandam_Int(1, 100)
    f17_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 20, f17_local0, TARGET_ENE_0, 5.57, f17_local2, f17_local3, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function BossFather_601000_Act20(f18_arg0, f18_arg1, f18_arg2)
    f18_arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 90)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BossFather_601000_Act25(f19_arg0, f19_arg1, f19_arg2)
    f19_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 60, 30002, TARGET_ENE_0, 999, TurnTime, FrontAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BossFather_601000_Act26(f20_arg0, f20_arg1, f20_arg2)
    f20_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 60, 30002, TARGET_ENE_0, 999, TurnTime, FrontAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Update = function (f21_arg0, f21_arg1, f21_arg2)
    return Update_Default_NoSubGoal(f21_arg0, f21_arg1, f21_arg2)
    
end

Goal.Terminate = function (f22_arg0, f22_arg1, f22_arg2)
    
end

Goal.Interrupt = function (f23_arg0, f23_arg1, f23_arg2)
    if f23_arg1:GetSpecialEffectActivateInterruptType(0) == 5025 then
        local f23_local0 = f23_arg1:GetDist(TARGET_ENE_0)
        if f23_local0 <= 5 then
            f23_arg2:ClearSubGoal()
            f23_arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, 999, 0, 0)
        else
            f23_arg2:ClearSubGoal()
            f23_arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, 999, 0, 0)
        end
    end
    
end

function BossFather_ActAfter_AdjustSpace(f24_arg0, f24_arg1, f24_arg2)
    
end


