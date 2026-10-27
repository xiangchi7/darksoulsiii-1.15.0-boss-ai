RegisterTableGoal(GOAL_PursuitHeroine527000_Battle, "PursuitHeroineNormalBattle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_PursuitHeroine527000_Battle, true)

Goal.Initialize = function (f1_arg0, f1_arg1, f1_arg2, f1_arg3)
    f1_arg1:StartAttackPassedTimer(3003, 0)
    f1_arg1:StartAttackPassedTimer(3014, 0)
    f1_arg1:StartAttackPassedTimer(3023, 0)
    f1_arg1:SetNumber(0, 0)
    
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
    f2_arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    local f2_local3 = f2_arg1:GetDist(TARGET_ENE_0)
    if f2_arg1:GetHpRate(TARGET_SELF) <= 0.6 and not f2_arg1:HasSpecialEffectId(TARGET_SELF, 5404) then
        f2_arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 1500, TARGET_ENE_0, 999, 0, 0, 180, 0)
        return false
    elseif f2_arg1:GetNumber(0) == 0 then
        f2_local0[30] = 100
    else
        if InsideRange(f2_arg1, f2_arg2, 180, 180, 6, 999) then
            f2_local0[5] = 20
            f2_local0[7] = 20
            f2_local0[12] = 30
            f2_local0[13] = 30
        elseif InsideRange(f2_arg1, f2_arg2, 180, 150, -10, 6) then
            f2_local0[2] = 20
            f2_local0[9] = 0
            f2_local0[12] = 5
            f2_local0[19] = 0
            f2_local0[22] = 0
        elseif f2_local3 >= 8 then
            f2_local0[1] = 10
            f2_local0[4] = 0
            f2_local0[5] = 10
            f2_local0[6] = 0
            f2_local0[7] = 10
            f2_local0[12] = 5
            f2_local0[13] = 5
            f2_local0[14] = 10
            f2_local0[18] = 10
        elseif f2_local3 >= 4.5 then
            f2_local0[5] = 10
            f2_local0[7] = 10
            f2_local0[10] = 5
            f2_local0[12] = 15
            f2_local0[13] = 15
        else
            f2_local0[3] = 10
            f2_local0[4] = 10
            f2_local0[6] = 0
            f2_local0[8] = 5
            f2_local0[9] = 0
            f2_local0[10] = 10
            f2_local0[11] = 10
            f2_local0[15] = 10
            f2_local0[16] = 10
            f2_local0[17] = 20
            f2_local0[19] = 10
        end
        if f2_local3 < 3.5 then
            f2_local0[8] = f2_local0[8] + 10
        end
        if InsideRange(f2_arg1, f2_arg2, 270, 180, -10, 3) then
            f2_local0[9] = f2_local0[9] + 20
        end
        if InsideRange(f2_arg1, f2_arg2, 135, 150, 0, 3) then
            f2_local0[22] = f2_local0[22] + 20
        end
        if InsideRange(f2_arg1, f2_arg2, 270, 120, 0, 2) then
            f2_local0[19] = f2_local0[19] + 20
        end
        if f2_arg1:IsFinishTimer(0) == true then
            f2_local0[17] = f2_local0[17] + 10
        end
        if f2_arg1:GetNumber(1) == 1 then
            f2_arg1:SetNumber(1, 0)
            f2_local0[17] = f2_local0[17] + 10
        end
        if f2_arg1:HasSpecialEffectId(TARGET_SELF, 11103) == true then
            f2_local0[17] = f2_local0[17] - 20
        end
        if InsideRange(f2_arg1, f2_arg2, 270, 120, 0, 2) then
            f2_local0[19] = f2_local0[19] + 20
        end
    end
    f2_local0[30] = 5
    f2_local0[1] = SetCoolTime(f2_arg1, f2_arg2, 3000, 10, f2_local0[1], 1)
    f2_local0[3] = SetCoolTime(f2_arg1, f2_arg2, 3007, 10, f2_local0[3], 1)
    f2_local0[4] = SetCoolTime(f2_arg1, f2_arg2, 3009, 10, f2_local0[4], 1)
    f2_local0[5] = SetCoolTime(f2_arg1, f2_arg2, 3010, 10, f2_local0[5], 1)
    f2_local0[7] = SetCoolTime(f2_arg1, f2_arg2, 3013, 10, f2_local0[7], 1)
    f2_local0[9] = SetCoolTime(f2_arg1, f2_arg2, 3015, 10, f2_local0[9], 1)
    f2_local0[10] = SetCoolTime(f2_arg1, f2_arg2, 3016, 10, f2_local0[3], 1)
    f2_local0[11] = SetCoolTime(f2_arg1, f2_arg2, 3019, 10, f2_local0[11], 1)
    f2_local0[12] = SetCoolTime(f2_arg1, f2_arg2, 3020, 10, f2_local0[12], 1)
    f2_local0[13] = SetCoolTime(f2_arg1, f2_arg2, 3021, 10, f2_local0[13], 1)
    f2_local0[14] = SetCoolTime(f2_arg1, f2_arg2, 3022, 15, f2_local0[14], 1)
    f2_local0[16] = SetCoolTime(f2_arg1, f2_arg2, 3024, 10, f2_local0[16], 1)
    f2_local0[17] = SetCoolTime(f2_arg1, f2_arg2, 3027, 10, f2_local0[17], 1)
    f2_local0[18] = SetCoolTime(f2_arg1, f2_arg2, 3028, 15, f2_local0[18], 1)
    f2_local0[19] = SetCoolTime(f2_arg1, f2_arg2, 3033, 10, f2_local0[19], 1)
    f2_local0[22] = SetCoolTime(f2_arg1, f2_arg2, 3006, 10, f2_local0[22], 1)
    f2_local0[2] = SetCoolTime(f2_arg1, f2_arg2, 3003, 20, f2_local0[2], 1)
    f2_local0[8] = SetCoolTime(f2_arg1, f2_arg2, 3014, 25, f2_local0[8], 1)
    f2_local0[15] = SetCoolTime(f2_arg1, f2_arg2, 3023, 25, f2_local0[15], 1)
    f2_local1[1] = REGIST_FUNC(f2_arg1, f2_arg2, PursuitHeroine_Act01)
    f2_local1[2] = REGIST_FUNC(f2_arg1, f2_arg2, PursuitHeroine_Act02)
    f2_local1[3] = REGIST_FUNC(f2_arg1, f2_arg2, PursuitHeroine_Act03)
    f2_local1[4] = REGIST_FUNC(f2_arg1, f2_arg2, PursuitHeroine_Act04)
    f2_local1[5] = REGIST_FUNC(f2_arg1, f2_arg2, PursuitHeroine_Act05)
    f2_local1[6] = REGIST_FUNC(f2_arg1, f2_arg2, PursuitHeroine_Act06)
    f2_local1[7] = REGIST_FUNC(f2_arg1, f2_arg2, PursuitHeroine_Act07)
    f2_local1[8] = REGIST_FUNC(f2_arg1, f2_arg2, PursuitHeroine_Act08)
    f2_local1[9] = REGIST_FUNC(f2_arg1, f2_arg2, PursuitHeroine_Act09)
    f2_local1[10] = REGIST_FUNC(f2_arg1, f2_arg2, PursuitHeroine_Act10)
    f2_local1[11] = REGIST_FUNC(f2_arg1, f2_arg2, PursuitHeroine_Act11)
    f2_local1[12] = REGIST_FUNC(f2_arg1, f2_arg2, PursuitHeroine_Act12)
    f2_local1[13] = REGIST_FUNC(f2_arg1, f2_arg2, PursuitHeroine_Act13)
    f2_local1[14] = REGIST_FUNC(f2_arg1, f2_arg2, PursuitHeroine_Act14)
    f2_local1[15] = REGIST_FUNC(f2_arg1, f2_arg2, PursuitHeroine_Act15)
    f2_local1[16] = REGIST_FUNC(f2_arg1, f2_arg2, PursuitHeroine_Act16)
    f2_local1[17] = REGIST_FUNC(f2_arg1, f2_arg2, PursuitHeroine_Act17)
    f2_local1[18] = REGIST_FUNC(f2_arg1, f2_arg2, PursuitHeroine_Act18)
    f2_local1[19] = REGIST_FUNC(f2_arg1, f2_arg2, PursuitHeroine_Act19)
    f2_local1[20] = REGIST_FUNC(f2_arg1, f2_arg2, PursuitHeroine_Act20)
    f2_local1[21] = REGIST_FUNC(f2_arg1, f2_arg2, PursuitHeroine_Act21)
    f2_local1[22] = REGIST_FUNC(f2_arg1, f2_arg2, PursuitHeroine_Act22)
    f2_local1[30] = REGIST_FUNC(f2_arg1, f2_arg2, PursuitHeroine_Act30)
    local f2_local4 = REGIST_FUNC(f2_arg1, f2_arg2, PursuitHeroine_ActAfter_AdjustSpace)
    Common_Battle_Activate(f2_arg1, f2_arg2, f2_local0, f2_local1, f2_local4, f2_local2)
    
end

function PursuitHeroine_Act01(f3_arg0, f3_arg1, f3_arg2)
    local f3_local0 = 3000
    local f3_local1 = 15 - f3_arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local2 = 0
    local f3_local3 = 60
    local f3_local4 = 2
    f3_arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    f3_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f3_local0, TARGET_ENE_0, f3_local1, f3_local2, f3_local3, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function PursuitHeroine_Act02(f4_arg0, f4_arg1, f4_arg2)
    local f4_local0 = 3003
    local f4_local1 = 15 - f4_arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local2 = 0
    local f4_local3 = 360
    f4_arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    f4_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f4_local0, TARGET_ENE_0, f4_local1, f4_local2, f4_local3, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function PursuitHeroine_Act03(f5_arg0, f5_arg1, f5_arg2)
    local f5_local0 = 3007
    local f5_local1 = 3008
    local f5_local2 = 6.3 - f5_arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f5_local3 = 15 - f5_arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local4 = 0
    local f5_local5 = 180
    f5_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f5_local0, TARGET_ENE_0, f5_local2, f5_local4, f5_local5, 0, 0)
    f5_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f5_local1, TARGET_ENE_0, f5_local3, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function PursuitHeroine_Act04(f6_arg0, f6_arg1, f6_arg2)
    local f6_local0 = 3009
    local f6_local1 = 3012
    local f6_local2 = 7.3 - f6_arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f6_local3 = 15 - f6_arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local4 = 0
    local f6_local5 = 90
    f6_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f6_local0, TARGET_ENE_0, f6_local2, f6_local4, f6_local5, 0, 0)
    f6_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f6_local1, TARGET_ENE_0, f6_local3, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function PursuitHeroine_Act05(f7_arg0, f7_arg1, f7_arg2)
    local f7_local0 = 3010
    local f7_local1 = 3011
    local f7_local2 = 7.8 - f7_arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f7_local3 = 15 - f7_arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local4 = 0
    local f7_local5 = 60
    f7_arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    f7_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f7_local0, TARGET_ENE_0, f7_local2, f7_local4, f7_local5, 0, 0)
    f7_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f7_local1, TARGET_ENE_0, f7_local3, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function PursuitHeroine_Act06(f8_arg0, f8_arg1, f8_arg2)
    local f8_local0 = 3012
    local f8_local1 = 15 - f8_arg0:GetMapHitRadius(TARGET_SELF)
    local f8_local2 = 0
    local f8_local3 = 90
    f8_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f8_local0, TARGET_ENE_0, f8_local1, f8_local2, f8_local3, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function PursuitHeroine_Act07(f9_arg0, f9_arg1, f9_arg2)
    local f9_local0 = 3013
    local f9_local1 = 15 - f9_arg0:GetMapHitRadius(TARGET_SELF)
    local f9_local2 = 0
    local f9_local3 = 60
    f9_arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    f9_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f9_local0, TARGET_ENE_0, f9_local1, f9_local2, f9_local3, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function PursuitHeroine_Act08(f10_arg0, f10_arg1, f10_arg2)
    local f10_local0 = 3014
    local f10_local1 = 15 - f10_arg0:GetMapHitRadius(TARGET_SELF)
    local f10_local2 = 0
    local f10_local3 = 360
    f10_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f10_local0, TARGET_ENE_0, f10_local1, f10_local2, f10_local3, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function PursuitHeroine_Act09(f11_arg0, f11_arg1, f11_arg2)
    local f11_local0 = 3015
    local f11_local1 = 15 - f11_arg0:GetMapHitRadius(TARGET_SELF)
    local f11_local2 = 0
    local f11_local3 = 360
    f11_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f11_local0, TARGET_ENE_0, f11_local1, f11_local2, f11_local3, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function PursuitHeroine_Act10(f12_arg0, f12_arg1, f12_arg2)
    local f12_local0 = 3016
    local f12_local1 = 3017
    local f12_local2 = 3018
    local f12_local3 = 11.8 - f12_arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f12_local4 = 11.8 - f12_arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f12_local5 = 15 - f12_arg0:GetMapHitRadius(TARGET_SELF)
    local f12_local6 = 0
    local f12_local7 = 45
    f12_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f12_local0, TARGET_ENE_0, f12_local3, f12_local6, f12_local7, 0, 0)
    f12_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f12_local1, TARGET_ENE_0, f12_local4, 0, 0)
    f12_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f12_local2, TARGET_ENE_0, f12_local5, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function PursuitHeroine_Act11(f13_arg0, f13_arg1, f13_arg2)
    local f13_local0 = 3019
    local f13_local1 = 3008
    local f13_local2 = 6.3 - f13_arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f13_local3 = 15 - f13_arg0:GetMapHitRadius(TARGET_SELF)
    local f13_local4 = 0
    local f13_local5 = 180
    f13_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f13_local0, TARGET_ENE_0, f13_local2, f13_local4, f13_local5, 0, 0)
    f13_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f13_local1, TARGET_ENE_0, f13_local3, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function PursuitHeroine_Act12(f14_arg0, f14_arg1, f14_arg2)
    local f14_local0 = 3020
    local f14_local1 = 3012
    local f14_local2 = 7.3 - f14_arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f14_local3 = 15 - f14_arg0:GetMapHitRadius(TARGET_SELF)
    local f14_local4 = 0
    local f14_local5 = 180
    f14_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f14_local0, TARGET_ENE_0, f14_local2, f14_local4, f14_local5, 0, 0)
    f14_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f14_local1, TARGET_ENE_0, f14_local3, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function PursuitHeroine_Act13(f15_arg0, f15_arg1, f15_arg2)
    local f15_local0 = 3021
    local f15_local1 = 15 - f15_arg0:GetMapHitRadius(TARGET_SELF)
    local f15_local2 = 0
    local f15_local3 = 90
    f15_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f15_local0, TARGET_ENE_0, f15_local1, f15_local2, f15_local3, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function PursuitHeroine_Act14(f16_arg0, f16_arg1, f16_arg2)
    local f16_local0 = 3022
    local f16_local1 = 15 - f16_arg0:GetMapHitRadius(TARGET_SELF)
    local f16_local2 = 0
    local f16_local3 = 180
    f16_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f16_local0, TARGET_ENE_0, f16_local1, f16_local2, f16_local3, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function PursuitHeroine_Act15(f17_arg0, f17_arg1, f17_arg2)
    local f17_local0 = 3023
    local f17_local1 = 15 - f17_arg0:GetMapHitRadius(TARGET_SELF)
    local f17_local2 = 0
    local f17_local3 = 180
    f17_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f17_local0, TARGET_ENE_0, f17_local1, f17_local2, f17_local3, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function PursuitHeroine_Act16(f18_arg0, f18_arg1, f18_arg2)
    local f18_local0 = 3024
    local f18_local1 = 3025
    local f18_local2 = 3026
    local f18_local3 = 8.8 - f18_arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f18_local4 = 9.8 - f18_arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f18_local5 = 15 - f18_arg0:GetMapHitRadius(TARGET_SELF)
    local f18_local6 = 0
    local f18_local7 = 90
    f18_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f18_local0, TARGET_ENE_0, f18_local3, f18_local6, f18_local7, 0, 0)
    f18_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f18_local1, TARGET_ENE_0, f18_local4, 0, 0)
    f18_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f18_local2, TARGET_ENE_0, f18_local5, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function PursuitHeroine_Act17(f19_arg0, f19_arg1, f19_arg2)
    local f19_local0 = 3027
    local f19_local1 = 15 - f19_arg0:GetMapHitRadius(TARGET_SELF)
    local f19_local2 = 0
    local f19_local3 = 90
    f19_arg0:SetTimer(0, 15)
    f19_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f19_local0, TARGET_ENE_0, f19_local1, f19_local2, f19_local3, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function PursuitHeroine_Act18(f20_arg0, f20_arg1, f20_arg2)
    f20_arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 4, TARGET_ENE_0, 3, TARGET_ENE_0, true, 9910):SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL):SetLifeEndSuccess(true)
    local f20_local0 = 15 - f20_arg0:GetMapHitRadius(TARGET_SELF)
    local f20_local1 = 0
    local f20_local2 = 90
    local f20_local3 = 3032
    f20_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f20_local3, TARGET_ENE_0, f20_local0, f20_local1, f20_local2, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function PursuitHeroine_Act19(f21_arg0, f21_arg1, f21_arg2)
    local f21_local0 = 3033
    local f21_local1 = 3025
    local f21_local2 = 3026
    local f21_local3 = 8.8 - f21_arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f21_local4 = 9.8 - f21_arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f21_local5 = 15 - f21_arg0:GetMapHitRadius(TARGET_SELF)
    local f21_local6 = 0
    local f21_local7 = 90
    f21_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f21_local0, TARGET_ENE_0, f21_local3, f21_local6, f21_local7, 0, 0)
    f21_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f21_local1, TARGET_ENE_0, f21_local4, 0, 0)
    f21_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f21_local2, TARGET_ENE_0, f21_local5, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function PursuitHeroine_Act20(f22_arg0, f22_arg1, f22_arg2)
    local f22_local0 = 3001
    local f22_local1 = 3002
    local f22_local2 = 15 - f22_arg0:GetMapHitRadius(TARGET_SELF)
    if InsideRange(f22_arg0, f22_arg1, 30, 150, 0, 3) then
        f22_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f22_local1, TARGET_ENE_0, f22_local2, 0, 0)
    elseif InsideRange(f22_arg0, f22_arg1, 0, 180, 3, 8) then
        f22_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f22_local0, TARGET_ENE_0, f22_local2, 0, 0)
    else
        f22_arg0:Replaning()
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function PursuitHeroine_Act21(f23_arg0, f23_arg1, f23_arg2)
    local f23_local0 = 3004
    local f23_local1 = 3005
    local f23_local2 = 3006
    local f23_local3 = 15 - f23_arg0:GetMapHitRadius(TARGET_SELF)
    if InsideRange(f23_arg0, f23_arg1, 255, 105, 0, 4) then
        f23_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f23_local0, TARGET_ENE_0, f23_local3, 0, 0)
    elseif InsideRange(f23_arg0, f23_arg1, 0, 105, 0, 6) then
        f23_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f23_local1, TARGET_ENE_0, f23_local3, 0, 0)
    elseif InsideRange(f23_arg0, f23_arg1, 105, 105, 0, 4) then
        f23_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f23_local2, TARGET_ENE_0, f23_local3, 0, 0)
    else
        f23_arg0:Replaning()
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function PursuitHeroine_Act22(f24_arg0, f24_arg1, f24_arg2)
    local f24_local0 = 3006
    local f24_local1 = 3012
    local f24_local2 = 5.8 - f24_arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f24_local3 = 15 - f24_arg0:GetMapHitRadius(TARGET_SELF)
    local f24_local4 = 0
    local f24_local5 = 360
    f24_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f24_local0, TARGET_ENE_0, f24_local2, f24_local4, f24_local5, 0, 0)
    f24_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f24_local1, TARGET_ENE_0, f24_local3, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function PursuitHeroine_Act30(f25_arg0, f25_arg1, f25_arg2)
    f25_arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, 5, TARGET_ENE_0, 7, TARGET_ENE_0, true, -1, f25_arg0:GetRandam_Int(AI_DIR_TYPE_ToL, AI_DIR_TYPE_ToR), f25_arg0:GetRandam_Float(5, 7))
    f25_arg0:SetNumber(0, 1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function PursuitHeroine_ActAfter_AdjustSpace(f26_arg0, f26_arg1, f26_arg2)
    local f26_local0 = f26_arg0:GetRandam_Int(1, 100)
    if f26_arg0:GetHpRate(TARGET_SELF) <= 0.7 then
    elseif f26_local0 <= 50 then
    else
        f26_arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, f26_arg0:GetRandam_Float(3, 5), TARGET_ENE_0, 7, TARGET_ENE_0, true, -1, f26_arg0:GetRandam_Int(AI_DIR_TYPE_ToL, AI_DIR_TYPE_ToR), f26_arg0:GetRandam_Float(5, 7))
    end
    
end

Goal.Update = function (f27_arg0, f27_arg1, f27_arg2)
    return Update_Default_NoSubGoal(f27_arg0, f27_arg1, f27_arg2)
    
end

Goal.Terminate = function (f28_arg0, f28_arg1, f28_arg2)
    
end

Goal.Interrupt = function (f29_arg0, f29_arg1, f29_arg2)
    local f29_local0 = f29_arg1:GetRandam_Int(1, 100)
    local f29_local1 = f29_arg1:GetRandam_Int(1, 100)
    local f29_local2 = f29_arg1:GetDist(TARGET_ENE_0)
    if f29_arg1:HasSpecialEffectId(TARGET_SELF, 5025) and f29_local0 <= 30 and f29_arg1:IsInterupt(INTERUPT_Damaged) then
        f29_arg1:SetNumber(1, 1)
        f29_arg1:Replaning()
        return true
    end
    if f29_arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) then
        local f29_local3 = f29_arg1:GetDist(TARGET_ENE_0)
        local f29_local4 = f29_arg1:GetRandam_Int(1, 100)
        if f29_arg1:GetSpecialEffectActivateInterruptType(0) == 5026 and InsideRange(f29_arg1, f29_arg2, 45, 270, -1, 13.8 - f29_arg1:GetMapHitRadius(TARGET_SELF)) then
            f29_arg2:ClearSubGoal()
            PursuitHeroine_Act20(f29_arg1, f29_arg2, paramTbl)
            return true
        else
        end
        if f29_arg1:GetSpecialEffectActivateInterruptType(0) == 5027 and InsideRange(f29_arg1, f29_arg2, 0, 270, -1, 8.8 - f29_arg1:GetMapHitRadius(TARGET_SELF)) then
            f29_arg2:ClearSubGoal()
            PursuitHeroine_Act21(f29_arg1, f29_arg2, paramTbl)
            return true
        else
        end
    end
    return false
    
end


