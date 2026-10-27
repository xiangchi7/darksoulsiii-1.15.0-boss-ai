RegisterTableGoal(GOAL_YUPA620100_Battle, "GOAL_YUPA620100")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_YUPA620100_Battle, true)

Goal.Initialize = function (f1_arg0, f1_arg1, f1_arg2, f1_arg3)
    f1_arg1:SetNumber(0, 0)
    f1_arg1:SetTimer(1, 60)
    
end

Goal.Activate = function (f2_arg0, f2_arg1, f2_arg2)
    Init_Pseudo_Global(f2_arg1, f2_arg2)
    f2_arg1:SetStringIndexedNumber("AddDistWalk", 0)
    f2_arg1:SetStringIndexedNumber("AddDistRun", 0.2)
    f2_arg1:SetStringIndexedNumber("Dist_SideStep", 5)
    f2_arg1:SetStringIndexedNumber("Dist_BackStep", 5)
    local f2_local0 = {}
    local f2_local1 = {}
    local f2_local2 = {}
    Common_Clear_Param(f2_local0, f2_local1, f2_local2)
    local f2_local3 = f2_arg1:GetDist(TARGET_ENE_0)
    local f2_local4 = f2_arg1:GetRandam_Int(1, 100)
    local f2_local5 = f2_arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkattr_doAdmirer)
    local f2_local6 = f2_arg1:GetEventRequest()
    local f2_local7 = f2_arg1:GetHpRate(TARGET_SELF)
    if f2_arg1:GetNumber(0) == 0 then
        f2_local0[27] = 100
    elseif f2_arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 180) then
        if f2_local3 >= 8 then
            f2_local0[1] = 1
            f2_local0[2] = 0
            f2_local0[3] = 40
            f2_local0[4] = 20
            f2_local0[5] = 0
            f2_local0[6] = 0
            f2_local0[7] = 0
            f2_local0[8] = 1
            f2_local0[9] = 0
            f2_local0[10] = 0
            f2_local0[11] = 10
            f2_local0[12] = 10
            f2_local0[20] = 10
            f2_local0[21] = 0
            f2_local0[22] = 0
            f2_local0[23] = 0
            f2_local0[24] = 0
            f2_local0[25] = 0
            f2_local0[26] = 0
        elseif f2_local3 >= 2 then
            f2_local0[1] = 1
            f2_local0[2] = 0
            f2_local0[3] = 0
            f2_local0[4] = 40
            f2_local0[5] = 0
            f2_local0[6] = 0
            f2_local0[7] = 0
            f2_local0[8] = 1
            f2_local0[9] = 0
            f2_local0[10] = 0
            f2_local0[11] = 20
            f2_local0[12] = 20
            f2_local0[20] = 20
            f2_local0[21] = 0
            f2_local0[22] = 0
            f2_local0[23] = 0
            f2_local0[24] = 0
            f2_local0[25] = 0
            f2_local0[26] = 0
        elseif f2_arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
            f2_local0[1] = 1
            f2_local0[2] = 10
            f2_local0[3] = 0
            f2_local0[4] = 0
            f2_local0[5] = 40
            f2_local0[6] = 0
            f2_local0[7] = 0
            f2_local0[8] = 1
            f2_local0[9] = 0
            f2_local0[10] = 20
            f2_local0[11] = 20
            f2_local0[12] = 0
            f2_local0[20] = 10
            f2_local0[21] = 0
            f2_local0[22] = 0
            f2_local0[23] = 0
            f2_local0[24] = 0
            f2_local0[25] = 0
            f2_local0[26] = 0
        else
            f2_local0[1] = 1
            f2_local0[2] = 10
            f2_local0[3] = 0
            f2_local0[4] = 0
            f2_local0[5] = 0
            f2_local0[6] = 40
            f2_local0[7] = 0
            f2_local0[8] = 1
            f2_local0[9] = 0
            f2_local0[10] = 20
            f2_local0[11] = 0
            f2_local0[12] = 20
            f2_local0[20] = 10
            f2_local0[21] = 0
            f2_local0[22] = 0
            f2_local0[23] = 0
            f2_local0[24] = 0
            f2_local0[25] = 0
            f2_local0[26] = 0
        end
    elseif f2_local3 >= 15 then
        f2_local0[1] = 0
        f2_local0[2] = 0
        f2_local0[3] = 60
        f2_local0[4] = 20
        f2_local0[5] = 0
        f2_local0[6] = 0
        f2_local0[7] = 0
        f2_local0[8] = 1
        f2_local0[9] = 20
        f2_local0[10] = 0
        f2_local0[11] = 0
        f2_local0[12] = 0
        f2_local0[20] = 0
        f2_local0[21] = 0
        f2_local0[22] = 0
        f2_local0[23] = 0
        f2_local0[24] = 0
        f2_local0[25] = 0
        f2_local0[26] = 0
        if f2_arg1:IsFinishTimer(1) == true then
            f2_local0[27] = 100
        end
    elseif f2_local3 >= 4.8 then
        f2_local0[1] = 30
        f2_local0[2] = 0
        f2_local0[3] = 0
        f2_local0[4] = 30
        f2_local0[5] = 0
        f2_local0[6] = 0
        f2_local0[7] = 0
        f2_local0[8] = 1
        f2_local0[9] = 30
        f2_local0[10] = 0
        f2_local0[11] = 0
        f2_local0[12] = 0
        f2_local0[20] = 0
        f2_local0[21] = 0
        f2_local0[22] = 0
        f2_local0[23] = 0
        f2_local0[24] = 0
        f2_local0[25] = 15
        f2_local0[26] = 15
        if f2_arg1:IsFinishTimer(1) == true then
            f2_local0[27] = 100
        end
    else
        f2_local0[1] = 0
        f2_local0[2] = 30
        f2_local0[3] = 0
        f2_local0[4] = 0
        f2_local0[5] = 0
        f2_local0[6] = 0
        f2_local0[7] = 10
        f2_local0[8] = 20
        f2_local0[9] = 0
        f2_local0[10] = 10
        f2_local0[11] = 0
        f2_local0[12] = 0
        f2_local0[14] = 30
        f2_local0[20] = 0
        f2_local0[21] = 20
        f2_local0[22] = 0
        f2_local0[23] = 0
        f2_local0[24] = 0
        f2_local0[25] = 0
        f2_local0[26] = 0
        if f2_arg1:IsFinishTimer(1) == true then
            f2_local0[27] = 100
        end
        if f2_local3 <= 2.5 then
            f2_local0[21] = 0
        end
    end
    if f2_local3 <= 4 then
        f2_arg1:SetTimer(1, 30)
    end
    if f2_arg1:IsTargetGuard(TARGET_ENE_0) == true then
        f2_local0[1] = f2_local0[1] * 10
        f2_local0[2] = f2_local0[2] * 10
        f2_local0[3] = f2_local0[3] * 1
        f2_local0[4] = f2_local0[4] * 10
        f2_local0[5] = f2_local0[5] * 1
        f2_local0[6] = f2_local0[6] * 1
        f2_local0[7] = f2_local0[7] * 1
        f2_local0[8] = f2_local0[8] * 1
        f2_local0[9] = f2_local0[9] * 1
    end
    if f2_arg1:HasSpecialEffectAttribute(TARGET_ENE_0, SP_EFFECT_TYPE_TARGET_DOWN) and f2_local3 <= 5 then
        f2_local0[21] = f2_local0[1] * 10
        f2_local0[22] = f2_local0[1] * 10
        f2_local0[24] = f2_local0[1] * 10
        f2_local0[25] = f2_local0[1] * 10
        f2_local0[26] = f2_local0[1] * 10
    end
    f2_local0[1] = SetCoolTime(f2_arg1, f2_arg2, 3000, 12, f2_local0[1], 1)
    f2_local0[2] = SetCoolTime(f2_arg1, f2_arg2, 3005, 30, f2_local0[2], 0)
    f2_local0[3] = SetCoolTime(f2_arg1, f2_arg2, 3007, 30, f2_local0[3], 0)
    f2_local0[4] = SetCoolTime(f2_arg1, f2_arg2, 3008, 22, f2_local0[4], 1)
    f2_local0[5] = SetCoolTime(f2_arg1, f2_arg2, 3015, 8, f2_local0[5], 1)
    f2_local0[6] = SetCoolTime(f2_arg1, f2_arg2, 3016, 8, f2_local0[6], 1)
    f2_local0[7] = SetCoolTime(f2_arg1, f2_arg2, 3017, 30, f2_local0[7], 0)
    f2_local0[8] = SetCoolTime(f2_arg1, f2_arg2, 3020, 15, f2_local0[8], 1)
    f2_local0[9] = SetCoolTime(f2_arg1, f2_arg2, 3023, 8, f2_local0[9], 0)
    f2_local0[10] = SetCoolTime(f2_arg1, f2_arg2, 3025, 20, f2_local0[10], 0)
    f2_local0[11] = SetCoolTime(f2_arg1, f2_arg2, 3028, 12, f2_local0[11], 0)
    f2_local0[11] = SetCoolTime(f2_arg1, f2_arg2, 3029, 12, f2_local0[11], 0)
    f2_local0[12] = SetCoolTime(f2_arg1, f2_arg2, 3028, 12, f2_local0[10], 0)
    f2_local0[12] = SetCoolTime(f2_arg1, f2_arg2, 3029, 12, f2_local0[10], 0)
    f2_local0[14] = SetCoolTime(f2_arg1, f2_arg2, 3033, 60, f2_local0[14], 0)
    f2_local0[24] = SetCoolTime(f2_arg1, f2_arg2, 6001, 20, f2_local0[24], 0)
    f2_local0[25] = SetCoolTime(f2_arg1, f2_arg2, 6002, 20, f2_local0[25], 0)
    f2_local0[25] = SetCoolTime(f2_arg1, f2_arg2, 6003, 20, f2_local0[25], 0)
    f2_local0[26] = SetCoolTime(f2_arg1, f2_arg2, 6002, 20, f2_local0[26], 0)
    f2_local0[26] = SetCoolTime(f2_arg1, f2_arg2, 6003, 20, f2_local0[26], 0)
    if f2_local7 >= 0.7 then
        f2_local0[2] = 0
    end
    if f2_local7 >= 0.5 then
        f2_local0[14] = 0
    end
    if f2_local7 <= 0.3 then
        f2_local0[21] = 0
        f2_local0[22] = 0
        f2_local0[23] = 0
    end
    f2_local1[1] = REGIST_FUNC(f2_arg1, f2_arg2, YUPA620100_Act01)
    f2_local1[2] = REGIST_FUNC(f2_arg1, f2_arg2, YUPA620100_Act02)
    f2_local1[3] = REGIST_FUNC(f2_arg1, f2_arg2, YUPA620100_Act03)
    f2_local1[4] = REGIST_FUNC(f2_arg1, f2_arg2, YUPA620100_Act04)
    f2_local1[5] = REGIST_FUNC(f2_arg1, f2_arg2, YUPA620100_Act05)
    f2_local1[6] = REGIST_FUNC(f2_arg1, f2_arg2, YUPA620100_Act06)
    f2_local1[7] = REGIST_FUNC(f2_arg1, f2_arg2, YUPA620100_Act07)
    f2_local1[8] = REGIST_FUNC(f2_arg1, f2_arg2, YUPA620100_Act08)
    f2_local1[9] = REGIST_FUNC(f2_arg1, f2_arg2, YUPA620100_Act09)
    f2_local1[10] = REGIST_FUNC(f2_arg1, f2_arg2, YUPA620100_Act10)
    f2_local1[11] = REGIST_FUNC(f2_arg1, f2_arg2, YUPA620100_Act11)
    f2_local1[12] = REGIST_FUNC(f2_arg1, f2_arg2, YUPA620100_Act12)
    f2_local1[13] = REGIST_FUNC(f2_arg1, f2_arg2, YUPA620100_Act13)
    f2_local1[14] = REGIST_FUNC(f2_arg1, f2_arg2, YUPA620100_Act14)
    f2_local1[20] = REGIST_FUNC(f2_arg1, f2_arg2, YUPA620100_Act20)
    f2_local1[21] = REGIST_FUNC(f2_arg1, f2_arg2, YUPA620100_Act21)
    f2_local1[22] = REGIST_FUNC(f2_arg1, f2_arg2, YUPA620100_Act22)
    f2_local1[23] = REGIST_FUNC(f2_arg1, f2_arg2, YUPA620100_Act23)
    f2_local1[24] = REGIST_FUNC(f2_arg1, f2_arg2, YUPA620100_Act24)
    f2_local1[25] = REGIST_FUNC(f2_arg1, f2_arg2, YUPA620100_Act25)
    f2_local1[26] = REGIST_FUNC(f2_arg1, f2_arg2, YUPA620100_Act26)
    f2_local1[27] = REGIST_FUNC(f2_arg1, f2_arg2, YUPA620100_Act27)
    f2_local1[28] = REGIST_FUNC(f2_arg1, f2_arg2, YUPA620100_Act28)
    local f2_local8 = REGIST_FUNC(f2_arg1, f2_arg2, YUPA620100_ActAfter_AdjustSpace)
    Common_Battle_Activate(f2_arg1, f2_arg2, f2_local0, f2_local1, f2_local8, f2_local2)
    
end

function YUPA620100_Act01(f3_arg0, f3_arg1, f3_arg2)
    local f3_local0 = 7
    local f3_local1 = 7 + 10
    local f3_local2 = 7 + 10
    local f3_local3 = 0
    local f3_local4 = 0
    local f3_local5 = 3
    local f3_local6 = 5
    Approach_Act_Flex(f3_arg0, f3_arg1, f3_local0, f3_local1, f3_local2, f3_local3, f3_local4, f3_local5, f3_local6)
    local f3_local7 = 3000
    local f3_local8 = 3001
    local f3_local9 = 3002
    local f3_local10 = 999
    local f3_local11 = 0
    local f3_local12 = 0
    local f3_local13 = f3_arg0:GetRandam_Int(1, 100)
    f3_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3000, TARGET_ENE_0, 15, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function YUPA620100_Act02(f4_arg0, f4_arg1, f4_arg2)
    local f4_local0 = 5
    local f4_local1 = 5 + 10
    local f4_local2 = 5 + 10
    local f4_local3 = 0
    local f4_local4 = 0
    local f4_local5 = 3
    local f4_local6 = 5
    Approach_Act_Flex(f4_arg0, f4_arg1, f4_local0, f4_local1, f4_local2, f4_local3, f4_local4, f4_local5, f4_local6)
    local f4_local7 = 3005
    local f4_local8 = 3006
    local f4_local9 = 999
    local f4_local10 = 0
    local f4_local11 = 0
    local f4_local12 = f4_arg0:GetRandam_Int(1, 100)
    local f4_local13 = 5 + 2
    local f4_local14 = 5 + 2
    f4_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f4_local7, TARGET_ENE_0, f4_local13, f4_local10, f4_local11, 0, 0)
    f4_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f4_local8, TARGET_ENE_0, f4_local9, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function YUPA620100_Act03(f5_arg0, f5_arg1, f5_arg2)
    local f5_local0 = 26
    local f5_local1 = 26
    local f5_local2 = 26
    local f5_local3 = 0
    local f5_local4 = 0
    local f5_local5 = 3
    local f5_local6 = 7
    local f5_local7 = f5_arg0:GetDist(TARGET_ENE_0)
    f5_arg0:SetNumber(0, 1)
    if f5_local0 <= f5_local7 then
        Approach_Act_Flex(f5_arg0, f5_arg1, f5_local0, f5_local1, f5_local2, f5_local3, f5_local4, f5_local5, f5_local6)
    end
    local f5_local8 = 3007
    local f5_local9 = 999
    local f5_local10 = 0
    local f5_local11 = 0
    local f5_local12 = f5_arg0:GetRandam_Int(1, 100)
    f5_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f5_local8, TARGET_ENE_0, f5_local9, f5_local10, f5_local11, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function YUPA620100_Act04(f6_arg0, f6_arg1, f6_arg2)
    local f6_local0 = 21.09
    local f6_local1 = 21.09 + 10
    local f6_local2 = 21.09 + 10
    local f6_local3 = 0
    local f6_local4 = 0
    local f6_local5 = 3
    local f6_local6 = 7
    local f6_local7 = f6_arg0:GetDist(TARGET_ENE_0)
    local f6_local8 = f6_arg0:GetRandam_Int(1, 100)
    f6_arg0:SetNumber(0, 1)
    if f6_local0 <= f6_local7 then
        Approach_Act_Flex(f6_arg0, f6_arg1, f6_local0, f6_local1, f6_local2, f6_local3, f6_local4, f6_local5, f6_local6)
    elseif f6_local7 > 3 and f6_local8 <= 50 then
        f6_arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 0.7, TARGET_ENE_0, 0, 60, true, true, 0):SetLifeEndSuccess(true)
    elseif f6_local7 > 3 then
        f6_arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 0.7, TARGET_ENE_0, 1, 60, true, true, 0):SetLifeEndSuccess(true)
    end
    local f6_local9 = 3008
    local f6_local10 = 3009
    local f6_local11 = 3010
    local f6_local12 = 999
    local f6_local13 = 0
    local f6_local14 = 0
    local f6_local15 = 9.52 + 2
    local f6_local16 = 30 + 2
    if f6_local8 <= 40 and f6_local7 <= 6 then
        f6_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3008, TARGET_ENE_0, 8, f6_local13, f6_local14, 0, 0)
        f6_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3021, TARGET_ENE_0, 15, 0, 0)
    else
        f6_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3008, TARGET_ENE_0, 15, f6_local13, f6_local14, 0, 0)
        f6_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3009, TARGET_ENE_0, 15, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function YUPA620100_Act05(f7_arg0, f7_arg1, f7_arg2)
    local f7_local0 = 3015
    local f7_local1 = 999
    local f7_local2 = 0
    local f7_local3 = 0
    local f7_local4 = f7_arg0:GetRandam_Int(1, 100)
    if f7_local4 <= 80 then
        f7_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3015, TARGET_ENE_0, 999, f7_local2, f7_local3, 0, 0)
    else
        f7_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3015, TARGET_ENE_0, 999, f7_local2, f7_local3, 0, 0)
        f7_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3029, TARGET_ENE_0, f7_local1, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function YUPA620100_Act06(f8_arg0, f8_arg1, f8_arg2)
    local f8_local0 = 3016
    local f8_local1 = 999
    local f8_local2 = 0
    local f8_local3 = 0
    local f8_local4 = f8_arg0:GetRandam_Int(1, 100)
    if f8_local4 <= 80 then
        f8_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3016, TARGET_ENE_0, 999, f8_local2, f8_local3, 0, 0)
    else
        f8_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3016, TARGET_ENE_0, 999, f8_local2, f8_local3, 0, 0)
        f8_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3028, TARGET_ENE_0, f8_local1, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function YUPA620100_Act07(f9_arg0, f9_arg1, f9_arg2)
    local f9_local0 = 3017
    local f9_local1 = 999
    local f9_local2 = 0
    local f9_local3 = 0
    local f9_local4 = f9_arg0:GetRandam_Int(1, 100)
    f9_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f9_local0, TARGET_ENE_0, 999, f9_local2, f9_local3, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function YUPA620100_Act08(f10_arg0, f10_arg1, f10_arg2)
    local f10_local0 = 4.83
    local f10_local1 = 4.83 + 10
    local f10_local2 = 4.83 + 10
    local f10_local3 = 0
    local f10_local4 = 0
    local f10_local5 = 3
    local f10_local6 = 5
    Approach_Act_Flex(f10_arg0, f10_arg1, f10_local0, f10_local1, f10_local2, f10_local3, f10_local4, f10_local5, f10_local6)
    local f10_local7 = 3020
    local f10_local8 = 3021
    local f10_local9 = 999
    local f10_local10 = 0
    local f10_local11 = 0
    local f10_local12 = f10_arg0:GetRandam_Int(1, 100)
    local f10_local13 = 2.37 + 2
    f10_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f10_local7, TARGET_ENE_0, f10_local13, f10_local10, f10_local11, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function YUPA620100_Act09(f11_arg0, f11_arg1, f11_arg2)
    local f11_local0 = 22
    local f11_local1 = 40
    local f11_local2 = 40
    local f11_local3 = 0
    local f11_local4 = 0
    local f11_local5 = 3
    local f11_local6 = 5
    Approach_Act_Flex(f11_arg0, f11_arg1, f11_local0, f11_local1, f11_local2, f11_local3, f11_local4, f11_local5, f11_local6)
    local f11_local7 = 3023
    local f11_local8 = 999
    local f11_local9 = 0
    local f11_local10 = 0
    local f11_local11 = f11_arg0:GetRandam_Int(1, 100)
    f11_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3023, TARGET_ENE_0, 999, f11_local9, f11_local10, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function YUPA620100_Act10(f12_arg0, f12_arg1, f12_arg2)
    local f12_local0 = 3.75
    local f12_local1 = 3.75
    local f12_local2 = 3.75
    local f12_local3 = 0
    local f12_local4 = 0
    local f12_local5 = 3
    local f12_local6 = 5
    Approach_Act_Flex(f12_arg0, f12_arg1, f12_local0, f12_local1, f12_local2, f12_local3, f12_local4, f12_local5, f12_local6)
    local f12_local7 = 3025
    local f12_local8 = 999
    local f12_local9 = 0
    local f12_local10 = 0
    local f12_local11 = f12_arg0:GetRandam_Int(1, 100)
    f12_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f12_local7, TARGET_ENE_0, f12_local8, f12_local9, f12_local10, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function YUPA620100_Act11(f13_arg0, f13_arg1, f13_arg2)
    local f13_local0 = 3028
    local f13_local1 = 999
    local f13_local2 = 0
    local f13_local3 = 0
    local f13_local4 = f13_arg0:GetRandam_Int(1, 100)
    f13_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f13_local0, TARGET_ENE_0, 20, f13_local2, f13_local3, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function YUPA620100_Act12(f14_arg0, f14_arg1, f14_arg2)
    local f14_local0 = 3029
    local f14_local1 = 999
    local f14_local2 = 0
    local f14_local3 = 0
    local f14_local4 = f14_arg0:GetRandam_Int(1, 100)
    f14_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f14_local0, TARGET_ENE_0, 20, f14_local2, f14_local3, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function YUPA620100_Act13(f15_arg0, f15_arg1, f15_arg2)
    local f15_local0 = 3031
    local f15_local1 = 999
    local f15_local2 = 0
    local f15_local3 = 0
    f15_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f15_local0, TARGET_ENE_0, DistToAtt2, f15_local2, f15_local3, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function YUPA620100_Act14(f16_arg0, f16_arg1, f16_arg2)
    local f16_local0 = 3033
    local f16_local1 = 999
    local f16_local2 = 0
    local f16_local3 = 0
    local f16_local4 = f16_arg0:GetRandam_Int(1, 100)
    local f16_local5 = f16_arg0:GetHpRate(TARGET_SELF)
    f16_arg0:SetTimer(1, 30)
    f16_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3033, TARGET_ENE_0, 30, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function YUPA620100_Act20(f17_arg0, f17_arg1, f17_arg2)
    f17_arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 45)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function YUPA620100_Act21(f18_arg0, f18_arg1, f18_arg2)
    local f18_local0 = f18_arg0:GetRandam_Int(1, 100)
    local f18_local1 = f18_arg0:GetDist(TARGET_ENE_0)
    if f18_local1 >= 4 then
        if f18_local0 <= 50 then
            f18_arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 2.7, TARGET_ENE_0, 0, 60, true, true, 0)
        else
            f18_arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 2.7, TARGET_ENE_0, 1, 60, true, true, 0)
        end
    elseif f18_local0 <= 50 then
        f18_arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 1.4, TARGET_ENE_0, 0, 60, true, true, 0)
    else
        f18_arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 1.4, TARGET_ENE_0, 1, 60, true, true, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function YUPA620100_Act22(f19_arg0, f19_arg1, f19_arg2)
    f19_arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 2.3, TARGET_ENE_0, 7.2, TARGET_ENE_0, true, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function YUPA620100_Act23(f20_arg0, f20_arg1, f20_arg2)
    f20_arg1:AddSubGoal(GOAL_COMMON_Wait, f20_arg0:GetRandam_Float(0.5, 1), TARGET_ENE_0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function YUPA620100_Act24(f21_arg0, f21_arg1, f21_arg2)
    local f21_local0 = f21_arg0:GetDist(TARGET_ENE_0)
    local f21_local1 = f21_arg0:GetRandam_Int(1, 100)
    f21_arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6001, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 5)
    if f21_local1 <= 50 then
        f21_arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 2.6, TARGET_ENE_0, 0, 60, true, true, 0)
    else
        f21_arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 2.6, TARGET_ENE_0, 1, 60, true, true, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function YUPA620100_Act25(f22_arg0, f22_arg1, f22_arg2)
    local f22_local0 = f22_arg0:GetDist(TARGET_ENE_0)
    local f22_local1 = f22_arg0:GetRandam_Int(1, 100)
    f22_arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6002, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 5)
    if f22_local1 <= 25 then
        f22_arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 2.6, TARGET_ENE_0, 0, 60, true, true, 0)
    elseif f22_local1 <= 50 then
        f22_arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 2.6, TARGET_ENE_0, 1, 60, true, true, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function YUPA620100_Act26(f23_arg0, f23_arg1, f23_arg2)
    local f23_local0 = f23_arg0:GetDist(TARGET_ENE_0)
    local f23_local1 = f23_arg0:GetRandam_Int(1, 100)
    f23_arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6003, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 5)
    if f23_local1 <= 25 then
        f23_arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 2.6, TARGET_ENE_0, 0, 60, true, true, 0)
    elseif f23_local1 <= 50 then
        f23_arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 2.6, TARGET_ENE_0, 1, 60, true, true, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function YUPA620100_Act27(f24_arg0, f24_arg1, f24_arg2)
    f24_arg0:SetNumber(0, 1)
    f24_arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 6, TARGET_ENE_0, 3, TARGET_SELF, false, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function YUPA620100_Act28(f25_arg0, f25_arg1, f25_arg2)
    f25_arg0:SetNumber(0, 1)
    f25_arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, TARGET_ENE_0, 3, TARGET_SELF, true, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Update = function (f26_arg0, f26_arg1, f26_arg2)
    return Update_Default_NoSubGoal(f26_arg0, f26_arg1, f26_arg2)
    
end

Goal.Terminate = function (f27_arg0, f27_arg1, f27_arg2)
    
end

Goal.Interrupt = function (f28_arg0, f28_arg1, f28_arg2)
    local f28_local0 = f28_arg1:GetRandam_Int(1, 100)
    local f28_local1 = f28_arg1:GetRandam_Int(1, 100)
    local f28_local2 = f28_arg1:GetDist(TARGET_ENE_0)
    local f28_local3 = f28_arg1:GetHpRate(TARGET_SELF)
    if f28_arg1:IsInterupt(INTERUPT_Shoot) and f28_local2 > 4 and f28_local2 <= 7 then
        f28_arg1:SetTimer(1, 0.1)
    end
    f28_arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    if f28_arg1:GetSpecialEffectActivateInterruptType(0) == 5026 and (f28_local3 <= 0.5 or f28_local1 <= 50) then
        local f28_local4 = 3021
        local f28_local5 = 3009
        local f28_local6 = 999
        local f28_local7 = 0
        local f28_local8 = 0
        local f28_local9 = f28_arg1:GetRandam_Int(1, 100)
        if f28_arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) and f28_arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 270) and f28_local2 <= 3.2 then
            f28_arg2:ClearSubGoal()
            f28_arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f28_local4, TARGET_ENE_0, f28_local6, 0, 0)
        elseif f28_local2 <= 3.2 and f28_local9 <= 80 then
            f28_arg2:ClearSubGoal()
            f28_arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f28_local4, TARGET_ENE_0, f28_local6, 0, 0)
        elseif f28_local2 <= 13 and f28_local9 <= 80 then
            f28_arg2:ClearSubGoal()
            f28_arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f28_local5, TARGET_ENE_0, f28_local6, 0, 0)
            f28_arg2:AddSubGoal(GOAL_YUPA620100_Battle_AfterAttackAct, 10)
        end
    end
    f28_arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    if f28_arg1:GetSpecialEffectActivateInterruptType(0) == 5027 and (f28_local3 <= 0.5 or f28_local1 <= 50) then
        local f28_local4 = 3000
        local f28_local5 = 3001
        local f28_local6 = 3002
        local f28_local7 = 999
        local f28_local8 = 0
        local f28_local9 = 0
        local f28_local10 = f28_arg1:GetRandam_Int(1, 100)
        if f28_local2 >= 2 then
            if f28_local10 <= 50 and f28_local3 >= 0.5 then
                f28_arg2:ClearSubGoal()
                f28_arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, 999, 0, 0)
            elseif f28_local10 <= 75 and f28_local3 >= 0.5 then
                f28_arg2:ClearSubGoal()
                f28_arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, 999, 0, 0)
                f28_arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3009, TARGET_ENE_0, 999, 0, 0)
            elseif f28_local10 <= 50 then
                f28_arg2:ClearSubGoal()
                f28_arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, 999, 0, 0)
                f28_arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3009, TARGET_ENE_0, 999, 0, 0)
            elseif f28_local10 <= 75 then
                f28_arg2:ClearSubGoal()
                f28_arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, 999, 0, 0)
                f28_arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3009, TARGET_ENE_0, 999, 0, 0)
                f28_arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, 999, 0, 0)
            else
                f28_arg2:ClearSubGoal()
                f28_arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, 999, 0, 0)
                f28_arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, 999, 0, 0)
                f28_arg2:AddSubGoal(GOAL_YUPA620100_Battle_AfterAttackAct, 10)
            end
        elseif f28_local10 <= 50 then
            f28_arg2:ClearSubGoal()
            f28_arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3011, TARGET_ENE_0, 7, 0, 0)
        else
            f28_arg2:ClearSubGoal()
            f28_arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3011, TARGET_ENE_0, 7, 0, 0)
            f28_arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3021, TARGET_ENE_0, 999, 0, 0)
            f28_arg2:AddSubGoal(GOAL_YUPA620100_Battle_AfterAttackAct, 10)
        end
    end
    f28_arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    if f28_arg1:GetSpecialEffectActivateInterruptType(0) == 5028 and (f28_local3 <= 0.5 or f28_local1 <= 50) then
        if f28_local2 <= 2 then
            if f28_local0 <= 50 then
                f28_arg2:ClearSubGoal()
                f28_arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3011, TARGET_ENE_0, 999, 0, 0)
                f28_arg2:AddSubGoal(GOAL_YUPA620100_Battle_AfterAttackAct, 10)
            else
                f28_arg2:ClearSubGoal()
                f28_arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3011, TARGET_ENE_0, 7, 0, 0)
                f28_arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3021, TARGET_ENE_0, 999, 0, 0)
                f28_arg2:AddSubGoal(GOAL_YUPA620100_Battle_AfterAttackAct, 10)
            end
        else
            f28_arg2:ClearSubGoal()
            f28_arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3010, TARGET_ENE_0, 999, 0, 0)
        end
    end
    
end

function YUPA620100_ActAfter_AdjustSpace(f29_arg0, f29_arg1, f29_arg2)
    f29_arg1:AddSubGoal(GOAL_YUPA620100_Battle_AfterAttackAct, 10)
    
end

RegisterTableGoal(GOAL_YUPA620100_Battle_AfterAttackAct, "GOAL_YUPA620100_Battle_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_YUPA620100_Battle_AfterAttackAct, true)

Goal.Activate = function (f30_arg0, f30_arg1, f30_arg2)
    local f30_local0 = f30_arg1:GetDist(TARGET_ENE_0)
    local f30_local1 = f30_arg1:GetRandam_Int(1, 100)
    local f30_local2 = f30_arg1:GetHpRate(TARGET_SELF)
    if f30_local0 >= 10 then
    elseif f30_local0 >= 6 then
        if f30_local2 >= 0.5 then
            YUPA620100_Act21(f30_arg1, f30_arg2, paramTbl)
        end
    elseif f30_local0 >= 1 and f30_local2 >= 0.5 then
        YUPA620100_Act21(f30_arg1, f30_arg2, paramTbl)
    end
    
end

Goal.Update = function (f31_arg0, f31_arg1, f31_arg2)
    return Update_Default_NoSubGoal(f31_arg0, f31_arg1, f31_arg2)
    
end


