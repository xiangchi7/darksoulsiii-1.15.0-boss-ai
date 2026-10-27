RegisterTableGoal(GOAL_GiantTree_HU_Battle, "GOAL_GiantTree_HU_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_GiantTree_HU_Battle, true)

Goal.Initialize = function (f1_arg0, f1_arg1, f1_arg2, f1_arg3)
    
end

Goal.Activate = function (f2_arg0, f2_arg1, f2_arg2)
    Init_Pseudo_Global(f2_arg1, f2_arg2)
    f2_arg1:SetStringIndexedNumber("Dist_SideStep", 3)
    f2_arg1:SetStringIndexedNumber("Dist_BackStep", 3)
    f2_arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    local f2_local0 = {}
    local f2_local1 = {}
    local f2_local2 = {}
    Common_Clear_Param(f2_local0, f2_local1, f2_local2)
    local f2_local3 = f2_arg1:GetDist(TARGET_ENE_0)
    local f2_local4 = f2_arg1:GetToTargetAngle(TARGET_ENE_0)
    local f2_local5 = f2_arg1:GetRandam_Int(1, 100)
    local f2_local6 = f2_arg1:GetEventRequest()
    local f2_local7 = 0
    local f2_local8 = 0
    local f2_local9 = 0
    local f2_local10 = 0
    local f2_local11 = 0
    local f2_local12 = 0
    local f2_local13 = 0
    local f2_local14 = 0
    local f2_local15 = 0
    local f2_local16 = 0
    local f2_local17 = 0
    local f2_local18 = 0
    local f2_local19 = 0
    local f2_local20 = 0
    local f2_local21 = 0
    local f2_local22 = 0
    local f2_local23 = 0
    local f2_local24 = 0
    if f2_local3 <= 11 + 3 - f2_arg1:GetMapHitRadius(TARGET_SELF) then
        f2_local9 = 1
    end
    if f2_arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 150) and f2_local3 <= -4 then
        f2_local24 = 1
    end
    if InsideRange(f2_arg1, f2_arg2, 15, 90, -999 + 3 - f2_arg1:GetMapHitRadius(TARGET_SELF), 14 + 3 - f2_arg1:GetMapHitRadius(TARGET_SELF)) then
        f2_local7 = 1
    end
    if InsideRange(f2_arg1, f2_arg2, 0, 90, -999 + 3 - f2_arg1:GetMapHitRadius(TARGET_SELF), 14 + 3 - f2_arg1:GetMapHitRadius(TARGET_SELF)) then
        f2_local8 = 1
    end
    if InsideRange(f2_arg1, f2_arg2, 0, 90, 13.5 + 3 - f2_arg1:GetMapHitRadius(TARGET_SELF), 25 + 3 - f2_arg1:GetMapHitRadius(TARGET_SELF)) then
        f2_local10 = 1
    end
    if InsideRange(f2_arg1, f2_arg2, 0, 75, 12.5 + 3 - f2_arg1:GetMapHitRadius(TARGET_SELF), 18.5 + 3 - f2_arg1:GetMapHitRadius(TARGET_SELF)) then
        f2_local11 = 1
    end
    if InsideRange(f2_arg1, f2_arg2, 0, 90, -999 + 3 - f2_arg1:GetMapHitRadius(TARGET_SELF), 9.5 + 3 - f2_arg1:GetMapHitRadius(TARGET_SELF)) then
        f2_local12 = 1
    end
    if InsideRange(f2_arg1, f2_arg2, 0, 45, 8 + 3 - f2_arg1:GetMapHitRadius(TARGET_SELF), 12.5 + 3 - f2_arg1:GetMapHitRadius(TARGET_SELF)) then
        f2_local13 = 1
    end
    if InsideRange(f2_arg1, f2_arg2, 0, 90, 12 + 3 - f2_arg1:GetMapHitRadius(TARGET_SELF), 14 + 3 - f2_arg1:GetMapHitRadius(TARGET_SELF)) then
        f2_local14 = 1
    end
    if InsideRange(f2_arg1, f2_arg2, 0, 90, 35 + 3 - f2_arg1:GetMapHitRadius(TARGET_SELF), 50 + 3 - f2_arg1:GetMapHitRadius(TARGET_SELF)) then
        f2_local15 = 1
    end
    if InsideRange(f2_arg1, f2_arg2, 15, 45, 10 + 3 - f2_arg1:GetMapHitRadius(TARGET_SELF), 14 + 3 - f2_arg1:GetMapHitRadius(TARGET_SELF)) then
        f2_local16 = 1
    end
    if InsideRange(f2_arg1, f2_arg2, 345, 45, 10 + 3 - f2_arg1:GetMapHitRadius(TARGET_SELF), 14 + 3 - f2_arg1:GetMapHitRadius(TARGET_SELF)) then
        f2_local17 = 1
    end
    if InsideRange(f2_arg1, f2_arg2, 0, 30, 8 + 3 - f2_arg1:GetMapHitRadius(TARGET_SELF), 12 + 3 - f2_arg1:GetMapHitRadius(TARGET_SELF)) or InsideRange(f2_arg1, f2_arg2, 90, 30, 8 + 3 - f2_arg1:GetMapHitRadius(TARGET_SELF), 12 + 3 - f2_arg1:GetMapHitRadius(TARGET_SELF)) then
        f2_local18 = 1
    end
    if InsideRange(f2_arg1, f2_arg2, 0, 30, 8 + 3 - f2_arg1:GetMapHitRadius(TARGET_SELF), 12 + 3 - f2_arg1:GetMapHitRadius(TARGET_SELF)) or InsideRange(f2_arg1, f2_arg2, 270, 30, 8 + 3 - f2_arg1:GetMapHitRadius(TARGET_SELF), 12 + 3 - f2_arg1:GetMapHitRadius(TARGET_SELF)) then
        f2_local19 = 1
    end
    if InsideRange(f2_arg1, f2_arg2, 0, 60, 25 + 3 - f2_arg1:GetMapHitRadius(TARGET_SELF), 50 + 3 - f2_arg1:GetMapHitRadius(TARGET_SELF)) then
        f2_local20 = 1
    end
    if InsideRange(f2_arg1, f2_arg2, 0, 45, 18 + 3 - f2_arg1:GetMapHitRadius(TARGET_SELF), 22 + 3 - f2_arg1:GetMapHitRadius(TARGET_SELF)) then
        f2_local21 = 1
    end
    if InsideRange(f2_arg1, f2_arg2, 0, 360, -999 + 3 - f2_arg1:GetMapHitRadius(TARGET_SELF), 8 + 3 - f2_arg1:GetMapHitRadius(TARGET_SELF)) then
        f2_local22 = 1
    end
    if InsideRange(f2_arg1, f2_arg2, 0, 60, 18 + 3 - f2_arg1:GetMapHitRadius(TARGET_SELF), 28 + 3 - f2_arg1:GetMapHitRadius(TARGET_SELF)) then
        f2_local23 = 1
    end
    if f2_local24 == 1 and f2_arg1:GetAttackPassedTime(3021) >= 15 and f2_arg1:GetRandam_Int(1, 100) <= 60 then
        f2_local0[18] = 100
    elseif f2_local7 == 1 and f2_arg1:GetAttackPassedTime(3000) >= 35 and f2_arg1:GetRandam_Int(1, 100) <= 60 then
        f2_local0[1] = 100
    elseif f2_local8 == 1 and f2_arg1:GetAttackPassedTime(3001) >= 35 and f2_arg1:GetRandam_Int(1, 100) <= 60 then
        f2_local0[2] = 100
    elseif f2_local16 == 1 and f2_arg1:GetAttackPassedTime(3013) >= 12 and f2_arg1:GetRandam_Int(1, 100) <= 50 then
        f2_local0[10] = 100
    elseif f2_local17 == 1 and f2_arg1:GetAttackPassedTime(3014) >= 12 and f2_arg1:GetRandam_Int(1, 100) <= 50 then
        f2_local0[11] = 100
    elseif f2_local18 == 1 and f2_arg1:GetAttackPassedTime(3015) >= 12 and f2_arg1:GetRandam_Int(1, 100) <= 50 then
        f2_local0[12] = 100
    elseif f2_local19 == 1 and f2_arg1:GetAttackPassedTime(3016) >= 12 and f2_arg1:GetRandam_Int(1, 100) <= 50 then
        f2_local0[13] = 100
    elseif f2_local13 == 1 and f2_arg1:GetAttackPassedTime(3011) >= 12 and f2_arg1:GetRandam_Int(1, 100) <= 80 then
        f2_local0[3] = 100
    elseif f2_local12 == 1 and f2_arg1:GetAttackPassedTime(3010) >= 12 and f2_arg1:GetRandam_Int(1, 100) <= 80 then
        f2_local0[7] = 100
    elseif f2_local14 == 1 and f2_arg1:GetAttackPassedTime(3009) >= 15 and f2_arg1:GetRandam_Int(1, 100) <= 80 then
        f2_local0[8] = 100
    elseif f2_local11 == 1 and f2_arg1:GetAttackPassedTime(3008) >= 15 and f2_arg1:GetRandam_Int(1, 100) <= 50 then
        f2_local0[6] = 100
    elseif f2_local9 == 1 and f2_arg1:GetAttackPassedTime(3004) >= 20 and f2_arg1:GetRandam_Int(1, 100) <= 80 then
        f2_local0[4] = 100
    elseif f2_local22 == 1 and f2_arg1:GetAttackPassedTime(3019) >= 25 and f2_arg1:GetRandam_Int(1, 100) <= 50 then
        f2_local0[16] = 100
    elseif f2_local10 == 1 and f2_arg1:GetAttackPassedTime(3006) >= 20 and f2_arg1:GetRandam_Int(1, 100) <= 60 then
        f2_local0[5] = 100
    elseif f2_local21 == 1 and f2_arg1:GetAttackPassedTime(3018) >= 20 and f2_arg1:GetRandam_Int(1, 100) <= 50 then
        f2_local0[15] = 100
    elseif f2_local23 == 1 and f2_arg1:GetAttackPassedTime(3020) >= 20 and f2_arg1:GetRandam_Int(1, 100) <= 60 then
        f2_local0[17] = 100
    elseif f2_local15 == 1 and f2_arg1:GetAttackPassedTime(3012) and f2_arg1:GetRandam_Int(1, 100) <= 70 then
        f2_local0[9] = 100
    elseif f2_local20 == 1 and f2_arg1:GetAttackPassedTime(3017) >= 20 and f2_arg1:GetRandam_Int(1, 100) <= 100 then
        f2_local0[14] = 100
    else
        if f2_local3 >= 15 then
            f2_local0[21] = 100
            f2_local0[23] = 0
            f2_local0[24] = 0
        elseif f2_local3 >= 8 then
            f2_local0[21] = 100
            f2_local0[23] = 0
            f2_local0[24] = 0
        elseif f2_local3 >= 3 then
            f2_local0[21] = 10
            f2_local0[23] = 10
            f2_local0[24] = 80
        else
            f2_local0[21] = 0
            f2_local0[23] = 20
            f2_local0[24] = 80
        end
        if f2_arg1:IsFinishTimer(0) == false and f2_local0[24] > 0 then
            f2_local0[24] = 1
        end
    end
    f2_local1[1] = REGIST_FUNC(f2_arg1, f2_arg2, GiantTree_HU_Battle_Act01)
    f2_local1[2] = REGIST_FUNC(f2_arg1, f2_arg2, GiantTree_HU_Battle_Act02)
    f2_local1[3] = REGIST_FUNC(f2_arg1, f2_arg2, GiantTree_HU_Battle_Act03)
    f2_local1[4] = REGIST_FUNC(f2_arg1, f2_arg2, GiantTree_HU_Battle_Act04)
    f2_local1[5] = REGIST_FUNC(f2_arg1, f2_arg2, GiantTree_HU_Battle_Act05)
    f2_local1[6] = REGIST_FUNC(f2_arg1, f2_arg2, GiantTree_HU_Battle_Act06)
    f2_local1[7] = REGIST_FUNC(f2_arg1, f2_arg2, GiantTree_HU_Battle_Act07)
    f2_local1[8] = REGIST_FUNC(f2_arg1, f2_arg2, GiantTree_HU_Battle_Act08)
    f2_local1[9] = REGIST_FUNC(f2_arg1, f2_arg2, GiantTree_HU_Battle_Act09)
    f2_local1[10] = REGIST_FUNC(f2_arg1, f2_arg2, GiantTree_HU_Battle_Act10)
    f2_local1[11] = REGIST_FUNC(f2_arg1, f2_arg2, GiantTree_HU_Battle_Act11)
    f2_local1[12] = REGIST_FUNC(f2_arg1, f2_arg2, GiantTree_HU_Battle_Act12)
    f2_local1[13] = REGIST_FUNC(f2_arg1, f2_arg2, GiantTree_HU_Battle_Act13)
    f2_local1[14] = REGIST_FUNC(f2_arg1, f2_arg2, GiantTree_HU_Battle_Act14)
    f2_local1[15] = REGIST_FUNC(f2_arg1, f2_arg2, GiantTree_HU_Battle_Act15)
    f2_local1[16] = REGIST_FUNC(f2_arg1, f2_arg2, GiantTree_HU_Battle_Act16)
    f2_local1[17] = REGIST_FUNC(f2_arg1, f2_arg2, GiantTree_HU_Battle_Act17)
    f2_local1[18] = REGIST_FUNC(f2_arg1, f2_arg2, GiantTree_HU_Battle_Act18)
    f2_local1[21] = REGIST_FUNC(f2_arg1, f2_arg2, GiantTree_HU_Battle_Act21)
    f2_local1[22] = REGIST_FUNC(f2_arg1, f2_arg2, GiantTree_HU_Battle_Act22)
    f2_local1[23] = REGIST_FUNC(f2_arg1, f2_arg2, GiantTree_HU_Battle_Act23)
    f2_local1[24] = REGIST_FUNC(f2_arg1, f2_arg2, GiantTree_HU_Battle_Act24)
    local f2_local25 = REGIST_FUNC(f2_arg1, f2_arg2, GiantTree_HU_Battle_ActAfter_AdjustSpace)
    Common_Battle_Activate(f2_arg1, f2_arg2, f2_local0, f2_local1, f2_local25, f2_local2)
    
end

function GiantTree_HU_Battle_Act01(f3_arg0, f3_arg1, f3_arg2)
    local f3_local0 = 3000
    local f3_local1 = 15 - f3_arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local2 = f3_arg0:GetRandam_Int(1, 100)
    f3_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f3_local0, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function GiantTree_HU_Battle_Act02(f4_arg0, f4_arg1, f4_arg2)
    local f4_local0 = 3001
    local f4_local1 = 15 - f4_arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local2 = f4_arg0:GetRandam_Int(1, 100)
    f4_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f4_local0, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function GiantTree_HU_Battle_Act03(f5_arg0, f5_arg1, f5_arg2)
    local f5_local0 = 12.5 + 3 - f5_arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local1 = 999
    local f5_local2 = 999
    local f5_local3 = 0
    local f5_local4 = 0
    local f5_local5 = 5
    local f5_local6 = 5
    Approach_Act_Flex(f5_arg0, f5_arg1, f5_local0, f5_local1, f5_local2, f5_local3, f5_local4, f5_local5, f5_local6)
    local f5_local7 = 3011
    local f5_local8 = 3003
    local f5_local9 = 18 + 3 - f5_arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f5_local10 = 15 - f5_arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local11 = f5_arg0:GetRandam_Int(1, 100)
    f5_arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    f5_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f5_local7, TARGET_ENE_0, f5_local9, 0, 0)
    f5_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f5_local8, TARGET_ENE_0, f5_local10, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function GiantTree_HU_Battle_Act04(f6_arg0, f6_arg1, f6_arg2)
    local f6_local0 = 11 + 3 - f6_arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local1 = 999
    local f6_local2 = 999
    local f6_local3 = 0
    local f6_local4 = 0
    local f6_local5 = 5
    local f6_local6 = 5
    Approach_Act_Flex(f6_arg0, f6_arg1, f6_local0, f6_local1, f6_local2, f6_local3, f6_local4, f6_local5, f6_local6)
    local f6_local7 = 3004
    local f6_local8 = 15 - f6_arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local9 = f6_arg0:GetRandam_Int(1, 100)
    f6_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f6_local7, TARGET_ENE_0, f6_local8, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function GiantTree_HU_Battle_Act05(f7_arg0, f7_arg1, f7_arg2)
    local f7_local0 = 25 + 3 - f7_arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local1 = 999
    local f7_local2 = 999
    local f7_local3 = 0
    local f7_local4 = 0
    local f7_local5 = 5
    local f7_local6 = 5
    Approach_Act_Flex(f7_arg0, f7_arg1, f7_local0, f7_local1, f7_local2, f7_local3, f7_local4, f7_local5, f7_local6)
    local f7_local7 = 3006
    local f7_local8 = 15 - f7_arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local9 = f7_arg0:GetRandam_Int(1, 100)
    f7_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f7_local7, TARGET_ENE_0, f7_local8, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function GiantTree_HU_Battle_Act06(f8_arg0, f8_arg1, f8_arg2)
    local f8_local0 = 18.5 + 3 - f8_arg0:GetMapHitRadius(TARGET_SELF)
    local f8_local1 = 999
    local f8_local2 = 999
    local f8_local3 = 0
    local f8_local4 = 0
    local f8_local5 = 5
    local f8_local6 = 5
    Approach_Act_Flex(f8_arg0, f8_arg1, f8_local0, f8_local1, f8_local2, f8_local3, f8_local4, f8_local5, f8_local6)
    local f8_local7 = 3008
    local f8_local8 = 15 - f8_arg0:GetMapHitRadius(TARGET_SELF)
    local f8_local9 = f8_arg0:GetRandam_Int(1, 100)
    f8_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f8_local7, TARGET_ENE_0, f8_local8, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function GiantTree_HU_Battle_Act07(f9_arg0, f9_arg1, f9_arg2)
    local f9_local0 = 9.5 + 3 - f9_arg0:GetMapHitRadius(TARGET_SELF)
    local f9_local1 = 999
    local f9_local2 = 999
    local f9_local3 = 0
    local f9_local4 = 0
    local f9_local5 = 5
    local f9_local6 = 5
    Approach_Act_Flex(f9_arg0, f9_arg1, f9_local0, f9_local1, f9_local2, f9_local3, f9_local4, f9_local5, f9_local6)
    local f9_local7 = 3010
    local f9_local8 = 15 - f9_arg0:GetMapHitRadius(TARGET_SELF)
    local f9_local9 = f9_arg0:GetRandam_Int(1, 100)
    f9_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f9_local7, TARGET_ENE_0, f9_local8, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function GiantTree_HU_Battle_Act08(f10_arg0, f10_arg1, f10_arg2)
    local f10_local0 = 14 + 3 - f10_arg0:GetMapHitRadius(TARGET_SELF)
    local f10_local1 = 999
    local f10_local2 = 999
    local f10_local3 = 0
    local f10_local4 = 0
    local f10_local5 = 5
    local f10_local6 = 5
    Approach_Act_Flex(f10_arg0, f10_arg1, f10_local0, f10_local1, f10_local2, f10_local3, f10_local4, f10_local5, f10_local6)
    local f10_local7 = 3009
    local f10_local8 = 15 - f10_arg0:GetMapHitRadius(TARGET_SELF)
    local f10_local9 = f10_arg0:GetRandam_Int(1, 100)
    f10_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f10_local7, TARGET_ENE_0, f10_local8, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function GiantTree_HU_Battle_Act09(f11_arg0, f11_arg1, f11_arg2)
    local f11_local0 = 3012
    local f11_local1 = 15 - f11_arg0:GetMapHitRadius(TARGET_SELF)
    local f11_local2 = f11_arg0:GetRandam_Int(1, 100)
    f11_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f11_local0, TARGET_ENE_0, f11_local1, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function GiantTree_HU_Battle_Act10(f12_arg0, f12_arg1, f12_arg2)
    local f12_local0 = 14 + 3 - f12_arg0:GetMapHitRadius(TARGET_SELF)
    local f12_local1 = 999
    local f12_local2 = 999
    local f12_local3 = 0
    local f12_local4 = 0
    local f12_local5 = 5
    local f12_local6 = 5
    Approach_Act_Flex(f12_arg0, f12_arg1, f12_local0, f12_local1, f12_local2, f12_local3, f12_local4, f12_local5, f12_local6)
    local f12_local7 = 3013
    local f12_local8 = 15 - f12_arg0:GetMapHitRadius(TARGET_SELF)
    local f12_local9 = f12_arg0:GetRandam_Int(1, 100)
    f12_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f12_local7, TARGET_ENE_0, f12_local8, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function GiantTree_HU_Battle_Act11(f13_arg0, f13_arg1, f13_arg2)
    local f13_local0 = 14 + 3 - f13_arg0:GetMapHitRadius(TARGET_SELF)
    local f13_local1 = 999
    local f13_local2 = 999
    local f13_local3 = 0
    local f13_local4 = 0
    local f13_local5 = 5
    local f13_local6 = 5
    Approach_Act_Flex(f13_arg0, f13_arg1, f13_local0, f13_local1, f13_local2, f13_local3, f13_local4, f13_local5, f13_local6)
    local f13_local7 = 3014
    local f13_local8 = 15 - f13_arg0:GetMapHitRadius(TARGET_SELF)
    local f13_local9 = f13_arg0:GetRandam_Int(1, 100)
    f13_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f13_local7, TARGET_ENE_0, f13_local8, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function GiantTree_HU_Battle_Act12(f14_arg0, f14_arg1, f14_arg2)
    local f14_local0 = 12 + 3 - f14_arg0:GetMapHitRadius(TARGET_SELF)
    local f14_local1 = 999
    local f14_local2 = 999
    local f14_local3 = 0
    local f14_local4 = 0
    local f14_local5 = 5
    local f14_local6 = 5
    Approach_Act_Flex(f14_arg0, f14_arg1, f14_local0, f14_local1, f14_local2, f14_local3, f14_local4, f14_local5, f14_local6)
    local f14_local7 = 3015
    local f14_local8 = 15 - f14_arg0:GetMapHitRadius(TARGET_SELF)
    local f14_local9 = f14_arg0:GetRandam_Int(1, 100)
    f14_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f14_local7, TARGET_ENE_0, f14_local8, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function GiantTree_HU_Battle_Act13(f15_arg0, f15_arg1, f15_arg2)
    local f15_local0 = 12 + 3 - f15_arg0:GetMapHitRadius(TARGET_SELF)
    local f15_local1 = 999
    local f15_local2 = 999
    local f15_local3 = 0
    local f15_local4 = 0
    local f15_local5 = 5
    local f15_local6 = 5
    Approach_Act_Flex(f15_arg0, f15_arg1, f15_local0, f15_local1, f15_local2, f15_local3, f15_local4, f15_local5, f15_local6)
    local f15_local7 = 3016
    local f15_local8 = 15 - f15_arg0:GetMapHitRadius(TARGET_SELF)
    local f15_local9 = f15_arg0:GetRandam_Int(1, 100)
    f15_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f15_local7, TARGET_ENE_0, f15_local8, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function GiantTree_HU_Battle_Act14(f16_arg0, f16_arg1, f16_arg2)
    local f16_local0 = 50 + 3 - f16_arg0:GetMapHitRadius(TARGET_SELF)
    local f16_local1 = 999
    local f16_local2 = 999
    local f16_local3 = 0
    local f16_local4 = 0
    local f16_local5 = 5
    local f16_local6 = 5
    Approach_Act_Flex(f16_arg0, f16_arg1, f16_local0, f16_local1, f16_local2, f16_local3, f16_local4, f16_local5, f16_local6)
    local f16_local7 = 3017
    local f16_local8 = 999
    local f16_local9 = 1.5
    local f16_local10 = 60
    f16_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f16_local7, TARGET_ENE_0, f16_local8, f16_local9, f16_local10, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function GiantTree_HU_Battle_Act15(f17_arg0, f17_arg1, f17_arg2)
    local f17_local0 = 22 + 3 - f17_arg0:GetMapHitRadius(TARGET_SELF)
    local f17_local1 = 999
    local f17_local2 = 999
    local f17_local3 = 0
    local f17_local4 = 0
    local f17_local5 = 5
    local f17_local6 = 5
    Approach_Act_Flex(f17_arg0, f17_arg1, f17_local0, f17_local1, f17_local2, f17_local3, f17_local4, f17_local5, f17_local6)
    local f17_local7 = 3018
    local f17_local8 = 999
    local f17_local9 = 1.5
    local f17_local10 = 45
    f17_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f17_local7, TARGET_ENE_0, f17_local8, f17_local9, f17_local10, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function GiantTree_HU_Battle_Act16(f18_arg0, f18_arg1, f18_arg2)
    local f18_local0 = 3019
    local f18_local1 = 999
    f18_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f18_local0, TARGET_ENE_0, f18_local1, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function GiantTree_HU_Battle_Act17(f19_arg0, f19_arg1, f19_arg2)
    local f19_local0 = 28 + 3 - f19_arg0:GetMapHitRadius(TARGET_SELF)
    local f19_local1 = 999
    local f19_local2 = 999
    local f19_local3 = 0
    local f19_local4 = 0
    local f19_local5 = 5
    local f19_local6 = 5
    Approach_Act_Flex(f19_arg0, f19_arg1, f19_local0, f19_local1, f19_local2, f19_local3, f19_local4, f19_local5, f19_local6)
    local f19_local7 = 3020
    local f19_local8 = 999
    local f19_local9 = 1.5
    local f19_local10 = 45
    f19_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f19_local7, TARGET_ENE_0, f19_local8, f19_local9, f19_local10, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function GiantTree_HU_Battle_Act18(f20_arg0, f20_arg1, f20_arg2)
    local f20_local0 = 3021
    local f20_local1 = 999
    f20_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f20_local0, TARGET_ENE_0, f20_local1, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function GiantTree_HU_Battle_Act21(f21_arg0, f21_arg1, f21_arg2)
    local f21_local0 = 4
    local f21_local1 = 999
    local f21_local2 = 999
    local f21_local3 = 0
    local f21_local4 = 0
    local f21_local5 = 5
    local f21_local6 = 5
    Approach_Act_Flex(f21_arg0, f21_arg1, f21_local0, f21_local1, f21_local2, f21_local3, f21_local4, f21_local5, f21_local6)
    f21_arg1:AddSubGoal(GOAL_COMMON_Turn, f21_arg0:GetRandam_Float(3, 4), TARGET_ENE_0, 30)
    
end

function GiantTree_HU_Battle_Act22(f22_arg0, f22_arg1, f22_arg2)
    local f22_local0 = f22_arg0:GetRandam_Int(0, 1)
    f22_arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 4, TARGET_ENE_0, f22_local0, f22_arg0:GetRandam_Int(30, 45), true, true, -1)
    
end

function GiantTree_HU_Battle_Act23(f23_arg0, f23_arg1, f23_arg2)
    f23_arg1:AddSubGoal(GOAL_COMMON_Turn, f23_arg0:GetRandam_Float(3, 4), TARGET_ENE_0, 15)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GiantTree_HU_Battle_Act24(f24_arg0, f24_arg1, f24_arg2)
    f24_arg0:SetTimer(0, 10)
    f24_arg1:AddSubGoal(GOAL_COMMON_Wait, f24_arg0:GetRandam_Float(0.5, 0.5), TARGET_NONE, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GiantTree_HU_Battle_ActAfter_AdjustSpace(f25_arg0, f25_arg1, f25_arg2)
    f25_arg1:AddSubGoal(GOAL_COMMON_AfterAttackAct, 3)
    
end

Goal.Update = function (f26_arg0, f26_arg1, f26_arg2)
    return Update_Default_NoSubGoal(f26_arg0, f26_arg1, f26_arg2)
    
end

Goal.Terminate = function (f27_arg0, f27_arg1, f27_arg2)
    
end

Goal.Interrupt = function (f28_arg0, f28_arg1, f28_arg2)
    local f28_local0 = f28_arg1:GetRandam_Int(1, 100)
    if f28_arg1:IsInterupt(INTERUPT_Damaged) and f28_arg1:HasSpecialEffectId(TARGET_SELF, 31) and f28_local0 <= 50 and InsideRange(f28_arg1, f28_arg2, 0, 120, -999 + 3 - f28_arg1:GetMapHitRadius(TARGET_SELF), 9.5 + 3 - f28_arg1:GetMapHitRadius(TARGET_SELF)) then
        f28_arg2:ClearSubGoal()
        f28_arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3010, TARGET_ENE_0, 999)
        return true
    end
    if f28_arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) then
        local f28_local1 = f28_arg1:GetDist(TARGET_ENE_0)
        local f28_local2 = f28_arg1:GetRandam_Int(1, 100)
        if f28_arg1:GetSpecialEffectActivateInterruptType(0) == 5025 and InsideRange(f28_arg1, f28_arg2, 0, 60, 12 + 3 - f28_arg1:GetMapHitRadius(TARGET_SELF), 15 + 3 - f28_arg1:GetMapHitRadius(TARGET_SELF)) then
            f28_arg2:ClearSubGoal()
            f28_arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3007, TARGET_ENE_0, 999, 0, 0)
            return true
        else
        end
    end
    return false
    
end

RegisterTableGoal(GOAL_GiantTree_Battle_AfterAttackAct, "GiantTree_Battle_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_GiantTree_Battle_AfterAttackAct, true)

Goal.Activate = function (f29_arg0, f29_arg1, f29_arg2)
    local f29_local0 = f29_arg1:GetDist(TARGET_ENE_0)
    local f29_local1 = f29_arg1:GetToTargetAngle(TARGET_ENE_0)
    
end

Goal.Update = function (f30_arg0, f30_arg1, f30_arg2)
    return Update_Default_NoSubGoal(f30_arg0, f30_arg1, f30_arg2)
    
end


