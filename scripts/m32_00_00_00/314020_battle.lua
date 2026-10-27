RegisterTableGoal(GOAL_Hellkite_314020_Battle, "Hellkite_314020_Battle")

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
    local f2_local5 = f2_arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local f2_local6 = f2_arg1:GetEventRequest()
    if f2_local5 == 1 and f2_arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        f2_local0[21] = 50
        f2_local0[22] = 50
    elseif f2_local5 == 1 and f2_arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        f2_local0[21] = 40
        f2_local0[22] = 40
    elseif f2_arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 90) then
        f2_local0[20] = 100
    elseif f2_local3 >= 20 then
        f2_local0[1] = 100
        f2_local0[2] = 150
        f2_local0[3] = 30
        f2_local0[4] = 10
        f2_local0[5] = 10
        f2_local0[6] = 10
        f2_local0[7] = 0
        f2_local0[8] = 60
        f2_local0[9] = 0
        f2_local0[10] = 50
        f2_local0[11] = 0
        f2_local0[12] = 0
    elseif f2_local3 >= 13 then
        f2_local0[1] = 40
        f2_local0[2] = 80
        f2_local0[3] = 50
        f2_local0[4] = 20
        f2_local0[5] = 20
        f2_local0[6] = 20
        f2_local0[7] = 0
        f2_local0[8] = 80
        f2_local0[9] = 50
        f2_local0[10] = 50
        f2_local0[11] = 0
        f2_local0[12] = 0
    elseif f2_local3 >= 9 then
        f2_local0[1] = 10
        f2_local0[2] = 30
        f2_local0[3] = 150
        f2_local0[4] = 30
        f2_local0[5] = 30
        f2_local0[6] = 30
        f2_local0[7] = 0
        f2_local0[8] = 80
        f2_local0[9] = 80
        f2_local0[10] = 100
        f2_local0[11] = 0
        f2_local0[12] = 0
    else
        f2_local0[1] = 0
        f2_local0[2] = 0
        f2_local0[3] = 0
        f2_local0[4] = 100
        f2_local0[5] = 100
        f2_local0[6] = 100
        f2_local0[7] = 100
        f2_local0[8] = 0
        f2_local0[9] = 80
        f2_local0[10] = 80
        f2_local0[11] = 0
        f2_local0[12] = 0
    end
    f2_local1[1] = REGIST_FUNC(f2_arg1, f2_arg2, Hellkite_314020_Act01)
    f2_local1[2] = REGIST_FUNC(f2_arg1, f2_arg2, Hellkite_314020_Act02)
    f2_local1[3] = REGIST_FUNC(f2_arg1, f2_arg2, Hellkite_314020_Act03)
    f2_local1[4] = REGIST_FUNC(f2_arg1, f2_arg2, Hellkite_314020_Act04)
    f2_local1[5] = REGIST_FUNC(f2_arg1, f2_arg2, Hellkite_314020_Act05)
    f2_local1[6] = REGIST_FUNC(f2_arg1, f2_arg2, Hellkite_314020_Act06)
    f2_local1[7] = REGIST_FUNC(f2_arg1, f2_arg2, Hellkite_314020_Act07)
    f2_local1[8] = REGIST_FUNC(f2_arg1, f2_arg2, Hellkite_314020_Act08)
    f2_local1[9] = REGIST_FUNC(f2_arg1, f2_arg2, Hellkite_314020_Act09)
    f2_local1[10] = REGIST_FUNC(f2_arg1, f2_arg2, Hellkite_314020_Act10)
    f2_local1[11] = REGIST_FUNC(f2_arg1, f2_arg2, Hellkite_314020_Act11)
    f2_local1[12] = REGIST_FUNC(f2_arg1, f2_arg2, Hellkite_314020_Act12)
    f2_local1[13] = REGIST_FUNC(f2_arg1, f2_arg2, Hellkite_314020_Act13)
    f2_local1[14] = REGIST_FUNC(f2_arg1, f2_arg2, Hellkite_314020_Act14)
    f2_local1[20] = REGIST_FUNC(f2_arg1, f2_arg2, Hellkite_314020_Act20)
    f2_local1[21] = REGIST_FUNC(f2_arg1, f2_arg2, Hellkite_314020_Act21)
    f2_local1[22] = REGIST_FUNC(f2_arg1, f2_arg2, Hellkite_314020_Act22)
    local f2_local7 = REGIST_FUNC(f2_arg1, f2_arg2, Hellkite_314020_ActAfter_AdjustSpace)
    Common_Battle_Activate(f2_arg1, f2_arg2, f2_local0, f2_local1, f2_local7, f2_local2)
    
end

function Hellkite_314020_Act01(f3_arg0, f3_arg1, f3_arg2)
    local f3_local0 = 52.8 - f3_arg0:GetMapHitRadius(TARGET_SELF) + 50
    local f3_local1 = 52.8 - f3_arg0:GetMapHitRadius(TARGET_SELF) + 0.9
    local f3_local2 = 52.8 - f3_arg0:GetMapHitRadius(TARGET_SELF) + 4
    local f3_local3 = 0
    local f3_local4 = 0
    local f3_local5 = 5
    local f3_local6 = 5
    Approach_Act_Flex(f3_arg0, f3_arg1, f3_local0, f3_local1, f3_local2, f3_local3, f3_local4, f3_local5, f3_local6)
    local f3_local7 = 3000
    local f3_local8 = 52.8 - f3_arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f3_local9 = 2 - f3_arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local10 = 1.5
    local f3_local11 = 20
    local f3_local12 = f3_arg0:GetRandam_Int(1, 100)
    f3_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f3_local7, TARGET_ENE_0, f3_local9, f3_local10, f3_local11, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function Hellkite_314020_Act02(f4_arg0, f4_arg1, f4_arg2)
    local f4_local0 = 27.8 - f4_arg0:GetMapHitRadius(TARGET_SELF) + 50
    local f4_local1 = 27.8 - f4_arg0:GetMapHitRadius(TARGET_SELF) + 0.9
    local f4_local2 = 27.8 - f4_arg0:GetMapHitRadius(TARGET_SELF) + 4
    local f4_local3 = 0
    local f4_local4 = 0
    local f4_local5 = 5
    local f4_local6 = 5
    Approach_Act_Flex(f4_arg0, f4_arg1, f4_local0, f4_local1, f4_local2, f4_local3, f4_local4, f4_local5, f4_local6)
    local f4_local7 = 3001
    local f4_local8 = 27.8 - f4_arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f4_local9 = 2 - f4_arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local10 = 1.5
    local f4_local11 = 20
    local f4_local12 = f4_arg0:GetRandam_Int(1, 100)
    f4_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f4_local7, TARGET_ENE_0, f4_local9, f4_local10, f4_local11, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function Hellkite_314020_Act03(f5_arg0, f5_arg1, f5_arg2)
    local f5_local0 = 16.3 - f5_arg0:GetMapHitRadius(TARGET_SELF) + 50
    local f5_local1 = 16.3 - f5_arg0:GetMapHitRadius(TARGET_SELF) + 0.9
    local f5_local2 = 16.3 - f5_arg0:GetMapHitRadius(TARGET_SELF) + 4
    local f5_local3 = 0
    local f5_local4 = 0
    local f5_local5 = 5
    local f5_local6 = 5
    Approach_Act_Flex(f5_arg0, f5_arg1, f5_local0, f5_local1, f5_local2, f5_local3, f5_local4, f5_local5, f5_local6)
    local f5_local7 = 3002
    local f5_local8 = 16.3 - f5_arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f5_local9 = 2 - f5_arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local10 = 1.5
    local f5_local11 = 20
    local f5_local12 = f5_arg0:GetRandam_Int(1, 100)
    f5_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f5_local7, TARGET_ENE_0, f5_local9, f5_local10, f5_local11, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function Hellkite_314020_Act04(f6_arg0, f6_arg1, f6_arg2)
    local f6_local0 = 8.8 - f6_arg0:GetMapHitRadius(TARGET_SELF) + 50
    local f6_local1 = 8.8 - f6_arg0:GetMapHitRadius(TARGET_SELF) + 0.9
    local f6_local2 = 8.8 - f6_arg0:GetMapHitRadius(TARGET_SELF) + 4
    local f6_local3 = 0
    local f6_local4 = 0
    local f6_local5 = 5
    local f6_local6 = 5
    Approach_Act_Flex(f6_arg0, f6_arg1, f6_local0, f6_local1, f6_local2, f6_local3, f6_local4, f6_local5, f6_local6)
    local f6_local7 = 3003
    local f6_local8 = 8.8 - f6_arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f6_local9 = 2 - f6_arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local10 = 1.5
    local f6_local11 = 20
    local f6_local12 = f6_arg0:GetRandam_Int(1, 100)
    f6_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f6_local7, TARGET_ENE_0, f6_local9, f6_local10, f6_local11, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function Hellkite_314020_Act05(f7_arg0, f7_arg1, f7_arg2)
    local f7_local0 = 6.3 - f7_arg0:GetMapHitRadius(TARGET_SELF) + 50
    local f7_local1 = 6.3 - f7_arg0:GetMapHitRadius(TARGET_SELF) + 0.9
    local f7_local2 = 6.3 - f7_arg0:GetMapHitRadius(TARGET_SELF) + 4
    local f7_local3 = 0
    local f7_local4 = 0
    local f7_local5 = 5
    local f7_local6 = 5
    Approach_Act_Flex(f7_arg0, f7_arg1, f7_local0, f7_local1, f7_local2, f7_local3, f7_local4, f7_local5, f7_local6)
    local f7_local7 = 3004
    local f7_local8 = 6.3 - f7_arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f7_local9 = 2 - f7_arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local10 = 1.5
    local f7_local11 = 20
    local f7_local12 = f7_arg0:GetRandam_Int(1, 100)
    f7_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f7_local7, TARGET_ENE_0, f7_local9, f7_local10, f7_local11, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function Hellkite_314020_Act06(f8_arg0, f8_arg1, f8_arg2)
    local f8_local0 = 6.3 - f8_arg0:GetMapHitRadius(TARGET_SELF) + 50
    local f8_local1 = 6.3 - f8_arg0:GetMapHitRadius(TARGET_SELF) + 0.9
    local f8_local2 = 6.3 - f8_arg0:GetMapHitRadius(TARGET_SELF) + 4
    local f8_local3 = 0
    local f8_local4 = 0
    local f8_local5 = 5
    local f8_local6 = 5
    Approach_Act_Flex(f8_arg0, f8_arg1, f8_local0, f8_local1, f8_local2, f8_local3, f8_local4, f8_local5, f8_local6)
    local f8_local7 = 3005
    local f8_local8 = 6.3 - f8_arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f8_local9 = 2 - f8_arg0:GetMapHitRadius(TARGET_SELF)
    local f8_local10 = 1.5
    local f8_local11 = 20
    local f8_local12 = f8_arg0:GetRandam_Int(1, 100)
    f8_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f8_local7, TARGET_ENE_0, f8_local9, f8_local10, f8_local11, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function Hellkite_314020_Act07(f9_arg0, f9_arg1, f9_arg2)
    local f9_local0 = 14.3 - f9_arg0:GetMapHitRadius(TARGET_SELF) + 50
    local f9_local1 = 14.3 - f9_arg0:GetMapHitRadius(TARGET_SELF) + 0.9
    local f9_local2 = 14.3 - f9_arg0:GetMapHitRadius(TARGET_SELF) + 4
    local f9_local3 = 0
    local f9_local4 = 0
    local f9_local5 = 5
    local f9_local6 = 5
    Approach_Act_Flex(f9_arg0, f9_arg1, f9_local0, f9_local1, f9_local2, f9_local3, f9_local4, f9_local5, f9_local6)
    local f9_local7 = 3006
    local f9_local8 = 14.3 - f9_arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f9_local9 = 2 - f9_arg0:GetMapHitRadius(TARGET_SELF)
    local f9_local10 = 1.5
    local f9_local11 = 20
    local f9_local12 = f9_arg0:GetRandam_Int(1, 100)
    f9_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f9_local7, TARGET_ENE_0, f9_local9, f9_local10, f9_local11, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function Hellkite_314020_Act08(f10_arg0, f10_arg1, f10_arg2)
    local f10_local0 = 26.8 - f10_arg0:GetMapHitRadius(TARGET_SELF) + 50
    local f10_local1 = 26.8 - f10_arg0:GetMapHitRadius(TARGET_SELF) + 0.9
    local f10_local2 = 26.8 - f10_arg0:GetMapHitRadius(TARGET_SELF) + 4
    local f10_local3 = 0
    local f10_local4 = 0
    local f10_local5 = 5
    local f10_local6 = 5
    Approach_Act_Flex(f10_arg0, f10_arg1, f10_local0, f10_local1, f10_local2, f10_local3, f10_local4, f10_local5, f10_local6)
    local f10_local7 = 3007
    local f10_local8 = 26.8 - f10_arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f10_local9 = 2 - f10_arg0:GetMapHitRadius(TARGET_SELF)
    local f10_local10 = 1.5
    local f10_local11 = 20
    local f10_local12 = f10_arg0:GetRandam_Int(1, 100)
    f10_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f10_local7, TARGET_ENE_0, f10_local9, f10_local10, f10_local11, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function Hellkite_314020_Act09(f11_arg0, f11_arg1, f11_arg2)
    local f11_local0 = 10.8 - f11_arg0:GetMapHitRadius(TARGET_SELF) + 50
    local f11_local1 = 10.8 - f11_arg0:GetMapHitRadius(TARGET_SELF) + 0.9
    local f11_local2 = 10.8 - f11_arg0:GetMapHitRadius(TARGET_SELF) + 4
    local f11_local3 = 0
    local f11_local4 = 0
    local f11_local5 = 5
    local f11_local6 = 5
    Approach_Act_Flex(f11_arg0, f11_arg1, f11_local0, f11_local1, f11_local2, f11_local3, f11_local4, f11_local5, f11_local6)
    local f11_local7 = 3008
    local f11_local8 = 10.8 - f11_arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f11_local9 = 2 - f11_arg0:GetMapHitRadius(TARGET_SELF)
    local f11_local10 = 1.5
    local f11_local11 = 20
    local f11_local12 = f11_arg0:GetRandam_Int(1, 100)
    f11_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f11_local7, TARGET_ENE_0, f11_local9, f11_local10, f11_local11, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function Hellkite_314020_Act10(f12_arg0, f12_arg1, f12_arg2)
    local f12_local0 = 12.8 - f12_arg0:GetMapHitRadius(TARGET_SELF) + 50
    local f12_local1 = 12.8 - f12_arg0:GetMapHitRadius(TARGET_SELF) + 0.9
    local f12_local2 = 12.8 - f12_arg0:GetMapHitRadius(TARGET_SELF) + 4
    local f12_local3 = 0
    local f12_local4 = 0
    local f12_local5 = 5
    local f12_local6 = 5
    Approach_Act_Flex(f12_arg0, f12_arg1, f12_local0, f12_local1, f12_local2, f12_local3, f12_local4, f12_local5, f12_local6)
    local f12_local7 = 3009
    local f12_local8 = 12.8 - f12_arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f12_local9 = 2 - f12_arg0:GetMapHitRadius(TARGET_SELF)
    local f12_local10 = 1.5
    local f12_local11 = 20
    local f12_local12 = f12_arg0:GetRandam_Int(1, 100)
    f12_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f12_local7, TARGET_ENE_0, f12_local9, f12_local10, f12_local11, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function Hellkite_314020_Act11(f13_arg0, f13_arg1, f13_arg2)
    local f13_local0 = 15.8 - f13_arg0:GetMapHitRadius(TARGET_SELF) + 50
    local f13_local1 = 15.8 - f13_arg0:GetMapHitRadius(TARGET_SELF) + 0.9
    local f13_local2 = 15.8 - f13_arg0:GetMapHitRadius(TARGET_SELF) + 4
    local f13_local3 = 0
    local f13_local4 = 0
    local f13_local5 = 5
    local f13_local6 = 5
    Approach_Act_Flex(f13_arg0, f13_arg1, f13_local0, f13_local1, f13_local2, f13_local3, f13_local4, f13_local5, f13_local6)
    local f13_local7 = 3010
    local f13_local8 = 15.8 - f13_arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f13_local9 = 2 - f13_arg0:GetMapHitRadius(TARGET_SELF)
    local f13_local10 = 1.5
    local f13_local11 = 20
    local f13_local12 = f13_arg0:GetRandam_Int(1, 100)
    f13_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f13_local7, TARGET_ENE_0, f13_local9, f13_local10, f13_local11, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function Hellkite_314020_Act12(f14_arg0, f14_arg1, f14_arg2)
    local f14_local0 = 15.8 - f14_arg0:GetMapHitRadius(TARGET_SELF) + 50
    local f14_local1 = 15.8 - f14_arg0:GetMapHitRadius(TARGET_SELF) + 0.9
    local f14_local2 = 15.8 - f14_arg0:GetMapHitRadius(TARGET_SELF) + 4
    local f14_local3 = 0
    local f14_local4 = 0
    local f14_local5 = 5
    local f14_local6 = 5
    Approach_Act_Flex(f14_arg0, f14_arg1, f14_local0, f14_local1, f14_local2, f14_local3, f14_local4, f14_local5, f14_local6)
    local f14_local7 = 3011
    local f14_local8 = 15.8 - f14_arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f14_local9 = 2 - f14_arg0:GetMapHitRadius(TARGET_SELF)
    local f14_local10 = 1.5
    local f14_local11 = 20
    local f14_local12 = f14_arg0:GetRandam_Int(1, 100)
    f14_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f14_local7, TARGET_ENE_0, f14_local9, f14_local10, f14_local11, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function Hellkite_314020_Act13(f15_arg0, f15_arg1, f15_arg2)
    local f15_local0 = 52.8 - f15_arg0:GetMapHitRadius(TARGET_SELF) + 50
    local f15_local1 = 52.8 - f15_arg0:GetMapHitRadius(TARGET_SELF) + 0.9
    local f15_local2 = 52.8 - f15_arg0:GetMapHitRadius(TARGET_SELF) + 4
    local f15_local3 = 0
    local f15_local4 = 0
    local f15_local5 = 5
    local f15_local6 = 5
    Approach_Act_Flex(f15_arg0, f15_arg1, f15_local0, f15_local1, f15_local2, f15_local3, f15_local4, f15_local5, f15_local6)
    local f15_local7 = 3000
    local f15_local8 = 52.8 - f15_arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f15_local9 = 2 - f15_arg0:GetMapHitRadius(TARGET_SELF)
    local f15_local10 = 1.5
    local f15_local11 = 20
    local f15_local12 = f15_arg0:GetRandam_Int(1, 100)
    f15_arg0:SetEventMoveTarget(3202914)
    f15_arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, POINT_EVENT, 0.4, TARGET_SELF, false, -1)
    f15_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f15_local7, TARGET_ENE_0, f15_local9, f15_local10, f15_local11, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function Hellkite_314020_Act14(f16_arg0, f16_arg1, f16_arg2)
    local f16_local0 = 52.8 - f16_arg0:GetMapHitRadius(TARGET_SELF)
    local f16_local1 = 52.8 - f16_arg0:GetMapHitRadius(TARGET_SELF) + 0.9
    local f16_local2 = 52.8 - f16_arg0:GetMapHitRadius(TARGET_SELF) + 4
    local f16_local3 = 0
    local f16_local4 = 0
    local f16_local5 = 5
    local f16_local6 = 5
    Approach_Act_Flex(f16_arg0, f16_arg1, f16_local0, f16_local1, f16_local2, f16_local3, f16_local4, f16_local5, f16_local6)
    local f16_local7 = 3012
    local f16_local8 = 52.8 - f16_arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f16_local9 = 2 - f16_arg0:GetMapHitRadius(TARGET_SELF)
    local f16_local10 = 1.5
    local f16_local11 = 20
    local f16_local12 = f16_arg0:GetRandam_Int(1, 100)
    f16_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f16_local7, TARGET_ENE_0, f16_local9, f16_local10, f16_local11, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function Hellkite_314020_Act20(f17_arg0, f17_arg1, f17_arg2)
    f17_arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Hellkite_314020_Act21(f18_arg0, f18_arg1, f18_arg2)
    local f18_local0 = f18_arg0:GetDist(TARGET_ENE_0)
    local f18_local1 = 10
    local f18_local2 = 12
    if f18_local1 <= f18_local0 then
        Approach_Act(f18_arg0, f18_arg1, f18_local1, f18_local2, Odds_Guard, 3)
    end
    f18_arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, f18_local1, TARGET_ENE_0, true, -1)
    
end

function Hellkite_314020_Act22(f19_arg0, f19_arg1, f19_arg2)
    local f19_local0 = f19_arg0:GetRandam_Int(0, 1)
    f19_arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 4, TARGET_ENE_0, f19_local0, f19_arg0:GetRandam_Int(30, 45), true, true, -1)
    
end

function Hellkite_314020_ActAfter_AdjustSpace(f20_arg0, f20_arg1, f20_arg2)
    f20_arg1:AddSubGoal(GOAL_COMMON_AfterAttackAct, 3)
    
end

Goal.Update = function (f21_arg0, f21_arg1, f21_arg2)
    return Update_Default_NoSubGoal(f21_arg0, f21_arg1, f21_arg2)
    
end

Goal.Terminate = function (f22_arg0, f22_arg1, f22_arg2)
    
end

Goal.Interrupt = function (f23_arg0, f23_arg1, f23_arg2)
    if f23_arg1:IsLadderAct(TARGET_SELF) then
        return false
    end
    return false
    
end

RegisterTableGoal(GOAL_Hellkite_314020_AfterAttackAct, "Hellkite_314020_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_Hellkite_314020_AfterAttackAct, true)

Goal.Activate = function (f24_arg0, f24_arg1, f24_arg2)
    local f24_local0 = f24_arg1:GetDist(TARGET_ENE_0)
    local f24_local1 = f24_arg1:GetToTargetAngle(TARGET_ENE_0)
    f24_arg1:SetStringIndexedNumber("DistMin_AAA", 2)
    f24_arg1:SetStringIndexedNumber("DistMax_AAA", 7)
    f24_arg1:SetStringIndexedNumber("BaseDir_AAA", AI_DIR_TYPE_F)
    f24_arg1:SetStringIndexedNumber("Angle_AAA", 180)
    f24_arg1:SetStringIndexedNumber("DistMin_Inter_AAA", 3)
    f24_arg1:SetStringIndexedNumber("DistMax_Inter_AAA", 8)
    f24_arg1:SetStringIndexedNumber("BaseAng_Inter_AAA", 0)
    f24_arg1:SetStringIndexedNumber("Ang_Inter_AAA", 180)
    if f24_local0 >= 5 then
        f24_arg1:SetStringIndexedNumber("Odds_Guard_AAA", 0)
        f24_arg1:SetStringIndexedNumber("Odds_NoAct_AAA", 10)
        f24_arg1:SetStringIndexedNumber("Odds_BackAndSide_AAA", 0)
        f24_arg1:SetStringIndexedNumber("Odds_Back_AAA", 0)
        f24_arg1:SetStringIndexedNumber("Odds_Backstep_AAA", 0)
        f24_arg1:SetStringIndexedNumber("Odds_Sidestep_AAA", 0)
        f24_arg1:SetStringIndexedNumber("Odds_BsAndSide_AAA", 0)
    elseif f24_local0 >= 2 then
        f24_arg1:SetStringIndexedNumber("Odds_Guard_AAA", 0)
        f24_arg1:SetStringIndexedNumber("Odds_NoAct_AAA", 10)
        f24_arg1:SetStringIndexedNumber("Odds_BackAndSide_AAA", 0)
        f24_arg1:SetStringIndexedNumber("Odds_Back_AAA", 0)
        f24_arg1:SetStringIndexedNumber("Odds_Backstep_AAA", 0)
        f24_arg1:SetStringIndexedNumber("Odds_Sidestep_AAA", 0)
        f24_arg1:SetStringIndexedNumber("Odds_BsAndSide_AAA", 0)
    else
        f24_arg1:SetStringIndexedNumber("Odds_Guard_AAA", 0)
        f24_arg1:SetStringIndexedNumber("Odds_NoAct_AAA", 10)
        f24_arg1:SetStringIndexedNumber("Odds_BackAndSide_AAA", 0)
        f24_arg1:SetStringIndexedNumber("Odds_Back_AAA", 0)
        f24_arg1:SetStringIndexedNumber("Odds_Backstep_AAA", 0)
        f24_arg1:SetStringIndexedNumber("Odds_Sidestep_AAA", 0)
        f24_arg1:SetStringIndexedNumber("Odds_BsAndSide_AAA", 0)
    end
    f24_arg2:AddSubGoal(GOAL_COMMON_AfterAttackAct, 3)
    
end

Goal.Update = function (f25_arg0, f25_arg1, f25_arg2)
    return Update_Default_NoSubGoal(f25_arg0, f25_arg1, f25_arg2)
    
end


