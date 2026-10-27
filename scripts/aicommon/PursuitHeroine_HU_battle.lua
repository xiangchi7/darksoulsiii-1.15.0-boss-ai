RegisterTableGoal(GOAL_PursuitHeroine527000_HU_Battle, "PursuitHeroineHUBattle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_PursuitHeroine527000_HU_Battle, true)

Goal.Initialize = function (f1_arg0, f1_arg1, f1_arg2, f1_arg3)
    f1_arg1:StartAttackPassedTimer(3002, 0)
    f1_arg1:StartAttackPassedTimer(3016, 0)
    
end

Goal.Activate = function (f2_arg0, f2_arg1, f2_arg2)
    local f2_local0 = {}
    local f2_local1 = {}
    local f2_local2 = {}
    Common_Clear_Param(f2_local0, f2_local1, f2_local2)
    Init_Pseudo_Global(f2_arg1, f2_arg2)
    f2_arg1:SetStringIndexedNumber("Dist_SideStep", 0 + 1)
    f2_arg1:SetStringIndexedNumber("Dist_BackStep", 0 + 1)
    f2_arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    local f2_local3 = f2_arg1:GetDist(TARGET_ENE_0)
    if f2_arg1:HasSpecialEffectId(TARGET_SELF, 5020) == false then
        f2_local0[13] = 100
    else
        if InsideRange(f2_arg1, f2_arg2, 180, 180, 8, 999) then
            f2_local0[2] = 0
            f2_local0[6] = 0
            f2_local0[7] = 5
            f2_local0[8] = 5
            f2_local0[9] = 10
            f2_local0[10] = 10
            f2_local0[13] = 10
            f2_local0[30] = 5
        elseif InsideRange(f2_arg1, f2_arg2, 180, 150, -10, 8) then
            f2_local0[2] = 20
            f2_local0[6] = 10
            f2_local0[9] = 5
            f2_local0[12] = 10
            f2_local0[13] = 0
            f2_local0[15] = 0
            f2_local0[16] = 0
            f2_local0[17] = 0
            f2_local0[30] = 0
        elseif f2_local3 >= 8 then
            f2_local0[1] = 10
            f2_local0[2] = 0
            f2_local0[4] = 0
            f2_local0[5] = 0
            f2_local0[7] = 5
            f2_local0[8] = 5
            f2_local0[9] = 0
            f2_local0[10] = 0
            f2_local0[13] = 10
            f2_local0[14] = 10
            f2_local0[30] = 5
        else
            f2_local0[1] = 0
            f2_local0[2] = 0
            f2_local0[3] = 0
            f2_local0[4] = 10
            f2_local0[5] = 10
            f2_local0[6] = 10
            f2_local0[7] = 0
            f2_local0[8] = 0
            f2_local0[9] = 5
            f2_local0[10] = 0
            f2_local0[11] = 10
            f2_local0[12] = 10
            f2_local0[13] = 0
            f2_local0[14] = 0
            f2_local0[15] = 0
            f2_local0[16] = 0
            f2_local0[30] = 0
        end
        if f2_local3 > 4.5 then
            f2_local0[7] = f2_local0[7] + 10
            f2_local0[8] = f2_local0[8] + 10
            f2_local0[9] = f2_local0[9] + 10
        end
        if InsideRange(f2_arg1, f2_arg2, 300, 60, 6.3 - f2_arg1:GetMapHitRadius(TARGET_SELF), 10.8 - f2_arg1:GetMapHitRadius(TARGET_SELF)) then
            f2_local0[10] = f2_local0[10] + 15
        end
        if f2_local3 < 3 then
            f2_local0[3] = f2_local0[3] + 15
        end
        if InsideRange(f2_arg1, f2_arg2, 90, 180, 0, 3) then
            f2_local0[15] = f2_local0[15] + 30
        end
        if InsideRange(f2_arg1, f2_arg2, 270, 180, 0, 3) then
            f2_local0[16] = f2_local0[16] + 30
        end
        if InsideRange(f2_arg1, f2_arg2, 210, 120, 0, 4) then
            f2_local0[17] = f2_local0[17] + 15
        end
        if InsideRange(f2_arg1, f2_arg2, 0, 90, -10, 2) then
            f2_local0[11] = f2_local0[11] + 20
        end
    end
    f2_local0[30] = f2_local0[30] + 1
    f2_local0[1] = SetCoolTime(f2_arg1, f2_arg2, 3000, 15, f2_local0[1], 1)
    f2_local0[2] = SetCoolTime(f2_arg1, f2_arg2, 3001, 10, f2_local0[2], 1)
    f2_local0[4] = SetCoolTime(f2_arg1, f2_arg2, 3003, 15, f2_local0[4], 1)
    f2_local0[5] = SetCoolTime(f2_arg1, f2_arg2, 3005, 10, f2_local0[5], 1)
    f2_local0[7] = SetCoolTime(f2_arg1, f2_arg2, 3008, 15, f2_local0[7], 1)
    f2_local0[8] = SetCoolTime(f2_arg1, f2_arg2, 3013, 10, f2_local0[8], 1)
    f2_local0[9] = SetCoolTime(f2_arg1, f2_arg2, 3014, 15, f2_local0[9], 1)
    f2_local0[10] = SetCoolTime(f2_arg1, f2_arg2, 3015, 15, f2_local0[10], 1)
    f2_local0[12] = SetCoolTime(f2_arg1, f2_arg2, 3017, 15, f2_local0[12], 1)
    f2_local0[13] = SetCoolTime(f2_arg1, f2_arg2, 3018, 15, f2_local0[13], 1)
    f2_local0[14] = SetCoolTime(f2_arg1, f2_arg2, 3021, 15, f2_local0[14], 1)
    f2_local0[15] = SetCoolTime(f2_arg1, f2_arg2, 3022, 10, f2_local0[15], 1)
    f2_local0[16] = SetCoolTime(f2_arg1, f2_arg2, 3023, 10, f2_local0[16], 1)
    f2_local0[17] = SetCoolTime(f2_arg1, f2_arg2, 3025, 10, f2_local0[17], 1)
    f2_local0[30] = SetCoolTime(f2_arg1, f2_arg2, 2000, 10, f2_local0[30], 1)
    f2_local0[3] = SetCoolTime(f2_arg1, f2_arg2, 3002, 25, f2_local0[3], 1)
    f2_local0[6] = SetCoolTime(f2_arg1, f2_arg2, 3007, 20, f2_local0[6], 1)
    f2_local0[11] = SetCoolTime(f2_arg1, f2_arg2, 3016, 25, f2_local0[11], 1)
    f2_local1[1] = REGIST_FUNC(f2_arg1, f2_arg2, PursuitHeroine_HU_Act01)
    f2_local1[2] = REGIST_FUNC(f2_arg1, f2_arg2, PursuitHeroine_HU_Act02)
    f2_local1[3] = REGIST_FUNC(f2_arg1, f2_arg2, PursuitHeroine_HU_Act03)
    f2_local1[4] = REGIST_FUNC(f2_arg1, f2_arg2, PursuitHeroine_HU_Act04)
    f2_local1[5] = REGIST_FUNC(f2_arg1, f2_arg2, PursuitHeroine_HU_Act05)
    f2_local1[6] = REGIST_FUNC(f2_arg1, f2_arg2, PursuitHeroine_HU_Act06)
    f2_local1[7] = REGIST_FUNC(f2_arg1, f2_arg2, PursuitHeroine_HU_Act07)
    f2_local1[8] = REGIST_FUNC(f2_arg1, f2_arg2, PursuitHeroine_HU_Act08)
    f2_local1[9] = REGIST_FUNC(f2_arg1, f2_arg2, PursuitHeroine_HU_Act09)
    f2_local1[10] = REGIST_FUNC(f2_arg1, f2_arg2, PursuitHeroine_HU_Act10)
    f2_local1[11] = REGIST_FUNC(f2_arg1, f2_arg2, PursuitHeroine_HU_Act11)
    f2_local1[12] = REGIST_FUNC(f2_arg1, f2_arg2, PursuitHeroine_HU_Act12)
    f2_local1[13] = REGIST_FUNC(f2_arg1, f2_arg2, PursuitHeroine_HU_Act13)
    f2_local1[14] = REGIST_FUNC(f2_arg1, f2_arg2, PursuitHeroine_HU_Act14)
    f2_local1[15] = REGIST_FUNC(f2_arg1, f2_arg2, PursuitHeroine_HU_Act15)
    f2_local1[16] = REGIST_FUNC(f2_arg1, f2_arg2, PursuitHeroine_HU_Act16)
    f2_local1[17] = REGIST_FUNC(f2_arg1, f2_arg2, PursuitHeroine_HU_Act17)
    f2_local1[18] = REGIST_FUNC(f2_arg1, f2_arg2, PursuitHeroine_HU_Act18)
    f2_local1[30] = REGIST_FUNC(f2_arg1, f2_arg2, PursuitHeroine_HU_Act30)
    local f2_local4 = REGIST_FUNC(f2_arg1, f2_arg2, PursuitHeroine_HU_ActAfter_AdjustSpace)
    Common_Battle_Activate(f2_arg1, f2_arg2, f2_local0, f2_local1, f2_local4, f2_local2)
    
end

function PursuitHeroine_HU_Act01(f3_arg0, f3_arg1, f3_arg2)
    local f3_local0 = 3000
    local f3_local1 = 15 - f3_arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local2 = 0
    local f3_local3 = 45
    f3_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f3_local0, TARGET_ENE_0, f3_local1, f3_local2, f3_local3, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function PursuitHeroine_HU_Act02(f4_arg0, f4_arg1, f4_arg2)
    local f4_local0 = 3001
    local f4_local1 = 15 - f4_arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local2 = 0
    local f4_local3 = 360
    f4_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f4_local0, TARGET_ENE_0, f4_local1, f4_local2, f4_local3, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function PursuitHeroine_HU_Act03(f5_arg0, f5_arg1, f5_arg2)
    local f5_local0 = 3002
    local f5_local1 = 15 - f5_arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local2 = 0
    local f5_local3 = 360
    f5_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f5_local0, TARGET_ENE_0, f5_local1, f5_local2, f5_local3, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function PursuitHeroine_HU_Act04(f6_arg0, f6_arg1, f6_arg2)
    local f6_local0 = 3003
    local f6_local1 = 3004
    local f6_local2 = 6.3 - f6_arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local3 = 15 - f6_arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local4 = 0
    local f6_local5 = 60
    f6_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f6_local0, TARGET_ENE_0, f6_local2, f6_local4, f6_local5, 0, 0)
    f6_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f6_local1, TARGET_ENE_0, f6_local3, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function PursuitHeroine_HU_Act05(f7_arg0, f7_arg1, f7_arg2)
    local f7_local0 = 3005
    local f7_local1 = 3006
    local f7_local2 = 6.3 - f7_arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local3 = 15 - f7_arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local4 = 0
    local f7_local5 = 90
    f7_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f7_local0, TARGET_ENE_0, f7_local2, f7_local4, f7_local5, 0, 0)
    f7_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f7_local1, TARGET_ENE_0, f7_local3, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function PursuitHeroine_HU_Act06(f8_arg0, f8_arg1, f8_arg2)
    local f8_local0 = 3007
    local f8_local1 = 15 - f8_arg0:GetMapHitRadius(TARGET_SELF)
    local f8_local2 = 0
    local f8_local3 = 360
    f8_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f8_local0, TARGET_ENE_0, f8_local1, f8_local2, f8_local3, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function PursuitHeroine_HU_Act07(f9_arg0, f9_arg1, f9_arg2)
    local f9_local0 = f9_arg0:GetRandam_Int(1, 100)
    local f9_local1 = 3008
    local f9_local2 = 3009
    local f9_local3 = 3024
    local f9_local4 = 8.3 - f9_arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f9_local5 = 11 - f9_arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f9_local6 = 15 - f9_arg0:GetMapHitRadius(TARGET_SELF)
    local f9_local7 = 0
    local f9_local8 = 90
    if f9_local0 <= 30 then
        f9_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f9_local1, TARGET_ENE_0, f9_local5, f9_local7, f9_local8, 0, 0)
        f9_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f9_local3, TARGET_ENE_0, f9_local6, 0, 0):SetTargetRange(0, -99, 8)
    else
        f9_arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
        f9_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f9_local1, TARGET_ENE_0, f9_local4, f9_local7, f9_local8, 0, 0)
        f9_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f9_local2, TARGET_ENE_0, f9_local6, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function PursuitHeroine_HU_Act08(f10_arg0, f10_arg1, f10_arg2)
    local f10_local0 = 3013
    local f10_local1 = 15 - f10_arg0:GetMapHitRadius(TARGET_SELF)
    local f10_local2 = 0
    local f10_local3 = 90
    f10_arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    f10_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f10_local0, TARGET_ENE_0, f10_local1, f10_local2, f10_local3, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function PursuitHeroine_HU_Act09(f11_arg0, f11_arg1, f11_arg2)
    local f11_local0 = f11_arg0:GetRandam_Int(1, 100)
    local f11_local1 = 3014
    local f11_local2 = 3009
    local f11_local3 = 3024
    local f11_local4 = 8.3 - f11_arg0:GetMapHitRadius(TARGET_SELF) + 1.5
    local f11_local5 = 11 - f11_arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f11_local6 = 15 - f11_arg0:GetMapHitRadius(TARGET_SELF)
    local f11_local7 = 0
    local f11_local8 = 180
    if f11_local0 <= 30 then
        f11_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f11_local1, TARGET_ENE_0, f11_local5, f11_local7, f11_local8, 0, 0)
        f11_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f11_local3, TARGET_ENE_0, f11_local6, 0, 0):SetTargetRange(0, -99, 8)
    else
        f11_arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
        f11_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f11_local1, TARGET_ENE_0, f11_local4, f11_local7, f11_local8, 0, 0)
        f11_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, f11_local2, TARGET_ENE_0, f11_local6, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function PursuitHeroine_HU_Act10(f12_arg0, f12_arg1, f12_arg2)
    local f12_local0 = 3015
    local f12_local1 = 15 - f12_arg0:GetMapHitRadius(TARGET_SELF)
    local f12_local2 = 0
    local f12_local3 = 90
    f12_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f12_local0, TARGET_ENE_0, f12_local1, f12_local2, f12_local3, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function PursuitHeroine_HU_Act11(f13_arg0, f13_arg1, f13_arg2)
    local f13_local0 = 3016
    local f13_local1 = 15 - f13_arg0:GetMapHitRadius(TARGET_SELF)
    local f13_local2 = 0
    local f13_local3 = 90
    if f13_arg0:IsFinishTimer(0) == true then
        f13_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f13_local0, TARGET_ENE_0, f13_local1, f13_local2, f13_local3, 0, 0)
    else
        f13_arg0:Replaning()
    end
    f13_arg0:SetTimer(0, 24)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function PursuitHeroine_HU_Act12(f14_arg0, f14_arg1, f14_arg2)
    local f14_local0 = 3017
    local f14_local1 = 15 - f14_arg0:GetMapHitRadius(TARGET_SELF)
    local f14_local2 = 0
    local f14_local3 = 360
    f14_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f14_local0, TARGET_ENE_0, f14_local1, f14_local2, f14_local3, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function PursuitHeroine_HU_Act13(f15_arg0, f15_arg1, f15_arg2)
    local f15_local0 = DIST_None
    local f15_local1 = 0
    local f15_local2 = 360
    local f15_local3 = 3018
    local f15_local4 = 3019
    local f15_local5 = 3020
    local f15_local6 = f15_arg0:GetDist(TARGET_ENE_0)
    f15_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f15_local3, TARGET_ENE_0, f15_local0, f15_local1, f15_local2)
    if InsideRange(f15_arg0, f15_arg1, 180, 180, -10, 999) then
        f15_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, f15_local4, TARGET_ENE_0, f15_local0)
        f15_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, f15_local4, TARGET_ENE_0, f15_local0)
        f15_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, f15_local4, TARGET_ENE_0, f15_local0)
    end
    if f15_local6 >= 15 then
        f15_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, f15_local4, TARGET_ENE_0, f15_local0)
        f15_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, f15_local4, TARGET_ENE_0, f15_local0)
        f15_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, f15_local4, TARGET_ENE_0, f15_local0)
        f15_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, f15_local4, TARGET_ENE_0, f15_local0)
        f15_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, f15_local4, TARGET_ENE_0, f15_local0)
        f15_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, f15_local4, TARGET_ENE_0, f15_local0)
    elseif f15_local6 >= 10 then
        f15_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, f15_local4, TARGET_ENE_0, f15_local0)
        f15_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, f15_local4, TARGET_ENE_0, f15_local0)
        f15_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, f15_local4, TARGET_ENE_0, f15_local0)
        f15_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, f15_local4, TARGET_ENE_0, f15_local0)
    elseif f15_local6 >= 6 then
        f15_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, f15_local4, TARGET_ENE_0, f15_local0)
        f15_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, f15_local4, TARGET_ENE_0, f15_local0)
        f15_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, f15_local4, TARGET_ENE_0, f15_local0)
    else
        f15_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, f15_local4, TARGET_ENE_0, f15_local0)
        f15_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, f15_local4, TARGET_ENE_0, f15_local0)
    end
    f15_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f15_local5, TARGET_ENE_0, f15_local0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function PursuitHeroine_HU_Act14(f16_arg0, f16_arg1, f16_arg2)
    local f16_local0 = 3021
    local f16_local1 = 15 - f16_arg0:GetMapHitRadius(TARGET_SELF)
    local f16_local2 = 0
    local f16_local3 = 180
    f16_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f16_local0, TARGET_ENE_0, f16_local1, f16_local2, f16_local3, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function PursuitHeroine_HU_Act15(f17_arg0, f17_arg1, f17_arg2)
    local f17_local0 = 3022
    local f17_local1 = 15 - f17_arg0:GetMapHitRadius(TARGET_SELF)
    local f17_local2 = 0
    local f17_local3 = 360
    f17_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f17_local0, TARGET_ENE_0, f17_local1, f17_local2, f17_local3, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function PursuitHeroine_HU_Act16(f18_arg0, f18_arg1, f18_arg2)
    local f18_local0 = 3023
    local f18_local1 = 15 - f18_arg0:GetMapHitRadius(TARGET_SELF)
    local f18_local2 = 0
    local f18_local3 = 360
    f18_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f18_local0, TARGET_ENE_0, f18_local1, f18_local2, f18_local3, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function PursuitHeroine_HU_Act17(f19_arg0, f19_arg1, f19_arg2)
    local f19_local0 = 3025
    local f19_local1 = 3004
    local f19_local2 = 10 - f19_arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f19_local3 = 15 - f19_arg0:GetMapHitRadius(TARGET_SELF)
    local f19_local4 = 0
    local f19_local5 = 360
    f19_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f19_local0, TARGET_ENE_0, f19_local2, f19_local4, f19_local5, 0, 0)
    f19_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f19_local1, TARGET_ENE_0, f19_local3, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function PursuitHeroine_HU_Act18(f20_arg0, f20_arg1, f20_arg2)
    local f20_local0 = 3010
    local f20_local1 = 3011
    local f20_local2 = 3012
    local f20_local3 = 15 - f20_arg0:GetMapHitRadius(TARGET_SELF)
    if InsideRange(f20_arg0, f20_arg1, 240, 120, 0, 2.5) then
        f20_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f20_local0, TARGET_ENE_0, f20_local3, 0, 0)
    elseif InsideRange(f20_arg0, f20_arg1, 0, 105, 2, 5.8) then
        f20_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f20_local1, TARGET_ENE_0, f20_local3, 0, 0)
    elseif InsideRange(f20_arg0, f20_arg1, 120, 120, 0, 2.8) then
        f20_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f20_local2, TARGET_ENE_0, f20_local3, 0, 0)
    else
        f20_arg0:Replaning()
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function PursuitHeroine_HU_Act30(f21_arg0, f21_arg1, f21_arg2)
    f21_arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, 4, TARGET_ENE_0, 7, TARGET_ENE_0, true, -1, f21_arg0:GetRandam_Int(AI_DIR_TYPE_ToL, AI_DIR_TYPE_ToR), f21_arg0:GetRandam_Float(5, 7))
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function PursuitHeroine_HU_ActAfter_AdjustSpace(f22_arg0, f22_arg1, f22_arg2)
    local f22_local0 = f22_arg0:GetRandam_Int(1, 100)
    if f22_arg0:GetHpRate(TARGET_SELF) <= 0.3 and (InsideRange(f22_arg0, f22_arg1, 0, 360, -10, 3) or f22_local0 <= 80) then
    elseif f22_arg0:GetHpRate(TARGET_SELF) <= 0.6 and (InsideRange(f22_arg0, f22_arg1, 0, 360, -10, 3) or f22_local0 <= 20) then
    else
        f22_arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, f22_arg0:GetRandam_Float(2, 3), TARGET_ENE_0, 7, TARGET_ENE_0, true, -1, f22_arg0:GetRandam_Int(AI_DIR_TYPE_ToL, AI_DIR_TYPE_ToR), f22_arg0:GetRandam_Float(5, 7))
    end
    
end

Goal.Update = function (f23_arg0, f23_arg1, f23_arg2)
    return Update_Default_NoSubGoal(f23_arg0, f23_arg1, f23_arg2)
    
end

Goal.Terminate = function (f24_arg0, f24_arg1, f24_arg2)
    
end

Goal.Interrupt = function (f25_arg0, f25_arg1, f25_arg2)
    local f25_local0 = f25_arg1:GetRandam_Int(1, 100)
    local f25_local1 = f25_arg1:GetDist(TARGET_ENE_0)
    if f25_arg1:HasSpecialEffectId(TARGET_SELF, 5025) and f25_local0 <= 30 and f25_arg1:IsInterupt(INTERUPT_Damaged) then
        f25_arg1:Replaning()
        return true
    end
    if f25_arg1:IsInterupt(INTERUPT_TargetOutOfRange) and f25_arg1:IsTargetOutOfRangeInterruptSlot(0) then
        f25_arg2:ClearSubGoal()
        f25_arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3021, TARGET_ENE_0, SuccessDist, 0, 0)
        return true
    end
    if f25_arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) then
        local f25_local2 = f25_arg1:GetDist(TARGET_ENE_0)
        local f25_local3 = f25_arg1:GetRandam_Int(1, 100)
        if f25_arg1:GetSpecialEffectActivateInterruptType(0) == 5026 and InsideRange(f25_arg1, f25_arg2, 0, 270, -1, 6.8 - f25_arg1:GetMapHitRadius(TARGET_SELF)) then
            f25_arg2:ClearSubGoal()
            PursuitHeroine_HU_Act18(f25_arg1, f25_arg2, paramTbl)
            return true
        else
        end
    end
    return false
    
end


