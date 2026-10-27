RegisterTableGoal(GOAL_OldmanCrystal_132050_Battle, "OldmanCrystal_132050_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_OldmanCrystal_132050_Battle, true)

Goal.Initialize = function (f1_arg0, f1_arg1, f1_arg2, f1_arg3)
    
end

Goal.Activate = function (f2_arg0, f2_arg1, f2_arg2)
    Init_Pseudo_Global(f2_arg1, f2_arg2)
    f2_arg1:SetStringIndexedNumber("Dist_SideStep", 3)
    f2_arg1:SetStringIndexedNumber("Dist_BackStep", 3)
    local f2_local0 = {}
    local f2_local1 = {}
    local f2_local2 = {}
    Common_Clear_Param(f2_local0, f2_local1, f2_local2)
    local f2_local3 = f2_arg1:GetDist(TARGET_ENE_0)
    local f2_local4 = f2_arg1:GetRandam_Int(1, 100)
    local f2_local5 = f2_arg1:GetHpRate(TARGET_SELF)
    local f2_local6 = f2_arg1:GetMapHitRadius(TARGET_SELF)
    local f2_local7 = f2_arg1:GetDistYSigned(TARGET_ENE_0)
    local f2_local8 = f2_arg1:GetDistXZ(TARGET_ENE_0)
    local f2_local9 = f2_arg1:GetEventRequest()
    if f2_local9 == 10 then
        f2_local0[27] = 10
    elseif f2_arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 90) then
        f2_local0[20] = 100
    elseif f2_arg1:IsInsideTargetRegion(TARGET_SELF, 3412760) then
        if f2_local3 >= 15 then
            f2_local0[1] = 20
            f2_local0[2] = 10
        elseif f2_local3 >= 10 then
            f2_local0[1] = 20
            f2_local0[2] = 10
        elseif f2_local3 >= 5 then
            f2_local0[1] = 20
            f2_local0[2] = 10
        elseif f2_local3 >= 2.5 then
            f2_local0[1] = 30
            f2_local0[2] = 10
            f2_local0[10] = 20
        else
            f2_local0[10] = 20
            f2_local0[11] = 20
        end
    elseif f2_arg1:IsInsideTargetRegion(TARGET_SELF, 3412761) then
        if f2_arg1:GetNpcThinkParamID() == 132051 and f2_local8 <= 4 and f2_local7 <= -1 then
            f2_local0[23] = 100
        elseif f2_local3 >= 15 then
            f2_local0[1] = 20
            f2_local0[2] = 20
            f2_local0[6] = 20
        elseif f2_local3 >= 10 then
            f2_local0[1] = 20
            f2_local0[2] = 20
            f2_local0[6] = 20
        elseif f2_local3 >= 5 then
            f2_local0[1] = 20
            f2_local0[2] = 10
            f2_local0[6] = 20
        elseif f2_local3 >= 2.5 then
            f2_local0[1] = 20
            f2_local0[2] = 10
            f2_local0[10] = 20
            f2_local0[11] = 20
        else
            f2_local0[10] = 20
            f2_local0[11] = 20
        end
    elseif f2_arg1:IsInsideTargetRegion(TARGET_SELF, 3412762) then
        if f2_local3 >= 15 then
            f2_local0[1] = 10
            f2_local0[2] = 10
            f2_local0[5] = 20
            f2_local0[6] = 20
        elseif f2_local3 >= 10 then
            f2_local0[1] = 10
            f2_local0[2] = 10
            f2_local0[5] = 20
            f2_local0[6] = 20
        elseif f2_local3 >= 5 then
            f2_local0[1] = 20
            f2_local0[2] = 10
            f2_local0[5] = 20
            f2_local0[6] = 20
        elseif f2_local3 >= 2.5 then
            f2_local0[1] = 20
            f2_local0[2] = 10
            f2_local0[10] = 20
            f2_local0[11] = 20
        else
            f2_local0[10] = 20
            f2_local0[11] = 20
        end
    elseif f2_local3 >= 15 then
        f2_local0[1] = 10
        f2_local0[2] = 10
        f2_local0[5] = 20
        f2_local0[6] = 20
    elseif f2_local3 >= 10 then
        f2_local0[1] = 10
        f2_local0[2] = 10
        f2_local0[5] = 20
        f2_local0[6] = 20
    elseif f2_local3 >= 5 then
        f2_local0[1] = 20
        f2_local0[2] = 10
        f2_local0[5] = 20
        f2_local0[6] = 20
    elseif f2_local3 >= 2.5 then
        f2_local0[1] = 20
        f2_local0[2] = 10
        f2_local0[10] = 20
        f2_local0[11] = 20
    else
        f2_local0[10] = 20
        f2_local0[11] = 20
    end
    if f2_arg1:IsInsideTargetRegion(TARGET_SELF, 3412760) then
    elseif f2_arg1:IsInsideTargetRegion(TARGET_SELF, 3412761) then
        if f2_local7 <= -1 then
            f2_local0[1] = 0
        end
    elseif f2_arg1:IsInsideTargetRegion(TARGET_SELF, 3412762) and f2_arg1:IsInsideTargetRegion(TARGET_ENE_0, 3412762) == false then
        f2_local0[5] = 0
    end
    if f2_arg1:HasSpecialEffectId(TARGET_SELF, 103581000) then
        f2_local0[5] = 0
    end
    f2_local0[5] = SetCoolTime(f2_arg1, f2_arg2, 3004, 8, f2_local0[5], 1)
    f2_local0[10] = SetCoolTime(f2_arg1, f2_arg2, 3018, 8, f2_local0[10], 1)
    f2_local1[1] = REGIST_FUNC(f2_arg1, f2_arg2, OldmanCrystal_Act01)
    f2_local1[2] = REGIST_FUNC(f2_arg1, f2_arg2, OldmanCrystal_Act02)
    f2_local1[5] = REGIST_FUNC(f2_arg1, f2_arg2, OldmanCrystal_Act05)
    f2_local1[6] = REGIST_FUNC(f2_arg1, f2_arg2, OldmanCrystal_Act06)
    f2_local1[10] = REGIST_FUNC(f2_arg1, f2_arg2, OldmanCrystal_Act10)
    f2_local1[11] = REGIST_FUNC(f2_arg1, f2_arg2, OldmanCrystal_Act11)
    f2_local1[20] = REGIST_FUNC(f2_arg1, f2_arg2, OldmanCrystal_Act20)
    f2_local1[21] = REGIST_FUNC(f2_arg1, f2_arg2, OldmanCrystal_Act21)
    f2_local1[22] = REGIST_FUNC(f2_arg1, f2_arg2, OldmanCrystal_Act22)
    f2_local1[23] = REGIST_FUNC(f2_arg1, f2_arg2, OldmanCrystal_Act23)
    f2_local1[27] = REGIST_FUNC(f2_arg1, f2_arg2, OldmanCrystal_Act27)
    local f2_local10 = REGIST_FUNC(f2_arg1, f2_arg2, OldmanCrystal_ActAfter_AdjustSpace)
    Common_Battle_Activate(f2_arg1, f2_arg2, f2_local0, f2_local1, f2_local10, f2_local2)
    
end

function OldmanCrystal_Act01(f3_arg0, f3_arg1, f3_arg2)
    local f3_local0 = 3000
    local f3_local1 = 40.8 - f3_arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f3_local2 = 5.8 - f3_arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local3 = 1.5
    local f3_local4 = 20
    local f3_local5 = f3_arg0:GetRandam_Int(1, 100)
    f3_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f3_local0, TARGET_ENE_0, 999, f3_local3, f3_local4, 0, 0)
    GetWellSpace_Odds = 80
    return GetWellSpace_Odds
    
end

function OldmanCrystal_Act02(f4_arg0, f4_arg1, f4_arg2)
    local f4_local0 = 3009
    local f4_local1 = 50 - f4_arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f4_local2 = 5.8 - f4_arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local3 = 1.5
    local f4_local4 = 20
    local f4_local5 = f4_arg0:GetRandam_Int(1, 100)
    f4_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f4_local0, TARGET_ENE_0, 999, f4_local3, f4_local4, 0, 0)
    GetWellSpace_Odds = 80
    return GetWellSpace_Odds
    
end

function OldmanCrystal_Act03(f5_arg0, f5_arg1, f5_arg2)
    local f5_local0 = 3002
    local f5_local1 = 5.8 - f5_arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local2 = 1.5
    local f5_local3 = 20
    local f5_local4 = f5_arg0:GetRandam_Int(1, 100)
    local f5_local5 = f5_arg0:GetDist(TARGET_ENE_0)
    f5_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f5_local0, TARGET_ENE_0, f5_local1, f5_local2, f5_local3, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function OldmanCrystal_Act04(f6_arg0, f6_arg1, f6_arg2)
    local f6_local0 = 5.8 - f6_arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local1 = 5.8 - f6_arg0:GetMapHitRadius(TARGET_SELF) + 0.9
    local f6_local2 = 5.8 - f6_arg0:GetMapHitRadius(TARGET_SELF) + 4
    local f6_local3 = 0
    local f6_local4 = 0
    local f6_local5 = 5
    local f6_local6 = 5
    Approach_Act_Flex(f6_arg0, f6_arg1, f6_local0, f6_local1, f6_local2, f6_local3, f6_local4, f6_local5, f6_local6)
    local f6_local7 = 3003
    local f6_local8 = 5.8 - f6_arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f6_local9 = 5.8 - f6_arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local10 = 1.5
    local f6_local11 = 20
    local f6_local12 = f6_arg0:GetRandam_Int(1, 100)
    f6_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f6_local7, TARGET_FRI_0, f6_local9, f6_local10, f6_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function OldmanCrystal_Act05(f7_arg0, f7_arg1, f7_arg2)
    local f7_local0 = 3004
    local f7_local1 = 999 - f7_arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f7_local2 = 5.8 - f7_arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local3 = 1.5
    local f7_local4 = 20
    local f7_local5 = f7_arg0:GetRandam_Int(1, 100)
    local f7_local6 = f7_arg0:GetRandam_Float(2.5, 4.5)
    local f7_local7 = f7_arg0:GetRandam_Int(0, 1)
    local f7_local8 = f7_arg0:GetRandam_Int(30, 45)
    local f7_local9 = f7_arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local10 = f7_arg0:GetDistYSigned(TARGET_ENE_0)
    f7_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f7_local0, TARGET_ENE_0, 999, f7_local3, f7_local4, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function OldmanCrystal_Act06(f8_arg0, f8_arg1, f8_arg2)
    local f8_local0 = 3005
    local f8_local1 = 3014
    local f8_local2 = 5.8 - f8_arg0:GetMapHitRadius(TARGET_SELF)
    local f8_local3 = 1.5
    local f8_local4 = 45
    local f8_local5 = f8_arg0:GetRandam_Int(1, 100)
    local f8_local6 = f8_arg0:GetDist(TARGET_ENE_0)
    if f8_local6 >= 12 then
        f8_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f8_local1, TARGET_ENE_0, 999, f8_local3, f8_local4, 0, 0)
    else
        f8_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f8_local0, TARGET_ENE_0, 999, f8_local3, f8_local4, 0, 0)
    end
    GetWellSpace_Odds = 80
    return GetWellSpace_Odds
    
end

function OldmanCrystal_Act07(f9_arg0, f9_arg1, f9_arg2)
    local f9_local0 = 3.8 - f9_arg0:GetMapHitRadius(TARGET_SELF)
    local f9_local1 = 3.8 - f9_arg0:GetMapHitRadius(TARGET_SELF) + 0.9
    local f9_local2 = 3.8 - f9_arg0:GetMapHitRadius(TARGET_SELF) + 4
    local f9_local3 = 0
    local f9_local4 = 0
    local f9_local5 = 5
    local f9_local6 = 5
    Approach_Act_Flex(f9_arg0, f9_arg1, f9_local0, f9_local1, f9_local2, f9_local3, f9_local4, f9_local5, f9_local6)
    local f9_local7 = 3006
    local f9_local8 = 3.8 - f9_arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f9_local9 = 5.8 - f9_arg0:GetMapHitRadius(TARGET_SELF)
    local f9_local10 = 1.5
    local f9_local11 = 20
    local f9_local12 = f9_arg0:GetRandam_Int(1, 100)
    f9_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f9_local7, TARGET_ENE_0, f9_local9, f9_local10, f9_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function OldmanCrystal_Act08(f10_arg0, f10_arg1, f10_arg2)
    local f10_local0 = 3014
    local f10_local1 = 999.8 - f10_arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f10_local2 = 5.8 - f10_arg0:GetMapHitRadius(TARGET_SELF)
    local f10_local3 = 1.5
    local f10_local4 = 20
    local f10_local5 = f10_arg0:GetRandam_Int(1, 100)
    f10_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f10_local0, TARGET_ENE_0, f10_local2, f10_local3, f10_local4, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function OldmanCrystal_Act09(f11_arg0, f11_arg1, f11_arg2)
    local f11_local0 = 3007
    local f11_local1 = 3008
    local f11_local2 = ATT3008_DIST_MAX + 1
    local f11_local3 = 5.8 - f11_arg0:GetMapHitRadius(TARGET_SELF)
    local f11_local4 = 1.5
    local f11_local5 = 20
    local f11_local6 = f11_arg0:GetRandam_Int(1, 100)
    f11_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f11_local0, TARGET_ENE_0, 999, f11_local4, f11_local5)
    f11_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f11_local1, TARGET_ENE_0, 20)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function OldmanCrystal_Act10(f12_arg0, f12_arg1, f12_arg2)
    local f12_local0 = 3018
    local f12_local1 = 5.8 - f12_arg0:GetMapHitRadius(TARGET_SELF)
    local f12_local2 = 1.5
    local f12_local3 = 180
    local f12_local4 = f12_arg0:GetRandam_Int(1, 100)
    f12_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f12_local0, TARGET_ENE_0, f12_local1, f12_local2, f12_local3, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function OldmanCrystal_Act11(f13_arg0, f13_arg1, f13_arg2)
    local f13_local0 = 5.9 - f13_arg0:GetMapHitRadius(TARGET_SELF) - 1
    local f13_local1 = 999
    local f13_local2 = 999
    local f13_local3 = 0
    local f13_local4 = 0
    local f13_local5 = 2.5
    local f13_local6 = 5
    Approach_Act_Flex(f13_arg0, f13_arg1, f13_local0, f13_local1, f13_local2, f13_local3, f13_local4, f13_local5, f13_local6)
    local f13_local7 = 3021
    local f13_local8 = 3022
    local f13_local9 = 3023
    local f13_local10 = 3024
    local f13_local11 = 5.9 - f13_arg0:GetMapHitRadius(TARGET_SELF)
    local f13_local12 = 5.9 - f13_arg0:GetMapHitRadius(TARGET_SELF)
    local f13_local13 = 5.9 - f13_arg0:GetMapHitRadius(TARGET_SELF)
    local f13_local14 = 5.8 - f13_arg0:GetMapHitRadius(TARGET_SELF)
    local f13_local15 = 1.5
    local f13_local16 = 180
    local f13_local17 = f13_arg0:GetRandam_Int(1, 100)
    f13_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f13_local7, TARGET_ENE_0, f13_local11, f13_local15, f13_local16)
    f13_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f13_local8, TARGET_ENE_0, f13_local12)
    f13_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f13_local9, TARGET_ENE_0, f13_local14)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function OldmanCrystal_Act20(f14_arg0, f14_arg1, f14_arg2)
    f14_arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 0, 0, 0)
    
end

function OldmanCrystal_Act21(f15_arg0, f15_arg1, f15_arg2)
    local f15_local0 = f15_arg0:GetDist(TARGET_ENE_0)
    local f15_local1 = 10
    local f15_local2 = 12
    if f15_local1 <= f15_local0 then
        Approach_Act(f15_arg0, f15_arg1, f15_local1, f15_local2, Odds_Guard, 3)
    end
    f15_arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, f15_local1, TARGET_ENE_0, true, -1)
    
end

function OldmanCrystal_Act22(f16_arg0, f16_arg1, f16_arg2)
    local f16_local0 = f16_arg0:GetRandam_Int(0, 1)
    f16_arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, f16_local0, f16_arg0:GetRandam_Int(30, 45), true, true, -1)
    
end

function OldmanCrystal_Act23(f17_arg0, f17_arg1, f17_arg2)
    f17_arg1:AddSubGoal(GOAL_COMMON_Wait, 0.5, TARGET_NONE, 0, 0, 0)
    
end

function OldmanCrystal_Act27(f18_arg0, f18_arg1, f18_arg2)
    f18_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3020, TARGET_NONE, 999, 0, 360, 0, 0)
    
end

function OldmanCrystal_ActAfter_AdjustSpace(f19_arg0, f19_arg1, f19_arg2)
    f19_arg1:AddSubGoal(GOAL_OldmanCrystal_132050_AfterAttackAct, 10)
    
end

Goal.Update = function (f20_arg0, f20_arg1, f20_arg2)
    return Update_Default_NoSubGoal(f20_arg0, f20_arg1, f20_arg2)
    
end

Goal.Terminate = function (f21_arg0, f21_arg1, f21_arg2)
    
end

Goal.Interrupt = function (f22_arg0, f22_arg1, f22_arg2)
    return false
    
end

RegisterTableGoal(GOAL_OldmanCrystal_132050_AfterAttackAct, "OldmanCrystal_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_OldmanCrystal_132050_AfterAttackAct, true)

Goal.Activate = function (f23_arg0, f23_arg1, f23_arg2)
    local f23_local0 = f23_arg1:GetDist(TARGET_ENE_0)
    if f23_arg1:IsInsideTargetRegion(TARGET_SELF, 3412760) then
    elseif f23_arg1:IsInsideTargetRegion(TARGET_SELF, 3412761) then
        local f23_local1 = f23_arg1:GetRandam_Float(1, 2)
        if f23_local0 >= 10 then
            f23_arg2:AddSubGoal(GOAL_COMMON_Wait, f23_local1, TARGET_NONE, 0, 0, 0)
        end
    elseif f23_arg1:IsInsideTargetRegion(TARGET_SELF, 3412762) and f23_arg1:IsInsideTargetRegion(TARGET_ENE_0, 3412762) == false then
        local f23_local1 = f23_arg1:GetRandam_Int(1, 100)
        local f23_local2 = f23_arg1:GetRandam_Int(0, 1)
        local f23_local3 = f23_arg1:GetRandam_Float(2, 2.5)
        if f23_local0 >= 25 then
            f23_arg2:AddSubGoal(GOAL_COMMON_SidewayMove, f23_local3, TARGET_ENE_0, f23_local2, f23_arg1:GetRandam_Int(30, 45), true, true, -1)
        end
    end
    
end

Goal.Update = function (f24_arg0, f24_arg1, f24_arg2)
    return Update_Default_NoSubGoal(f24_arg0, f24_arg1, f24_arg2)
    
end

Goal.Terminate = function (f25_arg0, f25_arg1, f25_arg2)
    
end


