RegisterTableGoal(GOAL_WolfKing_603000_Battle, "GOAL_WolfKing_603000")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_WolfKing_603000_Battle, true)

Goal.Initialize = function (f1_arg0, f1_arg1, f1_arg2, f1_arg3)
    f1_arg1:SetNumber(0, 0)
    
end

Goal.Activate = function (f2_arg0, f2_arg1, f2_arg2)
    Init_Pseudo_Global(f2_arg1, f2_arg2)
    f2_arg1:SetStringIndexedNumber("Dist_SideStep", 5)
    f2_arg1:SetStringIndexedNumber("Dist_BackStep", 5)
    f2_arg1:SetStringIndexedNumber("AddDistRun", 0.64)
    local f2_local0 = {}
    local f2_local1 = {}
    local f2_local2 = {}
    Common_Clear_Param(f2_local0, f2_local1, f2_local2)
    local f2_local3 = f2_arg1:GetDist(TARGET_ENE_0)
    local f2_local4 = f2_arg1:GetRandam_Int(1, 100)
    local f2_local5 = f2_arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkattr_doAdmirer)
    local f2_local6 = f2_arg1:GetEventRequest()
    local f2_local7 = f2_arg1:GetHpRate(TARGET_SELF)
    f2_arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    f2_arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    f2_arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    f2_arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    f2_arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    f2_arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    f2_arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    f2_arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    f2_arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    f2_arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5034)
    if f2_arg1:GetNpcThinkParamID() == 603001 and f2_local6 == 10 then
        f2_local0[30] = 100
    elseif f2_arg1:GetNpcThinkParamID() == 603001 and f2_local7 <= 0.3 then
        f2_local0[31] = 100
    elseif f2_arg1:HasSpecialEffectId(TARGET_SELF, 13100) and f2_local3 >= 3 then
        f2_local0[24] = 100
    elseif f2_arg1:GetNpcThinkParamID() == 603002 and f2_local6 == 10 then
        f2_local0[30] = 100
    elseif f2_arg1:GetNpcThinkParamID() == 603002 and f2_local7 <= 0.3 then
        f2_local0[31] = 100
    elseif f2_local7 <= 0.6 and not f2_arg1:HasSpecialEffectId(TARGET_SELF, 13105) then
        f2_local0[12] = 100
    elseif f2_local3 >= 5 and f2_arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 240) then
        f2_local0[1] = 1
        f2_local0[4] = 33
        f2_local0[5] = 33
        f2_local0[20] = 33
    elseif f2_arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 180) then
        f2_local0[1] = 1
        f2_local0[4] = 15
        f2_local0[5] = 15
        f2_local0[7] = 40
        f2_local0[8] = 40
        f2_local0[16] = 20
        f2_local0[20] = 10
        if f2_arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
            f2_local0[7] = 0
        end
        if f2_arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
            f2_local0[8] = 0
        end
    elseif f2_local3 >= 10 then
        f2_local0[1] = 20
        f2_local0[3] = 10
        f2_local0[4] = 10
        f2_local0[5] = 10
        f2_local0[9] = 10
        f2_local0[25] = 50
        if f2_arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 175) then
            f2_local0[10] = 15
        end
        if f2_arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 175) then
            f2_local0[11] = 15
        end
    else
        f2_local0[1] = 20
        f2_local0[2] = 10
        f2_local0[3] = 10
        f2_local0[4] = 10
        f2_local0[5] = 10
        f2_local0[7] = 10
        f2_local0[8] = 10
        f2_local0[15] = 10
        f2_local0[16] = 10
        f2_local0[25] = 50
        if f2_arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
            f2_local0[7] = 0
        end
        if f2_arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
            f2_local0[8] = 0
        end
    end
    f2_local0[1] = SetCoolTime(f2_arg1, f2_arg2, 3000, 9, f2_local0[1], 1)
    f2_local0[2] = SetCoolTime(f2_arg1, f2_arg2, 3002, 45, f2_local0[2], 1)
    f2_local0[3] = SetCoolTime(f2_arg1, f2_arg2, 3003, 40, f2_local0[3], 0)
    f2_local0[4] = SetCoolTime(f2_arg1, f2_arg2, 3004, 60, f2_local0[4], 0)
    f2_local0[4] = SetCoolTime(f2_arg1, f2_arg2, 3005, 60, f2_local0[4], 0)
    f2_local0[5] = SetCoolTime(f2_arg1, f2_arg2, 3004, 60, f2_local0[5], 0)
    f2_local0[5] = SetCoolTime(f2_arg1, f2_arg2, 3005, 60, f2_local0[5], 0)
    f2_local0[7] = SetCoolTime(f2_arg1, f2_arg2, 3008, 20, f2_local0[7], 1)
    f2_local0[7] = SetCoolTime(f2_arg1, f2_arg2, 3011, 20, f2_local0[7], 1)
    f2_local0[8] = SetCoolTime(f2_arg1, f2_arg2, 3008, 15, f2_local0[8], 1)
    f2_local0[8] = SetCoolTime(f2_arg1, f2_arg2, 3011, 15, f2_local0[8], 1)
    f2_local0[9] = SetCoolTime(f2_arg1, f2_arg2, 3014, 60, f2_local0[9], 1)
    f2_local0[10] = SetCoolTime(f2_arg1, f2_arg2, 3015, 40, f2_local0[10], 1)
    f2_local0[10] = SetCoolTime(f2_arg1, f2_arg2, 3016, 40, f2_local0[10], 1)
    f2_local0[11] = SetCoolTime(f2_arg1, f2_arg2, 3015, 40, f2_local0[11], 1)
    f2_local0[11] = SetCoolTime(f2_arg1, f2_arg2, 3016, 40, f2_local0[11], 1)
    f2_local0[12] = SetCoolTime(f2_arg1, f2_arg2, 3017, 60, f2_local0[12], 1)
    f2_local0[15] = SetCoolTime(f2_arg1, f2_arg2, 3009, 15, f2_local0[15], 1)
    f2_local0[16] = SetCoolTime(f2_arg1, f2_arg2, 3012, 15, f2_local0[16], 1)
    f2_local0[25] = SetCoolTime(f2_arg1, f2_arg2, 3018, 20, f2_local0[25], 0)
    if f2_arg1:IsFinishTimer(1) == false then
        f2_local0[3] = 0
    end
    if f2_arg1:IsFinishTimer(2) == false then
        f2_local0[6] = 1
    end
    if f2_arg1:IsFinishTimer(3) == false then
        f2_local0[10] = 1
    end
    if f2_arg1:IsFinishTimer(3) == false then
        f2_local0[11] = 1
    end
    if f2_arg1:IsFinishTimer(4) == false then
        f2_local0[9] = 1
    end
    if f2_arg1:IsFinishTimer(5) == false then
        f2_local0[4] = 1
    end
    if f2_arg1:IsFinishTimer(5) == false then
        f2_local0[5] = 1
    end
    if f2_arg1:GetNpcThinkParamID() == 603001 then
        f2_local0[3] = 0
        f2_local0[4] = 0
        f2_local0[5] = 0
        f2_local0[10] = 0
        f2_local0[11] = 0
        f2_local0[25] = 0
    end
    if f2_arg1:GetNpcThinkParamID() == 603002 then
        f2_local0[2] = 0
        f2_local0[3] = 0
        f2_local0[4] = 0
        f2_local0[5] = 0
        f2_local0[7] = 0
        f2_local0[8] = 0
        f2_local0[10] = 0
        f2_local0[11] = 0
        f2_local0[25] = 0
    end
    if f2_local7 >= 0.6 then
        f2_local0[4] = 0
        f2_local0[5] = 0
        f2_local0[25] = 0
    end
    f2_local1[1] = REGIST_FUNC(f2_arg1, f2_arg2, WolfKing_603000_Act01)
    f2_local1[2] = REGIST_FUNC(f2_arg1, f2_arg2, WolfKing_603000_Act02)
    f2_local1[3] = REGIST_FUNC(f2_arg1, f2_arg2, WolfKing_603000_Act03)
    f2_local1[4] = REGIST_FUNC(f2_arg1, f2_arg2, WolfKing_603000_Act04)
    f2_local1[5] = REGIST_FUNC(f2_arg1, f2_arg2, WolfKing_603000_Act05)
    f2_local1[7] = REGIST_FUNC(f2_arg1, f2_arg2, WolfKing_603000_Act07)
    f2_local1[8] = REGIST_FUNC(f2_arg1, f2_arg2, WolfKing_603000_Act08)
    f2_local1[9] = REGIST_FUNC(f2_arg1, f2_arg2, WolfKing_603000_Act09)
    f2_local1[10] = REGIST_FUNC(f2_arg1, f2_arg2, WolfKing_603000_Act10)
    f2_local1[11] = REGIST_FUNC(f2_arg1, f2_arg2, WolfKing_603000_Act11)
    f2_local1[12] = REGIST_FUNC(f2_arg1, f2_arg2, WolfKing_603000_Act12)
    f2_local1[13] = REGIST_FUNC(f2_arg1, f2_arg2, WolfKing_603000_Act13)
    f2_local1[14] = REGIST_FUNC(f2_arg1, f2_arg2, WolfKing_603000_Act14)
    f2_local1[15] = REGIST_FUNC(f2_arg1, f2_arg2, WolfKing_603000_Act15)
    f2_local1[16] = REGIST_FUNC(f2_arg1, f2_arg2, WolfKing_603000_Act16)
    f2_local1[17] = REGIST_FUNC(f2_arg1, f2_arg2, WolfKing_603000_Act17)
    f2_local1[20] = REGIST_FUNC(f2_arg1, f2_arg2, WolfKing_603000_Act20)
    f2_local1[21] = REGIST_FUNC(f2_arg1, f2_arg2, WolfKing_603000_Act21)
    f2_local1[22] = REGIST_FUNC(f2_arg1, f2_arg2, WolfKing_603000_Act22)
    f2_local1[23] = REGIST_FUNC(f2_arg1, f2_arg2, WolfKing_603000_Act23)
    f2_local1[24] = REGIST_FUNC(f2_arg1, f2_arg2, WolfKing_603000_Act24)
    f2_local1[25] = REGIST_FUNC(f2_arg1, f2_arg2, WolfKing_603000_Act25)
    f2_local1[30] = REGIST_FUNC(f2_arg1, f2_arg2, WolfKing_603000_Act30)
    f2_local1[31] = REGIST_FUNC(f2_arg1, f2_arg2, WolfKing_603000_Act31)
    f2_local1[40] = REGIST_FUNC(f2_arg1, f2_arg2, WolfKing_603000_Act40)
    local f2_local8 = REGIST_FUNC(f2_arg1, f2_arg2, GOAL_WolfKing_ActAfter_AdjustSpace)
    Common_Battle_Activate(f2_arg1, f2_arg2, f2_local0, f2_local1, f2_local8, f2_local2)
    
end

function WolfKing_603000_Act01(f3_arg0, f3_arg1, f3_arg2)
    local f3_local0 = 4.1 + 3
    local f3_local1 = 4.1 + 7
    local f3_local2 = 4.1 + 7
    local f3_local3 = 0
    local f3_local4 = 0
    local f3_local5 = 1.8
    local f3_local6 = 1.8
    local f3_local7 = f3_arg0:GetDist(TARGET_ENE_0)
    if f3_arg0:GetNpcThinkParamID() == 603002 then
        f3_local1 = 9999
        f3_local2 = 9999
    end
    if f3_local0 < f3_local7 then
        Approach_Act_Flex(f3_arg0, f3_arg1, f3_local0, f3_local1, f3_local2, f3_local3, f3_local4, f3_local5, f3_local6)
    end
    local f3_local8 = 3000
    local f3_local9 = 3001
    local f3_local10 = 3007
    local f3_local11 = 5.6 + 5
    local f3_local12 = 2.38 + 5
    local f3_local13 = 999
    local f3_local14 = 0
    local f3_local15 = 0
    local f3_local16 = f3_arg0:GetRandam_Int(1, 100)
    f3_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f3_local8, TARGET_ENE_0, f3_local11, f3_local14, f3_local15, 0, 0)
    f3_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f3_local9, TARGET_ENE_0, f3_local13, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function WolfKing_603000_Act02(f4_arg0, f4_arg1, f4_arg2)
    local f4_local0 = 3.1
    local f4_local1 = 3.1 + 10
    local f4_local2 = 3.1 + 10
    local f4_local3 = 0
    local f4_local4 = 0
    local f4_local5 = 1.8
    local f4_local6 = 1.8
    local f4_local7 = f4_arg0:GetDist(TARGET_ENE_0)
    if f4_arg0:GetNpcThinkParamID() == 603002 then
        f4_local1 = 9999
        f4_local2 = 9999
    end
    Approach_Act_Flex(f4_arg0, f4_arg1, f4_local0, f4_local1, f4_local2, f4_local3, f4_local4, f4_local5, f4_local6)
    local f4_local8 = 3002
    local f4_local9 = 999
    local f4_local10 = 0
    local f4_local11 = 0
    local f4_local12 = f4_arg0:GetRandam_Int(1, 100)
    f4_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f4_local8, TARGET_ENE_0, 999, f4_local10, f4_local11, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function WolfKing_603000_Act03(f5_arg0, f5_arg1, f5_arg2)
    f5_arg0:SetTimer(1, 30)
    local f5_local0 = 11.6
    local f5_local1 = 11.6
    local f5_local2 = 11.6
    local f5_local3 = 0
    local f5_local4 = 0
    local f5_local5 = 1.8
    local f5_local6 = 1.8
    local f5_local7 = f5_arg0:GetDist(TARGET_ENE_0)
    if f5_arg0:GetNpcThinkParamID() == 603002 then
        f5_local1 = 9999
        f5_local2 = 9999
    end
    Approach_Act_Flex(f5_arg0, f5_arg1, f5_local0, f5_local1, f5_local2, f5_local3, f5_local4, f5_local5, f5_local6)
    local f5_local8 = 3003
    local f5_local9 = 0
    local f5_local10 = 0
    local f5_local11 = 0
    f5_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f5_local8, TARGET_ENE_0, f5_local9, f5_local10, f5_local11, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function WolfKing_603000_Act04(f6_arg0, f6_arg1, f6_arg2)
    f6_arg0:SetTimer(5, 60)
    local f6_local0 = 2
    local f6_local1 = 4
    local f6_local2 = 4
    local f6_local3 = 100
    local f6_local4 = 0
    local f6_local5 = 1.8
    local f6_local6 = 1.8
    local f6_local7 = f6_arg0:GetDist(TARGET_ENE_0)
    if f6_arg0:GetNpcThinkParamID() == 603002 then
        f6_local1 = 9999
        f6_local2 = 9999
    end
    Approach_Act_Flex(f6_arg0, f6_arg1, f6_local0, f6_local1, f6_local2, f6_local3, f6_local4, f6_local5, f6_local6)
    local f6_local8 = 3004
    local f6_local9 = 999
    local f6_local10 = 0
    local f6_local11 = 0
    local f6_local12 = f6_arg0:GetRandam_Int(1, 100)
    local f6_local13 = 16.5
    f6_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3004, TARGET_ENE_0, 999, f6_local10, f6_local11, 0, 0)
    f6_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3005, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function WolfKing_603000_Act05(f7_arg0, f7_arg1, f7_arg2)
    f7_arg0:SetTimer(5, 60)
    local f7_local0 = 2
    local f7_local1 = 4
    local f7_local2 = 4
    local f7_local3 = 100
    local f7_local4 = 0
    local f7_local5 = 1.8
    local f7_local6 = 1.8
    local f7_local7 = f7_arg0:GetDist(TARGET_ENE_0)
    if f7_arg0:GetNpcThinkParamID() == 603002 then
        f7_local1 = 9999
        f7_local2 = 9999
    end
    if f7_local0 <= f7_local7 then
        f7_arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, TARGET_ENE_0, f7_local0 + 2.15, TARGET_SELF, false, 0)
    end
    Approach_Act_Flex(f7_arg0, f7_arg1, f7_local0, f7_local1, f7_local2, f7_local3, f7_local4, f7_local5, f7_local6)
    local f7_local8 = 3005
    local f7_local9 = 999
    local f7_local10 = 0
    local f7_local11 = 0
    local f7_local12 = f7_arg0:GetRandam_Int(1, 100)
    f7_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f7_local8, TARGET_ENE_0, 999, f7_local10, f7_local11, 0, 0)
    f7_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3004, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function WolfKing_603000_Act07(f8_arg0, f8_arg1, f8_arg2)
    local f8_local0 = 4
    local f8_local1 = 12
    local f8_local2 = 12
    local f8_local3 = 100
    local f8_local4 = 0
    local f8_local5 = 1.8
    local f8_local6 = 1.8
    local f8_local7 = f8_arg0:GetDist(TARGET_ENE_0)
    if f8_arg0:GetNpcThinkParamID() == 603002 then
        f8_local1 = 9999
        f8_local2 = 9999
    end
    if f8_local0 <= f8_local7 then
        Approach_Act_Flex(f8_arg0, f8_arg1, f8_local0, f8_local1, f8_local2, f8_local3, f8_local4, f8_local5, f8_local6)
    end
    local f8_local8 = 3008
    local f8_local9 = 999
    local f8_local10 = 0
    local f8_local11 = 0
    local f8_local12 = f8_arg0:GetRandam_Int(1, 100)
    f8_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f8_local8, TARGET_ENE_0, f8_local9, f8_local10, f8_local11, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function WolfKing_603000_Act08(f9_arg0, f9_arg1, f9_arg2)
    local f9_local0 = 4
    local f9_local1 = 12
    local f9_local2 = 12
    local f9_local3 = 100
    local f9_local4 = 0
    local f9_local5 = 1.8
    local f9_local6 = 1.8
    local f9_local7 = f9_arg0:GetDist(TARGET_ENE_0)
    if f9_arg0:GetNpcThinkParamID() == 603002 then
        f9_local1 = 9999
        f9_local2 = 9999
    end
    if f9_local0 <= f9_local7 then
        Approach_Act_Flex(f9_arg0, f9_arg1, f9_local0, f9_local1, f9_local2, f9_local3, f9_local4, f9_local5, f9_local6)
    end
    local f9_local8 = 3011
    local f9_local9 = 999
    local f9_local10 = 0
    local f9_local11 = 0
    local f9_local12 = f9_arg0:GetRandam_Int(1, 100)
    f9_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f9_local8, TARGET_ENE_0, f9_local9, f9_local10, f9_local11, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function WolfKing_603000_Act09(f10_arg0, f10_arg1, f10_arg2)
    f10_arg0:SetTimer(4, 40)
    local f10_local0 = 16.5
    local f10_local1 = 16.5 + 5
    local f10_local2 = 16.5 + 5
    local f10_local3 = 100
    local f10_local4 = 0
    local f10_local5 = 1.8
    local f10_local6 = 1.8
    local f10_local7 = f10_arg0:GetDist(TARGET_ENE_0)
    if f10_arg0:GetNpcThinkParamID() == 603002 then
        f10_local1 = 9999
        f10_local2 = 9999
    end
    Approach_Act_Flex(f10_arg0, f10_arg1, f10_local0, f10_local1, f10_local2, f10_local3, f10_local4, f10_local5, f10_local6)
    local f10_local8 = 3014
    local f10_local9 = 999
    local f10_local10 = 0
    local f10_local11 = 0
    local f10_local12 = f10_arg0:GetRandam_Int(1, 100)
    f10_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f10_local8, TARGET_ENE_0, f10_local9, f10_local10, f10_local11, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function WolfKing_603000_Act10(f11_arg0, f11_arg1, f11_arg2)
    local f11_local0 = 9.8
    local f11_local1 = 9.8 + 5
    local f11_local2 = 9.8 + 5
    local f11_local3 = 100
    local f11_local4 = 0
    local f11_local5 = 1.8
    local f11_local6 = 1.8
    local f11_local7 = f11_arg0:GetDist(TARGET_ENE_0)
    f11_arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, 2.5, TARGET_ENE_0, 2, TARGET_SELF, false, -1, AI_DIR_TYPE_ToR, 4)
    
end

function WolfKing_603000_Act11(f12_arg0, f12_arg1, f12_arg2)
    local f12_local0 = 9.8
    local f12_local1 = 9.8 + 5
    local f12_local2 = 9.8 + 5
    local f12_local3 = 100
    local f12_local4 = 0
    local f12_local5 = 1.8
    local f12_local6 = 1.8
    local f12_local7 = f12_arg0:GetDist(TARGET_ENE_0)
    f12_arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, 2.5, TARGET_ENE_0, 2, TARGET_SELF, false, -1, AI_DIR_TYPE_ToL, 4)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function WolfKing_603000_Act12(f13_arg0, f13_arg1, f13_arg2)
    local f13_local0 = 8.6
    local f13_local1 = 8.6 + 5
    local f13_local2 = 8.6 + 5
    local f13_local3 = 100
    local f13_local4 = 0
    local f13_local5 = 1.8
    local f13_local6 = 1.8
    local f13_local7 = f13_arg0:GetDist(TARGET_ENE_0)
    if f13_arg0:GetNpcThinkParamID() == 603002 then
        f13_local1 = 9999
        f13_local2 = 9999
    end
    Approach_Act_Flex(f13_arg0, f13_arg1, f13_local0, f13_local1, f13_local2, f13_local3, f13_local4, f13_local5, f13_local6)
    local f13_local8 = 3017
    local f13_local9 = 999
    local f13_local10 = 0
    local f13_local11 = 0
    local f13_local12 = f13_arg0:GetRandam_Int(1, 100)
    f13_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f13_local8, TARGET_ENE_0, 999, 0, 0, 0, 0):SetLifeEndSuccess(true)
    f13_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3018, TARGET_ENE_0, 999, 0, 0):SetLifeEndSuccess(true)
    f13_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3005, TARGET_ENE_0, 999, 0, 0):SetLifeEndSuccess(true)
    f13_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3004, TARGET_ENE_0, 999, 0, 0):SetLifeEndSuccess(true)
    f13_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3018, TARGET_ENE_0, 999, 0, 0):SetLifeEndSuccess(true)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function WolfKing_603000_Act13(f14_arg0, f14_arg1, f14_arg2)
    local f14_local0 = 3023
    local f14_local1 = 999
    local f14_local2 = 0
    local f14_local3 = 0
    local f14_local4 = f14_arg0:GetRandam_Int(1, 100)
    f14_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f14_local0, TARGET_ENE_0, f14_local1, f14_local2, f14_local3, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function WolfKing_603000_Act14(f15_arg0, f15_arg1, f15_arg2)
    local f15_local0 = 3024
    local f15_local1 = 999
    local f15_local2 = 0
    local f15_local3 = 0
    local f15_local4 = f15_arg0:GetRandam_Int(1, 100)
    f15_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f15_local0, TARGET_ENE_0, f15_local1, f15_local2, f15_local3, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function WolfKing_603000_Act15(f16_arg0, f16_arg1, f16_arg2)
    local f16_local0 = 3.64
    local f16_local1 = 3.64 + 5
    local f16_local2 = 3.64 + 5
    local f16_local3 = 0
    local f16_local4 = 0
    local f16_local5 = 1.8
    local f16_local6 = 1.8
    local f16_local7 = f16_arg0:GetDist(TARGET_ENE_0)
    Approach_Act_Flex(f16_arg0, f16_arg1, f16_local0, f16_local1, f16_local2, f16_local3, f16_local4, f16_local5, f16_local6)
    local f16_local8 = 3009
    local f16_local9 = 3007
    local f16_local10 = 2.38 + 2
    local f16_local11 = 999
    local f16_local12 = 0
    local f16_local13 = 0
    local f16_local14 = f16_arg0:GetRandam_Int(1, 100)
    f16_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f16_local8, TARGET_ENE_0, f16_local11, f16_local12, f16_local13, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function WolfKing_603000_Act16(f17_arg0, f17_arg1, f17_arg2)
    local f17_local0 = 6.83
    local f17_local1 = 6.83 + 5
    local f17_local2 = 6.83 + 5
    local f17_local3 = 0
    local f17_local4 = 0
    local f17_local5 = 1.8
    local f17_local6 = 1.8
    local f17_local7 = f17_arg0:GetDist(TARGET_ENE_0)
    Approach_Act_Flex(f17_arg0, f17_arg1, f17_local0, f17_local1, f17_local2, f17_local3, f17_local4, f17_local5, f17_local6)
    local f17_local8 = 3012
    local f17_local9 = 999
    local f17_local10 = 0
    local f17_local11 = 0
    local f17_local12 = f17_arg0:GetRandam_Int(1, 100)
    f17_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f17_local8, TARGET_ENE_0, f17_local9, f17_local10, f17_local11, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function WolfKing_603000_Act17(f18_arg0, f18_arg1, f18_arg2)
    if f18_arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
        f18_arg1:AddSubGoal(GOAL_COMMON_MoveToSomewhere, 2, TARGET_ENE_0, AI_DIR_TYPE_ToR, 8, TARGET_SELF, true):SetLifeEndSuccess(true)
    else
        f18_arg1:AddSubGoal(GOAL_COMMON_MoveToSomewhere, 2, TARGET_ENE_0, AI_DIR_TYPE_ToL, 8, TARGET_SELF, true):SetLifeEndSuccess(true)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function WolfKing_603000_Act20(f19_arg0, f19_arg1, f19_arg2)
    f19_arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 60)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function WolfKing_603000_Act21(f20_arg0, f20_arg1, f20_arg2)
    if f20_arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
        f20_arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6002, TARGET_ENE_0, 0, AI_DIR_TYPE_L, f20_arg0:GetStringIndexedNumber("Dist_SideStep"))
    else
        f20_arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6003, TARGET_ENE_0, 0, AI_DIR_TYPE_R, f20_arg0:GetStringIndexedNumber("Dist_SideStep"))
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function WolfKing_603000_Act22(f21_arg0, f21_arg1, f21_arg2)
    f21_arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6001, TARGET_ENE_0, 0, AI_DIR_TYPE_B, f21_arg0:GetStringIndexedNumber("Dist_BackStep"))
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function WolfKing_603000_Act23(f22_arg0, f22_arg1, f22_arg2)
    f22_arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, 1.5, TARGET_ENE_0, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function WolfKing_603000_Act24(f23_arg0, f23_arg1, f23_arg2)
    f23_arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, TARGET_ENE_0, 2, TARGET_SELF, true, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function WolfKing_603000_Act25(f24_arg0, f24_arg1, f24_arg2)
    local f24_local0 = 10
    local f24_local1 = 12
    local f24_local2 = 12
    local f24_local3 = 0
    local f24_local4 = 0
    local f24_local5 = 1.8
    local f24_local6 = 1.8
    local f24_local7 = f24_arg0:GetDist(TARGET_ENE_0)
    Approach_Act_Flex(f24_arg0, f24_arg1, f24_local0, f24_local1, f24_local2, f24_local3, f24_local4, f24_local5, f24_local6)
    local f24_local8 = 3018
    local f24_local9 = 999
    local f24_local10 = 0
    local f24_local11 = 0
    local f24_local12 = f24_arg0:GetRandam_Int(1, 100)
    f24_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f24_local8, TARGET_ENE_0, f24_local9, f24_local10, f24_local11, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function WolfKing_603000_Act30(f25_arg0, f25_arg1, f25_arg2)
    if f25_arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
        f25_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3023, TARGET_ENE_0, 999, 0, 0, 0, 0)
    else
        f25_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3024, TARGET_ENE_0, 999, 0, 0, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function WolfKing_603000_Act31(f26_arg0, f26_arg1, f26_arg2)
    f26_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3025, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function WolfKing_603000_Act40(f27_arg0, f27_arg1, f27_arg2)
    f27_arg1:AddSubGoal(GOAL_COMMON_MoveToSomewhere, 1.8, TARGET_ENE_0, AI_DIR_TYPE_ToL, 6, TARGET_SELF, false)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Update = function (f28_arg0, f28_arg1, f28_arg2)
    return Update_Default_NoSubGoal(f28_arg0, f28_arg1, f28_arg2)
    
end

Goal.Terminate = function (f29_arg0, f29_arg1, f29_arg2)
    
end

Goal.Interrupt = function (f30_arg0, f30_arg1, f30_arg2)
    local f30_local0 = f30_arg1:GetDist(TARGET_ENE_0)
    local f30_local1 = f30_arg1:GetRandam_Int(1, 100)
    local f30_local2 = f30_arg1:GetRandam_Int(1, 100)
    if f30_arg1:IsFinishTimer(1) == true and not f30_arg1:HasSpecialEffectId(TARGET_SELF, 13100) and f30_arg1:GetNpcThinkParamID() == 603004 and not f30_arg1:GetNpcThinkParamID() == 603002 and f30_arg1:GetSpecialEffectActivateInterruptType(0) == 5025 and f30_arg1:IsInsideTargetEx(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_B, 40, 999) and f30_local0 >= 4 then
        f30_arg2:ClearSubGoal()
        WolfKing_603000_Act03(f30_arg1, f30_arg2, paramTbl)
    end
    if f30_arg1:IsInterupt(INTERUPT_Shoot) and f30_arg1:HasSpecialEffectId(TARGET_SELF, 5034) and f30_local0 >= 4 then
        f30_arg2:ClearSubGoal()
        f30_arg2:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, TARGET_ENE_0, 2, TARGET_SELF, false, 0)
    end
    if f30_arg1:GetSpecialEffectActivateInterruptType(0) == 5025 then
        if f30_arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 270) and f30_local0 >= 9 then
            if f30_arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
                f30_arg2:ClearSubGoal()
                local f30_local3 = 3015
                local f30_local4 = 999
                local f30_local5 = 0
                local f30_local6 = 0
                local f30_local7 = f30_arg1:GetRandam_Int(1, 100)
                f30_arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f30_local3, TARGET_ENE_0, f30_local4, f30_local5, f30_local6, 0, 0)
            else
                f30_arg2:ClearSubGoal()
                local f30_local3 = 3016
                local f30_local4 = 999
                local f30_local5 = 0
                local f30_local6 = 0
                local f30_local7 = f30_arg1:GetRandam_Int(1, 100)
                f30_arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f30_local3, TARGET_ENE_0, f30_local4, f30_local5, f30_local6, 0, 0)
            end
        elseif f30_arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 270) and f30_local0 >= 15 then
            f30_arg2:ClearSubGoal()
            f30_arg2:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 90)
        end
    end
    if f30_arg1:GetSpecialEffectActivateInterruptType(0) == 5028 and not f30_arg1:HasSpecialEffectId(TARGET_SELF, 13104) and f30_local1 <= 30 then
        if f30_local0 >= 15 and f30_arg1:GetNpcThinkParamID() == 603004 then
            f30_arg2:ClearSubGoal()
            WolfKing_603000_Act03(f30_arg1, f30_arg2, paramTbl)
        elseif f30_local0 >= 10 then
            f30_arg2:ClearSubGoal()
            WolfKing_603000_Act09(f30_arg1, f30_arg2, paramTbl)
        else
            f30_arg2:ClearSubGoal()
            f30_arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3012, TARGET_ENE_0, 999, 0, 0, 0, 0)
        end
    end
    if f30_arg1:GetSpecialEffectActivateInterruptType(0) == 5027 and f30_arg1:GetNpcThinkParamID() == 603004 and f30_local1 >= 50 then
        f30_arg2:ClearSubGoal()
        f30_arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3010, TARGET_ENE_0, 999, 0, 0)
    end
    if f30_arg1:GetSpecialEffectActivateInterruptType(0) == 5031 and f30_arg1:GetNpcThinkParamID() == 603004 then
        f30_arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3005, TARGET_ENE_0, 10, 0, 0)
    end
    if f30_arg1:GetSpecialEffectActivateInterruptType(0) == 5026 and f30_arg1:GetNpcThinkParamID() == 603004 and f30_local1 >= 50 then
        f30_arg2:ClearSubGoal()
        f30_arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3013, TARGET_ENE_0, 999, 0, 0)
    end
    if f30_arg1:GetSpecialEffectActivateInterruptType(0) == 5032 and f30_arg1:GetNpcThinkParamID() == 603004 then
        f30_arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3004, TARGET_ENE_0, 10, 0, 0)
    end
    
end

function GOAL_WolfKing_ActAfter_AdjustSpace(f31_arg0, f31_arg1, f31_arg2)
    
end


