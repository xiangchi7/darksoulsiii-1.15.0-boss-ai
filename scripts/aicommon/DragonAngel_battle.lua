RegisterTableGoal(GOAL_DragonAngel_209000_Battle, "DragonAngelBattle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_DragonAngel_209000_Battle, true)

Goal.Initialize = function (f1_arg0, f1_arg1, f1_arg2, f1_arg3)
    
end

Goal.Activate = function (f2_arg0, f2_arg1, f2_arg2)
    Init_Pseudo_Global(f2_arg1, f2_arg2)
    f2_arg1:SetStringIndexedNumber("Dist_SideStep", 4 + 1)
    f2_arg1:SetStringIndexedNumber("Dist_BackStep", 3.8 + 1)
    local f2_local0 = {}
    local f2_local1 = {}
    local f2_local2 = {}
    Common_Clear_Param(f2_local0, f2_local1, f2_local2)
    local f2_local3 = f2_arg1:GetDist(TARGET_ENE_0)
    if f2_arg1:GetHpRate(TARGET_SELF) <= 0.7 then
        f2_local0[10] = 100
    elseif f2_arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 90) and f2_local3 <= 2 then
        f2_local0[12] = 40
        f2_local0[20] = 20
        f2_local0[22] = 40
    elseif f2_arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 90) and f2_local3 <= 5 then
        f2_local0[12] = 40
        f2_local0[20] = 40
        f2_local0[22] = 20
    elseif f2_arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 90) and f2_local3 <= 5 then
        f2_local0[11] = 15
        f2_local0[12] = 10
        f2_local0[13] = 40
        f2_local0[20] = 15
        f2_local0[22] = 20
    elseif f2_arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 90) and f2_local3 <= 5 then
        f2_local0[11] = 15
        f2_local0[12] = 10
        f2_local0[14] = 40
        f2_local0[20] = 15
        f2_local0[22] = 20
    elseif InsideDir(f2_arg1, f2_arg2, 180, 270) then
        f2_local0[20] = 100
    elseif f2_local3 >= 15 then
        f2_local0[1] = 15
        f2_local0[2] = 15
        f2_local0[3] = 10
        f2_local0[5] = 10
        f2_local0[6] = 10
        f2_local0[8] = 20
        f2_local0[21] = 20
    elseif f2_local3 >= 10 then
        f2_local0[1] = 20
        f2_local0[2] = 10
        f2_local0[3] = 10
        f2_local0[5] = 20
        f2_local0[6] = 10
        f2_local0[8] = 15
        f2_local0[21] = 15
    elseif f2_local3 >= 5 then
        f2_local0[1] = 10
        f2_local0[2] = 10
        f2_local0[5] = 20
        f2_local0[6] = 10
        f2_local0[7] = 10
        f2_local0[8] = 10
        f2_local0[9] = 20
        f2_local0[11] = 10
    elseif f2_local3 >= 3.5 then
        f2_local0[1] = 15
        f2_local0[2] = 15
        f2_local0[4] = 15
        f2_local0[6] = 15
        f2_local0[7] = 10
        f2_local0[9] = 15
        f2_local0[11] = 15
    else
        f2_local0[7] = 25
        f2_local0[8] = 15
        f2_local0[9] = 15
        f2_local0[11] = 30
        f2_local0[22] = 15
    end
    f2_local0[8] = SetCoolTime(f2_arg1, f2_arg2, 3008, 5, f2_local0[8], 0)
    f2_local0[9] = SetCoolTime(f2_arg1, f2_arg2, 3009, 20, f2_local0[9], 0)
    f2_local0[22] = SetCoolTime(f2_arg1, f2_arg2, 6001, 5, f2_local0[22], 1)
    f2_local1[1] = REGIST_FUNC(f2_arg1, f2_arg2, DragonAngel_Act01)
    f2_local1[2] = REGIST_FUNC(f2_arg1, f2_arg2, DragonAngel_Act02)
    f2_local1[3] = REGIST_FUNC(f2_arg1, f2_arg2, DragonAngel_Act03)
    f2_local1[4] = REGIST_FUNC(f2_arg1, f2_arg2, DragonAngel_Act04)
    f2_local1[5] = REGIST_FUNC(f2_arg1, f2_arg2, DragonAngel_Act05)
    f2_local1[6] = REGIST_FUNC(f2_arg1, f2_arg2, DragonAngel_Act06)
    f2_local1[7] = REGIST_FUNC(f2_arg1, f2_arg2, DragonAngel_Act07)
    f2_local1[8] = REGIST_FUNC(f2_arg1, f2_arg2, DragonAngel_Act08)
    f2_local1[9] = REGIST_FUNC(f2_arg1, f2_arg2, DragonAngel_Act09)
    f2_local1[10] = REGIST_FUNC(f2_arg1, f2_arg2, DragonAngel_Act10)
    f2_local1[11] = REGIST_FUNC(f2_arg1, f2_arg2, DragonAngel_Act11)
    f2_local1[12] = REGIST_FUNC(f2_arg1, f2_arg2, DragonAngel_Act12)
    f2_local1[13] = REGIST_FUNC(f2_arg1, f2_arg2, DragonAngel_Act13)
    f2_local1[14] = REGIST_FUNC(f2_arg1, f2_arg2, DragonAngel_Act14)
    f2_local1[20] = REGIST_FUNC(f2_arg1, f2_arg2, DragonAngel_Act20)
    f2_local1[21] = REGIST_FUNC(f2_arg1, f2_arg2, DragonAngel_Act21)
    f2_local1[22] = REGIST_FUNC(f2_arg1, f2_arg2, DragonAngel_Act22)
    local f2_local4 = REGIST_FUNC(f2_arg1, f2_arg2, DragonAngel_ActAfter_AdjustSpace)
    Common_Battle_Activate(f2_arg1, f2_arg2, f2_local0, f2_local1, f2_local4, f2_local2)
    
end

function DragonAngel_Act01(f3_arg0, f3_arg1, f3_arg2)
    local f3_local0 = 8.9 - f3_arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local1 = 8.9 - f3_arg0:GetMapHitRadius(TARGET_SELF) + 998
    local f3_local2 = 8.9 - f3_arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f3_local3 = 0
    local f3_local4 = 0
    local f3_local5 = 5
    local f3_local6 = 5
    Approach_Act_Flex(f3_arg0, f3_arg1, f3_local0, f3_local1, f3_local2, f3_local3, f3_local4, f3_local5, f3_local6)
    local f3_local7 = 3000
    local f3_local8 = 3006
    local f3_local9 = 8.4 - f3_arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f3_local10 = 10 - f3_arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local11 = 0
    local f3_local12 = 0
    local f3_local13 = f3_arg0:GetRandam_Int(1, 100)
    if f3_local13 <= 30 then
        f3_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f3_local7, TARGET_ENE_0, f3_local10, f3_local11, f3_local12, 0, 0)
    else
        f3_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f3_local7, TARGET_ENE_0, f3_local9, f3_local11, f3_local12, 0, 0)
        f3_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f3_local8, TARGET_ENE_0, f3_local10, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function DragonAngel_Act02(f4_arg0, f4_arg1, f4_arg2)
    local f4_local0 = 11.9 - f4_arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local1 = 11.9 - f4_arg0:GetMapHitRadius(TARGET_SELF) + 998
    local f4_local2 = 11.9 - f4_arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f4_local3 = 0
    local f4_local4 = 0
    local f4_local5 = 5
    local f4_local6 = 5
    Approach_Act_Flex(f4_arg0, f4_arg1, f4_local0, f4_local1, f4_local2, f4_local3, f4_local4, f4_local5, f4_local6)
    local f4_local7 = 3001
    local f4_local8 = 10 - f4_arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local9 = 0
    local f4_local10 = 0
    f4_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f4_local7, TARGET_ENE_0, f4_local8, f4_local9, f4_local10, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function DragonAngel_Act03(f5_arg0, f5_arg1, f5_arg2)
    local f5_local0 = 19.3 - f5_arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local1 = 19.3 - f5_arg0:GetMapHitRadius(TARGET_SELF) + 998
    local f5_local2 = 19.3 - f5_arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f5_local3 = 0
    local f5_local4 = 0
    local f5_local5 = 5
    local f5_local6 = 5
    Approach_Act_Flex(f5_arg0, f5_arg1, f5_local0, f5_local1, f5_local2, f5_local3, f5_local4, f5_local5, f5_local6)
    local f5_local7 = 3002
    local f5_local8 = 10 - f5_arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local9 = 0
    local f5_local10 = 0
    f5_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f5_local7, TARGET_ENE_0, f5_local8, f5_local9, f5_local10, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function DragonAngel_Act04(f6_arg0, f6_arg1, f6_arg2)
    local f6_local0 = 3.1 - f6_arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local1 = 3.1 - f6_arg0:GetMapHitRadius(TARGET_SELF) + 998
    local f6_local2 = 3.1 - f6_arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f6_local3 = 0
    local f6_local4 = 0
    local f6_local5 = 5
    local f6_local6 = 5
    Approach_Act_Flex(f6_arg0, f6_arg1, f6_local0, f6_local1, f6_local2, f6_local3, f6_local4, f6_local5, f6_local6)
    local f6_local7 = 3003
    local f6_local8 = 10 - f6_arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local9 = 0
    local f6_local10 = 0
    f6_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f6_local7, TARGET_ENE_0, f6_local8, f6_local9, f6_local10, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function DragonAngel_Act05(f7_arg0, f7_arg1, f7_arg2)
    local f7_local0 = 10.5 - f7_arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local1 = 10.5 - f7_arg0:GetMapHitRadius(TARGET_SELF) + 998
    local f7_local2 = 10.5 - f7_arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f7_local3 = 0
    local f7_local4 = 0
    local f7_local5 = 5
    local f7_local6 = 5
    Approach_Act_Flex(f7_arg0, f7_arg1, f7_local0, f7_local1, f7_local2, f7_local3, f7_local4, f7_local5, f7_local6)
    local f7_local7 = 3004
    local f7_local8 = 10 - f7_arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local9 = 0
    local f7_local10 = 0
    f7_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f7_local7, TARGET_ENE_0, f7_local8, f7_local9, f7_local10, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function DragonAngel_Act06(f8_arg0, f8_arg1, f8_arg2)
    local f8_local0 = 15.1 - f8_arg0:GetMapHitRadius(TARGET_SELF)
    local f8_local1 = 15.1 - f8_arg0:GetMapHitRadius(TARGET_SELF) + 998
    local f8_local2 = 15.1 - f8_arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f8_local3 = 0
    local f8_local4 = 0
    local f8_local5 = 5
    local f8_local6 = 5
    Approach_Act_Flex(f8_arg0, f8_arg1, f8_local0, f8_local1, f8_local2, f8_local3, f8_local4, f8_local5, f8_local6)
    local f8_local7 = 3005
    local f8_local8 = 10 - f8_arg0:GetMapHitRadius(TARGET_SELF)
    local f8_local9 = 0
    local f8_local10 = 0
    f8_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f8_local7, TARGET_ENE_0, f8_local8, f8_local9, f8_local10, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function DragonAngel_Act07(f9_arg0, f9_arg1, f9_arg2)
    local f9_local0 = 3.6 - f9_arg0:GetMapHitRadius(TARGET_SELF)
    local f9_local1 = 3.6 - f9_arg0:GetMapHitRadius(TARGET_SELF) + 998
    local f9_local2 = 3.6 - f9_arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f9_local3 = 0
    local f9_local4 = 0
    local f9_local5 = 5
    local f9_local6 = 5
    Approach_Act_Flex(f9_arg0, f9_arg1, f9_local0, f9_local1, f9_local2, f9_local3, f9_local4, f9_local5, f9_local6)
    local f9_local7 = 3007
    local f9_local8 = 10 - f9_arg0:GetMapHitRadius(TARGET_SELF)
    local f9_local9 = 0
    local f9_local10 = 0
    f9_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f9_local7, TARGET_ENE_0, f9_local8, f9_local9, f9_local10, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function DragonAngel_Act08(f10_arg0, f10_arg1, f10_arg2)
    local f10_local0 = f10_arg0:GetRandam_Int(-99 - f10_arg0:GetMapHitRadius(TARGET_SELF), 11.6 - f10_arg0:GetMapHitRadius(TARGET_SELF))
    local f10_local1 = 11.6 - f10_arg0:GetMapHitRadius(TARGET_SELF) + 998
    local f10_local2 = 11.6 - f10_arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f10_local3 = 0
    local f10_local4 = 0
    local f10_local5 = 5
    local f10_local6 = 5
    Approach_Act_Flex(f10_arg0, f10_arg1, f10_local0, f10_local1, f10_local2, f10_local3, f10_local4, f10_local5, f10_local6)
    local f10_local7 = 3008
    local f10_local8 = 10 - f10_arg0:GetMapHitRadius(TARGET_SELF)
    local f10_local9 = 0
    local f10_local10 = 0
    f10_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f10_local7, TARGET_ENE_0, f10_local8, f10_local9, f10_local10, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function DragonAngel_Act09(f11_arg0, f11_arg1, f11_arg2)
    local f11_local0 = 3009
    local f11_local1 = 3005
    local f11_local2 = 3006
    local f11_local3 = 3007
    local f11_local4 = 10 - f11_arg0:GetMapHitRadius(TARGET_SELF)
    local f11_local5 = 15.1 - f11_arg0:GetMapHitRadius(TARGET_SELF) + 0.5
    local f11_local6 = 8.4 - f11_arg0:GetMapHitRadius(TARGET_SELF) + 0.5
    local f11_local7 = 3.6 - f11_arg0:GetMapHitRadius(TARGET_SELF) + 0.5
    local f11_local8 = 0
    local f11_local9 = 0
    local f11_local10 = f11_arg0:GetRandam_Int(1, 100)
    if f11_local10 <= 10 then
        f11_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f11_local0, TARGET_ENE_0, f11_local5, f11_local8, f11_local9)
        f11_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f11_local1, TARGET_ENE_0, 999)
    elseif f11_local10 <= 60 then
        f11_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f11_local0, TARGET_ENE_0, f11_local6, f11_local8, f11_local9)
        f11_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f11_local2, TARGET_ENE_0, 999)
    else
        f11_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f11_local0, TARGET_ENE_0, f11_local7, f11_local8, f11_local9)
        f11_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f11_local3, TARGET_ENE_0, 999)
    end
    return 0
    
end

function DragonAngel_Act10(f12_arg0, f12_arg1, f12_arg2)
    f12_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 1500, TARGET_ENE_0, 999, 0, 0, 0, 0)
    return 0
    
end

function DragonAngel_Act11(f13_arg0, f13_arg1, f13_arg2)
    local f13_local0 = 3010
    local f13_local1 = 10 - f13_arg0:GetMapHitRadius(TARGET_SELF)
    local f13_local2 = 0
    local f13_local3 = 0
    local f13_local4 = f13_arg0:GetRandam_Int(1, 100)
    f13_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f13_local0, TARGET_ENE_0, f13_local1, f13_local2, f13_local3, 0, 0)
    return 0
    
end

function DragonAngel_Act12(f14_arg0, f14_arg1, f14_arg2)
    local f14_local0 = 3008
    local f14_local1 = 10 - f14_arg0:GetMapHitRadius(TARGET_SELF)
    local f14_local2 = 0
    local f14_local3 = 0
    f14_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f14_local0, TARGET_ENE_0, f14_local1, f14_local2, f14_local3, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function DragonAngel_Act13(f15_arg0, f15_arg1, f15_arg2)
    local f15_local0 = 3000
    local f15_local1 = 3006
    local f15_local2 = 8.4 - f15_arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f15_local3 = 10 - f15_arg0:GetMapHitRadius(TARGET_SELF)
    local f15_local4 = 0
    local f15_local5 = 0
    local f15_local6 = f15_arg0:GetRandam_Int(1, 100)
    if f15_local6 <= 30 then
        f15_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f15_local0, TARGET_ENE_0, f15_local3, f15_local4, f15_local5, 0, 0)
    else
        f15_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f15_local0, TARGET_ENE_0, f15_local2, f15_local4, f15_local5, 0, 0)
        f15_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f15_local1, TARGET_ENE_0, f15_local3, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function DragonAngel_Act14(f16_arg0, f16_arg1, f16_arg2)
    local f16_local0 = 3007
    local f16_local1 = 10 - f16_arg0:GetMapHitRadius(TARGET_SELF)
    local f16_local2 = 0
    local f16_local3 = 0
    f16_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f16_local0, TARGET_ENE_0, f16_local1, f16_local2, f16_local3, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function DragonAngel_Act20(f17_arg0, f17_arg1, f17_arg2)
    f17_arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 45)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function DragonAngel_Act21(f18_arg0, f18_arg1, f18_arg2)
    f18_arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f18_arg0:GetRandam_Float(3, 4), TARGET_ENE_0, 10, TARGET_SELF, true, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function DragonAngel_Act22(f19_arg0, f19_arg1, f19_arg2)
    f19_arg1:AddSubGoal(GOAL_COMMON_SpinStep, 2.5, 6001, TARGET_ENE_0, 0, AI_DIR_TYPE_B, f19_arg0:GetStringIndexedNumber("Dist_BackStep"))
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function DragonAngel_ActAfter_AdjustSpace(f20_arg0, f20_arg1, f20_arg2)
    f20_arg1:AddSubGoal(GOAL_DragonAngel_209000_AfterAttackAct, 10)
    
end

Goal.Update = function (f21_arg0, f21_arg1, f21_arg2)
    return Update_Default_NoSubGoal(f21_arg0, f21_arg1, f21_arg2)
    
end

Goal.Terminate = function (f22_arg0, f22_arg1, f22_arg2)
    
end

Goal.Interrupt = function (f23_arg0, f23_arg1, f23_arg2)
    if f23_arg1:IsInterupt(INTERUPT_Damaged) then
        local f23_local0 = f23_arg1:GetRandam_Int(1, 100)
        if f23_local0 <= 25 and f23_arg1:GetAttackPassedTime(3009) >= 30 then
            f23_arg2:ClearSubGoal()
            DragonAngel_Act09(f23_arg1, f23_arg2, paramTbl)
            return true
        else
            return false
        end
    end
    return false
    
end

RegisterTableGoal(GOAL_DragonAngel_209000_AfterAttackAct, "GOAL_DragonAngel_209000_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_DragonAngel_209000_AfterAttackAct, true)

Goal.Activate = function (f24_arg0, f24_arg1, f24_arg2)
    local f24_local0 = f24_arg1:GetDist(TARGET_ENE_0)
    local f24_local1 = f24_arg1:GetToTargetAngle(TARGET_ENE_0)
    f24_arg1:SetStringIndexedNumber("DistMin_AAA", -999)
    f24_arg1:SetStringIndexedNumber("DistMax_AAA", 10)
    f24_arg1:SetStringIndexedNumber("BaseDir_AAA", AI_DIR_TYPE_F)
    f24_arg1:SetStringIndexedNumber("Angle_AAA", 360)
    f24_arg1:SetStringIndexedNumber("DistMin_Inter_AAA", -99)
    f24_arg1:SetStringIndexedNumber("DistMax_Inter_AAA", 15)
    f24_arg1:SetStringIndexedNumber("BaseAng_Inter_AAA", 0)
    f24_arg1:SetStringIndexedNumber("Ang_Inter_AAA", 360)
    if f24_local0 >= 10 then
        f24_arg1:SetStringIndexedNumber("Odds_NoAct_AAA", 10)
        f24_arg1:SetStringIndexedNumber("Odds_BackAndSide_AAA", 90)
    elseif f24_local0 >= 5 then
        f24_arg1:SetStringIndexedNumber("Odds_NoAct_AAA", 40)
        f24_arg1:SetStringIndexedNumber("Odds_BackAndSide_AAA", 30)
        f24_arg1:SetStringIndexedNumber("Odds_Backstep_AAA", 30)
    else
        f24_arg1:SetStringIndexedNumber("Odds_NoAct_AAA", 30)
        f24_arg1:SetStringIndexedNumber("Odds_BackAndSide_AAA", 30)
        f24_arg1:SetStringIndexedNumber("Odds_Backstep_AAA", 40)
    end
    f24_arg2:AddSubGoal(GOAL_COMMON_AfterAttackAct, 10)
    
end

Goal.Update = function (f25_arg0, f25_arg1, f25_arg2)
    return Update_Default_NoSubGoal(f25_arg0, f25_arg1, f25_arg2)
    
end


