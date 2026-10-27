RegisterTableGoal(GOAL_DragonAngel_209000_HU_Battle, "DragonAngelHUBattle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_DragonAngel_209000_HU_Battle, true)

Goal.Initialize = function (f1_arg0, f1_arg1, f1_arg2, f1_arg3)
    
end

Goal.Activate = function (f2_arg0, f2_arg1, f2_arg2)
    Init_Pseudo_Global(f2_arg1, f2_arg2)
    f2_arg1:SetStringIndexedNumber("Dist_SideStep", 10)
    f2_arg1:SetStringIndexedNumber("Dist_BackStep", 8)
    local f2_local0 = {}
    local f2_local1 = {}
    local f2_local2 = {}
    Common_Clear_Param(f2_local0, f2_local1, f2_local2)
    f2_arg1:SetNumber(0, 0)
    f2_arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    local f2_local3 = f2_arg1:GetDist(TARGET_ENE_0)
    if InsideRange(f2_arg1, f2_arg2, 180, 75, -99, 5) then
        f2_local0[5] = 20
        f2_local0[6] = 70
        f2_local0[20] = 10
    elseif InsideRange(f2_arg1, f2_arg2, 180, 270, -99, 10) then
        f2_local0[5] = 90
        f2_local0[20] = 10
    elseif InsideDir(f2_arg1, f2_arg2, 180, 270) then
        f2_local0[20] = 100
    elseif f2_local3 >= 17 then
        f2_local0[4] = 50
        f2_local0[10] = 50
    elseif f2_local3 >= 15 then
        f2_local0[2] = 15
        f2_local0[4] = 30
        f2_local0[8] = 25
        f2_local0[10] = 25
    elseif f2_local3 >= 10 then
        f2_local0[1] = 15
        f2_local0[2] = 20
        f2_local0[3] = 20
        f2_local0[7] = 15
        f2_local0[8] = 15
        f2_local0[9] = 15
    elseif f2_local3 >= 5 then
        f2_local0[1] = 30
        f2_local0[7] = 30
        f2_local0[9] = 20
        f2_local0[11] = 20
    else
        f2_local0[4] = 20
        f2_local0[7] = 35
        f2_local0[11] = 45
    end
    f2_local0[4] = SetCoolTime(f2_arg1, f2_arg2, 3005, 8, f2_local0[4], 1)
    f2_local0[5] = SetCoolTime(f2_arg1, f2_arg2, 3007, 15, f2_local0[5], 1)
    f2_local0[6] = SetCoolTime(f2_arg1, f2_arg2, 3008, 30, f2_local0[6], 1)
    f2_local0[8] = SetCoolTime(f2_arg1, f2_arg2, 3010, 10, f2_local0[8], 0)
    f2_local0[8] = SetCoolTime(f2_arg1, f2_arg2, 3011, 10, f2_local0[8], 0)
    f2_local0[8] = SetCoolTime(f2_arg1, f2_arg2, 3012, 10, f2_local0[8], 0)
    f2_local0[9] = SetCoolTime(f2_arg1, f2_arg2, 3010, 10, f2_local0[9], 0)
    f2_local0[9] = SetCoolTime(f2_arg1, f2_arg2, 3011, 10, f2_local0[9], 0)
    f2_local0[9] = SetCoolTime(f2_arg1, f2_arg2, 3012, 10, f2_local0[9], 0)
    f2_local0[10] = SetCoolTime(f2_arg1, f2_arg2, 3010, 10, f2_local0[10], 0)
    f2_local0[10] = SetCoolTime(f2_arg1, f2_arg2, 3011, 10, f2_local0[10], 0)
    f2_local0[10] = SetCoolTime(f2_arg1, f2_arg2, 3012, 10, f2_local0[10], 0)
    f2_local1[1] = REGIST_FUNC(f2_arg1, f2_arg2, DragonAngelHU_Act01)
    f2_local1[2] = REGIST_FUNC(f2_arg1, f2_arg2, DragonAngelHU_Act02)
    f2_local1[3] = REGIST_FUNC(f2_arg1, f2_arg2, DragonAngelHU_Act03)
    f2_local1[4] = REGIST_FUNC(f2_arg1, f2_arg2, DragonAngelHU_Act04)
    f2_local1[5] = REGIST_FUNC(f2_arg1, f2_arg2, DragonAngelHU_Act05)
    f2_local1[6] = REGIST_FUNC(f2_arg1, f2_arg2, DragonAngelHU_Act06)
    f2_local1[7] = REGIST_FUNC(f2_arg1, f2_arg2, DragonAngelHU_Act07)
    f2_local1[8] = REGIST_FUNC(f2_arg1, f2_arg2, DragonAngelHU_Act08)
    f2_local1[9] = REGIST_FUNC(f2_arg1, f2_arg2, DragonAngelHU_Act09)
    f2_local1[10] = REGIST_FUNC(f2_arg1, f2_arg2, DragonAngelHU_Act10)
    f2_local1[11] = REGIST_FUNC(f2_arg1, f2_arg2, DragonAngelHU_Act11)
    f2_local1[20] = REGIST_FUNC(f2_arg1, f2_arg2, DragonAngelHU_Act20)
    f2_local1[21] = REGIST_FUNC(f2_arg1, f2_arg2, DragonAngelHU_Act21)
    f2_local1[23] = REGIST_FUNC(f2_arg1, f2_arg2, DragonAngelHU_Act23)
    f2_local1[24] = REGIST_FUNC(f2_arg1, f2_arg2, DragonAngelHU_Act24)
    local f2_local4 = REGIST_FUNC(f2_arg1, f2_arg2, DragonAngelHU_ActAfter_AdjustSpace)
    Common_Battle_Activate(f2_arg1, f2_arg2, f2_local0, f2_local1, f2_local4, f2_local2)
    
end

function DragonAngelHU_Act01(f3_arg0, f3_arg1, f3_arg2)
    local f3_local0 = 3000
    local f3_local1 = 3001
    local f3_local2 = 3004
    local f3_local3 = 10 - f3_arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local4 = 11 - f3_arg0:GetMapHitRadius(TARGET_SELF) + 10
    local f3_local5 = 11.6 - f3_arg0:GetMapHitRadius(TARGET_SELF) + 10
    local f3_local6 = 0
    local f3_local7 = 0
    local f3_local8 = f3_arg0:GetRandam_Int(1, 100)
    f3_arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    if f3_local8 <= 60 then
        f3_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f3_local0, TARGET_ENE_0, f3_local3, f3_local6, f3_local7)
    elseif f3_local8 <= 80 then
        f3_arg0:SetNumber(0, 1)
        f3_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f3_local0, TARGET_ENE_0, f3_local4, f3_local6, f3_local7):TimingSetNumber(0, 0, AI_TIMING_SET__UPDATE_SUCCESS)
        f3_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f3_local1, TARGET_ENE_0, f3_local3)
    else
        f3_arg0:SetNumber(0, 1)
        f3_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f3_local0, TARGET_ENE_0, f3_local5, f3_local6, f3_local7):TimingSetNumber(0, 0, AI_TIMING_SET__UPDATE_SUCCESS)
        f3_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f3_local2, TARGET_ENE_0, f3_local3)
    end
    f3_local8 = f3_arg0:GetNumber(0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function DragonAngelHU_Act02(f4_arg0, f4_arg1, f4_arg2)
    local f4_local0 = 3002
    local f4_local1 = 10 - f4_arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local2 = 0
    local f4_local3 = 0
    f4_arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    f4_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f4_local0, TARGET_ENE_0, f4_local1, f4_local2, f4_local3)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function DragonAngelHU_Act03(f5_arg0, f5_arg1, f5_arg2)
    local f5_local0 = 3003
    local f5_local1 = 3001
    local f5_local2 = 3004
    local f5_local3 = 10 - f5_arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local4 = 11 - f5_arg0:GetMapHitRadius(TARGET_SELF) + 10
    local f5_local5 = 11.6 - f5_arg0:GetMapHitRadius(TARGET_SELF) + 10
    local f5_local6 = 0
    local f5_local7 = 0
    local f5_local8 = f5_arg0:GetRandam_Int(1, 100)
    f5_arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    if f5_local8 <= 60 then
        f5_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f5_local0, TARGET_ENE_0, f5_local3, f5_local6, f5_local7)
    elseif f5_local8 <= 80 then
        f5_arg0:SetNumber(0, 1)
        f5_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f5_local0, TARGET_ENE_0, f5_local4, f5_local6, f5_local7):TimingSetNumber(0, 0, AI_TIMING_SET__UPDATE_SUCCESS)
        f5_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f5_local1, TARGET_ENE_0, f5_local3)
    else
        f5_arg0:SetNumber(0, 1)
        f5_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f5_local0, TARGET_ENE_0, f5_local5, f5_local6, f5_local7):TimingSetNumber(0, 0, AI_TIMING_SET__UPDATE_SUCCESS)
        f5_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f5_local2, TARGET_ENE_0, f5_local3)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function DragonAngelHU_Act04(f6_arg0, f6_arg1, f6_arg2)
    local f6_local0 = 23.5 - f6_arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local1 = -999
    local f6_local2 = -998
    local f6_local3 = 0
    local f6_local4 = 0
    local f6_local5 = 5
    local f6_local6 = 5
    Approach_Act_Flex(f6_arg0, f6_arg1, f6_local0, f6_local1, f6_local2, f6_local3, f6_local4, f6_local5, f6_local6)
    local f6_local7 = 3005
    local f6_local8 = 10 - f6_arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local9 = 1.5
    local f6_local10 = 45
    f6_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f6_local7, TARGET_ENE_0, f6_local8, f6_local9, f6_local10)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function DragonAngelHU_Act05(f7_arg0, f7_arg1, f7_arg2)
    local f7_local0 = 3007
    local f7_local1 = 10 - f7_arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local2 = 0
    local f7_local3 = 0
    f7_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f7_local0, TARGET_ENE_0, f7_local1, f7_local2, f7_local3)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function DragonAngelHU_Act06(f8_arg0, f8_arg1, f8_arg2)
    local f8_local0 = 3008
    local f8_local1 = 10 - f8_arg0:GetMapHitRadius(TARGET_SELF)
    local f8_local2 = 0
    local f8_local3 = 0
    f8_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f8_local0, TARGET_ENE_0, f8_local1, f8_local2, f8_local3)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function DragonAngelHU_Act07(f9_arg0, f9_arg1, f9_arg2)
    local f9_local0 = 3009
    local f9_local1 = 10 - f9_arg0:GetMapHitRadius(TARGET_SELF)
    local f9_local2 = 0
    local f9_local3 = 0
    f9_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f9_local0, TARGET_ENE_0, f9_local1, f9_local2, f9_local3)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function DragonAngelHU_Act08(f10_arg0, f10_arg1, f10_arg2)
    local f10_local0 = 3010
    local f10_local1 = 10 - f10_arg0:GetMapHitRadius(TARGET_SELF)
    local f10_local2 = 0
    local f10_local3 = 0
    f10_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f10_local0, TARGET_ENE_0, f10_local1, f10_local2, f10_local3)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function DragonAngelHU_Act09(f11_arg0, f11_arg1, f11_arg2)
    local f11_local0 = 3011
    local f11_local1 = 10 - f11_arg0:GetMapHitRadius(TARGET_SELF)
    local f11_local2 = 0
    local f11_local3 = 0
    f11_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f11_local0, TARGET_ENE_0, f11_local1, f11_local2, f11_local3)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function DragonAngelHU_Act10(f12_arg0, f12_arg1, f12_arg2)
    local f12_local0 = 3012
    local f12_local1 = 10 - f12_arg0:GetMapHitRadius(TARGET_SELF)
    local f12_local2 = 0
    local f12_local3 = 0
    f12_arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    f12_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f12_local0, TARGET_ENE_0, f12_local1, f12_local2, f12_local3)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function DragonAngelHU_Act11(f13_arg0, f13_arg1, f13_arg2)
    local f13_local0 = 3004
    local f13_local1 = 3001
    local f13_local2 = 3004
    local f13_local3 = 10 - f13_arg0:GetMapHitRadius(TARGET_SELF)
    local f13_local4 = 11 - f13_arg0:GetMapHitRadius(TARGET_SELF) + 10
    local f13_local5 = 11.6 - f13_arg0:GetMapHitRadius(TARGET_SELF) + 10
    local f13_local6 = 0
    local f13_local7 = 0
    local f13_local8 = f13_arg0:GetRandam_Int(1, 100)
    f13_arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    if f13_local8 <= 50 then
        f13_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f13_local0, TARGET_ENE_0, f13_local3, f13_local6, f13_local7)
    elseif f13_local8 <= 70 then
        f13_arg0:SetNumber(0, 1)
        f13_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f13_local0, TARGET_ENE_0, f13_local4, f13_local6, f13_local7):TimingSetNumber(0, 0, AI_TIMING_SET__UPDATE_SUCCESS)
        f13_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f13_local1, TARGET_ENE_0, f13_local3)
    else
        f13_arg0:SetNumber(0, 1)
        f13_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f13_local0, TARGET_ENE_0, f13_local5, f13_local6, f13_local7):TimingSetNumber(0, 0, AI_TIMING_SET__UPDATE_SUCCESS)
        f13_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f13_local2, TARGET_ENE_0, f13_local3)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function DragonAngelHU_Act20(f14_arg0, f14_arg1, f14_arg2)
    f14_arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 45)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function DragonAngelHU_Act21(f15_arg0, f15_arg1, f15_arg2)
    f15_arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f15_arg0:GetRandam_Float(3, 4), TARGET_ENE_0, 8, TARGET_SELF, false, -1)
    f15_arg1:AddSubGoal(GOAL_COMMON_SpinStep, 2.5, f15_arg0:GetRadam_Int(6002, 6003), TARGET_ENE_0, 0, AI_DIR_TYPE_B, f15_arg0:GetStringIndexedNumber("Dist_SideStep"))
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function DragonAngelHU_Act23(f16_arg0, f16_arg1, f16_arg2)
    f16_arg1:AddSubGoal(GOAL_COMMON_SpinStep, 2.5, 6001, TARGET_ENE_0, 0, AI_DIR_TYPE_B, f16_arg0:GetStringIndexedNumber("Dist_BackStep"))
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function DragonAngelHU_Act24(f17_arg0, f17_arg1, f17_arg2)
    f17_arg1:AddSubGoal(GOAL_COMMON_SpinStep, 2.5, 6001, TARGET_ENE_0, 0, AI_DIR_TYPE_B, f17_arg0:GetStringIndexedNumber("Dist_BackStep"))
    f17_arg1:AddSubGoal(GOAL_COMMON_SpinStep, 2.5, 6001, TARGET_ENE_0, 0, AI_DIR_TYPE_B, f17_arg0:GetStringIndexedNumber("Dist_BackStep"))
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function DragonAngelHU_ActAfter_AdjustSpace(f18_arg0, f18_arg1, f18_arg2)
    
end

Goal.Update = function (f19_arg0, f19_arg1, f19_arg2)
    return Update_Default_NoSubGoal(f19_arg0, f19_arg1, f19_arg2)
    
end

Goal.Terminate = function (f20_arg0, f20_arg1, f20_arg2)
    
end

Goal.Interrupt = function (f21_arg0, f21_arg1, f21_arg2)
    if f21_arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and f21_arg1:GetSpecialEffectActivateInterruptType(0) == 5025 and f21_arg1:GetNumber(0) == 0 then
        f21_arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5025)
        return DragonAngelHU_ExAttack(f21_arg1, f21_arg2)
    end
    return false
    
end

function DragonAngelHU_ExAttack(f22_arg0, f22_arg1)
    if InsideRange(f22_arg0, f22_arg1, 180, 270, -99, 10) then
        local f22_local0 = f22_arg0:GetRandam_Int(1, 100)
        if f22_local0 <= 100 then
            f22_arg1:ClearSubGoal()
            local f22_local1 = f22_arg0:GetRandam_Int(1, 100)
            if f22_local1 <= 50 then
                f22_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3006, TARGET_ENE_0, 10 - f22_arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
            elseif f22_local1 <= 0 then
                f22_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3013, TARGET_ENE_0, 10 - f22_arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
            else
                f22_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3005, TARGET_ENE_0, 10 - f22_arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
            end
            return true
        else
            return false
        end
    elseif InsideRange(f22_arg0, f22_arg1, 0, 90, -99, 10) then
        local f22_local0 = f22_arg0:GetRandam_Int(1, 100)
        if f22_local0 <= 80 then
            f22_arg1:ClearSubGoal()
            local f22_local1 = f22_arg0:GetRandam_Int(1, 100)
            if f22_local1 <= 20 then
                f22_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3006, TARGET_ENE_0, 10 - f22_arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
            elseif f22_local1 <= 65 then
                f22_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3013, TARGET_ENE_0, 10 - f22_arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
            else
                f22_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3005, TARGET_ENE_0, 10 - f22_arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
            end
            return true
        else
            return false
        end
    elseif InsideRange(f22_arg0, f22_arg1, 0, 180, 10, 18) then
        local f22_local0 = f22_arg0:GetRandam_Int(1, 100)
        if f22_local0 <= 80 then
            f22_arg1:ClearSubGoal()
            local f22_local1 = f22_arg0:GetRandam_Int(1, 100)
            if f22_local1 <= 0 then
                f22_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3006, TARGET_ENE_0, 10 - f22_arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
            elseif f22_local1 <= 0 then
                f22_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3013, TARGET_ENE_0, 10 - f22_arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
            else
                f22_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3005, TARGET_ENE_0, 10 - f22_arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
            end
            return true
        else
            return false
        end
    else
        return false
    end
    return false
    
end


