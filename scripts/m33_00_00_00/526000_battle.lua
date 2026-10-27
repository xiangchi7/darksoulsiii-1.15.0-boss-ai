RegisterTableGoal(GOAL_Halleck526000_Battle, "GOAL_Halleck526000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_Halleck526000_Battle, true)

Goal.Initialize = function (f1_arg0, f1_arg1, f1_arg2, f1_arg3)
    f1_arg1:SetTimer(10, 10)
    
end

Goal.Activate = function (f2_arg0, f2_arg1, f2_arg2)
    Init_Pseudo_Global(f2_arg1, f2_arg2)
    f2_arg1:SetStringIndexedNumber("Dist_SideStep", 3)
    f2_arg1:SetStringIndexedNumber("Dist_BackStep", 3)
    local f2_local0 = {}
    local f2_local1 = {}
    local f2_local2 = {}
    Common_Clear_Param(f2_local0, f2_local1, f2_local2)
    if f2_arg1:HasSpecialEffectId(TARGET_ENE_0, 100910) == false and f2_arg1:HasSpecialEffectId(TARGET_ENE_0, 100911) == false then
        f2_arg1:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 100920)
        f2_arg1:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 100921)
    end
    f2_arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    f2_arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    f2_arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    f2_arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    f2_arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    local f2_local3 = f2_arg1:GetDist(TARGET_ENE_0)
    local f2_local4 = f2_arg1:GetRandam_Int(1, 100)
    local f2_local5 = f2_arg1:GetHpRate(TARGET_SELF)
    if f2_local5 <= 0.4 and f2_arg1:HasSpecialEffectId(TARGET_SELF, 5034) == false and f2_arg1:HasSpecialEffectId(TARGET_SELF, 5404) == false then
        f2_local0[20] = 100
    elseif f2_arg1:IsFinishTimer(10) == false then
        f2_local0[32] = 100
    elseif f2_arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 210) then
        if f2_arg1:IsFinishTimer(1) == true and f2_local3 <= 8 then
            f2_local0[16] = 100
            f2_local0[30] = 5
        else
            f2_local0[30] = 10
        end
    elseif f2_arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 270) and f2_local3 >= 8 then
        f2_local0[30] = 10
    elseif f2_arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 240) and f2_local3 >= 5 then
        f2_local0[30] = 10
    elseif f2_arg1:HasSpecialEffectId(TARGET_SELF, 11400) then
        if f2_local3 >= 15 then
            f2_local0[6] = 15
            f2_local0[10] = 10
        elseif f2_local3 >= 8 then
            f2_local0[4] = 20
            f2_local0[6] = 10
            f2_local0[10] = 10
            f2_local0[12] = 25
            f2_local0[17] = 10
            f2_local0[18] = 25
        elseif f2_local3 >= 2 then
            f2_local0[4] = 10
            f2_local0[8] = 20
            f2_local0[17] = 15
            f2_local0[19] = 10
        else
            f2_local0[1] = 10
            f2_local0[19] = 10
        end
    elseif f2_local3 >= 15 then
        f2_local0[6] = 15
        f2_local0[10] = 10
    elseif f2_local3 >= 8 then
        f2_local0[4] = 20
        f2_local0[6] = 10
        f2_local0[10] = 10
    elseif f2_local3 >= 2 then
        f2_local0[4] = 10
        f2_local0[8] = 20
    else
        f2_local0[1] = 20
        f2_local0[19] = 10
    end
    f2_local0[8] = SetCoolTime(f2_arg1, f2_arg2, 3013, 10, f2_local0[8], 1)
    f2_local0[10] = SetCoolTime(f2_arg1, f2_arg2, 3011, 20, f2_local0[10], 1)
    f2_local0[12] = SetCoolTime(f2_arg1, f2_arg2, 3016, 25, f2_local0[12], 1)
    f2_local0[16] = SetCoolTime(f2_arg1, f2_arg2, 3008, 15, f2_local0[16], 1)
    f2_local0[16] = SetCoolTime(f2_arg1, f2_arg2, 3009, 15, f2_local0[16], 1)
    f2_local0[16] = SetCoolTime(f2_arg1, f2_arg2, 3030, 15, f2_local0[16], 1)
    f2_local0[17] = SetCoolTime(f2_arg1, f2_arg2, 3018, 15, f2_local0[17], 1)
    f2_local0[18] = SetCoolTime(f2_arg1, f2_arg2, 3019, 15, f2_local0[18], 1)
    f2_local0[19] = SetCoolTime(f2_arg1, f2_arg2, 3021, 12, f2_local0[19], 1)
    f2_local1[1] = REGIST_FUNC(f2_arg1, f2_arg2, Halleck526000_Act01)
    f2_local1[2] = REGIST_FUNC(f2_arg1, f2_arg2, Halleck526000_Act02)
    f2_local1[3] = REGIST_FUNC(f2_arg1, f2_arg2, Halleck526000_Act03)
    f2_local1[4] = REGIST_FUNC(f2_arg1, f2_arg2, Halleck526000_Act04)
    f2_local1[5] = REGIST_FUNC(f2_arg1, f2_arg2, Halleck526000_Act05)
    f2_local1[6] = REGIST_FUNC(f2_arg1, f2_arg2, Halleck526000_Act06)
    f2_local1[7] = REGIST_FUNC(f2_arg1, f2_arg2, Halleck526000_Act07)
    f2_local1[8] = REGIST_FUNC(f2_arg1, f2_arg2, Halleck526000_Act08)
    f2_local1[9] = REGIST_FUNC(f2_arg1, f2_arg2, Halleck526000_Act09)
    f2_local1[10] = REGIST_FUNC(f2_arg1, f2_arg2, Halleck526000_Act10)
    f2_local1[11] = REGIST_FUNC(f2_arg1, f2_arg2, Halleck526000_Act11)
    f2_local1[12] = REGIST_FUNC(f2_arg1, f2_arg2, Halleck526000_Act12)
    f2_local1[13] = REGIST_FUNC(f2_arg1, f2_arg2, Halleck526000_Act13)
    f2_local1[14] = REGIST_FUNC(f2_arg1, f2_arg2, Halleck526000_Act14)
    f2_local1[15] = REGIST_FUNC(f2_arg1, f2_arg2, Halleck526000_Act15)
    f2_local1[16] = REGIST_FUNC(f2_arg1, f2_arg2, Halleck526000_Act16)
    f2_local1[17] = REGIST_FUNC(f2_arg1, f2_arg2, Halleck526000_Act17)
    f2_local1[18] = REGIST_FUNC(f2_arg1, f2_arg2, Halleck526000_Act18)
    f2_local1[19] = REGIST_FUNC(f2_arg1, f2_arg2, Halleck526000_Act19)
    f2_local1[20] = REGIST_FUNC(f2_arg1, f2_arg2, Halleck526000_Act20)
    f2_local1[30] = REGIST_FUNC(f2_arg1, f2_arg2, Halleck526000_Act30)
    f2_local1[31] = REGIST_FUNC(f2_arg1, f2_arg2, Halleck526000_Act31)
    f2_local1[32] = REGIST_FUNC(f2_arg1, f2_arg2, Halleck526000_Act32)
    f2_local1[33] = REGIST_FUNC(f2_arg1, f2_arg2, Halleck526000_Act33)
    f2_local1[40] = REGIST_FUNC(f2_arg1, f2_arg2, Halleck526000_Act40)
    local f2_local6 = REGIST_FUNC(f2_arg1, f2_arg2, Halleck526000_ActAfter_AdjustSpace)
    Common_Battle_Activate(f2_arg1, f2_arg2, f2_local0, f2_local1, f2_local6, f2_local2)
    
end

function Halleck526000_Act01(f3_arg0, f3_arg1, f3_arg2)
    local f3_local0 = 3000
    local f3_local1 = 3003
    local f3_local2 = 20 - f3_arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local3 = 1
    local f3_local4 = f3_arg0:GetRandam_Int(1, 100)
    local f3_local5 = f3_arg0:GetDist(TARGET_ENE_0)
    f3_arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    f3_arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    f3_arg0:SetTimer(1, 5)
    if f3_arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 180) then
        f3_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 1.5, f3_local1, TARGET_ENE_0, f3_local2, f3_local3, 360, 0, 0):SetTargetRange(0, -99, 15.3 - f3_arg0:GetMapHitRadius(TARGET_SELF) - 1)
    elseif f3_arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 180) then
        f3_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 2, f3_local0, TARGET_ENE_0, f3_local2, f3_local3, 360, 0, 0):SetTargetRange(0, -99, 15.3 - f3_arg0:GetMapHitRadius(TARGET_SELF) - 1)
    else
        Halleck526000_Act30(f3_arg0, f3_arg1, f3_arg2)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function Halleck526000_Act02(f4_arg0, f4_arg1, f4_arg2)
    local f4_local0 = 3000
    local f4_local1 = 3001
    local f4_local2 = 3002
    local f4_local3 = 3030
    local f4_local4 = 2 - f4_arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f4_local5 = 20 - f4_arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local6 = f4_arg0:GetRandam_Int(1, 100)
    local f4_local7 = f4_arg0:GetRandam_Int(1, 100)
    f4_arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    f4_arg0:SetTimer(1, 5)
    if InsideRange(f4_arg0, f4_arg1, 0, 120, -1, 2 - f4_arg0:GetMapHitRadius(TARGET_SELF)) and f4_local6 >= 50 then
        f4_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 2, f4_local0, TARGET_ENE_0, f4_local4, 0, 20, 0, 0):SetTargetRange(0, -99, 15.3 - f4_arg0:GetMapHitRadius(TARGET_SELF) - 1)
    elseif InsideRange(f4_arg0, f4_arg1, 180, 150, -1, 1.6 - f4_arg0:GetMapHitRadius(TARGET_SELF) + 1) then
        f4_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 1.5, f4_local1, TARGET_ENE_0, f4_local4, 0, 360, 0, 0):SetTargetRange(0, -99, 15.3 - f4_arg0:GetMapHitRadius(TARGET_SELF) - 1)
    elseif InsideRange(f4_arg0, f4_arg1, 45, 180, 2 - f4_arg0:GetMapHitRadius(TARGET_SELF), 4.1 - f4_arg0:GetMapHitRadius(TARGET_SELF) + 1) then
        f4_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 2, f4_local2, TARGET_ENE_0, f4_local5, 0, 0):SetTargetRange(0, -99, 15.3 - f4_arg0:GetMapHitRadius(TARGET_SELF) - 1)
    elseif InsideRange(f4_arg0, f4_arg1, 300, 105, -1, 10.6 - f4_arg0:GetMapHitRadius(TARGET_SELF)) and f4_local6 >= 50 then
        f4_arg0:SetTimer(1, 8)
        f4_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 2, f4_local3, TARGET_ENE_0, f4_local5, 0, 0):SetTargetRange(0, -99, 15.3 - f4_arg0:GetMapHitRadius(TARGET_SELF) - 1)
    elseif f4_local7 >= 30 and f4_arg0:IsFinishTimer(2) == true then
        Halleck526000_Act19(f4_arg0, f4_arg1, f4_arg2)
    else
        Halleck526000_Act30(f4_arg0, f4_arg1, f4_arg2)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function Halleck526000_Act03(f5_arg0, f5_arg1, f5_arg2)
    local f5_local0 = 3003
    local f5_local1 = 2 - f5_arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f5_local2 = 20 - f5_arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local3 = f5_arg0:GetRandam_Int(1, 100)
    f5_arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    f5_arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    f5_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 1.5, f5_local0, TARGET_ENE_0, f5_local2, 0, 360, 0, 0):SetTargetRange(0, -99, 15.3 - f5_arg0:GetMapHitRadius(TARGET_SELF) - 1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function Halleck526000_Act04(f6_arg0, f6_arg1, f6_arg2)
    local f6_local0 = 7.8 - f6_arg0:GetMapHitRadius(TARGET_SELF) - 1
    local f6_local1 = 7.8 - f6_arg0:GetMapHitRadius(TARGET_SELF) - 1
    local f6_local2 = 7.8 - f6_arg0:GetMapHitRadius(TARGET_SELF) - 1
    local f6_local3 = 100
    local f6_local4 = 0
    local f6_local5 = 5
    local f6_local6 = 5
    Approach_Act_Flex(f6_arg0, f6_arg1, f6_local0, f6_local1, f6_local2, f6_local3, f6_local4, f6_local5, f6_local6)
    local f6_local7 = 3004
    local f6_local8 = 20 - f6_arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local9 = 1
    local f6_local10 = 120
    local f6_local11 = f6_arg0:GetRandam_Int(1, 100)
    f6_arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    f6_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f6_local7, TARGET_ENE_0, DistToAtt1, f6_local9, f6_local10, 0, 0):SetTargetRange(0, -99, 15.3 - f6_arg0:GetMapHitRadius(TARGET_SELF) - 1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function Halleck526000_Act05(f7_arg0, f7_arg1, f7_arg2)
    local f7_local0 = 3006
    local f7_local1 = 3007
    local f7_local2 = 3005
    local f7_local3 = 7.8 - f7_arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f7_local4 = 20 - f7_arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local5 = f7_arg0:GetRandam_Int(1, 100)
    if InsideRange(f7_arg0, f7_arg1, 270, 90, 3, 9.8 - f7_arg0:GetMapHitRadius(TARGET_SELF) + 1) then
        f7_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f7_local0, TARGET_ENE_0, f7_local3, 0, 360, 0, 0):SetTargetRange(0, -99, 15.3 - f7_arg0:GetMapHitRadius(TARGET_SELF) - 1)
    elseif InsideRange(f7_arg0, f7_arg1, 90, 120, 0, 8.8 - f7_arg0:GetMapHitRadius(TARGET_SELF)) then
        f7_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f7_local1, TARGET_ENE_0, f7_local3, 0, 360, 0, 0):SetTargetRange(0, -99, 15.3 - f7_arg0:GetMapHitRadius(TARGET_SELF) - 1)
    else
        f7_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f7_local2, TARGET_ENE_0, f7_local4, 0, 0):SetTargetRange(0, -99, 15.3 - f7_arg0:GetMapHitRadius(TARGET_SELF) - 1)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function Halleck526000_Act06(f8_arg0, f8_arg1, f8_arg2)
    local f8_local0 = 14.8 - f8_arg0:GetMapHitRadius(TARGET_SELF) - 1
    local f8_local1 = 14.8 - f8_arg0:GetMapHitRadius(TARGET_SELF) - 1
    local f8_local2 = 14.8 - f8_arg0:GetMapHitRadius(TARGET_SELF) - 1
    local f8_local3 = 100
    local f8_local4 = 0
    local f8_local5 = 5
    local f8_local6 = 5
    Approach_Act_Flex(f8_arg0, f8_arg1, f8_local0, f8_local1, f8_local2, f8_local3, f8_local4, f8_local5, f8_local6)
    local f8_local7 = 3010
    local f8_local8 = 20 - f8_arg0:GetMapHitRadius(TARGET_SELF)
    local f8_local9 = 1
    local f8_local10 = 120
    local f8_local11 = f8_arg0:GetRandam_Int(1, 100)
    f8_arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    f8_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f8_local7, TARGET_ENE_0, f8_local8, f8_local9, f8_local10, 0, 0):SetTargetRange(0, -99, 15.3 - f8_arg0:GetMapHitRadius(TARGET_SELF) - 1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function Halleck526000_Act07(f9_arg0, f9_arg1, f9_arg2)
    local f9_local0 = 3008
    local f9_local1 = 20 - f9_arg0:GetMapHitRadius(TARGET_SELF)
    local f9_local2 = f9_arg0:GetRandam_Int(1, 100)
    f9_arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    f9_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 1.5, f9_local0, TARGET_ENE_0, 0, 0, 0, 0):SetTargetRange(0, -99, 15.3 - f9_arg0:GetMapHitRadius(TARGET_SELF) - 1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function Halleck526000_Act08(f10_arg0, f10_arg1, f10_arg2)
    local f10_local0 = 6.8 - f10_arg0:GetMapHitRadius(TARGET_SELF) - 1
    local f10_local1 = 6.8 - f10_arg0:GetMapHitRadius(TARGET_SELF) - 1
    local f10_local2 = 6.8 - f10_arg0:GetMapHitRadius(TARGET_SELF) - 1
    local f10_local3 = 100
    local f10_local4 = 0
    local f10_local5 = 5
    local f10_local6 = 5
    Approach_Act_Flex(f10_arg0, f10_arg1, f10_local0, f10_local1, f10_local2, f10_local3, f10_local4, f10_local5, f10_local6)
    local f10_local7 = 3013
    local f10_local8 = 3014
    local f10_local9 = 3015
    local f10_local10 = 9.8 - f10_arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f10_local11 = 7.8 - f10_arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f10_local12 = 20 - f10_arg0:GetMapHitRadius(TARGET_SELF)
    local f10_local13 = 1
    local f10_local14 = 150
    local f10_local15 = f10_arg0:GetRandam_Int(1, 100)
    if f10_arg0:HasSpecialEffectId(TARGET_SELF, 11400) then
        f10_arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    end
    f10_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f10_local7, TARGET_ENE_0, f10_local10, f10_local13, f10_local14, 0, 0):SetTargetRange(0, -99, 15.3 - f10_arg0:GetMapHitRadius(TARGET_SELF) - 1)
    f10_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f10_local8, TARGET_ENE_0, f10_local11, 0, 0):SetTargetRange(0, -99, 15.3 - f10_arg0:GetMapHitRadius(TARGET_SELF) - 1)
    f10_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f10_local9, TARGET_ENE_0, f10_local12, 0, 0):SetTargetRange(0, -99, 15.3 - f10_arg0:GetMapHitRadius(TARGET_SELF) - 1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function Halleck526000_Act09(f11_arg0, f11_arg1, f11_arg2)
    local f11_local0 = 3014
    local f11_local1 = 3015
    local f11_local2 = 7.8 - f11_arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f11_local3 = 20 - f11_arg0:GetMapHitRadius(TARGET_SELF)
    local f11_local4 = f11_arg0:GetRandam_Int(1, 100)
    if f11_arg0:HasSpecialEffectId(TARGET_SELF, 11400) then
        f11_arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    end
    f11_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f11_local0, TARGET_ENE_0, f11_local2, 0, 0, 0, 0):SetTargetRange(0, -99, 15.3 - f11_arg0:GetMapHitRadius(TARGET_SELF) - 1)
    f11_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f11_local1, TARGET_ENE_0, f11_local3, 0, 0):SetTargetRange(0, -99, 15.3 - f11_arg0:GetMapHitRadius(TARGET_SELF) - 1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function Halleck526000_Act10(f12_arg0, f12_arg1, f12_arg2)
    local f12_local0 = 15.8 - f12_arg0:GetMapHitRadius(TARGET_SELF) - 1.5
    local f12_local1 = 15.8 - f12_arg0:GetMapHitRadius(TARGET_SELF) - 1.5
    local f12_local2 = 15.8 - f12_arg0:GetMapHitRadius(TARGET_SELF) - 1.5
    local f12_local3 = 100
    local f12_local4 = 0
    local f12_local5 = 5
    local f12_local6 = 5
    Approach_Act_Flex(f12_arg0, f12_arg1, f12_local0, f12_local1, f12_local2, f12_local3, f12_local4, f12_local5, f12_local6)
    local f12_local7 = 3011
    local f12_local8 = 3012
    local f12_local9 = 9.8 - f12_arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f12_local10 = 20 - f12_arg0:GetMapHitRadius(TARGET_SELF)
    local f12_local11 = 1
    local f12_local12 = 150
    local f12_local13 = f12_arg0:GetRandam_Int(1, 100)
    f12_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f12_local7, TARGET_ENE_0, f12_local10, f12_local11, f12_local12, 0, 0)
    f12_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f12_local8, TARGET_ENE_0, f12_local10, 0, 0):SetTargetRange(0, -99, 15.3 - f12_arg0:GetMapHitRadius(TARGET_SELF) - 1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function Halleck526000_Act11(f13_arg0, f13_arg1, f13_arg2)
    local f13_local0 = 3009
    local f13_local1 = 15.8 - f13_arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f13_local2 = 20 - f13_arg0:GetMapHitRadius(TARGET_SELF)
    local f13_local3 = f13_arg0:GetRandam_Int(1, 100)
    f13_arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    f13_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 1.5, f13_local0, TARGET_ENE_0, f13_local1, 0, 360, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function Halleck526000_Act12(f14_arg0, f14_arg1, f14_arg2)
    local f14_local0 = 9.8 - f14_arg0:GetMapHitRadius(TARGET_SELF) - 1.5
    local f14_local1 = 9.8 - f14_arg0:GetMapHitRadius(TARGET_SELF) - 1.5
    local f14_local2 = 9.8 - f14_arg0:GetMapHitRadius(TARGET_SELF) - 1.5
    local f14_local3 = 100
    local f14_local4 = 0
    local f14_local5 = 5
    local f14_local6 = 5
    Approach_Act_Flex(f14_arg0, f14_arg1, f14_local0, f14_local1, f14_local2, f14_local3, f14_local4, f14_local5, f14_local6)
    local f14_local7 = 3016
    local f14_local8 = 20 - f14_arg0:GetMapHitRadius(TARGET_SELF)
    local f14_local9 = 1
    local f14_local10 = 120
    local f14_local11 = f14_arg0:GetRandam_Int(1, 100)
    f14_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f14_local7, TARGET_ENE_0, 20 - f14_arg0:GetMapHitRadius(TARGET_SELF), f14_local9, f14_local10, 0, 0):SetTargetRange(0, -99, 15.3 - f14_arg0:GetMapHitRadius(TARGET_SELF) - 1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function Halleck526000_Act13(f15_arg0, f15_arg1, f15_arg2)
    local f15_local0 = 3017
    local f15_local1 = 20 - f15_arg0:GetMapHitRadius(TARGET_SELF)
    local f15_local2 = 1
    local f15_local3 = 150
    local f15_local4 = f15_arg0:GetRandam_Int(1, 100)
    f15_arg0:SetTimer(0, 12)
    f15_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 5, f15_local0, TARGET_ENE_0, 9.8 - f15_arg0:GetMapHitRadius(TARGET_SELF) + 1, f15_local2, f15_local3, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Halleck526000_Act14(f16_arg0, f16_arg1, f16_arg2)
    local f16_local0 = 3011
    local f16_local1 = 3012
    local f16_local2 = 20 - f16_arg0:GetMapHitRadius(TARGET_SELF)
    local f16_local3 = f16_arg0:GetRandam_Int(1, 100)
    f16_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f16_local0, TARGET_ENE_0, f16_local2, 0, 180, 0, 0)
    f16_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f16_local1, TARGET_ENE_0, f16_local2, 0, 0):SetTargetRange(0, -99, 15.3 - f16_arg0:GetMapHitRadius(TARGET_SELF) - 1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function Halleck526000_Act15(f17_arg0, f17_arg1, f17_arg2)
    local f17_local0 = 3030
    local f17_local1 = 20 - f17_arg0:GetMapHitRadius(TARGET_SELF)
    local f17_local2 = 1
    local f17_local3 = 360
    local f17_local4 = f17_arg0:GetRandam_Int(1, 100)
    f17_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f17_local0, TARGET_ENE_0, 9.8 - f17_arg0:GetMapHitRadius(TARGET_SELF) + 1, f17_local2, f17_local3, 0, 0):SetTargetRange(0, -99, 15.3 - f17_arg0:GetMapHitRadius(TARGET_SELF) - 1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function Halleck526000_Act16(f18_arg0, f18_arg1, f18_arg2)
    local f18_local0 = f18_arg0:GetRandam_Int(1, 100)
    local f18_local1 = f18_arg0:GetRandam_Int(1, 100)
    f18_arg0:SetTimer(1, 8)
    if InsideRange(f18_arg0, f18_arg1, 180, 180, -1, 1 - f18_arg0:GetMapHitRadius(TARGET_SELF)) then
        Halleck526000_Act03(f18_arg0, f18_arg1, f18_arg2)
    elseif InsideRange(f18_arg0, f18_arg1, 150, 60, 2, 10.8 - f18_arg0:GetMapHitRadius(TARGET_SELF)) then
        Halleck526000_Act07(f18_arg0, f18_arg1, f18_arg2)
    elseif InsideRange(f18_arg0, f18_arg1, 180, 120, 1, 4.5 - f18_arg0:GetMapHitRadius(TARGET_SELF)) then
        Halleck526000_Act11(f18_arg0, f18_arg1, f18_arg2)
    elseif InsideRange(f18_arg0, f18_arg1, 300, 105, -1, 10.6 - f18_arg0:GetMapHitRadius(TARGET_SELF)) and f18_local0 >= 50 then
        Halleck526000_Act15(f18_arg0, f18_arg1, f18_arg2)
    elseif InsideRange(f18_arg0, f18_arg1, 0, 360, -1, 3.5) and f18_local1 >= 30 and f18_arg0:IsFinishTimer(2) == true then
        Halleck526000_Act19(f18_arg0, f18_arg1, f18_arg2)
    else
        Halleck526000_Act30(f18_arg0, f18_arg1, f18_arg2)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Halleck526000_Act17(f19_arg0, f19_arg1, f19_arg2)
    local f19_local0 = 11 - f19_arg0:GetMapHitRadius(TARGET_SELF) - 2
    local f19_local1 = 14.8 - f19_arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f19_local2 = 14.8 - f19_arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f19_local3 = 100
    local f19_local4 = 0
    local f19_local5 = 5
    local f19_local6 = 5
    Approach_Act_Flex(f19_arg0, f19_arg1, f19_local0, f19_local1, f19_local2, f19_local3, f19_local4, f19_local5, f19_local6)
    local f19_local7 = 3018
    local f19_local8 = 20 - f19_arg0:GetMapHitRadius(TARGET_SELF)
    local f19_local9 = 1
    local f19_local10 = 120
    local f19_local11 = f19_arg0:GetRandam_Int(1, 100)
    f19_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f19_local7, TARGET_ENE_0, f19_local8, f19_local9, f19_local10, 0, 0):SetTargetRange(0, -99, 15.3 - f19_arg0:GetMapHitRadius(TARGET_SELF) - 1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function Halleck526000_Act18(f20_arg0, f20_arg1, f20_arg2)
    local f20_local0 = 7 - f20_arg0:GetMapHitRadius(TARGET_SELF) - 2
    local f20_local1 = 7 - f20_arg0:GetMapHitRadius(TARGET_SELF) - 2
    local f20_local2 = 7 - f20_arg0:GetMapHitRadius(TARGET_SELF) - 2
    local f20_local3 = 100
    local f20_local4 = 0
    local f20_local5 = 5
    local f20_local6 = 5
    Approach_Act_Flex(f20_arg0, f20_arg1, f20_local0, f20_local1, f20_local2, f20_local3, f20_local4, f20_local5, f20_local6)
    local f20_local7 = 3019
    local f20_local8 = 3020
    local f20_local9 = 9.5 - f20_arg0:GetMapHitRadius(TARGET_SELF)
    local f20_local10 = 20 - f20_arg0:GetMapHitRadius(TARGET_SELF)
    local f20_local11 = 1
    local f20_local12 = 90
    local f20_local13 = f20_arg0:GetRandam_Int(1, 100)
    f20_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f20_local7, TARGET_ENE_0, f20_local9, f20_local11, f20_local12, 0, 0)
    f20_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f20_local8, TARGET_ENE_0, f20_local10, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function Halleck526000_Act19(f21_arg0, f21_arg1, f21_arg2)
    local f21_local0 = 3021
    local f21_local1 = 3010
    local f21_local2 = 14.8 - f21_arg0:GetMapHitRadius(TARGET_SELF)
    local f21_local3 = 20 - f21_arg0:GetMapHitRadius(TARGET_SELF)
    local f21_local4 = 1
    local f21_local5 = 180
    local f21_local6 = f21_arg0:GetRandam_Int(1, 100)
    f21_arg0:SetTimer(2, 13)
    if f21_arg0:HasSpecialEffectId(TARGET_SELF, 11400) then
        f21_arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
        f21_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 3, f21_local0, TARGET_ENE_0, f21_local2, f21_local4, f21_local5, 0, 0):SetTargetRange(0, -99, 15.3 - f21_arg0:GetMapHitRadius(TARGET_SELF) - 1)
        f21_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f21_local1, TARGET_ENE_0, f21_local3, 0, 0)
    else
        f21_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 3, f21_local0, TARGET_ENE_0, f21_local3, f21_local4, f21_local5, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Halleck526000_Act20(f22_arg0, f22_arg1, f22_arg2)
    f22_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 1500, TARGET_ENE_0, SuccessDist, 0, 0, 0, 0)
    f22_arg0:SetTimer(10, 10)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Halleck526000_Act30(f23_arg0, f23_arg1, f23_arg2)
    f23_arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 0, 0, 0)
    f23_arg0:SetTimer(1, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Halleck526000_Act31(f24_arg0, f24_arg1, f24_arg2)
    local f24_local0 = f24_arg0:GetDist(TARGET_ENE_0)
    local f24_local1 = 10
    local f24_local2 = 12
    if f24_local1 <= f24_local0 then
        Approach_Act(f24_arg0, f24_arg1, f24_local1, f24_local2, Odds_Guard, 3)
    end
    f24_arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, f24_local1, TARGET_ENE_0, true, -1)
    
end

function Halleck526000_Act32(f25_arg0, f25_arg1, f25_arg2)
    local f25_local0 = f25_arg0:GetRandam_Float(4, 6)
    f25_arg0:AddObserveArea(1, TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, 12)
    f25_arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f25_local0, TARGET_ENE_0, 5, TARGET_SELF, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Halleck526000_Act40(f26_arg0, f26_arg1, f26_arg2)
    local f26_local0 = 3021
    local f26_local1 = 3017
    local f26_local2 = 3021
    local f26_local3 = 999
    local f26_local4 = 999
    local f26_local5 = 20 - f26_arg0:GetMapHitRadius(TARGET_SELF)
    local f26_local6 = 1.5
    local f26_local7 = 360
    local f26_local8 = f26_arg0:GetRandam_Int(1, 100)
    f26_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f26_local0, TARGET_ENE_0, f26_local3, f26_local6, f26_local7, 0, 0)
    f26_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f26_local1, TARGET_ENE_0, f26_local4, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function Halleck526000_ActAfter_AdjustSpace(f27_arg0, f27_arg1, f27_arg2)
    f27_arg1:AddSubGoal(GOAL_Halleck526000_AfterAttackAct, 10)
    
end

Goal.Update = function (f28_arg0, f28_arg1, f28_arg2)
    return Update_Default_NoSubGoal(f28_arg0, f28_arg1, f28_arg2)
    
end

Goal.Terminate = function (f29_arg0, f29_arg1, f29_arg2)
    
end

Goal.Interrupt = function (f30_arg0, f30_arg1, f30_arg2)
    if f30_arg1:IsInterupt(INTERUPT_Inside_ObserveArea) then
        local f30_local0 = f30_arg1:GetDist(TARGET_ENE_0)
        local f30_local1 = f30_arg1:GetRandam_Int(1, 100)
        if f30_arg1:IsInsideObserve(1) then
            f30_arg1:SetTimer(10, 0)
            f30_arg1:Replaning()
            f30_arg1:DeleteObserve(1)
            return true
        end
    end
    if f30_arg1:IsInterupt(INTERUPT_TargetOutOfRange) and f30_arg1:IsTargetOutOfRangeInterruptSlot(0) and InsideRange(f30_arg1, f30_arg2, 0, 90, 15.3 - f30_arg1:GetMapHitRadius(TARGET_SELF) - 1.5, 22.8 - f30_arg1:GetMapHitRadius(TARGET_SELF)) and f30_arg1:HasSpecialEffectId(TARGET_SELF, 11400) and f30_arg1:IsFinishTimer(0) == true then
        f30_arg1:SetTimer(0, 12)
        f30_arg2:ClearSubGoal()
        Halleck526000_Act13(f30_arg1, f30_arg2, paramTbl)
        return true
    end
    if f30_arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) then
        local f30_local0 = f30_arg1:GetDist(TARGET_ENE_0)
        local f30_local1 = f30_arg1:GetRandam_Int(1, 100)
        if f30_arg1:GetSpecialEffectActivateInterruptType(0) == 5025 and f30_arg1:HasSpecialEffectId(TARGET_ENE_0, 90) == false and f30_local0 <= 5 then
            f30_arg2:ClearSubGoal()
            Halleck526000_Act02(f30_arg1, f30_arg2, paramTbl)
            return true
        else
        end
        if f30_arg1:GetSpecialEffectActivateInterruptType(0) == 5026 and InsideRange(f30_arg1, f30_arg2, 0, 180, 0, 7.8 - f30_arg1:GetMapHitRadius(TARGET_SELF)) then
            f30_arg2:ClearSubGoal()
            Halleck526000_Act05(f30_arg1, f30_arg2, paramTbl)
            return true
        else
        end
        if f30_arg1:GetSpecialEffectActivateInterruptType(0) == 5027 and InsideRange(f30_arg1, f30_arg2, 0, 120, 3, 9.8 - f30_arg1:GetMapHitRadius(TARGET_SELF) + 1) and f30_local1 >= 50 then
            f30_arg2:ClearSubGoal()
            Halleck526000_Act09(f30_arg1, f30_arg2, paramTbl)
            return true
        else
        end
        if f30_arg1:GetSpecialEffectActivateInterruptType(0) == 5028 and InsideRange(f30_arg1, f30_arg2, 330, 120, 3, 15.8 - f30_arg1:GetMapHitRadius(TARGET_SELF) + 1) then
            f30_arg2:ClearSubGoal()
            Halleck526000_Act14(f30_arg1, f30_arg2, paramTbl)
            return true
        else
        end
        if f30_arg1:GetSpecialEffectActivateInterruptType(0) == 5029 and InsideRange(f30_arg1, f30_arg2, 330, 75, 4.5, 9.8 - f30_arg1:GetMapHitRadius(TARGET_SELF) + 1) then
            f30_arg2:ClearSubGoal()
            f30_arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3031, TARGET_ENE_0, 9.8 - f30_arg1:GetMapHitRadius(TARGET_SELF) + 1, 0, 0):SetTargetRange(0, -99, 15.3 - f30_arg1:GetMapHitRadius(TARGET_SELF) - 1)
            if f30_arg1:HasSpecialEffectId(TARGET_SELF, 11400) then
                f30_arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3012, TARGET_ENE_0, SuccessDist, 0, 0):SetTargetRange(0, -99, 15.3 - f30_arg1:GetMapHitRadius(TARGET_SELF) - 1)
            end
            return true
        else
        end
        if f30_arg1:GetSpecialEffectActivateInterruptType(0) == 100920 then
            f30_arg1:DeleteObserveSpecialEffectAttribute(TARGET_ENE_0, 100920)
            if f30_arg1:HasSpecialEffectId(TARGET_SELF, 5033) == true then
                f30_arg1:Replaning()
                return true
            else
            end
        end
        if f30_arg1:GetSpecialEffectActivateInterruptType(0) == 100921 then
            f30_arg1:DeleteObserveSpecialEffectAttribute(TARGET_ENE_0, 100921)
            if f30_arg1:HasSpecialEffectId(TARGET_SELF, 5033) == true then
                f30_arg1:Replaning()
                return true
            else
            end
        end
    end
    return false
    
end

RegisterTableGoal(GOAL_Halleck526000_AfterAttackAct, "Halleck526000_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_Halleck526000_AfterAttackAct, true)

Goal.Activate = function (f31_arg0, f31_arg1, f31_arg2)
    local f31_local0 = f31_arg1:GetDist(TARGET_ENE_0)
    local f31_local1 = f31_arg1:GetToTargetAngle(TARGET_ENE_0)
    local f31_local2 = f31_arg1:GetRandam_Int(1, 100)
    local f31_local3 = f31_arg1:GetRandam_Float(3, 4)
    local f31_local4 = f31_arg1:GetHpRate(TARGET_SELF)
    if f31_arg1:HasSpecialEffectId(TARGET_ENE_0, 100910) == false and f31_arg1:HasSpecialEffectId(TARGET_ENE_0, 100911) == false and f31_local4 >= 0.3 then
        f31_arg1:AddObserveArea(1, TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, 9)
        f31_arg2:AddSubGoal(GOAL_COMMON_ApproachTarget, f31_local3, TARGET_ENE_0, 5, TARGET_SELF, true, -1)
    end
    
end

Goal.Update = function (f32_arg0, f32_arg1, f32_arg2)
    return Update_Default_NoSubGoal(f32_arg0, f32_arg1, f32_arg2)
    
end

Goal.Terminate = function (f33_arg0, f33_arg1, f33_arg2)
    
end

Goal.Interrupt = function (f34_arg0, f34_arg1, f34_arg2)
    if f34_arg1:IsInterupt(INTERUPT_Inside_ObserveArea) then
        local f34_local0 = f34_arg1:GetDist(TARGET_ENE_0)
        local f34_local1 = f34_arg1:GetRandam_Int(1, 100)
        if f34_arg1:IsInsideObserve(1) then
            f34_arg1:Replaning()
            f34_arg1:DeleteObserve(1)
            return true
        end
    end
    if f34_arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) then
        if f34_arg1:GetSpecialEffectActivateInterruptType(0) == 100920 then
            f34_arg1:DeleteObserveSpecialEffectAttribute(TARGET_ENE_0, 100920)
            if f34_arg1:HasSpecialEffectId(TARGET_SELF, 5033) == true then
                f34_arg1:Replaning()
                return true
            else
            end
        end
        if f34_arg1:GetSpecialEffectActivateInterruptType(0) == 100921 then
            f34_arg1:DeleteObserveSpecialEffectAttribute(TARGET_ENE_0, 100921)
            if f34_arg1:HasSpecialEffectId(TARGET_SELF, 5033) == true then
                f34_arg1:Replaning()
                return true
            else
            end
        end
    end
    return false
    
end


