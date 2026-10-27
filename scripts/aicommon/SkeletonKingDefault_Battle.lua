REGISTER_GOAL_NO_SUB_GOAL(GOAL_StormyKing501000_Battle, true)
RegisterTableGoal(GOAL_SkeletonKing_516000_Default_Battle, "SkeletonKingDefaultBattle")

Goal.Initialize = function (f1_arg0, f1_arg1, f1_arg2, f1_arg3)
    f1_arg1:SetNumber(0, 0)
    f1_arg1:SetNumber(1, 0)
    f1_arg1:SetNumber(3, 0)
    f1_arg1:SetNumber(5, 0)
    
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
    if f2_arg1:IsEventFlag(13804813) == true and f2_arg1:GetNumber(0) == 1 and f2_arg1:GetNumber(1) == 1 and f2_arg1:GetNumber(3) == 1 then
        f2_arg1:SetTimer(1, 20)
        f2_arg1:SetNumber(1, 2)
    end
    if f2_arg1:IsEventFlag(13804813) == true and f2_arg1:IsFinishTimer(1) == true and f2_arg1:GetNumber(1) == 2 then
        f2_local0[12] = 100
    end
    if f2_arg1:IsFinishTimer(2) == true and f2_arg1:GetNumber(0) == 1 and f2_arg1:GetNumber(3) == 0 then
        f2_arg1:SetNumber(1, 1)
        f2_arg1:SetNumber(3, 1)
    end
    if f2_arg1:GetHpRate(TARGET_SELF) <= 0.97 and f2_arg1:GetNumber(0) == 0 then
        f2_local0[12] = 100
    end
    if f2_arg1:HasSpecialEffectId(TARGET_SELF, 12258) and not f2_arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 180) and f2_arg1:GetNumber(5) == 0 then
        f2_arg1:SetNumber(5, 1)
        f2_local0[13] = 100
    end
    if f2_arg1:HasSpecialEffectId(TARGET_SELF, 12256) then
        if f2_arg1:GetHpRate(TARGET_SELF) <= 0.95 and f2_arg1:GetNumber(0) == 1 and f2_arg1:IsEventFlag(13804813) == false then
            if not f2_arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 180) and f2_local3 >= 40 then
                f2_local0[11] = 100
            elseif f2_local4 <= 40 then
                f2_local0[7] = 100
            else
                if InsideDir(f2_arg1, f2_arg2, 0, 60) and f2_local3 < 25 then
                    f2_local0[10] = 70
                    f2_local0[6] = 30
                end
                if InsideDir(f2_arg1, f2_arg2, -30, 30) then
                    f2_local0[5] = 100
                end
                if InsideDir(f2_arg1, f2_arg2, 90, 140) then
                    f2_local0[1] = 100
                end
                if InsideDir(f2_arg1, f2_arg2, -90, 140) then
                    f2_local0[3] = 100
                end
                if InsideDir(f2_arg1, f2_arg2, -90, 180) then
                    f2_local0[5] = 100
                end
                f2_local0[2] = 60
                f2_local0[6] = 30
                f2_local0[7] = 10
            end
        elseif not f2_arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 180) and f2_local3 >= 40 then
            f2_local0[11] = 100
        else
            if InsideDir(f2_arg1, f2_arg2, 0, 60) and f2_local3 < 25 then
                f2_local0[10] = 70
                f2_local0[6] = 30
            end
            if InsideDir(f2_arg1, f2_arg2, -30, 30) then
                f2_local0[5] = 100
            end
            if InsideDir(f2_arg1, f2_arg2, 90, 140) then
                f2_local0[1] = 100
            end
            if InsideDir(f2_arg1, f2_arg2, -90, 140) then
                f2_local0[3] = 100
            end
            if InsideDir(f2_arg1, f2_arg2, -90, 180) then
                f2_local0[5] = 100
            end
            f2_local0[2] = 65
            f2_local0[6] = 35
        end
    elseif f2_arg1:HasSpecialEffectId(TARGET_SELF, 12257) then
        if f2_arg1:IsEventFlag(13804813) == true then
            if not f2_arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 180) and f2_local3 >= 40 then
                f2_local0[11] = 100
            else
                if InsideDir(f2_arg1, f2_arg2, 0, 60) and f2_local3 < 25 then
                    f2_local0[10] = 70
                    f2_local0[6] = 30
                end
                if InsideDir(f2_arg1, f2_arg2, -30, 30) then
                    f2_local0[5] = 100
                end
                if InsideDir(f2_arg1, f2_arg2, 90, 140) then
                    f2_local0[1] = 100
                end
                if InsideDir(f2_arg1, f2_arg2, -90, 140) then
                    f2_local0[3] = 100
                end
                if InsideDir(f2_arg1, f2_arg2, -90, 180) then
                    f2_local0[5] = 100
                end
                f2_local0[2] = 65
                f2_local0[6] = 35
            end
        elseif not f2_arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 180) and f2_local3 >= 40 then
            f2_local0[11] = 100
        elseif f2_local4 <= 40 then
            f2_local0[7] = 100
        else
            if InsideDir(f2_arg1, f2_arg2, 0, 60) and f2_local3 < 25 then
                f2_local0[10] = 70
                f2_local0[6] = 30
            end
            if InsideDir(f2_arg1, f2_arg2, -30, 30) then
                f2_local0[5] = 100
            end
            if InsideDir(f2_arg1, f2_arg2, 90, 140) then
                f2_local0[1] = 100
            end
            if InsideDir(f2_arg1, f2_arg2, -90, 140) then
                f2_local0[3] = 100
            end
            if InsideDir(f2_arg1, f2_arg2, -90, 180) then
                f2_local0[5] = 100
            end
            f2_local0[2] = 60
            f2_local0[6] = 30
            f2_local0[7] = 10
        end
    elseif f2_arg1:HasSpecialEffectId(TARGET_SELF, 12258) then
        if f2_arg1:IsEventFlag(13804813) == true then
            if not f2_arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 180) and f2_local3 >= 40 then
                f2_local0[11] = 100
            else
                if InsideDir(f2_arg1, f2_arg2, 0, 60) and f2_local3 < 25 then
                    f2_local0[10] = 70
                    f2_local0[6] = 30
                end
                if InsideDir(f2_arg1, f2_arg2, -30, 30) then
                    f2_local0[5] = 100
                end
                if InsideDir(f2_arg1, f2_arg2, 90, 140) then
                    f2_local0[1] = 100
                end
                if InsideDir(f2_arg1, f2_arg2, -90, 140) then
                    f2_local0[3] = 100
                end
                if InsideDir(f2_arg1, f2_arg2, -90, 180) then
                    f2_local0[5] = 100
                end
                f2_local0[2] = 65
                f2_local0[6] = 35
            end
        elseif f2_local4 <= 40 then
            f2_local0[7] = 100
        else
            if InsideDir(f2_arg1, f2_arg2, 0, 60) and f2_local3 < 25 then
                f2_local0[10] = 70
                f2_local0[6] = 30
            end
            if InsideDir(f2_arg1, f2_arg2, -30, 30) then
                f2_local0[5] = 100
            end
            if InsideDir(f2_arg1, f2_arg2, 90, 140) then
                f2_local0[1] = 100
            end
            if InsideDir(f2_arg1, f2_arg2, -90, 140) then
                f2_local0[3] = 100
            end
            if InsideDir(f2_arg1, f2_arg2, -90, 180) then
                f2_local0[5] = 100
            end
            f2_local0[2] = 60
            f2_local0[6] = 30
            f2_local0[7] = 10
        end
    else
    end
    f2_local0[1] = SetCoolTime(f2_arg1, f2_arg2, 3000, 60, f2_local0[1], 1)
    f2_local0[2] = SetCoolTime(f2_arg1, f2_arg2, 3001, 60, f2_local0[2], 1)
    f2_local0[3] = SetCoolTime(f2_arg1, f2_arg2, 3002, 60, f2_local0[3], 1)
    f2_local0[5] = SetCoolTime(f2_arg1, f2_arg2, 3004, 60, f2_local0[5], 1)
    f2_local0[6] = SetCoolTime(f2_arg1, f2_arg2, 3005, 60, f2_local0[6], 1)
    f2_local0[7] = SetCoolTime(f2_arg1, f2_arg2, 3006, 60, f2_local0[7], 1)
    f2_local0[10] = SetCoolTime(f2_arg1, f2_arg2, 3010, 60, f2_local0[10], 1)
    f2_local1[1] = REGIST_FUNC(f2_arg1, f2_arg2, SkeletonKingDefaultBattle_Act01)
    f2_local1[2] = REGIST_FUNC(f2_arg1, f2_arg2, SkeletonKingDefaultBattle_Act02)
    f2_local1[3] = REGIST_FUNC(f2_arg1, f2_arg2, SkeletonKingDefaultBattle_Act03)
    f2_local1[5] = REGIST_FUNC(f2_arg1, f2_arg2, SkeletonKingDefaultBattle_Act05)
    f2_local1[6] = REGIST_FUNC(f2_arg1, f2_arg2, SkeletonKingDefaultBattle_Act06)
    f2_local1[7] = REGIST_FUNC(f2_arg1, f2_arg2, SkeletonKingDefaultBattle_Act07)
    f2_local1[10] = REGIST_FUNC(f2_arg1, f2_arg2, SkeletonKingDefaultBattle_Act10)
    f2_local1[11] = REGIST_FUNC(f2_arg1, f2_arg2, SkeletonKingDefaultBattle_Act11)
    f2_local1[12] = REGIST_FUNC(f2_arg1, f2_arg2, SkeletonKingDefaultBattle_Act12)
    f2_local1[13] = REGIST_FUNC(f2_arg1, f2_arg2, SkeletonKingDefaultBattle_Act13)
    local f2_local5 = REGIST_FUNC(f2_arg1, f2_arg2, SkeletonKingDefaultBattle_ActAfter_AdjustSpace)
    Common_Battle_Activate(f2_arg1, f2_arg2, f2_local0, f2_local1, f2_local5, f2_local2)
    
end

function SkeletonKingDefaultBattle_Act01(f3_arg0, f3_arg1, f3_arg2)
    local f3_local0 = 999
    local f3_local1 = 998
    local f3_local2 = 999
    local f3_local3 = 0
    local f3_local4 = 0
    local f3_local5 = 0
    local f3_local6 = 0
    Approach_Act_Flex(f3_arg0, f3_arg1, f3_local0, f3_local1, f3_local2, f3_local3, f3_local4, f3_local5, f3_local6)
    local f3_local7 = 3000
    local f3_local8 = 9999 - f3_arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local9 = 5
    local f3_local10 = 180
    f3_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, f3_local7, TARGET_ENE_0, f3_local8, f3_local9, f3_local10)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function SkeletonKingDefaultBattle_Act02(f4_arg0, f4_arg1, f4_arg2)
    local f4_local0 = 999
    local f4_local1 = 998
    local f4_local2 = 999
    local f4_local3 = 0
    local f4_local4 = 0
    local f4_local5 = 0
    local f4_local6 = 0
    Approach_Act_Flex(f4_arg0, f4_arg1, f4_local0, f4_local1, f4_local2, f4_local3, f4_local4, f4_local5, f4_local6)
    local f4_local7 = 3001
    local f4_local8 = 3009
    local f4_local9 = 999
    local f4_local10 = 9999 - f4_arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local11 = 5
    local f4_local12 = 180
    local f4_local13 = f4_arg0:GetRandam_Int(1, 100)
    if f4_local13 <= 20 then
        f4_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f4_local7, TARGET_ENE_0, f4_local10, f4_local11, f4_local12, 0, 0)
    else
        f4_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f4_local7, TARGET_ENE_0, f4_local9, f4_local11, f4_local12, 0, 0)
        f4_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f4_local8, TARGET_ENE_0, f4_local10, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function SkeletonKingDefaultBattle_Act03(f5_arg0, f5_arg1, f5_arg2)
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

function SkeletonKingDefaultBattle_Act05(f6_arg0, f6_arg1, f6_arg2)
    local f6_local0 = 999
    local f6_local1 = 998
    local f6_local2 = 999
    local f6_local3 = 0
    local f6_local4 = 0
    local f6_local5 = 0
    local f6_local6 = 0
    Approach_Act_Flex(f6_arg0, f6_arg1, f6_local0, f6_local1, f6_local2, f6_local3, f6_local4, f6_local5, f6_local6)
    local f6_local7 = 3004
    local f6_local8 = 9999 - f6_arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local9 = 5
    local f6_local10 = 180
    f6_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, f6_local7, TARGET_ENE_0, f6_local8, f6_local9, f6_local10)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function SkeletonKingDefaultBattle_Act06(f7_arg0, f7_arg1, f7_arg2)
    local f7_local0 = 999
    local f7_local1 = 998
    local f7_local2 = 999
    local f7_local3 = 0
    local f7_local4 = 0
    local f7_local5 = 0
    local f7_local6 = 0
    Approach_Act_Flex(f7_arg0, f7_arg1, f7_local0, f7_local1, f7_local2, f7_local3, f7_local4, f7_local5, f7_local6)
    local f7_local7 = 3005
    local f7_local8 = 9999 - f7_arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local9 = 5
    local f7_local10 = 180
    f7_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, f7_local7, TARGET_ENE_0, f7_local8, f7_local9, f7_local10)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function SkeletonKingDefaultBattle_Act07(f8_arg0, f8_arg1, f8_arg2)
    local f8_local0 = 3006
    local f8_local1 = 9999 - f8_arg0:GetMapHitRadius(TARGET_SELF)
    local f8_local2 = 0
    local f8_local3 = 0
    f8_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, f8_local0, TARGET_ENE_0, f8_local1, f8_local2, f8_local3)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function SkeletonKingDefaultBattle_Act10(f9_arg0, f9_arg1, f9_arg2)
    local f9_local0 = 999
    local f9_local1 = 998
    local f9_local2 = 999
    local f9_local3 = 0
    local f9_local4 = 0
    local f9_local5 = 0
    local f9_local6 = 0
    Approach_Act_Flex(f9_arg0, f9_arg1, f9_local0, f9_local1, f9_local2, f9_local3, f9_local4, f9_local5, f9_local6)
    local f9_local7 = 3010
    local f9_local8 = 9999 - f9_arg0:GetMapHitRadius(TARGET_SELF)
    local f9_local9 = 5
    local f9_local10 = 180
    f9_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, f9_local7, TARGET_ENE_0, f9_local8, f9_local9, f9_local10)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function SkeletonKingDefaultBattle_Act11(f10_arg0, f10_arg1, f10_arg2)
    local f10_local0 = 999
    local f10_local1 = 998
    local f10_local2 = 999
    local f10_local3 = 0
    local f10_local4 = 0
    local f10_local5 = 0
    local f10_local6 = 0
    Approach_Act_Flex(f10_arg0, f10_arg1, f10_local0, f10_local1, f10_local2, f10_local3, f10_local4, f10_local5, f10_local6)
    local f10_local7 = 3011
    local f10_local8 = 9999 - f10_arg0:GetMapHitRadius(TARGET_SELF)
    local f10_local9 = 5
    local f10_local10 = 180
    f10_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, f10_local7, TARGET_ENE_0, f10_local8, f10_local9, f10_local10)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function SkeletonKingDefaultBattle_Act12(f11_arg0, f11_arg1, f11_arg2)
    f11_arg0:SetNumber(0, 1)
    f11_arg0:SetNumber(3, 0)
    f11_arg0:SetTimer(2, 15)
    local f11_local0 = 3003
    local f11_local1 = 9999 - f11_arg0:GetMapHitRadius(TARGET_SELF)
    local f11_local2 = 0
    local f11_local3 = 0
    local f11_local4 = f11_arg0:GetRandam_Int(1, 100)
    f11_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 4, f11_local0, TARGET_ENE_0, f11_local1, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function SkeletonKingDefaultBattle_Act13(f12_arg0, f12_arg1, f12_arg2)
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
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Update = function (f13_arg0, f13_arg1, f13_arg2)
    return Update_Default_NoSubGoal(f13_arg0, f13_arg1, f13_arg2)
    
end

Goal.Terminate = function (f14_arg0, f14_arg1, f14_arg2)
    
end


