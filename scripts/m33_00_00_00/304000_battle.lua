RegisterTableGoal(GOAL_DarkGuardian_304000_Battle, "GOAL_DarkGuardianV3_304000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_DarkGuardian_304000_Battle, true)

Goal.Initialize = function (f1_arg0, f1_arg1, f1_arg2, f1_arg3)
    
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
    local f2_local5 = f2_arg1:GetEventRequest()
    local f2_local6 = f2_arg1:GetHpRate(TARGET_SELF)
    local f2_local7 = f2_arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local f2_local8 = f2_arg1:GetTeamOrder(ORDER_TYPE_Role)
    local f2_local9 = 0
    if f2_local7 == 1 and f2_local8 == ROLE_TYPE_Kankyaku then
        Kankyaku_Act(f2_arg1, f2_arg2, f2_local9)
    elseif InsideRange(f2_arg1, f2_arg2, 180, 150, -999, 4) then
        f2_local0[17] = 30
    elseif InsideRange(f2_arg1, f2_arg2, 180, 150, -999, 10) then
        f2_local0[20] = 100
    elseif f2_local3 >= 9 then
        f2_local0[1] = 10
        f2_local0[2] = 5
        f2_local0[3] = 20
        f2_local0[4] = 50
        f2_local0[5] = 10
        f2_local0[6] = 30
        f2_local0[7] = 80
        f2_local0[8] = 0
        f2_local0[9] = 0
        f2_local0[10] = 0
        f2_local0[11] = 0
    elseif f2_local3 >= 6 then
        f2_local0[1] = 30
        f2_local0[2] = 30
        f2_local0[3] = 60
        f2_local0[4] = 50
        f2_local0[5] = 10
        f2_local0[6] = 50
        f2_local0[7] = 50
        f2_local0[8] = 10
        f2_local0[9] = 0
        f2_local0[10] = 5
        f2_local0[11] = 5
    elseif f2_local3 >= 3 then
        f2_local0[1] = 60
        f2_local0[2] = 50
        f2_local0[3] = 20
        f2_local0[4] = 10
        f2_local0[5] = 30
        f2_local0[6] = 20
        f2_local0[7] = 0
        f2_local0[8] = 60
        f2_local0[9] = 10
        f2_local0[10] = 30
        f2_local0[11] = 30
    else
        f2_local0[1] = 30
        f2_local0[2] = 30
        f2_local0[3] = 0
        f2_local0[4] = 0
        f2_local0[5] = 30
        f2_local0[6] = 0
        f2_local0[7] = 0
        f2_local0[8] = 30
        f2_local0[9] = 100
        f2_local0[10] = 60
        f2_local0[11] = 30
    end
    f2_local0[1] = SetCoolTime(f2_arg1, f2_arg2, 3000, 10, f2_local0[1], 1)
    f2_local0[2] = SetCoolTime(f2_arg1, f2_arg2, 3001, 10, f2_local0[2], 1)
    f2_local0[3] = SetCoolTime(f2_arg1, f2_arg2, 3002, 20, f2_local0[3], 1)
    f2_local0[4] = SetCoolTime(f2_arg1, f2_arg2, 3003, 20, f2_local0[4], 1)
    f2_local0[5] = SetCoolTime(f2_arg1, f2_arg2, 3004, 10, f2_local0[5], 1)
    f2_local0[6] = SetCoolTime(f2_arg1, f2_arg2, 3007, 10, f2_local0[6], 1)
    f2_local0[7] = SetCoolTime(f2_arg1, f2_arg2, 3008, 10, f2_local0[7], 1)
    f2_local0[8] = SetCoolTime(f2_arg1, f2_arg2, 3009, 10, f2_local0[8], 1)
    f2_local0[9] = SetCoolTime(f2_arg1, f2_arg2, 3011, 10, f2_local0[9], 1)
    f2_local0[10] = SetCoolTime(f2_arg1, f2_arg2, 3012, 10, f2_local0[10], 1)
    f2_local0[11] = SetCoolTime(f2_arg1, f2_arg2, 3015, 10, f2_local0[11], 1)
    f2_local1[1] = REGIST_FUNC(f2_arg1, f2_arg2, DarkGuardian304000_Act01)
    f2_local1[2] = REGIST_FUNC(f2_arg1, f2_arg2, DarkGuardian304000_Act02)
    f2_local1[3] = REGIST_FUNC(f2_arg1, f2_arg2, DarkGuardian304000_Act03)
    f2_local1[4] = REGIST_FUNC(f2_arg1, f2_arg2, DarkGuardian304000_Act04)
    f2_local1[5] = REGIST_FUNC(f2_arg1, f2_arg2, DarkGuardian304000_Act05)
    f2_local1[6] = REGIST_FUNC(f2_arg1, f2_arg2, DarkGuardian304000_Act06)
    f2_local1[7] = REGIST_FUNC(f2_arg1, f2_arg2, DarkGuardian304000_Act07)
    f2_local1[8] = REGIST_FUNC(f2_arg1, f2_arg2, DarkGuardian304000_Act08)
    f2_local1[9] = REGIST_FUNC(f2_arg1, f2_arg2, DarkGuardian304000_Act09)
    f2_local1[10] = REGIST_FUNC(f2_arg1, f2_arg2, DarkGuardian304000_Act10)
    f2_local1[11] = REGIST_FUNC(f2_arg1, f2_arg2, DarkGuardian304000_Act11)
    f2_local1[16] = REGIST_FUNC(f2_arg1, f2_arg2, DarkGuardian304000_Act16)
    f2_local1[17] = REGIST_FUNC(f2_arg1, f2_arg2, DarkGuardian304000_Act17)
    f2_local1[18] = REGIST_FUNC(f2_arg1, f2_arg2, DarkGuardian304000_Act18)
    f2_local1[19] = REGIST_FUNC(f2_arg1, f2_arg2, DarkGuardian304000_Act19)
    f2_local1[20] = REGIST_FUNC(f2_arg1, f2_arg2, DarkGuardian304000_Act20)
    local f2_local10 = REGIST_FUNC(f2_arg1, f2_arg2, DarkGuardian304000_ActAfter_AdjustSpace)
    Common_Battle_Activate(f2_arg1, f2_arg2, f2_local0, f2_local1, f2_local10, f2_local2)
    
end

function DarkGuardian304000_Act01(f3_arg0, f3_arg1, f3_arg2)
    local f3_local0 = 5.8 - f3_arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local1 = -999
    local f3_local2 = 5.8 - f3_arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local3 = 50
    local f3_local4 = 0
    local f3_local5 = 4
    local f3_local6 = 8
    Approach_Act_Flex(f3_arg0, f3_arg1, f3_local0, f3_local1, f3_local2, f3_local3, f3_local4, f3_local5, f3_local6)
    local f3_local7 = 9999 - f3_arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local8 = 0
    local f3_local9 = 0
    local f3_local10 = 10.5 - f3_arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f3_local11 = 10.5 - f3_arg0:GetMapHitRadius(TARGET_SELF) + 1
    f3_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, f3_local10, f3_local8, f3_local9, 0, 0)
    f3_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3005, TARGET_ENE_0, DistToAtt3, 0, 0)
    f3_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3006, TARGET_ENE_0, f3_local7, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function DarkGuardian304000_Act02(f4_arg0, f4_arg1, f4_arg2)
    local f4_local0 = 5.1 - f4_arg0:GetMapHitRadius(TARGET_SELF) + 2.5
    local f4_local1 = -999
    local f4_local2 = 5.1 - f4_arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local3 = 50
    local f4_local4 = 0
    local f4_local5 = 4
    local f4_local6 = 8
    Approach_Act_Flex(f4_arg0, f4_arg1, f4_local0, f4_local1, f4_local2, f4_local3, f4_local4, f4_local5, f4_local6)
    local f4_local7 = 6001
    local f4_local8 = 9999 - f4_arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local9 = 0
    local f4_local10 = 0
    local f4_local11 = f4_arg0:GetRandam_Int(1, 100)
    local f4_local12 = f4_arg0:GetDist(TARGET_ENE_0)
    f4_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3001, TARGET_ENE_0, 999, f4_local9, f4_local10, 0, 0)
    if f4_local12 >= 5 then
        if f4_local11 <= 20 then
            f4_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, f4_local8, 0, 0)
        elseif f4_local11 <= 40 then
            f4_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, f4_local8, 0, 0)
        elseif f4_local11 <= 60 then
            f4_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3007, TARGET_ENE_0, f4_local8, 0, 0)
        elseif f4_local11 <= 80 then
            f4_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3008, TARGET_ENE_0, f4_local8, 0, 0)
        end
    elseif f4_local11 <= 20 then
        f4_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f4_local7, TARGET_ENE_0, f4_local8, 0, 0)
        f4_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, f4_local8, 0, 0)
    elseif f4_local11 <= 40 then
        f4_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f4_local7, TARGET_ENE_0, f4_local8, 0, 0)
        f4_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, f4_local8, 0, 0)
    elseif f4_local11 <= 60 then
        f4_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f4_local7, TARGET_ENE_0, f4_local8, 0, 0)
        f4_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3007, TARGET_ENE_0, f4_local8, 0, 0)
    elseif f4_local11 <= 80 then
        f4_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f4_local7, TARGET_ENE_0, f4_local8, 0, 0)
        f4_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3008, TARGET_ENE_0, f4_local8, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function DarkGuardian304000_Act03(f5_arg0, f5_arg1, f5_arg2)
    local f5_local0 = 10.5 - f5_arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local1 = -999
    local f5_local2 = 10.5 - f5_arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local3 = 50
    local f5_local4 = 0
    local f5_local5 = 4
    local f5_local6 = 8
    Approach_Act_Flex(f5_arg0, f5_arg1, f5_local0, f5_local1, f5_local2, f5_local3, f5_local4, f5_local5, f5_local6)
    local f5_local7 = 9999 - f5_arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local8 = 0
    local f5_local9 = 0
    f5_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, f5_local7, f5_local8, f5_local9, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function DarkGuardian304000_Act04(f6_arg0, f6_arg1, f6_arg2)
    local f6_local0 = 13.4 - f6_arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local1 = -999
    local f6_local2 = 13.4 - f6_arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local3 = 0
    local f6_local4 = 0
    local f6_local5 = 4
    local f6_local6 = 8
    Approach_Act_Flex(f6_arg0, f6_arg1, f6_local0, f6_local1, f6_local2, f6_local3, f6_local4, f6_local5, f6_local6)
    local f6_local7 = 9999 - f6_arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local8 = -1
    local f6_local9 = 60
    local f6_local10 = f6_arg0:GetRandam_Int(1, 100)
    f6_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, f6_local7, f6_local8, f6_local9, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function DarkGuardian304000_Act05(f7_arg0, f7_arg1, f7_arg2)
    local f7_local0 = 5.5 - f7_arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local1 = -999
    local f7_local2 = 5.5 - f7_arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local3 = 50
    local f7_local4 = 0
    local f7_local5 = 4
    local f7_local6 = 8
    Approach_Act_Flex(f7_arg0, f7_arg1, f7_local0, f7_local1, f7_local2, f7_local3, f7_local4, f7_local5, f7_local6)
    local f7_local7 = 4.6 - f7_arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f7_local8 = 5.1 - f7_arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f7_local9 = 9999 - f7_arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local10 = 0
    local f7_local11 = 0
    local f7_local12 = f7_arg0:GetRandam_Int(1, 100)
    f7_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3004, TARGET_ENE_0, f7_local7, f7_local10, f7_local11, 0, 0)
    f7_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3005, TARGET_ENE_0, f7_local8, 0, 0)
    f7_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3006, TARGET_ENE_0, f7_local9, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function DarkGuardian304000_Act06(f8_arg0, f8_arg1, f8_arg2)
    local f8_local0 = 10.9 - f8_arg0:GetMapHitRadius(TARGET_SELF)
    local f8_local1 = -999
    local f8_local2 = 10.9 - f8_arg0:GetMapHitRadius(TARGET_SELF)
    local f8_local3 = 50
    local f8_local4 = 0
    local f8_local5 = 4
    local f8_local6 = 8
    Approach_Act_Flex(f8_arg0, f8_arg1, f8_local0, f8_local1, f8_local2, f8_local3, f8_local4, f8_local5, f8_local6)
    local f8_local7 = 9999 - f8_arg0:GetMapHitRadius(TARGET_SELF)
    local f8_local8 = 0
    local f8_local9 = 0
    f8_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3007, TARGET_ENE_0, 0.5, f8_local8, f8_local9, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function DarkGuardian304000_Act07(f9_arg0, f9_arg1, f9_arg2)
    local f9_local0 = 14.8 - f9_arg0:GetMapHitRadius(TARGET_SELF)
    local f9_local1 = -999
    local f9_local2 = 14.8 - f9_arg0:GetMapHitRadius(TARGET_SELF)
    local f9_local3 = 50
    local f9_local4 = 0
    local f9_local5 = 4
    local f9_local6 = 8
    Approach_Act_Flex(f9_arg0, f9_arg1, f9_local0, f9_local1, f9_local2, f9_local3, f9_local4, f9_local5, f9_local6)
    local f9_local7 = 3008
    local f9_local8 = 9999 - f9_arg0:GetMapHitRadius(TARGET_SELF)
    local f9_local9 = 0
    local f9_local10 = 0
    local f9_local11 = f9_arg0:GetHpRate(TARGET_SELF)
    local f9_local12 = 3008
    local f9_local13 = 14.8 - f9_arg0:GetMapHitRadius(TARGET_SELF) + 1
    f9_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f9_local7, TARGET_ENE_0, f9_local8, f9_local9, f9_local10, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function DarkGuardian304000_Act08(f10_arg0, f10_arg1, f10_arg2)
    local f10_local0 = 4.9 - f10_arg0:GetMapHitRadius(TARGET_SELF)
    local f10_local1 = -999
    local f10_local2 = 4.9 - f10_arg0:GetMapHitRadius(TARGET_SELF)
    local f10_local3 = 50
    local f10_local4 = 0
    local f10_local5 = 4
    local f10_local6 = 8
    Approach_Act_Flex(f10_arg0, f10_arg1, f10_local0, f10_local1, f10_local2, f10_local3, f10_local4, f10_local5, f10_local6)
    local f10_local7 = 3009
    local f10_local8 = 3010
    local f10_local9 = 3.8 - f10_arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f10_local10 = 9999 - f10_arg0:GetMapHitRadius(TARGET_SELF)
    local f10_local11 = 0
    local f10_local12 = 0
    local f10_local13 = f10_arg0:GetRandam_Int(1, 100)
    f10_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f10_local7, TARGET_ENE_0, f10_local10, f10_local11, f10_local12, 0, 0)
    f10_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f10_local8, TARGET_ENE_0, f10_local10, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function DarkGuardian304000_Act09(f11_arg0, f11_arg1, f11_arg2)
    local f11_local0 = 2 - f11_arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f11_local1 = -999
    local f11_local2 = 2 - f11_arg0:GetMapHitRadius(TARGET_SELF)
    local f11_local3 = 50
    local f11_local4 = 0
    local f11_local5 = 4
    local f11_local6 = 8
    Approach_Act_Flex(f11_arg0, f11_arg1, f11_local0, f11_local1, f11_local2, f11_local3, f11_local4, f11_local5, f11_local6)
    local f11_local7 = 3011
    local f11_local8 = 9999 - f11_arg0:GetMapHitRadius(TARGET_SELF)
    local f11_local9 = 0
    local f11_local10 = 0
    local f11_local11 = f11_arg0:GetRandam_Int(1, 100)
    f11_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f11_local7, TARGET_ENE_0, f11_local8, f11_local9, f11_local10, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function DarkGuardian304000_Act10(f12_arg0, f12_arg1, f12_arg2)
    local f12_local0 = 4.4 - f12_arg0:GetMapHitRadius(TARGET_SELF)
    local f12_local1 = -999
    local f12_local2 = 4.4 - f12_arg0:GetMapHitRadius(TARGET_SELF)
    local f12_local3 = 50
    local f12_local4 = 0
    local f12_local5 = 4
    local f12_local6 = 8
    Approach_Act_Flex(f12_arg0, f12_arg1, f12_local0, f12_local1, f12_local2, f12_local3, f12_local4, f12_local5, f12_local6)
    local f12_local7 = 3.5 - f12_arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f12_local8 = 5.7 - f12_arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f12_local9 = 9999 - f12_arg0:GetMapHitRadius(TARGET_SELF)
    local f12_local10 = 0
    local f12_local11 = 0
    local f12_local12 = f12_arg0:GetRandam_Int(1, 100)
    f12_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3012, TARGET_ENE_0, f12_local7, f12_local10, f12_local11, 0, 0)
    f12_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3013, TARGET_ENE_0, f12_local8, 0, 0)
    f12_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3014, TARGET_ENE_0, f12_local9, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function DarkGuardian304000_Act11(f13_arg0, f13_arg1, f13_arg2)
    local f13_local0 = 5
    local f13_local1 = -999
    local f13_local2 = 2.5 - f13_arg0:GetMapHitRadius(TARGET_SELF)
    local f13_local3 = 50
    local f13_local4 = 0
    local f13_local5 = 4
    local f13_local6 = 8
    Approach_Act_Flex(f13_arg0, f13_arg1, f13_local0, f13_local1, f13_local2, f13_local3, f13_local4, f13_local5, f13_local6)
    local f13_local7 = 9999 - f13_arg0:GetMapHitRadius(TARGET_SELF)
    local f13_local8 = 0
    local f13_local9 = 0
    local f13_local10 = f13_arg0:GetRandam_Int(1, 100)
    f13_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3015, TARGET_ENE_0, f13_local7, f13_local8, f13_local9, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function DarkGuardian304000_Act16(f14_arg0, f14_arg1, f14_arg2)
    f14_arg1:AddSubGoal(GOAL_EnemyStepBack, 10, TARGET_ENE_0, -99)
    
end

function DarkGuardian304000_Act17(f15_arg0, f15_arg1, f15_arg2)
    f15_arg1:AddSubGoal(GOAL_EnemyStepLR, 10, TARGET_ENE_0, -99)
    
end

function DarkGuardian304000_Act18(f16_arg0, f16_arg1, f16_arg2)
    local f16_local0 = f16_arg0:GetDist(TARGET_ENE_0)
    local f16_local1 = 10
    local f16_local2 = 12
    local f16_local3 = 0
    local f16_local4 = f16_arg0:GetRandam_Float(1, 3.5)
    if f16_local1 <= f16_local0 then
        Approach_Act(f16_arg0, f16_arg1, f16_local1, f16_local2, f16_local3, 3)
    end
    f16_arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, f16_local4, TARGET_ENE_0, f16_local1, TARGET_ENE_0, true, -1)
    
end

function DarkGuardian304000_Act19(f17_arg0, f17_arg1, f17_arg2)
    local f17_local0 = 0
    local f17_local1 = f17_arg0:GetRandam_Int(1, 100)
    local f17_local2 = -1
    if f17_local1 <= f17_local0 then
        f17_local2 = 9910
    end
    f17_arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, f17_arg0:GetRandam_Int(0, 1), f17_arg0:GetRandam_Int(30, 45), true, true, f17_local2)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function DarkGuardian304000_Act20(f18_arg0, f18_arg1, f18_arg2)
    f18_arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, f18_arg0:GetRandam_Int(15, 20))
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function DarkGuardian304000_ActAfter_AdjustSpace(f19_arg0, f19_arg1, f19_arg2)
    f19_arg1:AddSubGoal(GOAL_DarkGuardian_304000_AfterAttackAct, 10)
    
end

Goal.Update = function (f20_arg0, f20_arg1, f20_arg2)
    return Update_Default_NoSubGoal(f20_arg0, f20_arg1, f20_arg2)
    
end

Goal.Terminate = function (f21_arg0, f21_arg1, f21_arg2)
    
end

Goal.Interrupt = function (f22_arg0, f22_arg1, f22_arg2)
    local f22_local0 = f22_arg1:GetRandam_Int(1, 100)
    local f22_local1 = f22_arg1:GetRandam_Int(1, 100)
    if f22_arg1:IsInterupt(INTERUPT_Shoot) then
        local f22_local2 = f22_arg1:GetDist(TARGET_ENE_0)
        if f22_local0 <= 60 then
            f22_arg2:ClearSubGoal()
            DarkGuardian304000_Act06(f22_arg1, f22_arg2, paramTbl)
        end
        return true
    end
    return false
    
end

RegisterTableGoal(GOAL_DarkGuardian_304000_AfterAttackAct, "GOAL_DarkGuardian_304000_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_DarkGuardian_304000_AfterAttackAct, true)

Goal.Initialize = function (f23_arg0, f23_arg1, f23_arg2, f23_arg3)
    
end

Goal.Activate = function (f24_arg0, f24_arg1, f24_arg2)
    local f24_local0 = f24_arg1:GetDist(TARGET_ENE_0)
    local f24_local1 = f24_arg1:GetToTargetAngle(TARGET_ENE_0)
    local f24_local2 = {}
    if f24_local0 >= 5 then
        f24_local2[1] = 100
        f24_local2[2] = 0
        f24_local2[3] = 0
    elseif f24_local0 >= 3 then
        f24_local2[1] = 50
        f24_local2[2] = 10
        f24_local2[3] = 40
    else
        f24_local2[1] = 50
        f24_local2[2] = 40
        f24_local2[3] = 10
    end
    local f24_local3 = SelectOddsIndex(f24_arg1, f24_local2)
    if f24_local3 == 1 then
    elseif f24_local3 == 2 then
        DarkGuardian304000_Act16(f24_arg1, f24_arg2, paramTbl)
    elseif f24_local3 == 3 then
        DarkGuardian304000_Act17(f24_arg1, f24_arg2, paramTbl)
    end
    
end

Goal.Update = function (f25_arg0, f25_arg1, f25_arg2)
    return Update_Default_NoSubGoal(f25_arg0, f25_arg1, f25_arg2)
    
end


