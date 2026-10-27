RegisterTableGoal(GOAL_Hellkite_314010_Battle, "Hellkite_314010_Battle")

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
    local f2_local4 = f2_arg1:GetEventRequest()
    local f2_local5 = 0
    if f2_arg1:IsInsideTargetRegion(TARGET_ENE_0, 3202301) then
        f2_local0[25] = 100
        if f2_arg1:IsInsideTargetRegion(TARGET_ENE_0, 3202301) and f2_arg1:IsInsideTargetRegion(TARGET_SELF, 3202321) then
            f2_local0[23] = 100
        end
    elseif f2_arg1:IsInsideTargetRegion(TARGET_ENE_0, 3202303) and not f2_arg1:IsInsideTargetRegion(TARGET_SELF, 3202320) then
        f2_local0[26] = 100
    elseif f2_arg1:IsInsideTargetRegion(TARGET_ENE_0, 3202303) and f2_arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 90) then
        f2_local0[20] = 50
    elseif f2_arg1:IsInsideTargetRegion(TARGET_ENE_0, 3202304) and not f2_arg1:IsInsideTargetRegion(TARGET_SELF, 3202320) then
        f2_local0[26] = 100
    elseif f2_arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 90) then
        f2_local0[7] = 100
        f2_local0[20] = 50
    elseif f2_arg1:IsInsideTargetRegion(TARGET_ENE_0, 3202305) then
        f2_local0[24] = 100
    elseif f2_arg1:IsInsideTargetRegion(TARGET_ENE_0, 3202303) then
        if f2_local3 >= 17 then
            f2_local0[1] = 40
            f2_local0[15] = 60
        elseif f2_local3 >= 8.5 then
            f2_local0[1] = 5
            f2_local0[2] = 110
            f2_local0[3] = 190
            f2_local0[4] = 5
            f2_local0[5] = 5
            f2_local0[6] = 5
            f2_local0[9] = 40
            f2_local0[15] = 10
        elseif f2_local3 >= 5 then
            f2_local0[2] = 30
            f2_local0[3] = 30
            f2_local0[9] = 50
        else
            f2_local0[1] = 0
            f2_local0[2] = 0
            f2_local0[3] = 0
            f2_local0[4] = 100
            f2_local0[5] = 100
            f2_local0[6] = 100
        end
    elseif f2_local3 >= 20 then
        f2_local0[1] = 150
        f2_local0[2] = 80
        f2_local0[3] = 2
        f2_local0[4] = 2
        f2_local0[5] = 2
        f2_local0[6] = 2
        f2_local0[7] = 0
        f2_local0[9] = 0
    elseif f2_local3 >= 13 then
        f2_local0[1] = 70
        f2_local0[2] = 110
        f2_local0[3] = 20
        f2_local0[4] = 1
        f2_local0[5] = 1
        f2_local0[6] = 1
        f2_local0[7] = 0
        f2_local0[9] = 80
    elseif f2_local3 >= 9 then
        f2_local0[1] = 10
        f2_local0[2] = 120
        f2_local0[3] = 180
        f2_local0[4] = 3
        f2_local0[5] = 3
        f2_local0[6] = 3
        f2_local0[7] = 0
        f2_local0[9] = 50
    else
        f2_local0[1] = 0
        f2_local0[2] = 0
        f2_local0[3] = 0
        f2_local0[4] = 100
        f2_local0[5] = 100
        f2_local0[6] = 100
        f2_local0[7] = 20
        f2_local0[9] = 60
    end
    if f2_arg1:IsInsideTargetRegion(TARGET_ENE_0, 3202303) and not f2_arg1:IsInsideTargetRegion(TARGET_ENE_0, 3202306) then
        f2_local0[15] = 0
    end
    f2_local1[1] = REGIST_FUNC(f2_arg1, f2_arg2, Hellkite_314010_Act01)
    f2_local1[2] = REGIST_FUNC(f2_arg1, f2_arg2, Hellkite_314010_Act02)
    f2_local1[3] = REGIST_FUNC(f2_arg1, f2_arg2, Hellkite_314010_Act03)
    f2_local1[4] = REGIST_FUNC(f2_arg1, f2_arg2, Hellkite_314010_Act04)
    f2_local1[5] = REGIST_FUNC(f2_arg1, f2_arg2, Hellkite_314010_Act05)
    f2_local1[6] = REGIST_FUNC(f2_arg1, f2_arg2, Hellkite_314010_Act06)
    f2_local1[7] = REGIST_FUNC(f2_arg1, f2_arg2, Hellkite_314010_Act07)
    f2_local1[8] = REGIST_FUNC(f2_arg1, f2_arg2, Hellkite_314010_Act08)
    f2_local1[9] = REGIST_FUNC(f2_arg1, f2_arg2, Hellkite_314010_Act09)
    f2_local1[10] = REGIST_FUNC(f2_arg1, f2_arg2, Hellkite_314010_Act10)
    f2_local1[11] = REGIST_FUNC(f2_arg1, f2_arg2, Hellkite_314010_Act11)
    f2_local1[12] = REGIST_FUNC(f2_arg1, f2_arg2, Hellkite_314010_Act12)
    f2_local1[13] = REGIST_FUNC(f2_arg1, f2_arg2, Hellkite_314010_Act13)
    f2_local1[14] = REGIST_FUNC(f2_arg1, f2_arg2, Hellkite_314010_Act14)
    f2_local1[15] = REGIST_FUNC(f2_arg1, f2_arg2, Hellkite_314010_Act15)
    f2_local1[20] = REGIST_FUNC(f2_arg1, f2_arg2, Hellkite_314010_Act20)
    f2_local1[21] = REGIST_FUNC(f2_arg1, f2_arg2, Hellkite_314010_Act21)
    f2_local1[22] = REGIST_FUNC(f2_arg1, f2_arg2, Hellkite_314010_Act22)
    f2_local1[23] = REGIST_FUNC(f2_arg1, f2_arg2, Hellkite_314010_Act23)
    f2_local1[24] = REGIST_FUNC(f2_arg1, f2_arg2, Hellkite_314010_Act24)
    f2_local1[25] = REGIST_FUNC(f2_arg1, f2_arg2, Hellkite_314010_Act25)
    f2_local1[26] = REGIST_FUNC(f2_arg1, f2_arg2, Hellkite_314010_Act26)
    local f2_local6 = REGIST_FUNC(f2_arg1, f2_arg2, Hellkite_314010_ActAfter_AdjustSpace)
    Common_Battle_Activate(f2_arg1, f2_arg2, f2_local0, f2_local1, f2_local6, f2_local2)
    
end

function Hellkite_314010_Act01(f3_arg0, f3_arg1, f3_arg2)
    local f3_local0 = 3000
    local f3_local1 = 999 - f3_arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local2 = 0
    local f3_local3 = 0
    f3_arg1:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, f3_local0, TARGET_ENE_0, f3_local1, f3_local2, f3_local3)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function Hellkite_314010_Act02(f4_arg0, f4_arg1, f4_arg2)
    local f4_local0 = 3001
    local f4_local1 = 999 - f4_arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local2 = 0
    local f4_local3 = 0
    f4_arg1:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, f4_local0, TARGET_ENE_0, f4_local1, f4_local2, f4_local3)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function Hellkite_314010_Act03(f5_arg0, f5_arg1, f5_arg2)
    local f5_local0 = 3002
    local f5_local1 = 999 - f5_arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local2 = 0
    local f5_local3 = 0
    f5_arg1:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, f5_local0, TARGET_ENE_0, f5_local1, f5_local2, f5_local3)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function Hellkite_314010_Act04(f6_arg0, f6_arg1, f6_arg2)
    local f6_local0 = 3003
    local f6_local1 = 999 - f6_arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local2 = 0
    local f6_local3 = 0
    f6_arg1:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, f6_local0, TARGET_ENE_0, f6_local1, f6_local2, f6_local3)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function Hellkite_314010_Act05(f7_arg0, f7_arg1, f7_arg2)
    local f7_local0 = 3004
    local f7_local1 = 999 - f7_arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local2 = 0
    local f7_local3 = 0
    f7_arg1:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, f7_local0, TARGET_ENE_0, f7_local1, f7_local2, f7_local3)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function Hellkite_314010_Act06(f8_arg0, f8_arg1, f8_arg2)
    local f8_local0 = 3005
    local f8_local1 = 999 - f8_arg0:GetMapHitRadius(TARGET_SELF)
    local f8_local2 = 0
    local f8_local3 = 0
    f8_arg1:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, f8_local0, TARGET_ENE_0, f8_local1, f8_local2, f8_local3)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function Hellkite_314010_Act07(f9_arg0, f9_arg1, f9_arg2)
    local f9_local0 = 3006
    local f9_local1 = 999 - f9_arg0:GetMapHitRadius(TARGET_SELF)
    local f9_local2 = 0
    local f9_local3 = 0
    f9_arg1:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, f9_local0, TARGET_ENE_0, f9_local1, f9_local2, f9_local3)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function Hellkite_314010_Act08(f10_arg0, f10_arg1, f10_arg2)
    local f10_local0 = 3007
    local f10_local1 = 999 - f10_arg0:GetMapHitRadius(TARGET_SELF)
    local f10_local2 = 0
    local f10_local3 = 0
    f10_arg1:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, f10_local0, TARGET_ENE_0, f10_local1, f10_local2, f10_local3)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function Hellkite_314010_Act09(f11_arg0, f11_arg1, f11_arg2)
    local f11_local0 = 3008
    local f11_local1 = 999 - f11_arg0:GetMapHitRadius(TARGET_SELF)
    local f11_local2 = 0
    local f11_local3 = 0
    f11_arg1:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, f11_local0, TARGET_ENE_0, f11_local1, f11_local2, f11_local3)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function Hellkite_314010_Act10(f12_arg0, f12_arg1, f12_arg2)
    local f12_local0 = 3009
    local f12_local1 = 999 - f12_arg0:GetMapHitRadius(TARGET_SELF)
    local f12_local2 = 0
    local f12_local3 = 0
    f12_arg1:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, f12_local0, TARGET_ENE_0, f12_local1, f12_local2, f12_local3)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function Hellkite_314010_Act11(f13_arg0, f13_arg1, f13_arg2)
    local f13_local0 = 3010
    local f13_local1 = 999 - f13_arg0:GetMapHitRadius(TARGET_SELF)
    local f13_local2 = 0
    local f13_local3 = 0
    f13_arg1:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, f13_local0, TARGET_ENE_0, f13_local1, f13_local2, f13_local3)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function Hellkite_314010_Act12(f14_arg0, f14_arg1, f14_arg2)
    local f14_local0 = 3011
    local f14_local1 = 999 - f14_arg0:GetMapHitRadius(TARGET_SELF)
    local f14_local2 = 0
    local f14_local3 = 0
    f14_arg1:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, f14_local0, TARGET_ENE_0, f14_local1, f14_local2, f14_local3)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function Hellkite_314010_Act13(f15_arg0, f15_arg1, f15_arg2)
    local f15_local0 = 52.8 - f15_arg0:GetMapHitRadius(TARGET_SELF)
    local f15_local1 = 52.8 - f15_arg0:GetMapHitRadius(TARGET_SELF) + 0.9
    local f15_local2 = 52.8 - f15_arg0:GetMapHitRadius(TARGET_SELF) + 4
    local f15_local3 = 0
    local f15_local4 = 0
    local f15_local5 = 5
    local f15_local6 = 5
    Approach_Act_Flex(f15_arg0, f15_arg1, f15_local0, f15_local1, f15_local2, f15_local3, f15_local4, f15_local5, f15_local6)
    local f15_local7 = 3000
    local f15_local8 = 52.8 - f15_arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f15_local9 = 999 - f15_arg0:GetMapHitRadius(TARGET_SELF)
    local f15_local10 = 0
    local f15_local11 = 0
    local f15_local12 = f15_arg0:GetRandam_Int(1, 100)
    f15_arg0:SetEventMoveTarget(3202314)
    f15_arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, POINT_EVENT, 0.4, TARGET_SELF, false, -1)
    f15_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f15_local7, TARGET_ENE_0, f15_local9, f15_local10, f15_local11, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function Hellkite_314010_Act14(f16_arg0, f16_arg1, f16_arg2)
    local f16_local0 = 3012
    local f16_local1 = 999 - f16_arg0:GetMapHitRadius(TARGET_SELF)
    local f16_local2 = 0
    local f16_local3 = 0
    f16_arg1:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, f16_local0, TARGET_ENE_0, f16_local1, f16_local2, f16_local3)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function Hellkite_314010_Act15(f17_arg0, f17_arg1, f17_arg2)
    local f17_local0 = 3013
    local f17_local1 = 999 - f17_arg0:GetMapHitRadius(TARGET_SELF)
    local f17_local2 = 0
    local f17_local3 = 4
    f17_arg0:SetEventMoveTarget(3202350)
    if not f17_arg0:IsLookToTarget(POINT_EVENT, f17_local3) then
        f17_arg1:AddSubGoal(GOAL_COMMON_Turn, 10, POINT_EVENT, f17_local3)
    end
    f17_arg1:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, f17_local0, TARGET_ENE_0, f17_local1, f17_local2, f17_local3)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function Hellkite_314010_Act20(f18_arg0, f18_arg1, f18_arg2)
    f18_arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Hellkite_314010_Act21(f19_arg0, f19_arg1, f19_arg2)
    local f19_local0 = f19_arg0:GetDist(TARGET_ENE_0)
    local f19_local1 = 10
    local f19_local2 = 12
    if f19_local1 <= f19_local0 then
        Approach_Act(f19_arg0, f19_arg1, f19_local1, f19_local2, Odds_Guard, 3)
    end
    f19_arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, f19_local1, TARGET_ENE_0, true, -1)
    
end

function Hellkite_314010_Act22(f20_arg0, f20_arg1, f20_arg2)
    local f20_local0 = f20_arg0:GetRandam_Int(0, 1)
    f20_arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 4, TARGET_ENE_0, f20_local0, f20_arg0:GetRandam_Int(30, 45), true, true, -1)
    
end

function Hellkite_314010_Act23(f21_arg0, f21_arg1, f21_arg2)
    local f21_local0 = 1
    f21_arg0:SetEventMoveTarget(3202351)
    if not f21_arg0:IsLookToTarget(POINT_EVENT, f21_local0) then
        f21_arg1:AddSubGoal(GOAL_COMMON_Turn, 5, POINT_EVENT, f21_local0)
    end
    f21_arg1:AddSubGoal(GOAL_COMMON_Wait, 0.5, TARGET_NONE)
    
end

function Hellkite_314010_Act24(f22_arg0, f22_arg1, f22_arg2)
    local f22_local0 = 4
    f22_arg0:SetEventMoveTarget(3202350)
    if not f22_arg0:IsLookToTarget(POINT_EVENT, f22_local0) then
        f22_arg1:AddSubGoal(GOAL_COMMON_Turn, 10, POINT_EVENT, f22_local0)
    end
    f22_arg1:AddSubGoal(GOAL_COMMON_Wait, 0.5, TARGET_NONE)
    
end

function Hellkite_314010_Act25(f23_arg0, f23_arg1, f23_arg2)
    local f23_local0 = -1
    f23_arg0:SetEventMoveTarget(3202321)
    f23_arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 1, POINT_EVENT, f23_local0, POINT_EVENT, true, -1)
    
end

function Hellkite_314010_Act26(f24_arg0, f24_arg1, f24_arg2)
    local f24_local0 = -1
    f24_arg0:SetEventMoveTarget(3202320)
    f24_arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 1, POINT_EVENT, f24_local0, POINT_EVENT, true, -1)
    
end

function Hellkite_314010_ActAfter_AdjustSpace(f25_arg0, f25_arg1, f25_arg2)
    f25_arg1:AddSubGoal(GOAL_COMMON_Wait, f25_arg0:GetRandam_Float(0.5, 1), TARGET_NONE)
    
end

Goal.Update = function (f26_arg0, f26_arg1, f26_arg2)
    return Update_Default_NoSubGoal(f26_arg0, f26_arg1, f26_arg2)
    
end

Goal.Terminate = function (f27_arg0, f27_arg1, f27_arg2)
    
end

Goal.Interrupt = function (f28_arg0, f28_arg1, f28_arg2)
    if f28_arg1:IsLadderAct(TARGET_SELF) then
        return false
    end
    return false
    
end


