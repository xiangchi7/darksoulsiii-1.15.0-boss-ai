RegisterTableGoal(GOAL_DragonGuardianKnight_316000, "GOAL_DragonGuardianKnight_316000")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_DragonGuardianKnight_316000, true)

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
    local f2_local5 = f2_arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkattr_doAdmirer)
    local f2_local6 = f2_arg1:GetEventRequest()
    local f2_local7 = f2_arg1:GetHpRate(TARGET_SELF)
    if f2_arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 120) then
        if f2_local3 <= 4 then
            if f2_arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                f2_local0[4] = 60
                f2_local0[20] = 40
            else
                f2_local0[5] = 60
                f2_local0[20] = 40
            end
        else
            f2_local0[6] = 40
            f2_local0[20] = 60
        end
    elseif SpaceCheck(f2_arg1, f2_arg2, 0, 4) == false and f2_local3 > 4 then
        f2_local0[24] = 100
    elseif f2_local3 >= 8 then
        f2_local0[1] = 40
        f2_local0[2] = 0
        f2_local0[3] = 0
        f2_local0[6] = 30
        f2_local0[7] = 30
        f2_local0[8] = 0
        f2_local0[9] = 0
        f2_local0[10] = 0
        f2_local0[21] = 0
        f2_local0[22] = 0
        f2_local0[23] = 0
    elseif f2_local3 >= 1.5 then
        f2_local0[1] = 0
        f2_local0[2] = 50
        f2_local0[3] = 10
        f2_local0[6] = 0
        f2_local0[7] = 10
        f2_local0[8] = 5
        f2_local0[9] = 0
        f2_local0[10] = 0
        f2_local0[21] = 25
        f2_local0[22] = 0
        f2_local0[23] = 0
    else
        f2_local0[1] = 0
        f2_local0[2] = 10
        f2_local0[3] = 10
        f2_local0[6] = 0
        f2_local0[7] = 10
        f2_local0[8] = 10
        f2_local0[9] = 10
        f2_local0[10] = 10
        f2_local0[11] = 10
        f2_local0[21] = 20
        f2_local0[22] = 10
        f2_local0[23] = 10
    end
    f2_local0[1] = SetCoolTime(f2_arg1, f2_arg2, 3000, 6, f2_local0[1], 1)
    f2_local0[2] = SetCoolTime(f2_arg1, f2_arg2, 3001, 6, f2_local0[2], 1)
    f2_local0[2] = SetCoolTime(f2_arg1, f2_arg2, 3003, 6, f2_local0[2], 1)
    f2_local0[3] = SetCoolTime(f2_arg1, f2_arg2, 3004, 6, f2_local0[3], 1)
    f2_local0[4] = SetCoolTime(f2_arg1, f2_arg2, 3005, 6, f2_local0[4], 1)
    f2_local0[5] = SetCoolTime(f2_arg1, f2_arg2, 3006, 6, f2_local0[5], 1)
    f2_local0[6] = SetCoolTime(f2_arg1, f2_arg2, 3015, 6, f2_local0[6], 1)
    f2_local0[8] = SetCoolTime(f2_arg1, f2_arg2, 3019, 6, f2_local0[8], 1)
    f2_local0[9] = SetCoolTime(f2_arg1, f2_arg2, 3021, 6, f2_local0[9], 1)
    f2_local0[10] = SetCoolTime(f2_arg1, f2_arg2, 3023, 20, f2_local0[10], 1)
    f2_local0[11] = SetCoolTime(f2_arg1, f2_arg2, 3007, 20, f2_local0[11], 1)
    if f2_arg1:HasSpecialEffectId(TARGET_SELF, 11300) == false then
        f2_local0[7] = 0
    end
    f2_local1[1] = REGIST_FUNC(f2_arg1, f2_arg2, DragonGuardianKnight_316000_Act01)
    f2_local1[2] = REGIST_FUNC(f2_arg1, f2_arg2, DragonGuardianKnight_316000_Act02)
    f2_local1[3] = REGIST_FUNC(f2_arg1, f2_arg2, DragonGuardianKnight_316000_Act03)
    f2_local1[4] = REGIST_FUNC(f2_arg1, f2_arg2, DragonGuardianKnight_316000_Act04)
    f2_local1[5] = REGIST_FUNC(f2_arg1, f2_arg2, DragonGuardianKnight_316000_Act05)
    f2_local1[6] = REGIST_FUNC(f2_arg1, f2_arg2, DragonGuardianKnight_316000_Act06)
    f2_local1[7] = REGIST_FUNC(f2_arg1, f2_arg2, DragonGuardianKnight_316000_Act07)
    f2_local1[8] = REGIST_FUNC(f2_arg1, f2_arg2, DragonGuardianKnight_316000_Act08)
    f2_local1[9] = REGIST_FUNC(f2_arg1, f2_arg2, DragonGuardianKnight_316000_Act09)
    f2_local1[10] = REGIST_FUNC(f2_arg1, f2_arg2, DragonGuardianKnight_316000_Act10)
    f2_local1[11] = REGIST_FUNC(f2_arg1, f2_arg2, DragonGuardianKnight_316000_Act11)
    f2_local1[20] = REGIST_FUNC(f2_arg1, f2_arg2, DragonGuardianKnight_316000_Act20)
    f2_local1[21] = REGIST_FUNC(f2_arg1, f2_arg2, DragonGuardianKnight_316000_Act21)
    f2_local1[22] = REGIST_FUNC(f2_arg1, f2_arg2, DragonGuardianKnight_316000_Act22)
    f2_local1[23] = REGIST_FUNC(f2_arg1, f2_arg2, DragonGuardianKnight_316000_Act23)
    f2_local1[24] = REGIST_FUNC(f2_arg1, f2_arg2, DragonGuardianKnight_316000_Act24)
    f2_local1[25] = REGIST_FUNC(f2_arg1, f2_arg2, DragonGuardianKnight_316000_Act25)
    local f2_local8 = REGIST_FUNC(f2_arg1, f2_arg2, DragonGuardianKnight_ActAfter_AdjustSpace)
    Common_Battle_Activate(f2_arg1, f2_arg2, f2_local0, f2_local1, f2_local8, f2_local2)
    
end

function DragonGuardianKnight_316000_Act01(f3_arg0, f3_arg1, f3_arg2)
    local f3_local0 = 12.68
    local f3_local1 = 12.68 + 2
    local f3_local2 = 12.68 + 2
    local f3_local3 = 0
    local f3_local4 = 100
    local f3_local5 = 2
    local f3_local6 = 2
    Approach_Act_Flex(f3_arg0, f3_arg1, f3_local0, f3_local1, f3_local2, f3_local3, f3_local4, f3_local5, f3_local6)
    local f3_local7 = 3000
    local f3_local8 = 3017
    local f3_local9 = 3025
    local f3_local10 = 3020
    local f3_local11 = 2.24
    local f3_local12 = ATT3025_DIST_MAX
    local f3_local13 = 999
    local f3_local14 = 0
    local f3_local15 = 0
    local f3_local16 = f3_arg0:GetRandam_Int(1, 100)
    f3_arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    if f3_local16 < 40 then
        f3_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f3_local7, TARGET_ENE_0, f3_local13, f3_local14, f3_local15, 0, 0)
    elseif f3_local16 <= 70 then
        f3_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f3_local7, TARGET_ENE_0, f3_local11, f3_local14, f3_local15, 0, 0)
        f3_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f3_local8, TARGET_ENE_0, f3_local13, 0, 0)
    elseif f3_arg0:HasSpecialEffectId(TARGET_SELF, 11300) == true then
        f3_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f3_local7, TARGET_ENE_0, f3_local11, f3_local14, f3_local15, 0, 0)
        f3_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f3_local8, TARGET_ENE_0, 10, 0, 0)
        f3_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, f3_local9, TARGET_ENE_0, 999, 0, 0)
    else
        f3_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f3_local7, TARGET_ENE_0, f3_local11, f3_local14, f3_local15, 0, 0)
        f3_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f3_local8, TARGET_ENE_0, 2.12, 0, 0)
        f3_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f3_local10, TARGET_ENE_0, 999, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function DragonGuardianKnight_316000_Act02(f4_arg0, f4_arg1, f4_arg2)
    local f4_local0 = 4.54
    local f4_local1 = 4.54 + 2
    local f4_local2 = 4.54 + 2
    local f4_local3 = 0
    local f4_local4 = 0
    local f4_local5 = 2
    local f4_local6 = 2
    local f4_local7 = f4_arg0:GetDist(TARGET_ENE_0)
    local f4_local8 = f4_arg0:GetRandam_Int(1, 100)
    local f4_local9 = 3001
    local f4_local10 = 3003
    local f4_local11 = 3002
    local f4_local12 = 3017
    local f4_local13 = 3018
    local f4_local14 = 3019
    local f4_local15 = 3020
    local f4_local16 = 0
    local f4_local17 = 0
    f4_arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    if f4_local7 <= 2.9 then
        if f4_local8 <= 70 then
            f4_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f4_local9, TARGET_ENE_0, 7, 0, 0, 0, 0)
            f4_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f4_local11, TARGET_ENE_0, 999, 0, 0)
        elseif f4_local8 <= 80 then
            f4_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f4_local9, TARGET_ENE_0, 4, 0, 0, 0, 0)
            f4_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f4_local12, TARGET_ENE_0, 999, 0, 0)
        elseif f4_local8 <= 85 then
            f4_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f4_local10, TARGET_ENE_0, 4, 0, 0, 0, 0)
            f4_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, f4_local12, TARGET_ENE_0, 5, 0, 0)
            f4_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f4_local13, TARGET_ENE_0, 999, 0, 0)
        elseif f4_local8 <= 90 then
            f4_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f4_local10, TARGET_ENE_0, 4, 0, 0, 0, 0)
            f4_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, f4_local12, TARGET_ENE_0, 5, 0, 0)
            f4_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, f4_local13, TARGET_ENE_0, 5, 0, 0)
            f4_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f4_local14, TARGET_ENE_0, 999, 0, 0)
        else
            f4_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f4_local10, TARGET_ENE_0, 4, 0, 0, 0, 0)
            f4_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, f4_local12, TARGET_ENE_0, 5, 0, 0)
            f4_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, f4_local13, TARGET_ENE_0, 5, 0, 0)
            f4_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, f4_local14, TARGET_ENE_0, 5, 0, 0)
            f4_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f4_local15, TARGET_ENE_0, 999, 0, 0)
        end
    elseif f4_local8 <= 80 then
        Approach_Act_Flex(f4_arg0, f4_arg1, f4_local0, f4_local1, f4_local2, f4_local3, f4_local4, f4_local5, f4_local6)
        f4_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f4_local10, TARGET_ENE_0, 7, 0, 0, 0, 0)
        f4_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f4_local11, TARGET_ENE_0, 999, 0, 0)
    elseif f4_local8 <= 90 then
        Approach_Act_Flex(f4_arg0, f4_arg1, f4_local0, f4_local1, f4_local2, f4_local3, f4_local4, f4_local5, f4_local6)
        f4_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f4_local10, TARGET_ENE_0, 4, 0, 0, 0, 0)
        f4_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f4_local12, TARGET_ENE_0, 999, 0, 0)
    else
        Approach_Act_Flex(f4_arg0, f4_arg1, f4_local0, f4_local1, f4_local2, f4_local3, f4_local4, f4_local5, f4_local6)
        f4_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f4_local10, TARGET_ENE_0, 4, 0, 0, 0, 0)
        f4_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, f4_local12, TARGET_ENE_0, 5, 0, 0)
        f4_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f4_local13, TARGET_ENE_0, 999, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function DragonGuardianKnight_316000_Act03(f5_arg0, f5_arg1, f5_arg2)
    local f5_local0 = 2.95
    local f5_local1 = 2.95 + 2
    local f5_local2 = 2.95 + 2
    local f5_local3 = 0
    local f5_local4 = 100
    local f5_local5 = 2
    local f5_local6 = 2
    local f5_local7 = f5_arg0:GetDist(TARGET_ENE_0)
    Approach_Act_Flex(f5_arg0, f5_arg1, f5_local0, f5_local1, f5_local2, f5_local3, f5_local4, f5_local5, f5_local6)
    local f5_local8 = 3004
    local f5_local9 = 3018
    local f5_local10 = 4.42
    local f5_local11 = 5 - f5_arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local12 = 0
    local f5_local13 = 0
    local f5_local14 = f5_arg0:GetDist(TARGET_ENE_0)
    local f5_local15 = f5_arg0:GetRandam_Int(1, 100)
    if f5_local15 < 70 then
        f5_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f5_local8, TARGET_ENE_0, 999, f5_local12, f5_local13, 0, 0)
    else
        f5_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f5_local8, TARGET_ENE_0, f5_local10, f5_local12, f5_local13, 0, 0)
        f5_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f5_local9, TARGET_ENE_0, f5_local11, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function DragonGuardianKnight_316000_Act04(f6_arg0, f6_arg1, f6_arg2)
    local f6_local0 = 3005
    local f6_local1 = 5 - f6_arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local2 = 0
    local f6_local3 = 0
    f6_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f6_local0, TARGET_ENE_0, f6_local1, f6_local2, f6_local3, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function DragonGuardianKnight_316000_Act05(f7_arg0, f7_arg1, f7_arg2)
    local f7_local0 = 3006
    local f7_local1 = 5 - f7_arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local2 = 0
    local f7_local3 = 0
    f7_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f7_local0, TARGET_ENE_0, f7_local1, f7_local2, f7_local3, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function DragonGuardianKnight_316000_Act06(f8_arg0, f8_arg1, f8_arg2)
    local f8_local0 = 12.18
    local f8_local1 = 12.18 + 2
    local f8_local2 = 12.18 + 2
    local f8_local3 = 0
    local f8_local4 = 0
    local f8_local5 = 2
    local f8_local6 = 2
    local f8_local7 = f8_arg0:GetDist(TARGET_ENE_0)
    Approach_Act_Flex(f8_arg0, f8_arg1, f8_local0, f8_local1, f8_local2, f8_local3, f8_local4, f8_local5, f8_local6)
    local f8_local8 = 3015
    local f8_local9 = 5 - f8_arg0:GetMapHitRadius(TARGET_SELF)
    local f8_local10 = 0
    local f8_local11 = 0
    f8_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f8_local8, TARGET_ENE_0, f8_local9, f8_local10, f8_local11, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function DragonGuardianKnight_316000_Act07(f9_arg0, f9_arg1, f9_arg2)
    f9_arg0:SetTimer(1, 20)
    local f9_local0 = f9_arg0:GetDist(TARGET_ENE_0)
    local f9_local1 = f9_arg0:GetRandam_Int(1, 100)
    local f9_local2 = 999
    local f9_local3 = 0
    local f9_local4 = 0
    local f9_local5 = {}
    local f9_local6 = 0
    local f9_local7 = 0
    local f9_local8 = 0
    if f9_local0 >= 15 then
        f9_local5[1] = 0
        f9_local5[2] = 100
        f9_local5[3] = 0
        f9_local5[4] = 0
    elseif f9_local0 >= 7.5 then
        f9_local5[1] = 20
        f9_local5[2] = 80
        f9_local5[3] = 0
        f9_local5[4] = 0
    elseif f9_local0 >= 5 then
        f9_local5[1] = 20
        f9_local5[2] = 60
        f9_local5[3] = 20
        f9_local5[4] = 0
    elseif f9_local0 >= 2.5 then
        f9_local5[1] = 60
        f9_local5[2] = 0
        f9_local5[3] = 40
        f9_local5[4] = 0
    else
        f9_local5[1] = 60
        f9_local5[2] = 0
        f9_local5[3] = 0
        f9_local5[4] = 40
    end
    f9_local5[1] = 0
    f9_local5[2] = 100
    f9_local5[3] = 0
    f9_local5[4] = 0
    for f9_local9 = 1, 4, 1 do
        f9_local6 = f9_local6 + f9_local5[f9_local9]
    end
    local f9_local9 = f9_arg0:GetRandam_Int(0, f9_local6)
    if f9_local6 == 0 then
    else
        for f9_local10 = 1, 4, 1 do
            f9_local7 = f9_local7 + f9_local5[f9_local10]
            if f9_local9 <= f9_local7 then
                if f9_local10 == 1 then
                    break
                end
                if f9_local10 == 2 then
                    f9_arg1:AddSubGoal(GOAL_COMMON_ApproachTarget_AlwaysGuard, 1.8, TARGET_ENE_0, 0, TARGET_SELF, true, 9920):SetLifeEndSuccess(true)
                    break
                end
                if f9_local10 == 3 then
                    f9_arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 1.8, TARGET_ENE_0, f9_arg0:GetRandam_Int(0, 1), 60, true, true, 9920):SetLifeEndSuccess(true)
                    break
                end
                f9_arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 1.8, TARGET_ENE_0, 999, TARGET_ENE_0, true, 9920):SetLifeEndSuccess(true)
                break
            end
        end
    end
    f9_arg1:AddSubGoal(GOAL_DragonGuardianKnight_AttackStance, 10)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    

end

function DragonGuardianKnight_316000_Act08(f10_arg0, f10_arg1, f10_arg2)
    local f10_local0 = 2.65
    local f10_local1 = 2.65 + 2
    local f10_local2 = 2.65 + 2
    local f10_local3 = 0
    local f10_local4 = 100
    local f10_local5 = 2
    local f10_local6 = 2
    Approach_Act_Flex(f10_arg0, f10_arg1, f10_local0, f10_local1, f10_local2, f10_local3, f10_local4, f10_local5, f10_local6)
    local f10_local7 = 3019
    local f10_local8 = 3020
    local f10_local9 = 3025
    local f10_local10 = 3017
    local f10_local11 = 2.12
    local f10_local12 = 2.24
    local f10_local13 = 999
    local f10_local14 = 0
    local f10_local15 = 0
    local f10_local16 = f10_arg0:GetRandam_Int(1, 100)
    f10_arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    if f10_arg0:HasSpecialEffectId(TARGET_SELF, 11300) == false then
        if f10_local16 <= 50 then
            f10_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f10_local7, TARGET_ENE_0, f10_local11, f10_local14, f10_local15, 0, 0)
            f10_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f10_local8, TARGET_ENE_0, 999, 0, 0)
        else
            f10_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f10_local7, TARGET_ENE_0, f10_local11, f10_local14, f10_local15, 0, 0)
            f10_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f10_local8, TARGET_ENE_0, f10_local12, 0, 0)
            f10_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f10_local10, TARGET_ENE_0, 999, 0, 0)
        end
    elseif f10_local16 <= 40 then
        f10_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f10_local7, TARGET_ENE_0, f10_local11, f10_local14, f10_local15, 0, 0)
        f10_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f10_local8, TARGET_ENE_0, 999, 0, 0)
    else
        f10_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f10_local7, TARGET_ENE_0, f10_local11, f10_local14, f10_local15, 0, 0)
        f10_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, f10_local9, TARGET_ENE_0, 999, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function DragonGuardianKnight_316000_Act09(f11_arg0, f11_arg1, f11_arg2)
    local f11_local0 = 3021
    local f11_local1 = 5 - f11_arg0:GetMapHitRadius(TARGET_SELF)
    local f11_local2 = 0
    local f11_local3 = 0
    f11_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f11_local0, TARGET_ENE_0, f11_local1, f11_local2, f11_local3, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function DragonGuardianKnight_316000_Act10(f12_arg0, f12_arg1, f12_arg2)
    local f12_local0 = 5.87
    local f12_local1 = 5.87 + 2
    local f12_local2 = 5.87 + 2
    local f12_local3 = 0
    local f12_local4 = 0
    local f12_local5 = 2
    local f12_local6 = 2
    Approach_Act_Flex(f12_arg0, f12_arg1, f12_local0, f12_local1, f12_local2, f12_local3, f12_local4, f12_local5, f12_local6)
    local f12_local7 = 3023
    local f12_local8 = 5 - f12_arg0:GetMapHitRadius(TARGET_SELF)
    local f12_local9 = 0
    local f12_local10 = 0
    f12_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f12_local7, TARGET_ENE_0, f12_local8, f12_local9, f12_local10, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function DragonGuardianKnight_316000_Act11(f13_arg0, f13_arg1, f13_arg2)
    local f13_local0 = 3007
    local f13_local1 = 5 - f13_arg0:GetMapHitRadius(TARGET_SELF)
    local f13_local2 = 0
    local f13_local3 = 0
    f13_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f13_local0, TARGET_ENE_0, f13_local1, f13_local2, f13_local3, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function DragonGuardianKnight_316000_Act20(f14_arg0, f14_arg1, f14_arg2)
    f14_arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 90)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function DragonGuardianKnight_316000_Act21(f15_arg0, f15_arg1, f15_arg2)
    local f15_local0 = f15_arg0:GetDist(TARGET_ENE_0)
    if f15_arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
        f15_arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 2.4, TARGET_ENE_0, 0, 60, true, true, 9910)
    else
        f15_arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 2.4, TARGET_ENE_0, 1, 60, true, true, 9910)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function DragonGuardianKnight_316000_Act22(f16_arg0, f16_arg1, f16_arg2)
    f16_arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6001, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function DragonGuardianKnight_316000_Act23(f17_arg0, f17_arg1, f17_arg2)
    local f17_local0 = f17_arg0:GetRandam_Int(1, 100)
    f17_arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 1.8, TARGET_ENE_0, 5.5, TARGET_ENE_0, true, 9910)
    if f17_local0 < 40 and f17_arg0:IsFinishTimer(1) == true and f17_arg0:HasSpecialEffectId(TARGET_SELF, 11300) == true then
        DragonGuardianKnight_316000_Act07(f17_arg0, f17_arg1, f17_arg2)
    elseif f17_local0 < 60 then
        local f17_local1 = 3015
        local f17_local2 = 5 - f17_arg0:GetMapHitRadius(TARGET_SELF)
        local f17_local3 = 0
        local f17_local4 = 0
        f17_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f17_local1, TARGET_ENE_0, f17_local2, f17_local3, f17_local4, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function DragonGuardianKnight_316000_Act24(f18_arg0, f18_arg1, f18_arg2)
    f18_arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, TARGET_ENE_0, 3, TARGET_SELF, false, 9910)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function DragonGuardianKnight_316000_Act25(f19_arg0, f19_arg1, f19_arg2)
    f19_arg1:AddSubGoal(GOAL_COMMON_Wait, 0.5, TARGET_NONE, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Update = function (f20_arg0, f20_arg1, f20_arg2)
    return Update_Default_NoSubGoal(f20_arg0, f20_arg1, f20_arg2)
    
end

Goal.Terminate = function (f21_arg0, f21_arg1, f21_arg2)
    
end

Goal.Interrupt = function (f22_arg0, f22_arg1, f22_arg2)
    local f22_local0 = f22_arg1:GetDist(TARGET_ENE_0)
    local f22_local1 = f22_arg1:GetRandam_Int(1, 100)
    local f22_local2 = f22_arg1:GetHpRate(TARGET_SELF)
    if f22_arg1:IsInterupt(INTERUPT_SuccessGuard) then
        if f22_local0 < 4 and f22_local1 <= 50 and f22_arg1:HasSpecialEffectId(TARGET_SELF, 11300) == false then
            f22_arg2:ClearSubGoal()
            local f22_local3 = 3022
            local f22_local4 = 5 - f22_arg1:GetMapHitRadius(TARGET_SELF)
            local f22_local5 = 0
            local f22_local6 = 0
            f22_arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f22_local3, TARGET_ENE_0, f22_local4, f22_local5, f22_local6, 0, 0)
            return true
        elseif f22_local1 <= 50 and f22_arg1:HasSpecialEffectId(TARGET_SELF, 11300) == true then
            local f22_local3 = 3026
            local f22_local4 = 5 - f22_arg1:GetMapHitRadius(TARGET_SELF)
            local f22_local5 = 0
            local f22_local6 = 0
            f22_arg2:ClearSubGoal()
            f22_arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, f22_local3, TARGET_ENE_0, 999, f22_local5, f22_local6, 0, 0)
            return true
        else
            f22_arg2:ClearSubGoal()
            f22_arg2:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, TARGET_ENE_0, 5, TARGET_SELF, false, 9910)
            return true
        end
    end
    if f22_arg1:GetSpecialEffectActivateInterruptType(0) == 5025 then
        if f22_local0 <= 4 and f22_local1 <= 20 then
            f22_arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3023, TARGET_ENE_0, 999, 0, 0, 0, 0)
        elseif f22_local0 <= 4 and f22_local1 <= 40 then
            f22_arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3023, TARGET_ENE_0, 5, 0, 0, 0, 0)
            f22_arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3017, TARGET_ENE_0, 999, 0, 0, 0, 0)
        elseif f22_local0 >= 4 then
            f22_arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3016, TARGET_ENE_0, 999, 0, 0, 0, 0)
        end
        return true
    end
    f22_arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    if f22_arg1:GetSpecialEffectActivateInterruptType(0) == 5026 and f22_arg1:HasSpecialEffectAttribute(TARGET_ENE_0, SP_EFFECT_TYPE_TARGET_DOWN) == false and f22_local1 <= 60 then
        if f22_local0 <= 4 or f22_arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 180) then
            f22_arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3023, TARGET_ENE_0, 999, 0, 0, 0, 0)
        else
            f22_arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3016, TARGET_ENE_0, 999, 0, 0, 0, 0)
        end
        return true
    end
    f22_arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    if f22_arg1:GetSpecialEffectActivateInterruptType(0) == 5030 then
        if f22_local0 <= 4 and f22_arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 60) then
            if f22_local1 <= 50 then
                f22_arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3011, TARGET_ENE_0, 999, 0, 0, 0, 0)
            else
                f22_arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3012, TARGET_ENE_0, 999, 0, 0, 0, 0)
            end
        elseif f22_local1 <= 50 then
            f22_arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3013, TARGET_ENE_0, 999, 0, 0, 0, 0)
        else
            f22_arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3010, TARGET_ENE_0, 999, 0, 0, 0, 0)
        end
        return true
    end
    f22_arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    if f22_arg1:GetSpecialEffectActivateInterruptType(0) == 5031 then
        f22_arg2:ClearSubGoal()
        DragonGuardianKnight_316000_Act07(f22_arg1, f22_arg2, paramTbl)
        return true
    end
    return false
    
end

function DragonGuardianKnight_ActAfter_AdjustSpace(f23_arg0, f23_arg1, f23_arg2)
    
end

RegisterTableGoal(GOAL_DragonGuardianKnight_AttackStance, "DragonGuardianKnight_AttackStance")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_DragonGuardianKnight_AttackStance, true)

Goal.Activate = function (f24_arg0, f24_arg1, f24_arg2)
    local f24_local0 = 3
    local f24_local1 = 999
    local f24_local2 = 0
    local f24_local3 = 0
    local f24_local4 = f24_arg1:GetDist(TARGET_ENE_0)
    local f24_local5 = {}
    local f24_local6 = 0
    local f24_local7 = 0
    local f24_local8 = 0
    if f24_local4 >= 15 then
        f24_local5[1] = 0
        f24_local5[2] = 0
        f24_local5[3] = 100
        f24_local5[4] = 0
    elseif f24_local4 >= 8 then
        f24_local5[1] = 80
        f24_local5[2] = 0
        f24_local5[3] = 20
        f24_local5[4] = 0
    elseif f24_local4 >= 5 then
        f24_local5[1] = 0
        f24_local5[2] = 50
        f24_local5[3] = 20
        f24_local5[4] = 30
    elseif f24_arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 45) then
        f24_local5[1] = 0
        f24_local5[2] = 60
        f24_local5[3] = 40
        f24_local5[4] = 0
    else
        f24_local5[1] = 0
        f24_local5[2] = 100
        f24_local5[3] = 0
        f24_local5[4] = 0
    end
    for f24_local9 = 1, 4, 1 do
        f24_local6 = f24_local6 + f24_local5[f24_local9]
    end
    local f24_local9 = f24_arg1:GetRandam_Int(0, f24_local6)
    for f24_local10 = 1, 4, 1 do
        f24_local7 = f24_local7 + f24_local5[f24_local10]
        if f24_local9 <= f24_local7 then
            f24_arg1:SetNumber(0, f24_local10)
            if f24_local10 == 1 then
                f24_arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3200, TARGET_ENE_0, 999, f24_local2, f24_local3, 0, 0)
                break
            end
            if f24_local10 == 2 then
                f24_arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3201, TARGET_ENE_0, 999, f24_local2, f24_local3, 0, 0)
                break
            end
            if f24_local10 == 3 then
                f24_arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3202, TARGET_ENE_0, 999, f24_local2, f24_local3, 0, 0)
                break
            end
            f24_arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3203, TARGET_ENE_0, 999, f24_local2, f24_local3, 0, 0)
            break
        end
    end
    


end

Goal.Update = function (f25_arg0, f25_arg1, f25_arg2)
    return Update_Default_NoSubGoal(f25_arg0, f25_arg1, f25_arg2)
    
end


