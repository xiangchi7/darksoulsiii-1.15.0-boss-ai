RegisterTableGoal(GOAL_DarknessBigBrother_525000_Battle, "DarknessBigBrotherBattle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_DarknessBigBrother_525000_Battle, true)

Goal.Initialize = function (f1_arg0, f1_arg1, f1_arg2, f1_arg3)
    f1_arg1:SetNumber(1, 2)
    f1_arg1:SetNumber(2, 0)
    f1_arg1:SetNumber(3, 0)
    
end

Goal.Activate = function (f2_arg0, f2_arg1, f2_arg2)
    Init_Pseudo_Global(f2_arg1, f2_arg2)
    local f2_local0 = {}
    local f2_local1 = {}
    local f2_local2 = {}
    Common_Clear_Param(f2_local0, f2_local1, f2_local2)
    local f2_local3 = f2_arg1:GetDist(TARGET_ENE_0)
    local f2_local4 = f2_arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    if f2_arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 180) then
        if f2_arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 60) and f2_local3 <= 999 then
            f2_local0[13] = 80
            f2_local0[20] = 20
        elseif f2_arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) and f2_local3 <= 999 then
            f2_local0[12] = 80
            f2_local0[20] = 20
        elseif f2_arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) and f2_local3 <= 999 then
            f2_local0[11] = 80
            f2_local0[20] = 20
        else
            f2_local0[20] = 100
        end
    elseif f2_local3 >= 8 then
        f2_local0[1] = 0
        f2_local0[2] = 0
        f2_local0[3] = 0
        f2_local0[4] = 0
        f2_local0[5] = 10
        f2_local0[6] = 20
        f2_local0[7] = 30
        f2_local0[8] = 5
        f2_local0[9] = 5
        f2_local0[10] = 0
        f2_local0[14] = 0
        f2_local0[15] = 20
        f2_local0[16] = 20
        f2_local0[21] = 0
    elseif f2_local3 >= 5 then
        f2_local0[1] = 0
        f2_local0[2] = 0
        f2_local0[3] = 10
        f2_local0[4] = 10
        f2_local0[5] = 20
        f2_local0[6] = 20
        f2_local0[7] = 0
        f2_local0[8] = 0
        f2_local0[9] = 0
        f2_local0[10] = 0
        f2_local0[14] = 0
        f2_local0[15] = 10
        f2_local0[16] = 20
        f2_local0[21] = 20
    else
        f2_local0[1] = 25
        f2_local0[2] = 25
        f2_local0[3] = 0
        f2_local0[4] = 0
        f2_local0[5] = 0
        f2_local0[6] = 0
        f2_local0[7] = 0
        f2_local0[8] = 10
        f2_local0[9] = 10
        f2_local0[10] = 20
        f2_local0[14] = 10
        f2_local0[15] = 0
        f2_local0[16] = 0
        f2_local0[21] = 0
    end
    if f2_arg1:GetNpcThinkParamID() == 525000 then
        if f2_arg1:GetNumber(2) == 0 then
            f2_arg2:AddSubGoal(GOAL_COMMON_Wait, 1, TARGET_NONE, 0, 0, 0)
            f2_local0[1] = 0
            f2_local0[2] = 0
            f2_local0[3] = 0
            f2_local0[4] = 0
            f2_local0[5] = 0
            f2_local0[6] = 0
            f2_local0[7] = 0
            f2_local0[8] = 0
            f2_local0[9] = 100
            f2_local0[10] = 0
            f2_local0[11] = 0
            f2_local0[12] = 0
            f2_local0[13] = 0
            f2_local0[14] = 0
            f2_local0[15] = 0
            f2_local0[16] = 0
            f2_local0[20] = 0
            f2_local0[21] = 0
            f2_local0[22] = 0
            f2_local0[23] = 0
        end
        f2_local0[14] = 0
        f2_local0[15] = 0
        f2_local0[16] = 0
    end
    if f2_arg1:GetNpcThinkParamID() == 525001 then
        if f2_arg1:GetNumber(3) == 0 then
            f2_arg1:SetNumber(3, 1)
            f2_local0[1] = 0
            f2_local0[2] = 0
            f2_local0[3] = 0
            f2_local0[4] = 0
            f2_local0[5] = 0
            f2_local0[6] = 0
            f2_local0[7] = 0
            f2_local0[8] = 0
            f2_local0[9] = 0
            f2_local0[10] = 0
            f2_local0[11] = 0
            f2_local0[12] = 0
            f2_local0[13] = 0
            f2_local0[14] = 0
            f2_local0[15] = 100
            f2_local0[16] = 0
            f2_local0[20] = 0
            f2_local0[21] = 0
            f2_local0[22] = 0
            f2_local0[23] = 0
        end
        if f2_arg1:GetHpRate(TARGET_SELF) <= 0.01 then
            f2_local0[1] = 0
            f2_local0[2] = 0
            f2_local0[3] = 0
            f2_local0[4] = 0
            f2_local0[5] = 0
            f2_local0[6] = 0
            f2_local0[7] = 0
            f2_local0[8] = 0
            f2_local0[9] = 0
            f2_local0[10] = 0
            f2_local0[11] = 0
            f2_local0[12] = 0
            f2_local0[13] = 0
            f2_local0[14] = 0
            f2_local0[15] = 0
            f2_local0[16] = 0
            f2_local0[20] = 0
            f2_local0[21] = 0
            f2_local0[22] = 0
            f2_local0[23] = 100
        end
    end
    f2_local0[1] = SetCoolTime(f2_arg1, f2_arg2, 3000, 9, f2_local0[1], 1)
    f2_local0[2] = SetCoolTime(f2_arg1, f2_arg2, 3011, 9, f2_local0[2], 1)
    f2_local0[3] = SetCoolTime(f2_arg1, f2_arg2, 3005, 18, f2_local0[3], 1)
    f2_local0[3] = SetCoolTime(f2_arg1, f2_arg2, 3032, 18, f2_local0[3], 1)
    f2_local0[4] = SetCoolTime(f2_arg1, f2_arg2, 3006, 9, f2_local0[4], 1)
    f2_local0[5] = SetCoolTime(f2_arg1, f2_arg2, 3007, 9, f2_local0[5], 1)
    f2_local0[6] = SetCoolTime(f2_arg1, f2_arg2, 3013, 18, f2_local0[6], 1)
    f2_local0[7] = SetCoolTime(f2_arg1, f2_arg2, 3035, 9, f2_local0[7], 1)
    f2_local0[8] = SetCoolTime(f2_arg1, f2_arg2, 3018, 20, f2_local0[8], 1)
    f2_local0[8] = SetCoolTime(f2_arg1, f2_arg2, 3033, 20, f2_local0[8], 1)
    f2_local0[9] = SetCoolTime(f2_arg1, f2_arg2, 3003, 20, f2_local0[9], 1)
    f2_local0[9] = SetCoolTime(f2_arg1, f2_arg2, 3004, 20, f2_local0[9], 1)
    f2_local0[10] = SetCoolTime(f2_arg1, f2_arg2, 3022, 30, f2_local0[10], 1)
    f2_local0[10] = SetCoolTime(f2_arg1, f2_arg2, 3036, 30, f2_local0[10], 1)
    f2_local0[11] = SetCoolTime(f2_arg1, f2_arg2, 3008, 9, f2_local0[11], 1)
    f2_local0[12] = SetCoolTime(f2_arg1, f2_arg2, 3009, 9, f2_local0[12], 1)
    f2_local0[13] = SetCoolTime(f2_arg1, f2_arg2, 3019, 9, f2_local0[13], 1)
    f2_local0[14] = SetCoolTime(f2_arg1, f2_arg2, 3015, 20, f2_local0[14], 1)
    f2_local0[15] = SetCoolTime(f2_arg1, f2_arg2, 3023, 20, f2_local0[15], 1)
    f2_local0[16] = SetCoolTime(f2_arg1, f2_arg2, 3034, 9, f2_local0[16], 1)
    if f2_arg1:IsInsideMsbRegion(TARGET_ENE_0, AI_DIR_TYPE_F, 0, 3412860) == true then
        f2_local0[1] = 0
        f2_local0[2] = 0
        f2_local0[3] = 20
        f2_local0[4] = 20
        f2_local0[5] = 20
        f2_local0[6] = 20
        f2_local0[7] = 20
        f2_local0[8] = 0
        f2_local0[9] = 0
        f2_local0[10] = 0
        f2_local0[11] = 0
        f2_local0[12] = 0
        f2_local0[13] = 0
        f2_local0[14] = 0
        f2_local0[15] = 0
        f2_local0[16] = 0
        f2_local0[20] = 0
        f2_local0[21] = 0
        f2_local0[22] = 0
        f2_local0[23] = 0
    end
    if f2_arg1:IsInsideMsbRegion(TARGET_SELF, AI_DIR_TYPE_F, 0, 3412860) == true then
        f2_local0[1] = 0
        f2_local0[2] = 0
        f2_local0[3] = 0
        f2_local0[4] = 0
        f2_local0[5] = 0
        f2_local0[6] = 0
        f2_local0[7] = 0
        f2_local0[8] = 0
        f2_local0[9] = 0
        f2_local0[10] = 0
        f2_local0[11] = 0
        f2_local0[12] = 0
        f2_local0[13] = 0
        f2_local0[14] = 100
        f2_local0[15] = 0
        f2_local0[16] = 0
        f2_local0[20] = 0
        f2_local0[21] = 0
        f2_local0[22] = 0
        f2_local0[23] = 0
    end
    f2_local1[1] = REGIST_FUNC(f2_arg1, f2_arg2, DarknessBigBrother_Act01)
    f2_local1[2] = REGIST_FUNC(f2_arg1, f2_arg2, DarknessBigBrother_Act02)
    f2_local1[3] = REGIST_FUNC(f2_arg1, f2_arg2, DarknessBigBrother_Act03)
    f2_local1[4] = REGIST_FUNC(f2_arg1, f2_arg2, DarknessBigBrother_Act04)
    f2_local1[5] = REGIST_FUNC(f2_arg1, f2_arg2, DarknessBigBrother_Act05)
    f2_local1[6] = REGIST_FUNC(f2_arg1, f2_arg2, DarknessBigBrother_Act06)
    f2_local1[7] = REGIST_FUNC(f2_arg1, f2_arg2, DarknessBigBrother_Act07)
    f2_local1[8] = REGIST_FUNC(f2_arg1, f2_arg2, DarknessBigBrother_Act08)
    f2_local1[9] = REGIST_FUNC(f2_arg1, f2_arg2, DarknessBigBrother_Act09)
    f2_local1[10] = REGIST_FUNC(f2_arg1, f2_arg2, DarknessBigBrother_Act10)
    f2_local1[11] = REGIST_FUNC(f2_arg1, f2_arg2, DarknessBigBrother_Act11)
    f2_local1[12] = REGIST_FUNC(f2_arg1, f2_arg2, DarknessBigBrother_Act12)
    f2_local1[13] = REGIST_FUNC(f2_arg1, f2_arg2, DarknessBigBrother_Act13)
    f2_local1[14] = REGIST_FUNC(f2_arg1, f2_arg2, DarknessBigBrother_Act14)
    f2_local1[15] = REGIST_FUNC(f2_arg1, f2_arg2, DarknessBigBrother_Act15)
    f2_local1[16] = REGIST_FUNC(f2_arg1, f2_arg2, DarknessBigBrother_Act16)
    f2_local1[20] = REGIST_FUNC(f2_arg1, f2_arg2, DarknessBigBrother_Act20)
    f2_local1[21] = REGIST_FUNC(f2_arg1, f2_arg2, DarknessBigBrother_Act21)
    f2_local1[22] = REGIST_FUNC(f2_arg1, f2_arg2, DarknessBigBrother_Act22)
    f2_local1[23] = REGIST_FUNC(f2_arg1, f2_arg2, DarknessBigBrother_Act23)
    f2_local1[24] = REGIST_FUNC(f2_arg1, f2_arg2, DarknessBigBrother_Act24)
    local f2_local5 = REGIST_FUNC(f2_arg1, f2_arg2, DarknessBigBrother_ActAfter_AdjustSpace)
    Common_Battle_Activate(f2_arg1, f2_arg2, f2_local0, f2_local1, f2_local5, f2_local2)
    
end

function DarknessBigBrother_Act01(f3_arg0, f3_arg1, f3_arg2)
    local f3_local0 = 8
    local f3_local1 = 8
    local f3_local2 = 8 + 999
    local f3_local3 = 0
    local f3_local4 = 0
    local f3_local5 = 2
    local f3_local6 = 2
    Approach_Act_Flex(f3_arg0, f3_arg1, f3_local0, f3_local1, f3_local2, f3_local3, f3_local4, f3_local5, f3_local6)
    local f3_local7 = 3000
    local f3_local8 = 3001
    local f3_local9 = 3025
    local f3_local10 = 3010
    local f3_local11 = 5.96
    local f3_local12 = 7.11
    local f3_local13 = 8.42
    local f3_local14 = 999
    local f3_local15 = 0
    local f3_local16 = 0
    local f3_local17 = f3_arg0:GetRandam_Int(1, 100)
    local f3_local18 = f3_arg0:GetDist(TARGET_ENE_0)
    if f3_local17 <= 60 then
        f3_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f3_local7, TARGET_ENE_0, f3_local11, f3_local15, f3_local16, 0, 0)
        f3_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f3_local8, TARGET_ENE_0, f3_local14, 0, 0)
    elseif f3_local17 <= 80 then
        f3_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f3_local7, TARGET_ENE_0, f3_local11, f3_local15, f3_local16, 0, 0)
        f3_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f3_local8, TARGET_ENE_0, f3_local13, 0, 0)
        f3_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f3_local10, TARGET_ENE_0, f3_local14, 0, 0)
    else
        f3_arg0:SetNumber(1, 1)
        f3_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f3_local7, TARGET_ENE_0, f3_local12, f3_local15, f3_local16, 0, 0)
        f3_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, f3_local9, TARGET_ENE_0, 999, f3_local15, f3_local16, 0, 180)
        f3_arg1:AddSubGoal(GOAL_DarknessBigBrother_WarpAttack1, 10)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function DarknessBigBrother_Act02(f4_arg0, f4_arg1, f4_arg2)
    local f4_local0 = 6.25
    local f4_local1 = 6.25
    local f4_local2 = 6.25 + 999
    local f4_local3 = 0
    local f4_local4 = 0
    local f4_local5 = 2
    local f4_local6 = 2
    Approach_Act_Flex(f4_arg0, f4_arg1, f4_local0, f4_local1, f4_local2, f4_local3, f4_local4, f4_local5, f4_local6)
    local f4_local7 = 3011
    local f4_local8 = 3012
    local f4_local9 = 3010
    local f4_local10 = 3024
    local f4_local11 = 3026
    local f4_local12 = 3025
    local f4_local13 = 3027
    local f4_local14 = 3029
    local f4_local15 = 999
    local f4_local16 = 8.42
    local f4_local17 = 6.73
    local f4_local18 = 8.94
    local f4_local19 = 999
    local f4_local20 = 0
    local f4_local21 = 0
    local f4_local22 = f4_arg0:GetDist(TARGET_ENE_0)
    local f4_local23 = f4_arg0:GetRandam_Int(1, 100)
    if f4_local23 <= 40 then
        f4_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f4_local7, TARGET_ENE_0, f4_local16, f4_local20, f4_local21, 0, 0)
        f4_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f4_local8, TARGET_ENE_0, f4_local19, 0, 0)
    elseif f4_local23 <= 70 then
        f4_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f4_local7, TARGET_ENE_0, f4_local16, f4_local20, f4_local21, 0, 0)
        f4_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f4_local9, TARGET_ENE_0, f4_local19, 0, 0)
    elseif f4_local23 <= 80 then
        f4_arg0:SetNumber(1, 1)
        f4_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f4_local7, TARGET_ENE_0, f4_local15, f4_local20, f4_local21, 0, 0)
        f4_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, f4_local8, TARGET_ENE_0, 999, 0, 0)
        f4_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, f4_local12, TARGET_ENE_0, 999, 0, 0)
        f4_arg1:AddSubGoal(GOAL_DarknessBigBrother_WarpAttack1, 10)
    elseif f4_local23 <= 90 then
        f4_arg0:SetNumber(1, 2)
        f4_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f4_local7, TARGET_ENE_0, f4_local17, f4_local20, f4_local21, 0, 0)
        f4_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, f4_local10, TARGET_ENE_0, 999, 0, 0)
        f4_arg1:AddSubGoal(GOAL_DarknessBigBrother_WarpAttack1, 10)
    else
        f4_arg0:SetNumber(1, 3)
        f4_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f4_local7, TARGET_ENE_0, f4_local18, f4_local20, f4_local21, 0, 0)
        f4_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, f4_local11, TARGET_ENE_0, 999, 0, 0)
        f4_arg1:AddSubGoal(GOAL_DarknessBigBrother_WarpAttack1, 10)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function DarknessBigBrother_Act03(f5_arg0, f5_arg1, f5_arg2)
    if f5_arg0:GetNpcThinkParamID() == 525000 then
        local f5_local0 = 8.47
        local f5_local1 = 8.47
        local f5_local2 = 8.47 + 999
        local f5_local3 = 0
        local f5_local4 = 0
        local f5_local5 = 2
        local f5_local6 = 2
        Approach_Act_Flex(f5_arg0, f5_arg1, f5_local0, f5_local1, f5_local2, f5_local3, f5_local4, f5_local5, f5_local6)
        local f5_local7 = 3005
        local f5_local8 = 999
        local f5_local9 = 0
        local f5_local10 = 0
        f5_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f5_local7, TARGET_ENE_0, f5_local8, f5_local9, f5_local10, 0, 0)
        GetWellSpace_Odds = 100
        return GetWellSpace_Odds
    else
        local f5_local0 = 8.47
        local f5_local1 = 8.47
        local f5_local2 = 8.47 + 999
        local f5_local3 = 0
        local f5_local4 = 0
        local f5_local5 = 2
        local f5_local6 = 2
        Approach_Act_Flex(f5_arg0, f5_arg1, f5_local0, f5_local1, f5_local2, f5_local3, f5_local4, f5_local5, f5_local6)
        local f5_local7 = 3032
        local f5_local8 = 999
        local f5_local9 = 0
        local f5_local10 = 0
        f5_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f5_local7, TARGET_ENE_0, f5_local8, f5_local9, f5_local10, 0, 0)
        GetWellSpace_Odds = 100
        return GetWellSpace_Odds
    end
    
end

function DarknessBigBrother_Act04(f6_arg0, f6_arg1, f6_arg2)
    local f6_local0 = 5.28
    local f6_local1 = 5.28
    local f6_local2 = 5.28 + 999
    local f6_local3 = 0
    local f6_local4 = 0
    local f6_local5 = 2
    local f6_local6 = 2
    Approach_Act_Flex(f6_arg0, f6_arg1, f6_local0, f6_local1, f6_local2, f6_local3, f6_local4, f6_local5, f6_local6)
    local f6_local7 = 3006
    local f6_local8 = 999
    local f6_local9 = 0
    local f6_local10 = 0
    f6_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f6_local7, TARGET_ENE_0, f6_local8, f6_local9, f6_local10, 0, 0):SetTargetAngle(1, 0, 90)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function DarknessBigBrother_Act05(f7_arg0, f7_arg1, f7_arg2)
    local f7_local0 = 7.96
    local f7_local1 = 7.96
    local f7_local2 = 7.96 + 999
    local f7_local3 = 0
    local f7_local4 = 0
    local f7_local5 = 2
    local f7_local6 = 2
    Approach_Act_Flex(f7_arg0, f7_arg1, f7_local0, f7_local1, f7_local2, f7_local3, f7_local4, f7_local5, f7_local6)
    local f7_local7 = 3007
    local f7_local8 = 999
    local f7_local9 = 0
    local f7_local10 = 0
    f7_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f7_local7, TARGET_ENE_0, f7_local8, f7_local9, f7_local10, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function DarknessBigBrother_Act06(f8_arg0, f8_arg1, f8_arg2)
    local f8_local0 = 11.75
    local f8_local1 = 11.75
    local f8_local2 = 11.75 + 999
    local f8_local3 = 0
    local f8_local4 = 0
    local f8_local5 = 2
    local f8_local6 = 2
    Approach_Act_Flex(f8_arg0, f8_arg1, f8_local0, f8_local1, f8_local2, f8_local3, f8_local4, f8_local5, f8_local6)
    local f8_local7 = 3013
    local f8_local8 = 999
    local f8_local9 = 0
    local f8_local10 = 0
    f8_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f8_local7, TARGET_ENE_0, f8_local8, f8_local9, f8_local10, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function DarknessBigBrother_Act07(f9_arg0, f9_arg1, f9_arg2)
    local f9_local0 = 10.91
    local f9_local1 = 10.91
    local f9_local2 = 10.91 + 999
    local f9_local3 = 0
    local f9_local4 = 0
    local f9_local5 = 2
    local f9_local6 = 2
    Approach_Act_Flex(f9_arg0, f9_arg1, f9_local0, f9_local1, f9_local2, f9_local3, f9_local4, f9_local5, f9_local6)
    local f9_local7 = 3035
    local f9_local8 = 999
    local f9_local9 = 0
    local f9_local10 = 0
    f9_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f9_local7, TARGET_ENE_0, f9_local8, f9_local9, f9_local10, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function DarknessBigBrother_Act08(f10_arg0, f10_arg1, f10_arg2)
    f10_arg0:SetNumber(1, 4)
    local f10_local0 = 3002
    local f10_local1 = 0
    local f10_local2 = 0
    f10_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f10_local0, TARGET_ENE_0, 999, f10_local1, f10_local2, 0, 0)
    f10_arg1:AddSubGoal(GOAL_DarknessBigBrother_WarpAttack1, 10)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function DarknessBigBrother_Act09(f11_arg0, f11_arg1, f11_arg2)
    f11_arg0:SetNumber(1, 5)
    local f11_local0 = 3002
    local f11_local1 = 0
    local f11_local2 = 0
    f11_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f11_local0, TARGET_ENE_0, 999, f11_local1, f11_local2, 0, 0)
    f11_arg1:AddSubGoal(GOAL_DarknessBigBrother_WarpAttack1, 10)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function DarknessBigBrother_Act10(f12_arg0, f12_arg1, f12_arg2)
    if f12_arg0:GetNpcThinkParamID() == 525000 then
        f12_arg0:SetNumber(1, 6)
        local f12_local0 = 3002
        local f12_local1 = 0
        local f12_local2 = 0
        f12_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f12_local0, TARGET_ENE_0, 999, f12_local1, f12_local2, 0, 180)
        f12_arg1:AddSubGoal(GOAL_DarknessBigBrother_WarpAttack1, 10)
        GetWellSpace_Odds = 100
        return GetWellSpace_Odds
    else
        f12_arg0:SetNumber(1, 7)
        local f12_local0 = 3002
        local f12_local1 = 0
        local f12_local2 = 0
        f12_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f12_local0, TARGET_ENE_0, 999, f12_local1, f12_local2, 0, 180)
        f12_arg1:AddSubGoal(GOAL_DarknessBigBrother_WarpAttack1, 10)
        GetWellSpace_Odds = 100
        return GetWellSpace_Odds
    end
    
end

function DarknessBigBrother_Act11(f13_arg0, f13_arg1, f13_arg2)
    local f13_local0 = 3008
    local f13_local1 = 999
    local f13_local2 = 0
    local f13_local3 = 0
    f13_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f13_local0, TARGET_ENE_0, f13_local1, f13_local2, f13_local3, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function DarknessBigBrother_Act12(f14_arg0, f14_arg1, f14_arg2)
    local f14_local0 = 3009
    local f14_local1 = 999
    local f14_local2 = 0
    local f14_local3 = 0
    f14_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f14_local0, TARGET_ENE_0, f14_local1, f14_local2, f14_local3, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function DarknessBigBrother_Act13(f15_arg0, f15_arg1, f15_arg2)
    local f15_local0 = 3019
    local f15_local1 = 999
    local f15_local2 = 0
    local f15_local3 = 0
    f15_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f15_local0, TARGET_ENE_0, f15_local1, f15_local2, f15_local3, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function DarknessBigBrother_Act14(f16_arg0, f16_arg1, f16_arg2)
    f16_arg0:SetNumber(1, 8)
    local f16_local0 = 3015
    local f16_local1 = 0
    local f16_local2 = 0
    f16_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f16_local0, TARGET_ENE_0, 999, f16_local1, f16_local2, 0, 180)
    f16_arg1:AddSubGoal(GOAL_DarknessBigBrother_WarpAttack1, 10)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function DarknessBigBrother_Act15(f17_arg0, f17_arg1, f17_arg2)
    local f17_local0 = 3023
    local f17_local1 = 999
    local f17_local2 = 0
    local f17_local3 = 0
    f17_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f17_local0, TARGET_ENE_0, f17_local1, f17_local2, f17_local3, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function DarknessBigBrother_Act16(f18_arg0, f18_arg1, f18_arg2)
    local f18_local0 = 3034
    local f18_local1 = 999
    local f18_local2 = 0
    local f18_local3 = 0
    f18_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f18_local0, TARGET_ENE_0, f18_local1, f18_local2, f18_local3, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function DarknessBigBrother_Act20(f19_arg0, f19_arg1, f19_arg2)
    f19_arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 90)
    return 0
    
end

function DarknessBigBrother_Act21(f20_arg0, f20_arg1, f20_arg2)
    if f20_arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
        f20_arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 1.5, TARGET_ENE_0, 0, f20_arg0:GetRandam_Int(30, 45), true, true, 0)
    else
        f20_arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 1.5, TARGET_ENE_0, 1, f20_arg0:GetRandam_Int(30, 45), true, true, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function DarknessBigBrother_Act22(f21_arg0, f21_arg1, f21_arg2)
    f21_arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, TARGET_ENE_0, 6, TARGET_SELF, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function DarknessBigBrother_Act23(f22_arg0, f22_arg1, f22_arg2)
    f22_arg1:AddSubGoal(GOAL_COMMON_Wait, 0.5, TARGET_NONE, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function DarknessBigBrother_Act24(f23_arg0, f23_arg1, f23_arg2)
    f23_arg0:SetNumber(1, 99)
    f23_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3015, TARGET_ENE_0, 999, 0, 0, 0, 0)
    f23_arg1:AddSubGoal(GOAL_DarknessBigBrother_WarpAttack1, 10)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Update = function (f24_arg0, f24_arg1, f24_arg2)
    return Update_Default_NoSubGoal(f24_arg0, f24_arg1, f24_arg2)
    
end

Goal.Terminate = function (f25_arg0, f25_arg1, f25_arg2)
    
end

Goal.Interrupt = function (f26_arg0, f26_arg1, f26_arg2)
    local f26_local0 = f26_arg1:GetRandam_Int(1, 100)
    local f26_local1 = f26_arg1:GetDist(TARGET_ENE_0)
    if f26_arg1:IsLadderAct(TARGET_SELF) then
        return false
    end
    f26_arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    if f26_arg1:GetSpecialEffectActivateInterruptType(0) == 5025 and f26_local1 <= 4 and f26_local0 <= 80 then
        if f26_arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
            local f26_local2 = 3021
            local f26_local3 = 0
            f26_arg2:ClearSubGoal()
            f26_arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f26_local2, TARGET_ENE_0, 999, 0)
        else
            local f26_local2 = 3020
            local f26_local3 = 0
            f26_arg2:ClearSubGoal()
            f26_arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f26_local2, TARGET_ENE_0, 999, 0)
        end
        return true
    end
    f26_arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    if f26_arg1:GetSpecialEffectActivateInterruptType(0) == 5026 and f26_arg1:IsInsideMsbRegion(TARGET_ENE_0, AI_DIR_TYPE_F, 0, 3412890) == true then
        local f26_local2 = 3025
        local f26_local3 = 0
        f26_arg1:SetNumber(1, 1)
        f26_arg2:ClearSubGoal()
        f26_arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, f26_local2, TARGET_ENE_0, 999, 0, 0)
        f26_arg2:AddSubGoal(GOAL_DarknessBigBrother_WarpAttack1, 10)
        return true
    end
    f26_arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    if f26_arg1:GetSpecialEffectActivateInterruptType(0) == 5027 then
        local f26_local2 = 3020
        local f26_local3 = 3024
        local f26_local4 = 0
        f26_arg1:SetNumber(1, 2)
        f26_arg2:ClearSubGoal()
        f26_arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, f26_local2, TARGET_ENE_0, 999, 0, 0)
        f26_arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, f26_local3, TARGET_ENE_0, 999, 0, 0)
        f26_arg2:AddSubGoal(GOAL_DarknessBigBrother_WarpAttack1, 10)
        return true
    end
    f26_arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    if f26_arg1:GetSpecialEffectActivateInterruptType(0) == 5028 then
        if f26_local0 <= 30 then
            f26_arg2:ClearSubGoal()
            DarknessBigBrother_Act08(f26_arg1, f26_arg2, paramTbl)
        else
            f26_arg2:ClearSubGoal()
            DarknessBigBrother_Act09(f26_arg1, f26_arg2, paramTbl)
        end
        return true
    end
    return false
    
end

RegisterTableGoal(GOAL_DarknessBigBrother_WarpAttack1, "DarknessBigBrother_WarpAttack1")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_DarknessBigBrother_WarpAttack1, true)

Goal.Activate = function (f27_arg0, f27_arg1, f27_arg2)
    local f27_local0 = 3016
    local f27_local1 = 0
    local f27_local2 = 1
    local f27_local3 = 0
    local f27_local4 = 0
    local f27_local5 = 0
    local f27_local6 = 0
    local f27_local7 = 0
    local f27_local8 = 0
    local f27_local9 = 0
    local f27_local10 = 0
    local f27_local11 = 0
    local f27_local12 = 0
    local f27_local13 = 0
    local f27_local14 = 0
    local f27_local15 = 0
    local f27_local16 = 0
    local f27_local17 = 0
    local f27_local18 = 0
    if f27_arg1:GetNumber(1) == 1 then
        f27_local0 = 3028
        f27_local1 = 3018
        f27_local2 = 50
        f27_local3 = 0
        f27_local4 = 0
        f27_local5 = 0
        f27_local6 = 50
        f27_local7 = 0
        f27_local8 = 0
        f27_local9 = 0
        f27_local10 = 9.5
        f27_local11 = 0
        f27_local12 = 0
        f27_local13 = 0
        f27_local14 = 8.1
        f27_local15 = 0
        f27_local16 = 0
        f27_local17 = 0
        f27_local18 = 0
    elseif f27_arg1:GetNumber(1) == 2 then
        f27_local0 = 3027
        f27_local1 = 0
        f27_local2 = 1
        f27_local3 = 33
        f27_local4 = 33
        f27_local5 = 33
        f27_local6 = 0
        f27_local7 = 0
        f27_local8 = 0
        f27_local9 = 0
        f27_local10 = 6.6
        f27_local11 = 3.6
        f27_local12 = 3.6
        f27_local13 = 3.6
        f27_local14 = 0
        f27_local15 = 0
        f27_local16 = 0
        f27_local17 = 0
        f27_local18 = 0
    elseif f27_arg1:GetNumber(1) == 3 then
        f27_local0 = 3029
        f27_local1 = 0
        f27_local2 = 1
        f27_local3 = 33
        f27_local4 = 33
        f27_local5 = 33
        f27_local6 = 0
        f27_local7 = 0
        f27_local8 = 0
        f27_local9 = 0
        f27_local10 = 6.6
        f27_local11 = 3.6
        f27_local12 = 3.6
        f27_local13 = 3.6
        f27_local14 = 0
        f27_local15 = 0
        f27_local16 = 0
        f27_local17 = 0
        f27_local18 = 1
    elseif f27_arg1:GetNumber(1) == 4 then
        f27_local0 = 3018
        f27_local1 = 3033
        f27_local2 = 10
        f27_local3 = 10
        f27_local4 = 10
        f27_local5 = 10
        f27_local6 = 10
        f27_local7 = 10
        f27_local8 = 10
        f27_local9 = 10
        f27_local10 = 3.6
        f27_local11 = 3.6
        f27_local12 = 3.6
        f27_local13 = 3.6
        f27_local14 = 3.6
        f27_local15 = 3.6
        f27_local16 = 3.6
        f27_local17 = 3.6
        f27_local18 = 1
    elseif f27_arg1:GetNumber(1) == 5 then
        f27_local0 = 3003
        f27_local1 = 3004
        f27_local2 = 10
        f27_local3 = 10
        f27_local4 = 15
        f27_local5 = 15
        f27_local6 = 10
        f27_local7 = 10
        f27_local8 = 15
        f27_local9 = 15
        f27_local10 = 3.6
        f27_local11 = 3.6
        f27_local12 = 3.6
        f27_local13 = 3.6
        f27_local14 = 3.6
        f27_local15 = 3.6
        f27_local16 = 3.6
        f27_local17 = 3.6
        f27_local18 = 1
    elseif f27_arg1:GetNumber(1) == 6 then
        f27_local0 = 3022
        f27_local1 = 0
        f27_local2 = 1
        f27_local3 = 33
        f27_local4 = 33
        f27_local5 = 33
        f27_local6 = 0
        f27_local7 = 0
        f27_local8 = 0
        f27_local9 = 0
        f27_local10 = 15
        f27_local11 = 15
        f27_local12 = 15
        f27_local13 = 15
        f27_local14 = 0
        f27_local15 = 0
        f27_local16 = 0
        f27_local17 = 0
        f27_local18 = 0
    elseif f27_arg1:GetNumber(1) == 7 then
        f27_local0 = 3036
        f27_local1 = 0
        f27_local2 = 85
        f27_local3 = 5
        f27_local4 = 5
        f27_local5 = 5
        f27_local6 = 0
        f27_local7 = 0
        f27_local8 = 0
        f27_local9 = 0
        f27_local10 = 15
        f27_local11 = 15
        f27_local12 = 15
        f27_local13 = 15
        f27_local14 = 0
        f27_local15 = 0
        f27_local16 = 0
        f27_local17 = 0
        f27_local18 = 0
    elseif f27_arg1:GetNumber(1) == 8 then
        f27_local0 = 3017
        f27_local1 = 0
        f27_local2 = 97
        f27_local3 = 1
        f27_local4 = 1
        f27_local5 = 1
        f27_local6 = 0
        f27_local7 = 0
        f27_local8 = 0
        f27_local9 = 0
        f27_local10 = 15
        f27_local11 = 15
        f27_local12 = 15
        f27_local13 = 15
        f27_local14 = 0
        f27_local15 = 0
        f27_local16 = 0
        f27_local17 = 0
        f27_local18 = 0
    else
        f27_local0 = 3016
        f27_local1 = 0
        f27_local2 = 25
        f27_local3 = 25
        f27_local4 = 25
        f27_local5 = 25
        f27_local6 = 0
        f27_local7 = 0
        f27_local8 = 0
        f27_local9 = 0
        f27_local10 = 0
        f27_local11 = 0
        f27_local12 = 0
        f27_local13 = 0
        f27_local14 = 0
        f27_local15 = 0
        f27_local16 = 0
        f27_local17 = 0
        f27_local18 = 0
    end
    local f27_local19 = 999
    local f27_local20 = 0
    local f27_local21 = 0
    local f27_local22 = f27_arg1:GetMapHitRadius(TARGET_SELF)
    local f27_local23 = f27_arg1:GetDist(TARGET_ENE_0)
    local f27_local24 = f27_arg1:GetRelativeAngleFromTarget(TARGET_ENE_0)
    local f27_local25 = 3016
    if f27_local18 ~= 0 then
        if math.abs(f27_local24) <= 45 then
            f27_local2 = 0
            f27_local6 = 0
        elseif f27_local24 > 45 and f27_local24 < 135 then
            f27_local5 = 0
            f27_local9 = 0
        elseif f27_local24 < -45 and f27_local24 > -135 then
            f27_local4 = 0
            f27_local8 = 0
        else
            f27_local3 = 0
            f27_local7 = 0
        end
    end
    if f27_arg1:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_F, f27_local10 + f27_local22, f27_local22, 0) <= f27_local10 then
        f27_local2 = 0
    end
    if f27_arg1:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_B, f27_local11 + f27_local22, f27_local22, 0) <= f27_local11 then
        f27_local3 = 0
    end
    if f27_arg1:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_L, f27_local12 + f27_local22, f27_local22, 0) <= f27_local12 then
        f27_local4 = 0
    end
    if f27_arg1:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_R, f27_local13 + f27_local22, f27_local22, 0) <= f27_local13 then
        f27_local5 = 0
    end
    if f27_arg1:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_F, f27_local14 + f27_local22, f27_local22, 0) <= f27_local14 then
        f27_local6 = 0
    end
    if f27_arg1:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_B, f27_local15 + f27_local22, f27_local22, 0) <= f27_local15 then
        f27_local7 = 0
    end
    if f27_arg1:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_L, f27_local16 + f27_local22, f27_local22, 0) <= f27_local16 then
        f27_local8 = 0
    end
    if f27_arg1:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_R, f27_local17 + f27_local22, f27_local22, 0) <= f27_local17 then
        f27_local7 = 0
    end
    local f27_local26 = nil
    if f27_arg1:IsInsideMsbRegion(TARGET_ENE_0, AI_DIR_TYPE_F, f27_local10, 3412835) == true then
        f27_local2 = 0
    end
    if f27_arg1:IsInsideMsbRegion(TARGET_ENE_0, AI_DIR_TYPE_B, f27_local11, 3412835) == true then
        f27_local3 = 0
    end
    if f27_arg1:IsInsideMsbRegion(TARGET_ENE_0, AI_DIR_TYPE_L, f27_local12, 3412835) == true then
        f27_local4 = 0
    end
    if f27_arg1:IsInsideMsbRegion(TARGET_ENE_0, AI_DIR_TYPE_R, f27_local13, 3412835) == true then
        f27_local5 = 0
    end
    if f27_arg1:IsInsideMsbRegion(TARGET_ENE_0, AI_DIR_TYPE_F, f27_local14, 3412835) == true then
        f27_local6 = 0
    end
    if f27_arg1:IsInsideMsbRegion(TARGET_ENE_0, AI_DIR_TYPE_B, f27_local15, 3412835) == true then
        f27_local7 = 0
    end
    if f27_arg1:IsInsideMsbRegion(TARGET_ENE_0, AI_DIR_TYPE_L, f27_local16, 3412835) == true then
        f27_local8 = 0
    end
    if f27_arg1:IsInsideMsbRegion(TARGET_ENE_0, AI_DIR_TYPE_R, f27_local17, 3412835) == true then
        f27_local7 = 0
    end
    for f27_local27 = 0, 18, 1 do
        if f27_arg1:IsInsideMsbRegion(TARGET_ENE_0, AI_DIR_TYPE_F, f27_local10, 3412870 + f27_local27) == true then
            f27_local2 = 0
        end
        if f27_arg1:IsInsideMsbRegion(TARGET_ENE_0, AI_DIR_TYPE_B, f27_local11, 3412870 + f27_local27) == true then
            f27_local3 = 0
        end
        if f27_arg1:IsInsideMsbRegion(TARGET_ENE_0, AI_DIR_TYPE_L, f27_local12, 3412870 + f27_local27) == true then
            f27_local4 = 0
        end
        if f27_arg1:IsInsideMsbRegion(TARGET_ENE_0, AI_DIR_TYPE_R, f27_local13, 3412870 + f27_local27) == true then
            f27_local5 = 0
        end
        if f27_arg1:IsInsideMsbRegion(TARGET_ENE_0, AI_DIR_TYPE_F, f27_local14, 3412870 + f27_local27) == true then
            f27_local6 = 0
        end
        if f27_arg1:IsInsideMsbRegion(TARGET_ENE_0, AI_DIR_TYPE_B, f27_local15, 3412870 + f27_local27) == true then
            f27_local7 = 0
        end
        if f27_arg1:IsInsideMsbRegion(TARGET_ENE_0, AI_DIR_TYPE_L, f27_local16, 3412870 + f27_local27) == true then
            f27_local8 = 0
        end
        if f27_arg1:IsInsideMsbRegion(TARGET_ENE_0, AI_DIR_TYPE_R, f27_local17, 3412870 + f27_local27) == true then
            f27_local9 = 0
        end
    end
    local f27_local27 = f27_arg1:GetRandam_Int(0, f27_local2 + f27_local3 + f27_local4 + f27_local5 + f27_local6 + f27_local7 + f27_local8 + f27_local9)
    local f27_local28 = AI_DIR_TYPE_F
    local f27_local29 = 0
    local f27_local30 = f27_local25
    local f27_local31 = TARGET_ENE_0
    if f27_local2 + f27_local3 + f27_local4 + f27_local5 + f27_local6 + f27_local7 + f27_local8 + f27_local9 == 0 then
        f27_local28 = AI_DIR_TYPE_F
        f27_local29 = 0
        f27_local30 = 3016
    elseif f27_local2 ~= 0 and f27_local27 <= f27_local2 then
        f27_local28 = AI_DIR_TYPE_F
        f27_local29 = f27_local10
        f27_local30 = f27_local0
        f27_local31 = TARGET_ENE_0
    elseif f27_local3 ~= 0 and f27_local27 <= f27_local2 + f27_local3 then
        f27_local28 = AI_DIR_TYPE_B
        f27_local29 = f27_local11
        f27_local30 = f27_local0
        f27_local31 = TARGET_ENE_0
    elseif f27_local4 ~= 0 and f27_local27 <= f27_local2 + f27_local3 + f27_local4 then
        f27_local28 = AI_DIR_TYPE_L
        f27_local29 = f27_local12
        f27_local30 = f27_local0
        f27_local31 = TARGET_ENE_0
    elseif f27_local5 ~= 0 and f27_local27 <= f27_local2 + f27_local3 + f27_local4 + f27_local5 then
        f27_local28 = AI_DIR_TYPE_R
        f27_local29 = f27_local13
        f27_local30 = f27_local0
        f27_local31 = TARGET_ENE_0
    elseif f27_local6 ~= 0 and f27_local27 <= f27_local2 + f27_local3 + f27_local4 + f27_local5 + f27_local6 then
        f27_local28 = AI_DIR_TYPE_F
        f27_local29 = f27_local14
        f27_local30 = f27_local1
        f27_local31 = TARGET_ENE_0
    elseif f27_local7 ~= 0 and f27_local27 <= f27_local2 + f27_local3 + f27_local4 + f27_local5 + f27_local6 + f27_local7 then
        f27_local28 = AI_DIR_TYPE_B
        f27_local29 = f27_local15
        f27_local30 = f27_local1
        f27_local31 = TARGET_ENE_0
    elseif f27_local8 ~= 0 and f27_local27 <= f27_local2 + f27_local3 + f27_local4 + f27_local5 + f27_local6 + f27_local7 + f27_local8 then
        f27_local28 = AI_DIR_TYPE_L
        f27_local29 = f27_local16
        f27_local30 = f27_local1
        f27_local31 = TARGET_ENE_0
    else
        f27_local28 = AI_DIR_TYPE_R
        f27_local29 = f27_local17
        f27_local30 = f27_local1
        f27_local31 = TARGET_ENE_0
    end
    f27_arg1:SetNumber(2, 1)
    if f27_arg1:IsInsideMsbRegion(TARGET_ENE_0, AI_DIR_TYPE_F, 0, 3412890) == false then
        f27_arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3004, TARGET_ENE_0, f27_local19, 0, 0)
    elseif f27_arg1:IsInsideMsbRegion(TARGET_SELF, AI_DIR_TYPE_F, 0, 3412860) == true then
        f27_arg1:SetEventMoveTarget(3412850)
        f27_arg2:AddSubGoal(GOAL_COMMON_ToTargetWarp, 10, POINT_EVENT, AI_DIR_TYPE_F, 0, TARGET_ENE_0, 5, -2)
        f27_arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3016, TARGET_ENE_0, f27_local19, 0, 0)
    elseif f27_arg1:IsInsideMsbRegion(TARGET_ENE_0, AI_DIR_TYPE_F, 0, 3412835) or f27_arg1:IsInsideMsbRegion(TARGET_ENE_0, AI_DIR_TYPE_F, 0, 3412860) then
        f27_arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3004, TARGET_ENE_0, f27_local19, 0, 0)
    else
        f27_arg2:AddSubGoal(GOAL_COMMON_ToTargetWarp, 10, TARGET_ENE_0, f27_local28, f27_local29, f27_local31, 5, -2)
        f27_arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, f27_local30, TARGET_ENE_0, f27_local19, 0, 0)
    end
    

end

Goal.Update = function (f28_arg0, f28_arg1, f28_arg2)
    return Update_Default_NoSubGoal(f28_arg0, f28_arg1, f28_arg2)
    
end

function DarknessBigBrother_ActAfter_AdjustSpace(f29_arg0, f29_arg1, f29_arg2)
    
end


