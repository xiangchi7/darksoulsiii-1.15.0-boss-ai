RegisterTableGoal(GOAL_BossDaughterHU_602010_Battle, "GOAL_BossDaughterHU_602010_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_BossDaughterHU_602010_Battle, true)

Goal.Initialize = function (f1_arg0, f1_arg1, f1_arg2, f1_arg3)
    f1_arg1:SetNumber(5, 0)
    f1_arg1:SetTimer(1, 30)
    
end

Goal.Activate = function (f2_arg0, f2_arg1, f2_arg2)
    Init_Pseudo_Global(f2_arg1, f2_arg2)
    f2_arg1:SetStringIndexedNumber("Dist_SideStep", 5)
    f2_arg1:SetStringIndexedNumber("Dist_BackStep", 5)
    local f2_local0 = {}
    local f2_local1 = {}
    local f2_local2 = {}
    Common_Clear_Param(f2_local0, f2_local1, f2_local2)
    f2_arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 13210)
    local f2_local3 = f2_arg1:GetDist(TARGET_ENE_0)
    local f2_local4 = f2_arg1:GetDist(TARGET_FRI_0)
    local f2_local5 = f2_arg1:GetHpRate(TARGET_FRI_0)
    local f2_local6 = f2_arg1:IsSearchTarget(TARGET_FRI_0)
    local f2_local7 = f2_arg1:GetRandam_Int(1, 100)
    local f2_local8 = f2_arg1:GetHpRate(TARGET_SELF)
    local f2_local9 = f2_arg1:GetEventRequest(0)
    local f2_local10 = f2_arg1:HasSpecialEffectId(TARGET_SELF, 13210)
    local f2_local11 = f2_arg1:GetTimer(1)
    f2_arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 13210)
    if f2_arg1:GetNumber(5) == 0 then
        f2_local0[70] = 100
    elseif f2_local4 < 4 and f2_local3 >= 8 and f2_local6 == true and f2_arg1:IsFinishTimer(5) == true then
        f2_arg1:SetTimer(5, 5)
        if SpaceCheck(f2_arg1, f2_arg2, 90, 5) == true and SpaceCheck(f2_arg1, f2_arg2, -90, 5) == true then
            f2_local0[83] = 40
            f2_local0[84] = 40
            f2_local0[90] = 20
            f2_local0[81] = 1
        elseif SpaceCheck(f2_arg1, f2_arg2, 90, 5) == true then
            f2_local0[83] = 80
            f2_local0[90] = 20
            f2_local0[81] = 1
        elseif SpaceCheck(f2_arg1, f2_arg2, -90, 5) == true then
            f2_local0[84] = 80
            f2_local0[90] = 20
            f2_local0[81] = 1
        else
            f2_local0[79] = 80
            f2_local0[90] = 20
            f2_local0[81] = 1
        end
    elseif f2_local3 >= 25 then
        f2_local0[79] = 20
    elseif InsideRange(f2_arg1, f2_arg2, 180, 180, -999, 20) then
        f2_local0[83] = 20
        f2_local0[84] = 20
        f2_local0[80] = 60
        if SpaceCheck(f2_arg1, f2_arg2, 90, 5) == false then
            f2_local0[83] = 0
        end
        if SpaceCheck(f2_arg1, f2_arg2, -90, 5) == false then
            f2_local0[84] = 0
        end
    elseif f2_local3 >= 7 then
        f2_local0[1] = 10
        f2_local0[2] = 10
        f2_local0[3] = 0
        f2_local0[4] = 30
        f2_local0[5] = 0
        f2_local0[6] = 0
        f2_local0[7] = 40
        f2_local0[81] = 10
    elseif f2_local3 >= 4 then
        f2_local0[1] = 0
        f2_local0[2] = 0
        f2_local0[3] = 0
        f2_local0[4] = 20
        f2_local0[5] = 0
        f2_local0[6] = 0
        f2_local0[7] = 30
        f2_local0[8] = 0
        f2_local0[82] = 10
        f2_local0[86] = 20
        f2_local0[87] = 20
    else
        f2_local0[1] = 0
        f2_local0[2] = 0
        f2_local0[3] = 30
        f2_local0[4] = 20
        f2_local0[5] = 0
        f2_local0[6] = 10
        f2_local0[7] = 0
        f2_local0[8] = 20
        f2_local0[86] = 10
        f2_local0[87] = 10
    end
    if f2_local5 >= 0.7 then
        f2_local0[4] = 0
    end
    if f2_local6 == false then
        f2_local0[4] = 0
    end
    f2_local0[1] = SetCoolTime(f2_arg1, f2_arg2, 3000, 8, f2_local0[1], 1)
    f2_local0[2] = SetCoolTime(f2_arg1, f2_arg2, 3005, 8, f2_local0[2], 1)
    f2_local0[3] = SetCoolTime(f2_arg1, f2_arg2, 3032, 8, f2_local0[3], 1)
    f2_local0[4] = SetCoolTime(f2_arg1, f2_arg2, 3020, 65, f2_local0[4], 0)
    f2_local0[5] = SetCoolTime(f2_arg1, f2_arg2, 3021, 65, f2_local0[5], 0)
    f2_local0[6] = SetCoolTime(f2_arg1, f2_arg2, 3008, 8, f2_local0[6], 1)
    f2_local0[7] = SetCoolTime(f2_arg1, f2_arg2, 3033, 5, f2_local0[7], 1)
    f2_local0[8] = SetCoolTime(f2_arg1, f2_arg2, 3202, 30, f2_local0[8], 0)
    f2_local0[82] = SetCoolTime(f2_arg1, f2_arg2, 6002, 8, f2_local0[83], 1)
    f2_local0[82] = SetCoolTime(f2_arg1, f2_arg2, 6003, 8, f2_local0[83], 1)
    f2_local0[83] = SetCoolTime(f2_arg1, f2_arg2, 3023, 5, f2_local0[83], 1)
    f2_local0[83] = SetCoolTime(f2_arg1, f2_arg2, 3024, 5, f2_local0[83], 1)
    f2_local0[84] = SetCoolTime(f2_arg1, f2_arg2, 3023, 5, f2_local0[84], 1)
    f2_local0[84] = SetCoolTime(f2_arg1, f2_arg2, 3024, 5, f2_local0[84], 1)
    f2_local0[86] = SetCoolTime(f2_arg1, f2_arg2, 6001, 5, f2_local0[86], 1)
    f2_local1[1] = REGIST_FUNC(f2_arg1, f2_arg2, BossDaughterHU_602010_Act01)
    f2_local1[2] = REGIST_FUNC(f2_arg1, f2_arg2, BossDaughterHU_602010_Act02)
    f2_local1[3] = REGIST_FUNC(f2_arg1, f2_arg2, BossDaughterHU_602010_Act03)
    f2_local1[4] = REGIST_FUNC(f2_arg1, f2_arg2, BossDaughterHU_602010_Act04)
    f2_local1[5] = REGIST_FUNC(f2_arg1, f2_arg2, BossDaughterHU_602010_Act05)
    f2_local1[6] = REGIST_FUNC(f2_arg1, f2_arg2, BossDaughterHU_602010_Act06)
    f2_local1[7] = REGIST_FUNC(f2_arg1, f2_arg2, BossDaughterHU_602010_Act07)
    f2_local1[8] = REGIST_FUNC(f2_arg1, f2_arg2, BossDaughterHU_602010_Act08)
    f2_local1[70] = REGIST_FUNC(f2_arg1, f2_arg2, BossDaughterHU_602010_Act70)
    f2_local1[79] = REGIST_FUNC(f2_arg1, f2_arg2, BossDaughterHU_602010_Act79)
    f2_local1[80] = REGIST_FUNC(f2_arg1, f2_arg2, BossDaughterHU_602010_Act80)
    f2_local1[81] = REGIST_FUNC(f2_arg1, f2_arg2, BossDaughterHU_602010_Act81)
    f2_local1[82] = REGIST_FUNC(f2_arg1, f2_arg2, BossDaughterHU_602010_Act82)
    f2_local1[83] = REGIST_FUNC(f2_arg1, f2_arg2, BossDaughterHU_602010_Act83)
    f2_local1[84] = REGIST_FUNC(f2_arg1, f2_arg2, BossDaughterHU_602010_Act84)
    f2_local1[85] = REGIST_FUNC(f2_arg1, f2_arg2, BossDaughterHU_602010_Act85)
    f2_local1[86] = REGIST_FUNC(f2_arg1, f2_arg2, BossDaughterHU_602010_Act86)
    f2_local1[87] = REGIST_FUNC(f2_arg1, f2_arg2, BossDaughterHU_602010_Act87)
    f2_local1[88] = REGIST_FUNC(f2_arg1, f2_arg2, BossDaughterHU_602010_Act88)
    f2_local1[89] = REGIST_FUNC(f2_arg1, f2_arg2, BossDaughterHU_602010_Act89)
    f2_local1[90] = REGIST_FUNC(f2_arg1, f2_arg2, BossDaughterHU_602010_Act90)
    f2_local1[91] = REGIST_FUNC(f2_arg1, f2_arg2, BossDaughterHU_602010_Act91)
    f2_local1[92] = REGIST_FUNC(f2_arg1, f2_arg2, BossDaughterHU_602010_Act92)
    local f2_local12 = REGIST_FUNC(f2_arg1, f2_arg2, BossDaughterHU_602010_ActAfter_AdjustSpace)
    Common_Battle_Activate(f2_arg1, f2_arg2, f2_local0, f2_local1, f2_local12, f2_local2)
    
end

function BossDaughterHU_602010_Act01(f3_arg0, f3_arg1, f3_arg2)
    local f3_local0 = 7
    local f3_local1 = f3_local0
    local f3_local2 = f3_local0
    local f3_local3 = 0
    local f3_local4 = 0
    local f3_local5 = 4
    local f3_local6 = 4
    local f3_local7 = 0
    Approach_Act_Flex(f3_arg0, f3_arg1, f3_local0, f3_local1, f3_local2, f3_local3, f3_local4, f3_local5, f3_local6)
    local f3_local8 = 5.5 - f3_arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local9 = 0
    local f3_local10 = 0
    local f3_local11 = f3_arg0:GetRandam_Int(1, 100)
    local f3_local12 = f3_arg0:GetRandam_Int(1, 100)
    local f3_local13 = f3_arg0:GetRandam_Int(1, 100)
    local f3_local14 = f3_arg0:GetRandam_Int(0, 1)
    f3_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, 12, f3_local9, f3_local10, 0, 0)
    f3_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, 10, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function BossDaughterHU_602010_Act02(f4_arg0, f4_arg1, f4_arg2)
    local f4_local0 = 7
    local f4_local1 = f4_local0
    local f4_local2 = f4_local0
    local f4_local3 = 0
    local f4_local4 = 0
    local f4_local5 = 4
    local f4_local6 = 4
    local f4_local7 = 0
    Approach_Act_Flex(f4_arg0, f4_arg1, f4_local0, f4_local1, f4_local2, f4_local3, f4_local4, f4_local5, f4_local6)
    local f4_local8 = 5.5 - f4_arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local9 = 0
    local f4_local10 = 0
    local f4_local11 = f4_arg0:GetRandam_Int(1, 100)
    local f4_local12 = f4_arg0:GetRandam_Int(1, 100)
    local f4_local13 = f4_arg0:GetRandam_Int(1, 100)
    f4_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3005, TARGET_ENE_0, 10, f4_local9, f4_local10, 0, 0)
    f4_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3004, TARGET_ENE_0, 8, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function BossDaughterHU_602010_Act03(f5_arg0, f5_arg1, f5_arg2)
    local f5_local0 = 5.5 - f5_arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local1 = 0
    local f5_local2 = 0
    local f5_local3 = f5_arg0:GetRandam_Int(1, 100)
    f5_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3032, TARGET_ENE_0, f5_local0, f5_local1, f5_local2, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function BossDaughterHU_602010_Act04(f6_arg0, f6_arg1, f6_arg2)
    local f6_local0 = 5.5 - f6_arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local1 = 0
    local f6_local2 = 0
    local f6_local3 = f6_arg0:GetRandam_Int(1, 100)
    f6_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3020, TARGET_ENE_0, 999, 0, 0):SetLifeEndSuccess(true)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BossDaughterHU_602010_Act05(f7_arg0, f7_arg1, f7_arg2)
    f7_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3021, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function BossDaughterHU_602010_Act06(f8_arg0, f8_arg1, f8_arg2)
    local f8_local0 = 7
    local f8_local1 = f8_local0
    local f8_local2 = f8_local0
    local f8_local3 = 0
    local f8_local4 = 0
    local f8_local5 = 4
    local f8_local6 = 4
    local f8_local7 = 0
    Approach_Act_Flex(f8_arg0, f8_arg1, f8_local0, f8_local1, f8_local2, f8_local3, f8_local4, f8_local5, f8_local6)
    f8_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3008, TARGET_ENE_0, 30, TurnTime, FrontAngle, 0, 0)
    f8_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3009, TARGET_ENE_0, 10, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function BossDaughterHU_602010_Act07(f9_arg0, f9_arg1, f9_arg2)
    f9_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3034, TARGET_ENE_0, 999, 0, 0)
    f9_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3033, TARGET_ENE_0, 10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BossDaughterHU_602010_Act08(f10_arg0, f10_arg1, f10_arg2)
    f10_arg1:AddSubGoal(GOAL_COMMON_ApproachTarget_AlwaysGuard, 1, TARGET_ENE_0, 0, TARGET_SELF, false, 9920):SetLifeEndSuccess(true)
    f10_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3202, TARGET_ENE_0, 10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BossDaughterHU_602010_Act70(f11_arg0, f11_arg1, f11_arg2)
    local f11_local0 = f11_arg0:GetDist(TARGET_ENE_0)
    if f11_local0 <= 5 then
        f11_arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6001, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
    else
        f11_arg0:SetNumber(5, 1)
        f11_arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 3.5, TARGET_ENE_0, 5, TARGET_SELF, false, 0):SetLifeEndSuccess(true)
        GetWellSpace_Odds = 0
    end
    return GetWellSpace_Odds
    
end

function BossDaughterHU_602010_Act79(f12_arg0, f12_arg1, f12_arg2)
    local f12_local0 = 5.5 - f12_arg0:GetMapHitRadius(TARGET_SELF)
    local f12_local1 = 0
    local f12_local2 = 0
    local f12_local3 = f12_arg0:GetRandam_Int(1, 100)
    f12_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3025, TARGET_ENE_0, f12_local0, f12_local1, f12_local2, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BossDaughterHU_602010_Act80(f13_arg0, f13_arg1, f13_arg2)
    f13_arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, f13_arg0:GetRandam_Int(20, 30))
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BossDaughterHU_602010_Act81(f14_arg0, f14_arg1, f14_arg2)
    local f14_local0 = 0
    local f14_local1 = f14_arg0:GetRandam_Int(1, 100)
    local f14_local2 = f14_arg0:GetDist(TARGET_ENE_0)
    local f14_local3 = f14_arg0:GetRandam_Float(1.6, 2.5)
    f14_arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f14_local3, TARGET_ENE_0, f14_arg0:GetRandam_Int(0, 1), f14_arg0:GetRandam_Int(50, 65), true, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BossDaughterHU_602010_Act82(f15_arg0, f15_arg1, f15_arg2)
    local f15_local0 = f15_arg0:GetRandam_Int(1, 2)
    local f15_local1 = 6002
    if f15_local0 == 1 then
        f15_local1 = 6003
    end
    f15_arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, f15_local1, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BossDaughterHU_602010_Act83(f16_arg0, f16_arg1, f16_arg2)
    local f16_local0 = 5.5 - f16_arg0:GetMapHitRadius(TARGET_SELF)
    local f16_local1 = 0
    local f16_local2 = 0
    local f16_local3 = f16_arg0:GetRandam_Int(1, 100)
    f16_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3023, TARGET_FRI_0, f16_local0, f16_local1, f16_local2, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BossDaughterHU_602010_Act84(f17_arg0, f17_arg1, f17_arg2)
    local f17_local0 = 5.5 - f17_arg0:GetMapHitRadius(TARGET_SELF)
    local f17_local1 = 0
    local f17_local2 = 0
    local f17_local3 = f17_arg0:GetRandam_Int(1, 100)
    f17_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3024, TARGET_FRI_0, f17_local0, f17_local1, f17_local2, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BossDaughterHU_602010_Act85(f18_arg0, f18_arg1, f18_arg2)
    f18_arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6000, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BossDaughterHU_602010_Act86(f19_arg0, f19_arg1, f19_arg2)
    f19_arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6001, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BossDaughterHU_602010_Act87(f20_arg0, f20_arg1, f20_arg2)
    local f20_local0 = f20_arg0:GetDist(TARGET_ENE_0)
    local f20_local1 = 10
    local f20_local2 = 12
    local f20_local3 = 0
    f20_arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 1, TARGET_ENE_0, f20_local0 + 5, TARGET_ENE_0, true, -1)
    
end

function BossDaughterHU_602010_Act88(f21_arg0, f21_arg1, f21_arg2)
    f21_arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6002, TARGET_ENE_0, 0, AI_DIR_TYPE_L, f21_arg0:GetStringIndexedNumber("Dist_SideStep"))
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BossDaughterHU_602010_Act89(f22_arg0, f22_arg1, f22_arg2)
    f22_arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6003, TARGET_ENE_0, 0, AI_DIR_TYPE_R, f22_arg0:GetStringIndexedNumber("Dist_SideStep"))
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BossDaughterHU_602010_Act90(f23_arg0, f23_arg1, f23_arg2)
    f23_arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6001, TARGET_FRI_0, 0, AI_DIR_TYPE_F, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BossDaughterHU_602010_Act91(f24_arg0, f24_arg1, f24_arg2)
    f24_arg0:SetTimer(3, 40)
    f24_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3021, TARGET_FRI_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BossDaughterHU_602010_Act92(f25_arg0, f25_arg1, f25_arg2)
    f25_arg1:ClearSubGoal()
    f25_arg1:AddSubGoal(GOAL_COMMON_SpinStep, 1, 3036, TARGET_ENE_0, 0, AI_DIR_TYPE_F, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BossDaughterHU_602010_ActAfter_AdjustSpace(f26_arg0, f26_arg1, f26_arg2)
    f26_arg1:AddSubGoal(GOAL_BossDaughterHU_602010_AfterAttackAct, 10)
    
end

Goal.Update = function (f27_arg0, f27_arg1, f27_arg2)
    return Update_Default_NoSubGoal(f27_arg0, f27_arg1, f27_arg2)
    
end

Goal.Terminate = function (f28_arg0, f28_arg1, f28_arg2)
    
end

Goal.Interrupt = function (f29_arg0, f29_arg1, f29_arg2)
    local f29_local0 = f29_arg1:GetDist(TARGET_ENE_0)
    local f29_local1 = f29_arg1:GetRandam_Int(1, 100)
    local f29_local2 = f29_arg1:GetRandam_Int(1, 100)
    local f29_local3 = f29_arg1:GetRandam_Int(1, 100)
    if f29_arg1:IsInterupt(INTERUPT_Shoot) and not f29_arg1:HasSpecialEffectId(TARGET_SELF, 13210) then
        if f29_arg1:IsInsideTargetEx(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_F, 20, 999) then
            local f29_local4 = f29_arg1:GetDist(TARGET_ENE_0)
            if f29_local1 <= 60 and f29_local4 >= 16 then
                f29_arg2:ClearSubGoal()
                f29_arg2:AddSubGoal(GOAL_COMMON_SpinStep, 1, 3036, TARGET_ENE_0, 0, AI_DIR_TYPE_F, 0)
            elseif f29_local4 >= 10 then
                f29_arg2:ClearSubGoal()
                f29_arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3025, TARGET_ENE_0, SuccessDist, TurnTime, FrontAngle, 0, 0)
            elseif f29_local4 <= 5 then
                f29_arg2:ClearSubGoal()
                BossDaughterHU_602010_Act82(f29_arg1, f29_arg2, paramTbl)
            end
            return true
        elseif f29_local0 >= 9 then
            f29_arg2:ClearSubGoal()
            f29_arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3025, TARGET_ENE_0, SuccessDist, TurnTime, FrontAngle, 0, 0)
        elseif f29_local0 <= 5 then
            if f29_local1 <= 50 then
                f29_arg2:ClearSubGoal()
                f29_arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3202, TARGET_ENE_0, SuccessDist, TurnTime, FrontAngle, 0, 0)
            else
                f29_arg2:ClearSubGoal()
                f29_arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3200, TARGET_ENE_0, SuccessDist, TurnTime, FrontAngle, 0, 0)
            end
        end
    end
    if f29_arg1:GetSpecialEffectActivateInterruptType(0) == 13210 then
        if f29_local0 >= 8 then
            if f29_local1 >= 50 and SpaceCheck(f29_arg1, f29_arg2, 90, 5) == true then
                f29_arg2:ClearSubGoal()
                f29_arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3023, TARGET_ENE_0, 999, 0, 0):SetLifeEndSuccess(true)
                f29_arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3021, TARGET_ENE_0, 10, 0, 0)
            elseif SpaceCheck(f29_arg1, f29_arg2, -90, 5) == true then
                f29_arg2:ClearSubGoal()
                f29_arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3024, TARGET_ENE_0, 999, 0, 0):SetLifeEndSuccess(true)
                f29_arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3021, TARGET_ENE_0, 10, 0, 0)
            else
                f29_arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3021, TARGET_ENE_0, 10, 0, 0)
            end
        elseif f29_local1 <= 50 and SpaceCheck(f29_arg1, f29_arg2, 180, 6) == true then
            f29_arg2:ClearSubGoal()
            f29_arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3026, TARGET_ENE_0, 999, 0, 0):SetLifeEndSuccess(true)
            f29_arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3021, TARGET_ENE_0, 10, 0, 0)
        elseif f29_local2 <= 33 then
            f29_arg2:ClearSubGoal()
            f29_arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3023, TARGET_ENE_0, 999, 0, 0):SetLifeEndSuccess(true)
            f29_arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3021, TARGET_ENE_0, 10, 0, 0)
        elseif f29_local2 <= 66 then
            f29_arg2:ClearSubGoal()
            f29_arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3024, TARGET_ENE_0, 999, 0, 0):SetLifeEndSuccess(true)
            f29_arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3021, TARGET_ENE_0, 10, 0, 0)
        else
            f29_arg2:ClearSubGoal()
            f29_arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3036, TARGET_ENE_0, 999, 0, 0):SetLifeEndSuccess(true)
            f29_arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3021, TARGET_ENE_0, 10, 0, 0)
        end
        return false
    end
    
end

RegisterTableGoal(GOAL_BossDaughterHU_602010_AfterAttackAct, "GOAL_BossDaughterHU_602010_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_BossDaughterHU_602010_AfterAttackAct, true)

Goal.Activate = function (f30_arg0, f30_arg1, f30_arg2)
    local f30_local0 = f30_arg1:GetDist(TARGET_ENE_0)
    local f30_local1 = f30_arg1:GetToTargetAngle(TARGET_ENE_0)
    local f30_local2 = f30_arg1:GetHpRate(TARGET_SELF)
    local f30_local3 = f30_arg1:GetRandam_Int(1, 100)
    local f30_local4 = f30_arg1:GetRandam_Int(1, 100)
    local f30_local5 = {}
    if f30_local0 >= 6 then
        f30_local5[1] = 0
        f30_local5[2] = 10
        f30_local5[3] = 0
        f30_local5[4] = 20
        f30_local5[5] = 20
        f30_local5[6] = 50
    elseif f30_local0 >= 3 then
        f30_local5[1] = 0
        f30_local5[2] = 0
        f30_local5[3] = 0
        f30_local5[4] = 20
        f30_local5[5] = 30
        f30_local5[6] = 0
    else
        f30_local5[1] = 20
        f30_local5[2] = 0
        f30_local5[3] = 0
        f30_local5[4] = 0
        f30_local5[5] = 0
        f30_local5[6] = 0
    end
    local f30_local6 = SelectOddsIndex(f30_arg1, f30_local5)
    if f30_local6 == 1 then
    elseif f30_local6 == 2 then
        BossDaughterHU_602010_Act85(f30_arg1, f30_arg2, paramTbl)
    elseif f30_local6 == 3 then
        BossDaughterHU_602010_Act86(f30_arg1, f30_arg2, paramTbl)
    elseif f30_local6 == 4 then
        BossDaughterHU_602010_Act82(f30_arg1, f30_arg2, paramTbl)
    elseif f30_local6 == 5 then
        if f30_local3 < 50 then
            BossDaughterHU_602010_Act83(f30_arg1, f30_arg2, paramTbl)
        else
            BossDaughterHU_602010_Act83(f30_arg1, f30_arg2, paramTbl)
        end
    elseif f30_local6 == 6 then
        BossDaughterHU_602010_Act81(f30_arg1, f30_arg2, paramTbl)
    end
    
end

Goal.Update = function (f31_arg0, f31_arg1, f31_arg2)
    return Update_Default_NoSubGoal(f31_arg0, f31_arg1, f31_arg2)
    
end


