REGISTER_GOAL_NO_SUB_GOAL(GOAL_StormyKing501000_Battle, true)
RegisterTableGoal(GOAL_SkeletonKing_516000_HeatUp_Battle, "SkeletonKingHeatUpBattle")
REGISTER_GOAL_NO_UPDATE(GOAL_SkeletonKing_516000_HeatUp_Battle, true)

Goal.Initialize = function (f1_arg0, f1_arg1, f1_arg2, f1_arg3)
    f1_arg1:SetNumber(4, 1)
    
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
    Init_Pseudo_Global(f2_arg1, f2_arg2)
    if f2_arg1:IsEventFlag(13804813) == true and f2_arg1:GetNumber(0) == 1 and f2_arg1:GetNumber(1) == 1 and f2_arg1:GetNumber(3) == 1 then
        f2_arg1:SetTimer(1, 20)
        f2_arg1:SetNumber(1, 2)
    end
    f2_arg1:SetNumber(4, f2_arg1:GetNumber(4) + 1)
    if f2_arg1:GetNumber(4) >= 4 then
        f2_local0[1] = 100
    end
    if f2_arg1:HasSpecialEffectId(TARGET_SELF, 12258) and not f2_arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 180) and f2_arg1:GetNumber(5) == 0 then
        f2_local0[12] = 100
    end
    if f2_arg1:HasSpecialEffectId(TARGET_SELF, 12256) then
        if not f2_arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 180) and f2_local3 >= 50 then
            f2_local0[11] = 100
        elseif f2_local4 <= 10 * f2_arg1:GetNumber(4) then
            f2_local0[1] = 100
        else
            if InsideDir(f2_arg1, f2_arg2, 90, 180) then
                f2_local0[4] = 70
                f2_local0[5] = 10
                f2_local0[8] = 10
                f2_local0[9] = 10
            end
            if InsideDir(f2_arg1, f2_arg2, -30, 30) and f2_local3 < 25 then
                f2_local0[6] = 70
                f2_local0[5] = 10
                f2_local0[8] = 10
                f2_local0[9] = 10
            end
            if InsideDir(f2_arg1, f2_arg2, -10, 20) and f2_local3 > 30 then
                f2_local0[7] = 70
                f2_local0[5] = 10
                f2_local0[8] = 10
                f2_local0[9] = 10
            end
            if InsideDir(f2_arg1, f2_arg2, -30, 70) and f2_local3 > 30 then
                f2_local0[10] = 70
                f2_local0[5] = 10
                f2_local0[8] = 10
                f2_local0[9] = 10
            end
            f2_local0[5] = 40
            f2_local0[8] = 20
            f2_local0[9] = 40
        end
    elseif f2_arg1:HasSpecialEffectId(TARGET_SELF, 12257) then
        if not f2_arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 180) and f2_local3 >= 50 then
            f2_local0[11] = 100
        elseif f2_local4 <= 10 * f2_arg1:GetNumber(4) then
            f2_local0[1] = 100
        else
            if InsideDir(f2_arg1, f2_arg2, 90, 180) then
                f2_local0[4] = 70
                f2_local0[5] = 10
                f2_local0[8] = 10
                f2_local0[9] = 10
            end
            if InsideDir(f2_arg1, f2_arg2, -30, 30) and f2_local3 < 25 then
                f2_local0[6] = 70
                f2_local0[5] = 10
                f2_local0[8] = 10
                f2_local0[9] = 10
            end
            if InsideDir(f2_arg1, f2_arg2, -10, 20) and f2_local3 > 30 then
                f2_local0[7] = 70
                f2_local0[5] = 10
                f2_local0[8] = 10
                f2_local0[9] = 10
            end
            if InsideDir(f2_arg1, f2_arg2, -30, 70) and f2_local3 > 30 then
                f2_local0[10] = 70
                f2_local0[5] = 10
                f2_local0[8] = 10
                f2_local0[9] = 10
            end
            f2_local0[5] = 40
            f2_local0[8] = 20
            f2_local0[9] = 40
        end
    elseif f2_arg1:HasSpecialEffectId(TARGET_SELF, 12258) then
        if not f2_arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 180) and f2_local3 >= 50 then
            f2_local0[11] = 100
        elseif f2_local4 <= 10 * f2_arg1:GetNumber(4) then
            f2_local0[1] = 100
        else
            if InsideDir(f2_arg1, f2_arg2, 90, 180) then
                f2_local0[4] = 70
                f2_local0[5] = 10
                f2_local0[8] = 10
                f2_local0[9] = 10
            end
            if InsideDir(f2_arg1, f2_arg2, -30, 30) and f2_local3 < 25 then
                f2_local0[6] = 70
                f2_local0[5] = 10
                f2_local0[8] = 10
                f2_local0[9] = 10
            end
            if InsideDir(f2_arg1, f2_arg2, -10, 20) and f2_local3 > 30 then
                f2_local0[7] = 70
                f2_local0[5] = 10
                f2_local0[8] = 10
                f2_local0[9] = 10
            end
            if InsideDir(f2_arg1, f2_arg2, -30, 70) and f2_local3 > 30 then
                f2_local0[10] = 70
                f2_local0[5] = 10
                f2_local0[8] = 10
                f2_local0[9] = 10
            end
            f2_local0[5] = 40
            f2_local0[8] = 20
            f2_local0[9] = 40
        end
    else
    end
    f2_local0[1] = SetCoolTime(f2_arg1, f2_arg2, 3000, 60, f2_local0[1], 1)
    f2_local0[2] = SetCoolTime(f2_arg1, f2_arg2, 3012, 60, f2_local0[2], 1)
    f2_local0[3] = SetCoolTime(f2_arg1, f2_arg2, 3013, 60, f2_local0[3], 1)
    f2_local0[4] = SetCoolTime(f2_arg1, f2_arg2, 3001, 60, f2_local0[4], 1)
    f2_local0[5] = SetCoolTime(f2_arg1, f2_arg2, 3002, 60, f2_local0[5], 1)
    f2_local0[6] = SetCoolTime(f2_arg1, f2_arg2, 3003, 60, f2_local0[6], 1)
    f2_local0[7] = SetCoolTime(f2_arg1, f2_arg2, 3004, 60, f2_local0[7], 1)
    f2_local0[8] = SetCoolTime(f2_arg1, f2_arg2, 3005, 60, f2_local0[8], 1)
    f2_local0[9] = SetCoolTime(f2_arg1, f2_arg2, 3006, 60, f2_local0[9], 1)
    f2_local0[10] = SetCoolTime(f2_arg1, f2_arg2, 3007, 60, f2_local0[10], 1)
    f2_local0[11] = SetCoolTime(f2_arg1, f2_arg2, 3011, 60, f2_local0[11], 1)
    f2_local1[1] = REGIST_FUNC(f2_arg1, f2_arg2, SkeletonKingHeatUpBattle_Act01)
    f2_local1[4] = REGIST_FUNC(f2_arg1, f2_arg2, SkeletonKingHeatUpBattle_Act04)
    f2_local1[5] = REGIST_FUNC(f2_arg1, f2_arg2, SkeletonKingHeatUpBattle_Act05)
    f2_local1[6] = REGIST_FUNC(f2_arg1, f2_arg2, SkeletonKingHeatUpBattle_Act06)
    f2_local1[7] = REGIST_FUNC(f2_arg1, f2_arg2, SkeletonKingHeatUpBattle_Act07)
    f2_local1[8] = REGIST_FUNC(f2_arg1, f2_arg2, SkeletonKingHeatUpBattle_Act08)
    f2_local1[9] = REGIST_FUNC(f2_arg1, f2_arg2, SkeletonKingHeatUpBattle_Act09)
    f2_local1[10] = REGIST_FUNC(f2_arg1, f2_arg2, SkeletonKingHeatUpBattle_Act10)
    f2_local1[11] = REGIST_FUNC(f2_arg1, f2_arg2, SkeletonKingHeatUpBattle_Act11)
    f2_local1[12] = REGIST_FUNC(f2_arg1, f2_arg2, SkeletonKingHeatUpBattle_Act12)
    local f2_local5 = REGIST_FUNC(f2_arg1, f2_arg2, SkeletonKingHeatUpBattle_ActAfter_AdjustSpace)
    Common_Battle_Activate(f2_arg1, f2_arg2, f2_local0, f2_local1, f2_local5, f2_local2)
    
end

function SkeletonKingHeatUpBattle_Act01(f3_arg0, f3_arg1, f3_arg2)
    f3_arg0:SetNumber(4, 1)
    local f3_local0 = 3000
    local f3_local1 = 9999 - f3_arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local2 = 0
    local f3_local3 = 0
    f3_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, f3_local0, TARGET_ENE_0, f3_local1, f3_local2, f3_local3)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function SkeletonKingHeatUpBattle_Act04(f4_arg0, f4_arg1, f4_arg2)
    local f4_local0 = 999
    local f4_local1 = 998
    local f4_local2 = 999
    local f4_local3 = 0
    local f4_local4 = 0
    local f4_local5 = 0
    local f4_local6 = 0
    Approach_Act_Flex(f4_arg0, f4_arg1, f4_local0, f4_local1, f4_local2, f4_local3, f4_local4, f4_local5, f4_local6)
    local f4_local7 = 3001
    local f4_local8 = 9999 - f4_arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local9 = 5
    local f4_local10 = 180
    f4_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, f4_local7, TARGET_ENE_0, f4_local8, f4_local9, f4_local10)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function SkeletonKingHeatUpBattle_Act05(f5_arg0, f5_arg1, f5_arg2)
    local f5_local0 = 999
    local f5_local1 = 998
    local f5_local2 = 999
    local f5_local3 = 0
    local f5_local4 = 0
    local f5_local5 = 0
    local f5_local6 = 0
    Approach_Act_Flex(f5_arg0, f5_arg1, f5_local0, f5_local1, f5_local2, f5_local3, f5_local4, f5_local5, f5_local6)
    local f5_local7 = 3002
    local f5_local8 = 9999 - f5_arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local9 = 5
    local f5_local10 = 180
    f5_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, f5_local7, TARGET_ENE_0, f5_local8, f5_local9, f5_local10)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function SkeletonKingHeatUpBattle_Act06(f6_arg0, f6_arg1, f6_arg2)
    local f6_local0 = 999
    local f6_local1 = 998
    local f6_local2 = 999
    local f6_local3 = 0
    local f6_local4 = 0
    local f6_local5 = 0
    local f6_local6 = 0
    Approach_Act_Flex(f6_arg0, f6_arg1, f6_local0, f6_local1, f6_local2, f6_local3, f6_local4, f6_local5, f6_local6)
    local f6_local7 = 3003
    local f6_local8 = 9999 - f6_arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local9 = 5
    local f6_local10 = 180
    f6_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, f6_local7, TARGET_ENE_0, f6_local8, f6_local9, f6_local10)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function SkeletonKingHeatUpBattle_Act07(f7_arg0, f7_arg1, f7_arg2)
    local f7_local0 = 999
    local f7_local1 = 998
    local f7_local2 = 999
    local f7_local3 = 0
    local f7_local4 = 0
    local f7_local5 = 0
    local f7_local6 = 0
    Approach_Act_Flex(f7_arg0, f7_arg1, f7_local0, f7_local1, f7_local2, f7_local3, f7_local4, f7_local5, f7_local6)
    local f7_local7 = 3004
    local f7_local8 = 9999 - f7_arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local9 = 5
    local f7_local10 = 180
    f7_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, f7_local7, TARGET_ENE_0, f7_local8, f7_local9, f7_local10)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function SkeletonKingHeatUpBattle_Act08(f8_arg0, f8_arg1, f8_arg2)
    local f8_local0 = 999
    local f8_local1 = 998
    local f8_local2 = 999
    local f8_local3 = 0
    local f8_local4 = 0
    local f8_local5 = 0
    local f8_local6 = 0
    Approach_Act_Flex(f8_arg0, f8_arg1, f8_local0, f8_local1, f8_local2, f8_local3, f8_local4, f8_local5, f8_local6)
    local f8_local7 = 3005
    local f8_local8 = 9999 - f8_arg0:GetMapHitRadius(TARGET_SELF)
    local f8_local9 = 5
    local f8_local10 = 180
    f8_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, f8_local7, TARGET_ENE_0, f8_local8, f8_local9, f8_local10)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function SkeletonKingHeatUpBattle_Act09(f9_arg0, f9_arg1, f9_arg2)
    local f9_local0 = 999
    local f9_local1 = 998
    local f9_local2 = 999
    local f9_local3 = 0
    local f9_local4 = 0
    local f9_local5 = 0
    local f9_local6 = 0
    Approach_Act_Flex(f9_arg0, f9_arg1, f9_local0, f9_local1, f9_local2, f9_local3, f9_local4, f9_local5, f9_local6)
    local f9_local7 = 3006
    local f9_local8 = 9999 - f9_arg0:GetMapHitRadius(TARGET_SELF)
    local f9_local9 = 5
    local f9_local10 = 180
    f9_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, f9_local7, TARGET_ENE_0, f9_local8, f9_local9, f9_local10)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function SkeletonKingHeatUpBattle_Act10(f10_arg0, f10_arg1, f10_arg2)
    local f10_local0 = 999
    local f10_local1 = 998
    local f10_local2 = 999
    local f10_local3 = 0
    local f10_local4 = 0
    local f10_local5 = 0
    local f10_local6 = 0
    Approach_Act_Flex(f10_arg0, f10_arg1, f10_local0, f10_local1, f10_local2, f10_local3, f10_local4, f10_local5, f10_local6)
    local f10_local7 = 3007
    local f10_local8 = 9999 - f10_arg0:GetMapHitRadius(TARGET_SELF)
    local f10_local9 = 5
    local f10_local10 = 180
    f10_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, f10_local7, TARGET_ENE_0, f10_local8, f10_local9, f10_local10)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function SkeletonKingHeatUpBattle_Act11(f11_arg0, f11_arg1, f11_arg2)
    local f11_local0 = 999
    local f11_local1 = 998
    local f11_local2 = 999
    local f11_local3 = 0
    local f11_local4 = 0
    local f11_local5 = 0
    local f11_local6 = 0
    Approach_Act_Flex(f11_arg0, f11_arg1, f11_local0, f11_local1, f11_local2, f11_local3, f11_local4, f11_local5, f11_local6)
    local f11_local7 = 3011
    local f11_local8 = 9999 - f11_arg0:GetMapHitRadius(TARGET_SELF)
    local f11_local9 = 5
    local f11_local10 = 180
    f11_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, f11_local7, TARGET_ENE_0, f11_local8, f11_local9, f11_local10)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function SkeletonKingHeatUpBattle_Act12(f12_arg0, f12_arg1, f12_arg2)
    f12_arg0:SetNumber(5, 1)
    local f12_local0 = 999
    local f12_local1 = 998
    local f12_local2 = 999
    local f12_local3 = 0
    local f12_local4 = 0
    local f12_local5 = 0
    local f12_local6 = 0
    Approach_Act_Flex(f12_arg0, f12_arg1, f12_local0, f12_local1, f12_local2, f12_local3, f12_local4, f12_local5, f12_local6)
    local f12_local7 = 3011
    local f12_local8 = 9999 - f12_arg0:GetMapHitRadius(TARGET_SELF)
    local f12_local9 = 5
    local f12_local10 = 180
    f12_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, f12_local7, TARGET_ENE_0, f12_local8, f12_local9, f12_local10)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Update = function (f13_arg0, f13_arg1, f13_arg2)
    return Update_Default_NoSubGoal(f13_arg0, f13_arg1, f13_arg2)
    
end

Goal.Terminate = function (f14_arg0, f14_arg1, f14_arg2)
    
end


