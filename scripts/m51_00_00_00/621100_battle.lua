RegisterTableGoal(GOAL_DarknessDragon621100_Battle, "GOAL_DarknessDragon621100_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_DarknessDragon621100_Battle, true)

Goal.Initialize = function (f1_arg0, f1_arg1, f1_arg2, f1_arg3)
    f1_arg1:SetStringIndexedNumber("isAfterHeatUp", false)
    
end

Goal.Activate = function (f2_arg0, f2_arg1, f2_arg2)
    Init_Pseudo_Global(f2_arg1, f2_arg2)
    f2_arg1:SetStringIndexedNumber("Dist_SideStep", 5)
    f2_arg1:SetStringIndexedNumber("Dist_BackStep", 5)
    f2_arg1:SetStringIndexedNumber("AddDistRun", 0.2)
    local f2_local0 = {}
    local f2_local1 = {}
    local f2_local2 = {}
    Common_Clear_Param(f2_local0, f2_local1, f2_local2)
    local f2_local3 = f2_arg1:GetDist(TARGET_ENE_0)
    local f2_local4 = f2_arg1:GetDistYSigned(TARGET_ENE_0)
    local f2_local5 = f2_arg1:GetRandam_Int(1, 100)
    local f2_local6 = f2_arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkattr_doAdmirer)
    local f2_local7 = f2_arg1:GetEventRequest()
    local f2_local8 = f2_arg1:GetHpRate(TARGET_SELF)
    f2_arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    f2_arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    f2_arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    f2_arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    f2_arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    local f2_local9 = f2_arg1:IsInsideTargetRegion(TARGET_SELF, 5102880)
    if f2_arg1:HasSpecialEffectId(TARGET_SELF, 16582) then
        f2_local0[25] = 8
    elseif f2_local8 < 0.5 and not f2_arg1:HasSpecialEffectId(TARGET_SELF, 16581) then
        f2_arg2:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 20, 3014, TARGET_ENE_0, 999, 0, 0, 0, 0)
        return true
    elseif f2_arg1:HasSpecialEffectId(TARGET_ENE_0, 16575) then
        if f2_arg1:HasSpecialEffectId(TARGET_SELF, 16581) then
            f2_local0[5] = 4
            f2_local0[16] = 2
        else
            f2_local0[16] = 3
        end
        f2_local0[24] = 2
        f2_local0[7] = 1
        if f2_local9 then
            f2_local0[19] = 1
            f2_local0[11] = 1
        end
    elseif f2_arg1:HasSpecialEffectId(TARGET_ENE_0, 16573) then
        f2_local0[17] = 10
        f2_local0[23] = 5
        f2_local0[16] = 3
        if f2_arg1:HasSpecialEffectId(TARGET_SELF, 16581) then
            f2_local0[5] = 3
        end
        if f2_local9 then
            f2_local0[19] = 1
            f2_local0[11] = 1
        end
    elseif f2_arg1:HasSpecialEffectId(TARGET_ENE_0, 16574) then
        f2_local0[18] = 10
        f2_local0[23] = 5
        f2_local0[16] = 3
        if f2_arg1:HasSpecialEffectId(TARGET_SELF, 16581) then
            f2_local0[5] = 3
        end
        if f2_local9 then
            f2_local0[19] = 1
            f2_local0[11] = 1
        end
    elseif f2_arg1:HasSpecialEffectId(TARGET_ENE_0, 16576) or InsideRange(f2_arg1, f2_arg2, 180, 140, -999, -4) then
        if f2_arg1:HasSpecialEffectId(TARGET_SELF, 16581) then
            f2_local0[5] = 4
            f2_local0[16] = 2
        else
            f2_local0[16] = 3
        end
        f2_local0[23] = 5
        if f2_local9 then
            f2_local0[19] = 1
            f2_local0[11] = 1
        end
    elseif f2_arg1:HasSpecialEffectId(TARGET_ENE_0, 16571) or InsideRange(f2_arg1, f2_arg2, 45, 90, -999, -4) then
        f2_local0[14] = 6
        if f2_arg1:HasSpecialEffectId(TARGET_SELF, 16581) then
            f2_local0[5] = 4
            f2_local0[16] = 2
        else
            f2_local0[16] = 2
        end
        f2_local0[24] = 2
        if f2_local9 then
            f2_local0[19] = 1
            f2_local0[11] = 2
        end
    elseif f2_arg1:HasSpecialEffectId(TARGET_ENE_0, 16572) or InsideRange(f2_arg1, f2_arg2, -45, 90, -999, -4) then
        f2_local0[15] = 6
        if f2_arg1:HasSpecialEffectId(TARGET_SELF, 16581) then
            f2_local0[5] = 4
            f2_local0[16] = 2
        else
            f2_local0[16] = 2
        end
        f2_local0[24] = 2
        if f2_local9 then
            f2_local0[19] = 1
            f2_local0[11] = 2
        end
    elseif InsideRange(f2_arg1, f2_arg2, 180, 90, -999, 999) then
        f2_local0[20] = 10
    elseif InsideRange(f2_arg1, f2_arg2, 90, 90, -999, 999) then
        f2_local0[20] = 10
    elseif InsideRange(f2_arg1, f2_arg2, -90, 90, -999, 999) then
        f2_local0[20] = 10
    elseif f2_local3 > 17 then
        f2_local0[24] = 4
        f2_local0[2] = 4
        if f2_arg1:HasSpecialEffectId(TARGET_SELF, 16581) then
            f2_local0[1] = 6
            f2_local0[7] = 1
            f2_local0[22] = 10
        else
            f2_local0[3] = 7
            f2_local0[7] = 3
        end
        if f2_local9 then
            f2_local0[19] = 1
        end
    elseif f2_local3 > 8.5 then
        if f2_arg1:HasSpecialEffectId(TARGET_SELF, 16581) then
            f2_local0[6] = 5
            f2_local0[24] = 3
            f2_local0[7] = 1
        else
            f2_local0[7] = 6
            f2_local0[3] = 5
            f2_local0[6] = 4
            f2_local0[24] = 2
        end
        if f2_local9 then
            f2_local0[11] = 1
            f2_local0[19] = 1
        end
    elseif f2_local3 >= 0 or f2_local3 >= -3 then
        f2_local0[4] = 8
        f2_local0[9] = 6
        f2_local0[8] = 8
        f2_local0[12] = 10
        f2_local0[13] = 10
        if f2_local9 then
            f2_local0[19] = 3
            f2_local0[11] = 2
        end
        if f2_arg1:HasSpecialEffectId(TARGET_SELF, 16581) then
            f2_local0[24] = 10
            f2_local0[5] = 5
        else
            f2_local0[24] = 5
        end
    else
        f2_local0[24] = 3
        f2_local0[16] = 3
        if f2_arg1:HasSpecialEffectId(TARGET_SELF, 16581) then
            f2_local0[5] = 4
        end
        if f2_local9 then
            f2_local0[19] = 2
            f2_local0[11] = 1
        end
    end
    f2_local0[1] = SetCoolTime(f2_arg1, f2_arg2, 3011, 15, f2_local0[1], 0)
    f2_local0[2] = SetCoolTime(f2_arg1, f2_arg2, 3010, 15, f2_local0[2], 0)
    f2_local0[3] = SetCoolTime(f2_arg1, f2_arg2, 3012, 20, f2_local0[3], 0)
    f2_local0[4] = SetCoolTime(f2_arg1, f2_arg2, 3000, 30, f2_local0[4], 0)
    f2_local0[5] = SetCoolTime(f2_arg1, f2_arg2, 3014, 50, f2_local0[5], 0)
    f2_local0[6] = SetCoolTime(f2_arg1, f2_arg2, 3008, 10, f2_local0[6], 0)
    f2_local0[8] = SetCoolTime(f2_arg1, f2_arg2, 3029, 30, f2_local0[8], 0)
    f2_local0[9] = SetCoolTime(f2_arg1, f2_arg2, 3023, 40, f2_local0[9], 0)
    f2_local0[12] = SetCoolTime(f2_arg1, f2_arg2, 3027, 30, f2_local0[12], 0)
    f2_local0[13] = SetCoolTime(f2_arg1, f2_arg2, 3024, 40, f2_local0[13], 0)
    f2_local0[16] = SetCoolTime(f2_arg1, f2_arg2, 3017, 40, f2_local0[16], 0)
    f2_local0[19] = SetCoolTime(f2_arg1, f2_arg2, 3039, 40, f2_local0[19], 0)
    f2_local0[22] = SetCoolTime(f2_arg1, f2_arg2, 3038, 60, f2_local0[22], 0)
    f2_local0[24] = SetCoolTime(f2_arg1, f2_arg2, 3002, 60, f2_local0[24], 0)
    f2_local1[1] = REGIST_FUNC(f2_arg1, f2_arg2, GOAL_621100_DarknessDragon_Act01)
    f2_local1[2] = REGIST_FUNC(f2_arg1, f2_arg2, GOAL_621100_DarknessDragon_Act02)
    f2_local1[3] = REGIST_FUNC(f2_arg1, f2_arg2, GOAL_621100_DarknessDragon_Act03)
    f2_local1[4] = REGIST_FUNC(f2_arg1, f2_arg2, GOAL_621100_DarknessDragon_Act04)
    f2_local1[5] = REGIST_FUNC(f2_arg1, f2_arg2, GOAL_621100_DarknessDragon_Act05)
    f2_local1[6] = REGIST_FUNC(f2_arg1, f2_arg2, GOAL_621100_DarknessDragon_Act06)
    f2_local1[7] = REGIST_FUNC(f2_arg1, f2_arg2, GOAL_621100_DarknessDragon_Act07)
    f2_local1[8] = REGIST_FUNC(f2_arg1, f2_arg2, GOAL_621100_DarknessDragon_Act08)
    f2_local1[9] = REGIST_FUNC(f2_arg1, f2_arg2, GOAL_621100_DarknessDragon_Act09)
    f2_local1[10] = REGIST_FUNC(f2_arg1, f2_arg2, GOAL_621100_DarknessDragon_Act10)
    f2_local1[11] = REGIST_FUNC(f2_arg1, f2_arg2, GOAL_621100_DarknessDragon_Act11)
    f2_local1[12] = REGIST_FUNC(f2_arg1, f2_arg2, GOAL_621100_DarknessDragon_Act12)
    f2_local1[13] = REGIST_FUNC(f2_arg1, f2_arg2, GOAL_621100_DarknessDragon_Act13)
    f2_local1[14] = REGIST_FUNC(f2_arg1, f2_arg2, GOAL_621100_DarknessDragon_Act14)
    f2_local1[15] = REGIST_FUNC(f2_arg1, f2_arg2, GOAL_621100_DarknessDragon_Act15)
    f2_local1[16] = REGIST_FUNC(f2_arg1, f2_arg2, GOAL_621100_DarknessDragon_Act16)
    f2_local1[17] = REGIST_FUNC(f2_arg1, f2_arg2, GOAL_621100_DarknessDragon_Act17)
    f2_local1[18] = REGIST_FUNC(f2_arg1, f2_arg2, GOAL_621100_DarknessDragon_Act18)
    f2_local1[19] = REGIST_FUNC(f2_arg1, f2_arg2, GOAL_621100_DarknessDragon_Act19)
    f2_local1[20] = REGIST_FUNC(f2_arg1, f2_arg2, GOAL_621100_DarknessDragon_Act20)
    f2_local1[22] = REGIST_FUNC(f2_arg1, f2_arg2, GOAL_621100_DarknessDragon_Act22)
    f2_local1[23] = REGIST_FUNC(f2_arg1, f2_arg2, GOAL_621100_DarknessDragon_Act23)
    f2_local1[24] = REGIST_FUNC(f2_arg1, f2_arg2, GOAL_621100_DarknessDragon_Act24)
    f2_local1[25] = REGIST_FUNC(f2_arg1, f2_arg2, GOAL_621100_DarknessDragon_Act25)
    local f2_local10 = REGIST_FUNC(f2_arg1, f2_arg2, GOAL_621100_DarknessDragon_ActAfter_AdjustSpace)
    Common_Battle_Activate(f2_arg1, f2_arg2, f2_local0, f2_local1, f2_local10, f2_local2)
    
end

function GOAL_621100_DarknessDragon_Act01(f3_arg0, f3_arg1, f3_arg2)
    local f3_local0 = 30
    local f3_local1 = 999
    local f3_local2 = 999
    local f3_local3 = 0
    local f3_local4 = 0
    local f3_local5 = 3
    local f3_local6 = 3
    Approach_Act_Flex(f3_arg0, f3_arg1, f3_local0, f3_local1, f3_local2, f3_local3, f3_local4, f3_local5, f3_local6)
    local f3_local7 = 999
    local f3_local8 = 0
    local f3_local9 = 0
    local f3_local10 = f3_arg0:GetRandam_Int(1, 100)
    f3_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 30, 3011, TARGET_ENE_0, f3_local7, f3_local8, f3_local9, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GOAL_621100_DarknessDragon_Act02(f4_arg0, f4_arg1, f4_arg2)
    local f4_local0 = 30
    local f4_local1 = 999
    local f4_local2 = 999
    local f4_local3 = 0
    local f4_local4 = 0
    local f4_local5 = 3
    local f4_local6 = 3
    Approach_Act_Flex(f4_arg0, f4_arg1, f4_local0, f4_local1, f4_local2, f4_local3, f4_local4, f4_local5, f4_local6)
    local f4_local7 = 999
    local f4_local8 = 0
    local f4_local9 = 0
    local f4_local10 = f4_arg0:GetRandam_Int(1, 100)
    f4_arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    f4_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 30, 3010, TARGET_ENE_0, f4_local7, f4_local8, f4_local9, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GOAL_621100_DarknessDragon_Act03(f5_arg0, f5_arg1, f5_arg2)
    local f5_local0 = 30
    local f5_local1 = 999
    local f5_local2 = 999
    local f5_local3 = 0
    local f5_local4 = 0
    local f5_local5 = 3
    local f5_local6 = 3
    Approach_Act_Flex(f5_arg0, f5_arg1, f5_local0, f5_local1, f5_local2, f5_local3, f5_local4, f5_local5, f5_local6)
    local f5_local7 = 999
    local f5_local8 = 0
    local f5_local9 = 0
    local f5_local10 = f5_arg0:GetRandam_Int(1, 100)
    f5_arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    f5_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 30, 3012, TARGET_ENE_0, f5_local7, f5_local8, f5_local9)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GOAL_621100_DarknessDragon_Act04(f6_arg0, f6_arg1, f6_arg2)
    local f6_local0 = 999
    local f6_local1 = 0
    local f6_local2 = 0
    local f6_local3 = f6_arg0:GetRandam_Int(1, 100)
    f6_arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    f6_arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    f6_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 20, 3000, TARGET_ENE_0, f6_local0, f6_local1, f6_local2)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GOAL_621100_DarknessDragon_Act05(f7_arg0, f7_arg1, f7_arg2)
    local f7_local0 = 999
    local f7_local1 = 0
    local f7_local2 = 0
    local f7_local3 = f7_arg0:GetRandam_Int(1, 100)
    f7_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 20, 3014, TARGET_ENE_0, f7_local0, f7_local1, f7_local2, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GOAL_621100_DarknessDragon_Act06(f8_arg0, f8_arg1, f8_arg2)
    local f8_local0 = 12
    local f8_local1 = 999
    local f8_local2 = 999
    local f8_local3 = 0
    local f8_local4 = 0
    local f8_local5 = 3
    local f8_local6 = 3
    Approach_Act_Flex(f8_arg0, f8_arg1, f8_local0, f8_local1, f8_local2, f8_local3, f8_local4, f8_local5, f8_local6)
    local f8_local7 = 999
    local f8_local8 = 0
    local f8_local9 = 0
    local f8_local10 = f8_arg0:GetRandam_Int(1, 100)
    f8_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3008, TARGET_ENE_0, f8_local7, f8_local8, f8_local9, 0, 0)
    if f8_arg0:HasSpecialEffectId(TARGET_SELF, 16581) and not f8_arg0:HasSpecialEffectId(TARGET_SELF, 16585) then
        f8_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3009, TARGET_ENE_0, f8_local7)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GOAL_621100_DarknessDragon_Act07(f9_arg0, f9_arg1, f9_arg2)
    local f9_local0 = 30
    local f9_local1 = 999
    local f9_local2 = 999
    local f9_local3 = 0
    local f9_local4 = 0
    local f9_local5 = 3
    local f9_local6 = 3
    Approach_Act_Flex(f9_arg0, f9_arg1, f9_local0, f9_local1, f9_local2, f9_local3, f9_local4, f9_local5, f9_local6)
    local f9_local7 = 999
    local f9_local8 = 0
    local f9_local9 = 0
    local f9_local10 = f9_arg0:GetRandam_Int(1, 100)
    f9_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 20, 3015, TARGET_ENE_0, f9_local7, f9_local8, f9_local9, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GOAL_621100_DarknessDragon_Act08(f10_arg0, f10_arg1, f10_arg2)
    local f10_local0 = 1.5
    local f10_local1 = 999
    local f10_local2 = 999
    local f10_local3 = 0
    local f10_local4 = 0
    local f10_local5 = 3
    local f10_local6 = 3
    Approach_Act_Flex(f10_arg0, f10_arg1, f10_local0, f10_local1, f10_local2, f10_local3, f10_local4, f10_local5, f10_local6)
    local f10_local7 = 999
    local f10_local8 = 0
    local f10_local9 = 0
    local f10_local10 = f10_arg0:GetRandam_Int(1, 100)
    f10_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3029, TARGET_ENE_0, f10_local7, f10_local8, f10_local9)
    f10_arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    if f10_arg0:HasSpecialEffectId(TARGET_SELF, 16581) and not f10_arg0:HasSpecialEffectId(TARGET_SELF, 16585) then
        f10_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 20, 3009, TARGET_ENE_0, f10_local7)
    else
        f10_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3026, TARGET_ENE_0, f10_local7)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GOAL_621100_DarknessDragon_Act09(f11_arg0, f11_arg1, f11_arg2)
    local f11_local0 = 999
    local f11_local1 = 0
    local f11_local2 = 0
    local f11_local3 = f11_arg0:GetRandam_Int(1, 100)
    f11_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 20, 3023, TARGET_ENE_0, f11_local0, f11_local1, f11_local2)
    f11_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 80, 3006, TARGET_ENE_0, f11_local0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GOAL_621100_DarknessDragon_Act10(f12_arg0, f12_arg1, f12_arg2)
    local f12_local0 = 999
    local f12_local1 = 0
    local f12_local2 = 0
    local f12_local3 = f12_arg0:GetRandam_Int(1, 100)
    f12_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3023, TARGET_ENE_0, f12_local0, f12_local1, f12_local2)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GOAL_621100_DarknessDragon_Act11(f13_arg0, f13_arg1, f13_arg2)
    local f13_local0 = 999
    local f13_local1 = 0
    local f13_local2 = 0
    local f13_local3 = f13_arg0:GetRandam_Int(1, 100)
    local f13_local4 = f13_arg0:GetRelativeAngleFromTarget(TARGET_ENE_0)
    if f13_local4 >= 5 then
        f13_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3033, TARGET_ENE_0, f13_local0, f13_local1, f13_local2)
    else
        f13_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3034, TARGET_ENE_0, f13_local0, f13_local1, f13_local2)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GOAL_621100_DarknessDragon_Act12(f14_arg0, f14_arg1, f14_arg2)
    local f14_local0 = 4
    local f14_local1 = 999
    local f14_local2 = 999
    local f14_local3 = 0
    local f14_local4 = 0
    local f14_local5 = 3
    local f14_local6 = 3
    Approach_Act_Flex(f14_arg0, f14_arg1, f14_local0, f14_local1, f14_local2, f14_local3, f14_local4, f14_local5, f14_local6)
    local f14_local7 = 999
    local f14_local8 = 0
    local f14_local9 = 0
    local f14_local10 = f14_arg0:GetRandam_Int(1, 100)
    f14_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3027, TARGET_ENE_0, f14_local7, f14_local8, f14_local9, 0, 0)
    f14_arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    if f14_arg0:HasSpecialEffectId(TARGET_SELF, 16581) and not f14_arg0:HasSpecialEffectId(TARGET_SELF, 16585) and f14_local10 > 30 then
        f14_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3009, TARGET_ENE_0, f14_local7)
    elseif f14_local10 > 30 then
        f14_arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
        f14_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 20, 3032, TARGET_ENE_0, f14_local7)
    else
        f14_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3026, TARGET_ENE_0, f14_local7)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GOAL_621100_DarknessDragon_Act13(f15_arg0, f15_arg1, f15_arg2)
    local f15_local0 = 1.5
    local f15_local1 = 999
    local f15_local2 = 999
    local f15_local3 = 0
    local f15_local4 = 0
    local f15_local5 = 3
    local f15_local6 = 3
    Approach_Act_Flex(f15_arg0, f15_arg1, f15_local0, f15_local1, f15_local2, f15_local3, f15_local4, f15_local5, f15_local6)
    local f15_local7 = 999
    local f15_local8 = 0
    local f15_local9 = 0
    local f15_local10 = f15_arg0:GetRandam_Int(1, 100)
    f15_arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    f15_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3024, TARGET_ENE_0, f15_local7, f15_local8, f15_local9)
    f15_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3025, TARGET_ENE_0, f15_local7)
    f15_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 20, 3031, TARGET_ENE_0, f15_local7)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GOAL_621100_DarknessDragon_Act14(f16_arg0, f16_arg1, f16_arg2)
    local f16_local0 = 999
    local f16_local1 = 0
    local f16_local2 = 0
    local f16_local3 = f16_arg0:GetRandam_Int(1, 100)
    f16_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3021, TARGET_ENE_0, f16_local0, f16_local1, f16_local2)
    f16_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3019, TARGET_ENE_0, f16_local0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GOAL_621100_DarknessDragon_Act15(f17_arg0, f17_arg1, f17_arg2)
    local f17_local0 = 999
    local f17_local1 = 0
    local f17_local2 = 0
    local f17_local3 = f17_arg0:GetRandam_Int(1, 100)
    f17_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3022, TARGET_ENE_0, f17_local0, f17_local1, f17_local2)
    f17_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3020, TARGET_ENE_0, f17_local0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GOAL_621100_DarknessDragon_Act16(f18_arg0, f18_arg1, f18_arg2)
    local f18_local0 = 999
    local f18_local1 = 0
    local f18_local2 = 0
    local f18_local3 = f18_arg0:GetRandam_Int(1, 100)
    f18_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 20, 3017, TARGET_ENE_0, f18_local0, f18_local1, f18_local2, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GOAL_621100_DarknessDragon_Act17(f19_arg0, f19_arg1, f19_arg2)
    local f19_local0 = 999
    local f19_local1 = 0
    local f19_local2 = 0
    local f19_local3 = f19_arg0:GetRandam_Int(1, 100)
    f19_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3036, TARGET_ENE_0, f19_local0, f19_local1, f19_local2)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GOAL_621100_DarknessDragon_Act18(f20_arg0, f20_arg1, f20_arg2)
    local f20_local0 = 999
    local f20_local1 = 0
    local f20_local2 = 0
    local f20_local3 = f20_arg0:GetRandam_Int(1, 100)
    f20_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3037, TARGET_ENE_0, f20_local0, f20_local1, f20_local2)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GOAL_621100_DarknessDragon_Act19(f21_arg0, f21_arg1, f21_arg2)
    local f21_local0 = 999
    local f21_local1 = 0
    local f21_local2 = 0
    local f21_local3 = f21_arg0:GetRandam_Int(1, 100)
    f21_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 30, 3039, TARGET_ENE_0, f21_local0, f21_local1, f21_local2)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GOAL_621100_DarknessDragon_Act20(f22_arg0, f22_arg1, f22_arg2)
    f22_arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 20)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GOAL_621100_DarknessDragon_Act21(f23_arg0, f23_arg1, f23_arg2)
    f23_arg1:AddSubGoal(GOAL_COMMON_KeepDist, f23_arg0:GetRandam_Float(2.5, 4), TARGET_ENE_0, 1, 16, TARGET_ENE_0, true, -1)
    
end

function GOAL_621100_DarknessDragon_Act22(f24_arg0, f24_arg1, f24_arg2)
    local f24_local0 = 999
    local f24_local1 = 0
    local f24_local2 = 0
    local f24_local3 = f24_arg0:GetRandam_Int(1, 100)
    f24_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3034, TARGET_ENE_0, f24_local0, f24_local1, f24_local2)
    f24_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 30, 3038, TARGET_ENE_0, f24_local0, f24_local1, f24_local2)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GOAL_621100_DarknessDragon_Act23(f25_arg0, f25_arg1, f25_arg2)
    local f25_local0 = 999
    local f25_local1 = 0
    local f25_local2 = 0
    local f25_local3 = f25_arg0:GetRandam_Int(1, 100)
    f25_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 30, 3016, TARGET_ENE_0, f25_local0, f25_local1, f25_local2)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GOAL_621100_DarknessDragon_Act24(f26_arg0, f26_arg1, f26_arg2)
    local f26_local0 = 999
    local f26_local1 = 0
    local f26_local2 = 0
    local f26_local3 = f26_arg0:GetRandam_Int(1, 100)
    f26_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 40, 3002, TARGET_ENE_0, f26_local0, f26_local1, f26_local2)
    if not f26_arg0:HasSpecialEffectId(TARGET_SELF, 16582) and f26_arg0:HasSpecialEffectId(TARGET_SELF, 16581) then
        f26_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 40, 3002, TARGET_ENE_0, f26_local0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GOAL_621100_DarknessDragon_Act25(f27_arg0, f27_arg1, f27_arg2)
    local f27_local0 = 999
    local f27_local1 = 0
    local f27_local2 = 0
    local f27_local3 = f27_arg0:GetRandam_Int(1, 100)
    f27_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 40, 3002, TARGET_ENE_0, f27_local0, f27_local1, f27_local2)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Update = function (f28_arg0, f28_arg1, f28_arg2)
    return Update_Default_NoSubGoal(f28_arg0, f28_arg1, f28_arg2)
    
end

Goal.Terminate = function (f29_arg0, f29_arg1, f29_arg2)
    
end

Goal.Interrupt = function (f30_arg0, f30_arg1, f30_arg2)
    local f30_local0 = f30_arg1:GetDist(TARGET_ENE_0)
    local f30_local1 = f30_arg1:GetDistYSigned(TARGET_ENE_0)
    local f30_local2 = f30_arg1:GetRandam_Int(1, 100)
    local f30_local3 = f30_arg1:GetRandam_Int(1, 100)
    local f30_local4 = f30_arg1:GetRandam_Int(1, 100)
    if f30_arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) then
        if f30_arg1:GetSpecialEffectActivateInterruptType(0) == 5025 and f30_local0 >= 5 and f30_local0 <= 24 then
            f30_arg2:ClearSubGoal()
            if f30_local2 > 50 then
                f30_arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 30, 3030, TARGET_ENE_0, 999, 0, 0)
            else
                f30_arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 30, 3031, TARGET_ENE_0, 999, 0, 0)
            end
            return true
        end
        if f30_arg1:GetSpecialEffectActivateInterruptType(0) == 5026 and f30_local0 <= 22 then
            f30_arg2:ClearSubGoal()
            f30_arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 30, 3013, TARGET_ENE_0, 999, 0, 0)
            return true
        end
        if f30_arg1:GetSpecialEffectActivateInterruptType(0) == 5027 and f30_local0 <= -5 then
            f30_arg2:ClearSubGoal()
            f30_arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 30, 3001, TARGET_ENE_0, 999, 0, 0)
            return true
        end
        if f30_arg1:GetSpecialEffectActivateInterruptType(0) == 5028 and f30_local0 <= -5 then
            f30_arg2:ClearSubGoal()
            f30_arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 30, 3018, TARGET_ENE_0, 999, 0, 0)
            return true
        end
        if f30_arg1:GetSpecialEffectActivateInterruptType(0) == 5029 and f30_local0 >= 15 then
            f30_arg2:ClearSubGoal()
            f30_arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 20, 3015, TARGET_ENE_0, 999, 0, 0)
            return true
        end
    end
    return false
    
end

function GOAL_621100_DarknessDragon_ActAfter_AdjustSpace(f31_arg0, f31_arg1, f31_arg2)
    f31_arg1:AddSubGoal(GOAL_DarknessDragon621100_Battle_AfterAttackAct, 10)
    
end

RegisterTableGoal(GOAL_DarknessDragon621100_Battle_AfterAttackAct, "GOAL_DarknessDragon621100_Battle_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_DarknessDragon621100_Battle_AfterAttackAct, true)

Goal.Activate = function (f32_arg0, f32_arg1, f32_arg2)
    local f32_local0 = f32_arg1:GetDist(TARGET_ENE_0)
    local f32_local1 = f32_arg1:GetHpRate(TARGET_SELF)
    local f32_local2 = {}
    if f32_arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 180) and f32_local0 <= 3 then
    elseif f32_local0 >= 7 then
    elseif f32_local0 >= 5 then
    elseif f32_local0 >= 3 then
    else
    end
    if SelectOddsIndex(f32_arg1, f32_local2) == 1 then
    end
    
end

Goal.Update = function (f33_arg0, f33_arg1, f33_arg2)
    return Update_Default_NoSubGoal(f33_arg0, f33_arg1, f33_arg2)
    
end


