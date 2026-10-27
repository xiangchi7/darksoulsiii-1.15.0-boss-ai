RegisterTableGoal(GOAL_CrimsonBat_Bit_502100_Battle, "CrimsonBat_Bit_502100_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_CrimsonBat_Bit_502100_Battle, true)

Goal.Initialize = function (f1_arg0, f1_arg1, f1_arg2, f1_arg3)
    
end

Goal.Activate = function (f2_arg0, f2_arg1, f2_arg2)
    Init_Pseudo_Global(f2_arg1, f2_arg2)
    f2_arg1:SetStringIndexedNumber("Dist_SideStep", 10)
    f2_arg1:SetStringIndexedNumber("Dist_BackStep", 10)
    local f2_local0 = {}
    local f2_local1 = {}
    local f2_local2 = {}
    Common_Clear_Param(f2_local0, f2_local1, f2_local2)
    local f2_local3 = f2_arg1:GetDist(TARGET_ENE_0)
    local f2_local4 = f2_arg1:GetRandam_Int(1, 100)
    local f2_local5 = f2_arg1:GetEventRequest()
    local f2_local6 = f2_arg1:GetHpRate(TARGET_SELF)
    if f2_arg1:HasSpecialEffectId(TARGET_SELF, 15050) then
        f2_local0[2] = 100
    elseif f2_arg1:HasSpecialEffectId(TARGET_SELF, 15051) then
        f2_local0[1] = 100
    else
        f2_local0[1] = 100
    end
    f2_arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 15031)
    f2_arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 15032)
    f2_arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 15033)
    f2_arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 15050)
    f2_arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 15051)
    f2_local1[1] = REGIST_FUNC(f2_arg1, f2_arg2, CrimsonBat_Bit_502100_Battle_Act01)
    f2_local1[2] = REGIST_FUNC(f2_arg1, f2_arg2, CrimsonBat_Bit_502100_Battle_Act02)
    f2_local1[3] = REGIST_FUNC(f2_arg1, f2_arg2, CrimsonBat_Bit_502100_Battle_Act03)
    f2_local1[4] = REGIST_FUNC(f2_arg1, f2_arg2, CrimsonBat_Bit_502100_Battle_Act04)
    f2_local1[10] = REGIST_FUNC(f2_arg1, f2_arg2, CrimsonBat_Bit_502100_Battle_Act10)
    f2_local1[11] = REGIST_FUNC(f2_arg1, f2_arg2, CrimsonBat_Bit_502100_Battle_Act11)
    f2_local1[12] = REGIST_FUNC(f2_arg1, f2_arg2, CrimsonBat_Bit_502100_Battle_Act12)
    f2_local1[50] = REGIST_FUNC(f2_arg1, f2_arg2, CrimsonBat_Bit_502100_Battle_Act50)
    local f2_local7 = REGIST_FUNC(f2_arg1, f2_arg2, CrimsonBat_Bit_502100_Battle_ActAfter_AdjustSpace)
    Common_Battle_Activate(f2_arg1, f2_arg2, f2_local0, f2_local1, f2_local7, f2_local2)
    
end

function CrimsonBat_Bit_502100_Battle_Act01(f3_arg0, f3_arg1, f3_arg2)
    local f3_local0 = 3005
    local f3_local1 = 999
    local f3_local2 = 0
    local f3_local3 = 0
    local f3_local4 = f3_arg0:GetRandam_Int(1, 100)
    f3_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 60, f3_local0, TARGET_ENE_0, 999, f3_local2, f3_local3, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function CrimsonBat_Bit_502100_Battle_Act02(f4_arg0, f4_arg1, f4_arg2)
    local f4_local0 = 3006
    local f4_local1 = 999
    local f4_local2 = 0
    local f4_local3 = 0
    local f4_local4 = f4_arg0:GetRandam_Int(1, 100)
    f4_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f4_local0, TARGET_ENE_0, f4_local1, f4_local2, f4_local3, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function CrimsonBat_Bit_502100_Battle_Act03(f5_arg0, f5_arg1, f5_arg2)
    local f5_local0 = 3010
    local f5_local1 = 999
    local f5_local2 = 0
    local f5_local3 = 0
    local f5_local4 = f5_arg0:GetRandam_Int(1, 100)
    f5_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f5_local0, TARGET_ENE_0, f5_local1, f5_local2, f5_local3, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function CrimsonBat_Bit_502100_Battle_Act04(f6_arg0, f6_arg1, f6_arg2)
    local f6_local0 = 3003
    local f6_local1 = 999
    local f6_local2 = 0
    local f6_local3 = 0
    local f6_local4 = f6_arg0:GetRandam_Int(1, 100)
    f6_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f6_local0, TARGET_ENE_0, f6_local1, f6_local2, f6_local3, 0, 0)
    f6_arg1:AddSubGoal(GOAL_COMMON_Wait, 0.5, TARGET_NONE, 0, 0, 0)
    f6_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f6_local0, TARGET_ENE_0, f6_local1, f6_local2, f6_local3, 0, 0)
    f6_arg1:AddSubGoal(GOAL_COMMON_Wait, 2.8, TARGET_NONE, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function CrimsonBat_Bit_502100_Battle_Act10(f7_arg0, f7_arg1, f7_arg2)
    local f7_local0 = 3015
    local f7_local1 = 999
    local f7_local2 = 0
    local f7_local3 = 0
    local f7_local4 = f7_arg0:GetRandam_Int(1, 100)
    f7_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f7_local0, TARGET_ENE_0, DistToAtt1, f7_local2, f7_local3, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function CrimsonBat_Bit_502100_Battle_Act11(f8_arg0, f8_arg1, f8_arg2)
    f8_arg1:AddSubGoal(GOAL_COMMON_Wait, 5, TARGET_NONE, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function CrimsonBat_Bit_502100_Battle_Act12(f9_arg0, f9_arg1, f9_arg2)
    local f9_local0 = 5
    local f9_local1 = 5
    local f9_local2 = 999
    local f9_local3 = 0
    local f9_local4 = 0
    local f9_local5 = 4
    local f9_local6 = 4
    Approach_Act_Flex(f9_arg0, f9_arg1, f9_local0, f9_local1, f9_local2, f9_local3, f9_local4, f9_local5, f9_local6)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function CrimsonBat_Bit_502100_Battle_Act50(f10_arg0, f10_arg1, f10_arg2)
    local f10_local0 = 3016
    local f10_local1 = 3030
    local f10_local2 = 3030
    local f10_local3 = 1.5
    local f10_local4 = 20
    local f10_local5 = f10_arg0:GetRandam_Int(1, 100)
    f10_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f10_local0, TARGET_ENE_0, 999, f10_local3, f10_local4)
    f10_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f10_local1, TARGET_ENE_0, 999)
    f10_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f10_local2, TARGET_ENE_0, 999)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function CrimsonBat_Bit_502100_Battle_ActAfter_AdjustSpace(f11_arg0, f11_arg1, f11_arg2)
    
end

Goal.Update = function (f12_arg0, f12_arg1, f12_arg2)
    return Update_Default_NoSubGoal(f12_arg0, f12_arg1, f12_arg2)
    
end

Goal.Terminate = function (f13_arg0, f13_arg1, f13_arg2)
    
end

Goal.Interrupt = function (f14_arg0, f14_arg1, f14_arg2)
    if f14_arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) then
        if f14_arg1:GetSpecialEffectActivateInterruptType(0) == 15051 then
            f14_arg2:ClearSubGoal()
            f14_arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 60, 3010, TARGET_ENE_0, 999, 0, 0)
            return true
        elseif f14_arg1:GetSpecialEffectActivateInterruptType(0) == 15050 then
            f14_arg2:ClearSubGoal()
            f14_arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3006, TARGET_ENE_0, 999, 0, 0)
            return true
        elseif f14_arg1:GetSpecialEffectActivateInterruptType(0) == 15032 or f14_arg1:GetSpecialEffectActivateInterruptType(0) == 15034 or f14_arg1:GetSpecialEffectActivateInterruptType(0) == 15051 then
            f14_arg2:ClearSubGoal()
            f14_arg1:Replaning()
            return true
        end
    end
    return false
    
end

RegisterTableGoal(GOAL_CrimsonBat_Bit_502100_AfterAttackAct, "GOAL_CrimsonBat_Bit_502100_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_CrimsonBat_Bit_502100_AfterAttackAct, true)

Goal.Activate = function (f15_arg0, f15_arg1, f15_arg2)
    local f15_local0 = f15_arg1:GetDist(TARGET_ENE_0)
    local f15_local1 = f15_arg1:GetToTargetAngle(TARGET_ENE_0)
    f15_arg2:AddSubGoal(GOAL_COMMON_AfterAttackAct, 10)
    
end

Goal.Update = function (f16_arg0, f16_arg1, f16_arg2)
    return Update_Default_NoSubGoal(f16_arg0, f16_arg1, f16_arg2)
    
end


