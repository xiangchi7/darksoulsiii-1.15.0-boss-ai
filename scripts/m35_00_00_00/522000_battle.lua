RegisterTableGoal(GOAL_Cardinal_Boss_522000_Battle, "Cardinal_Boss_522000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_Cardinal_Boss_522000_Battle, true)

Goal.Initialize = function (f1_arg0, f1_arg1, f1_arg2, f1_arg3)
    
end

Goal.Activate = function (f2_arg0, f2_arg1, f2_arg2)
    Init_Pseudo_Global(f2_arg1, f2_arg2)
    f2_arg1:SetStringIndexedNumber("Dist_SideStep", 5)
    f2_arg1:SetStringIndexedNumber("Dist_BackStep", 5)
    f2_arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    local f2_local0 = {}
    local f2_local1 = {}
    local f2_local2 = {}
    Common_Clear_Param(f2_local0, f2_local1, f2_local2)
    Init_Pseudo_Global(f2_arg1, f2_arg2)
    f2_arg1:SetStringIndexedNumber("Dist_SideStep", 4)
    f2_arg1:SetStringIndexedNumber("Dist_BackStep", 4)
    local f2_local3 = f2_arg1:GetDist(TARGET_ENE_0)
    local f2_local4 = f2_arg1:GetEventRequest()
    local f2_local5 = f2_arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local f2_local6 = f2_arg1:GetRandam_Int(1, 100)
    local f2_local7 = f2_arg1:GetRandam_Int(1, 100)
    local f2_local8 = f2_arg1:GetHpRate(TARGET_SELF)
    if f2_local3 >= 10 then
        f2_local0[1] = 30
        f2_local0[3] = 50
        f2_local0[6] = 50
    elseif f2_local3 >= 3 then
        f2_local0[1] = 50
        f2_local0[3] = 50
        f2_local0[6] = 50
    else
        f2_local0[1] = 50
        f2_local0[2] = 20
        f2_local0[3] = 20
        f2_local0[4] = 20
        f2_local0[6] = 20
    end
    if f2_arg1:HasSpecialEffectId(TARGET_SELF, 11554) == true then
        f2_local0[3] = f2_local0[3] - 10
    end
    if f2_arg1:HasSpecialEffectId(TARGET_SELF, 11554) == true then
        f2_local0[3] = f2_local0[3] - 20
    end
    if f2_arg1:HasSpecialEffectId(TARGET_SELF, 11556) == true then
        f2_local0[3] = 0
    end
    if f2_arg1:IsFinishTimer(0) == false then
        f2_local0[3] = 0
    end
    if f2_arg1:IsFinishTimer(1) == false then
        f2_local0[6] = 0
    end
    f2_local1[1] = REGIST_FUNC(f2_arg1, f2_arg2, Cardinal_Boss_522000_Act01)
    f2_local1[2] = REGIST_FUNC(f2_arg1, f2_arg2, Cardinal_Boss_522000_Act02)
    f2_local1[3] = REGIST_FUNC(f2_arg1, f2_arg2, Cardinal_Boss_522000_Act03)
    f2_local1[4] = REGIST_FUNC(f2_arg1, f2_arg2, Cardinal_Boss_522000_Act04)
    f2_local1[5] = REGIST_FUNC(f2_arg1, f2_arg2, Cardinal_Boss_522000_Act05)
    f2_local1[6] = REGIST_FUNC(f2_arg1, f2_arg2, Cardinal_Boss_522000_Act06)
    local f2_local9 = REGIST_FUNC(f2_arg1, f2_arg2, Cardinal_Boss_522000_ActAfter_AdjustSpace)
    Common_Battle_Activate(f2_arg1, f2_arg2, f2_local0, f2_local1, f2_local9, f2_local2)
    
end

function Cardinal_Boss_522000_Act01(f3_arg0, f3_arg1, f3_arg2)
    local f3_local0 = f3_arg0:GetRandam_Float(6, 7.5)
    Cardinal_Boss_522000_Yousumi(f3_arg0, f3_arg1, f3_local0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Cardinal_Boss_522000_Act02(f4_arg0, f4_arg1, f4_arg2)
    local f4_local0 = 3 - f4_arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local1 = 3 - f4_arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f4_local2 = 3 - f4_arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f4_local3 = 0
    local f4_local4 = 0
    local f4_local5 = 3
    local f4_local6 = 3
    Approach_Act_Flex(f4_arg0, f4_arg1, f4_local0, f4_local1, f4_local2, f4_local3, f4_local4, f4_local5, f4_local6)
    local f4_local7 = 3000
    local f4_local8 = 5 - f4_arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local9 = -1
    local f4_local10 = 45
    f4_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f4_local7, TARGET_ENE_0, f4_local8, f4_local9, f4_local10, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function Cardinal_Boss_522000_Act03(f5_arg0, f5_arg1, f5_arg2)
    f5_arg0:SetTimer(0, 60)
    f5_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 20, 3001, TARGET_SELF, 999, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Cardinal_Boss_522000_Act04(f6_arg0, f6_arg1, f6_arg2)
    local f6_local0 = 3 - f6_arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local1 = 3 - f6_arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f6_local2 = 3 - f6_arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f6_local3 = 0
    local f6_local4 = 0
    local f6_local5 = 3
    local f6_local6 = 3
    Approach_Act_Flex(f6_arg0, f6_arg1, f6_local0, f6_local1, f6_local2, f6_local3, f6_local4, f6_local5, f6_local6)
    local f6_local7 = 3002
    local f6_local8 = 5 - f6_arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local9 = -1
    local f6_local10 = 45
    f6_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f6_local7, TARGET_ENE_0, f6_local8, f6_local9, f6_local10, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function Cardinal_Boss_522000_Act05(f7_arg0, f7_arg1, f7_arg2)
    local f7_local0 = 3004
    local f7_local1 = 999
    local f7_local2 = 2
    local f7_local3 = 45
    f7_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f7_local0, TARGET_ENE_0, f7_local1, f7_local2, f7_local3, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function Cardinal_Boss_522000_Act06(f8_arg0, f8_arg1, f8_arg2)
    f8_arg0:SetTimer(1, 30)
    f8_arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    f8_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 20, 3005, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Cardinal_Boss_522000_Yousumi(f9_arg0, f9_arg1, f9_arg2)
    local f9_local0 = f9_arg0:GetDist(TARGET_ENE_0)
    if f9_arg2 + 1 <= f9_local0 then
        f9_arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 4, TARGET_ENE_0, f9_arg2, TARGET_SELF, true, -1)
    elseif f9_local0 <= f9_arg2 - 1 then
        f9_arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 4, TARGET_ENE_0, f9_arg2, TARGET_ENE_0, true, -1)
    end
    if f9_arg2 - 1 <= f9_local0 and f9_arg2 + 1 <= f9_local0 then
        f9_arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, f9_arg0:GetRandam_Int(0, 1), f9_arg0:GetRandam_Int(30, 45), true, true, -1)
    end
    
end

function Cardinal_Boss_522000_ActAfter_AdjustSpace(f10_arg0, f10_arg1, f10_arg2)
    f10_arg1:AddSubGoal(GOAL_Cardinal_Boss_522000_AfterAttackAct, 10)
    
end

Goal.Update = function (f11_arg0, f11_arg1, f11_arg2)
    return Update_Default_NoSubGoal(f11_arg0, f11_arg1, f11_arg2)
    
end

Goal.Terminate = function (f12_arg0, f12_arg1, f12_arg2)
    
end

Goal.Interrupt = function (f13_arg0, f13_arg1, f13_arg2)
    local f13_local0 = f13_arg1:GetMp(TARGET_SELF)
    if f13_arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and f13_arg1:GetSpecialEffectActivateInterruptType(0) == 5025 then
        if f13_local0 >= 35 then
            f13_arg2:ClearSubGoal()
            f13_arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3008, TARGET_ENE_0, 999)
            return true
        elseif f13_local0 >= 30 then
            f13_arg2:ClearSubGoal()
            f13_arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3007, TARGET_ENE_0, 999)
            return true
        else
            f13_arg2:ClearSubGoal()
            f13_arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3006, TARGET_ENE_0, 999)
            return true
        end
    else
    end
    return false
    
end

RegisterTableGoal(GOAL_Cardinal_Boss_522000_AfterAttackAct, "Cardinal_Boss_522000_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_Cardinal_Boss_522000_AfterAttackAct, true)

Goal.Activate = function (f14_arg0, f14_arg1, f14_arg2)
    local f14_local0 = f14_arg1:GetDist(TARGET_ENE_0)
    local f14_local1 = f14_arg1:GetToTargetAngle(TARGET_ENE_0)
    f14_arg1:SetStringIndexedNumber("DistMin_AAA", -999)
    f14_arg1:SetStringIndexedNumber("DistMax_AAA", 7)
    f14_arg1:SetStringIndexedNumber("BaseDir_AAA", AI_DIR_TYPE_F)
    f14_arg1:SetStringIndexedNumber("Angle_AAA", 180)
    f14_arg1:SetStringIndexedNumber("DistMin_Inter_AAA", -999)
    f14_arg1:SetStringIndexedNumber("DistMax_Inter_AAA", 999)
    f14_arg1:SetStringIndexedNumber("BaseAng_Inter_AAA", 0)
    f14_arg1:SetStringIndexedNumber("Ang_Inter_AAA", 360)
    if f14_local0 >= 5 then
        f14_arg1:SetStringIndexedNumber("Odds_NoAct_AAA", 50)
        f14_arg1:SetStringIndexedNumber("Odds_BackAndSide_AAA", 50)
    elseif f14_local0 >= 2 then
        f14_arg1:SetStringIndexedNumber("Odds_NoAct_AAA", 60)
        f14_arg1:SetStringIndexedNumber("Odds_BackAndSide_AAA", 30)
        f14_arg1:SetStringIndexedNumber("Odds_Back_AAA", 10)
    else
        f14_arg1:SetStringIndexedNumber("Odds_NoAct_AAA", 70)
        f14_arg1:SetStringIndexedNumber("Odds_BackAndSide_AAA", 15)
        f14_arg1:SetStringIndexedNumber("Odds_Back_AAA", 15)
    end
    f14_arg2:AddSubGoal(GOAL_COMMON_AfterAttackAct, 10)
    
end

Goal.Update = function (f15_arg0, f15_arg1, f15_arg2)
    return Update_Default_NoSubGoal(f15_arg0, f15_arg1, f15_arg2)
    
end


