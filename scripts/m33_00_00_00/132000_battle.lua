RegisterTableGoal(GOAL_OldmanCrystal_132000_Battle, "OldmanCrystal_132000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_OldmanCrystal_132000_Battle, true)

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
    if f2_arg1:GetNumber(0) == 0 then
        f2_arg1:SetTimer(0, 15)
        f2_arg1:SetNumber(0, 1)
    end
    f2_arg1:SetNumber(2, 0)
    local f2_local3 = f2_arg1:GetNumber(2)
    if f2_arg1:IsEventFlag(13305894) == true then
        f2_local3 = f2_local3 + 1
    end
    if f2_arg1:IsEventFlag(13305895) == true then
        f2_local3 = f2_local3 + 1
    end
    if f2_arg1:IsEventFlag(13305896) == true then
        f2_local3 = f2_local3 + 1
    end
    f2_arg1:SetNumber(2, f2_local3)
    local f2_local4 = f2_arg1:GetDist(TARGET_ENE_0)
    local f2_local5 = f2_arg1:GetRandam_Int(1, 100)
    local f2_local6 = f2_arg1:GetHpRate(TARGET_SELF)
    local f2_local7 = f2_arg1:GetMapHitRadius(TARGET_SELF)
    local f2_local8 = f2_arg1:GetDistYSigned(TARGET_ENE_0)
    local f2_local9 = f2_arg1:GetNumber(2)
    if f2_local6 <= 0.6 and f2_arg1:GetNpcThinkParamID() == 132000 and f2_arg1:HasSpecialEffectId(TARGET_SELF, 5020) == false and f2_arg1:HasSpecialEffectId(TARGET_SELF, 10558) and f2_arg1:HasSpecialEffectId(TARGET_SELF, 10559) == false then
        f2_local0[24] = 100
    elseif f2_arg1:GetNpcThinkParamID() == 132000 and f2_arg1:HasSpecialEffectId(TARGET_SELF, 5020) and f2_arg1:HasSpecialEffectId(TARGET_SELF, 10558) and f2_arg1:HasSpecialEffectId(TARGET_SELF, 10559) == false and f2_arg1:IsFinishTimer(2) == false then
        f2_local0[25] = 100
    elseif f2_arg1:GetNpcThinkParamID() == 132000 and f2_arg1:HasSpecialEffectId(TARGET_SELF, 5020) == false and f2_arg1:HasSpecialEffectId(TARGET_SELF, 10558) and f2_arg1:HasSpecialEffectId(TARGET_SELF, 10559) == false and f2_arg1:IsFinishTimer(2) == false and (f2_local5 <= 30 and f2_local4 > 8 or f2_local5 <= 50 and f2_local4 > 3 or f2_local4 <= 3) then
        f2_local0[23] = 100
    elseif f2_arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 180) then
        f2_local0[20] = 100
    elseif f2_arg1:GetNpcThinkParamID() == 132010 then
        if f2_local9 >= 3 and f2_local5 <= 60 and f2_local4 >= 2.5 or f2_local9 >= 2 and f2_local5 <= 40 and f2_local4 >= 2.5 then
            f2_local0[22] = 10
            f2_local0[21] = 10
        elseif f2_local4 >= 15 then
            f2_local0[1] = 30
            f2_local0[5] = 10
        elseif f2_local4 >= 8 then
            f2_local0[1] = 30
            f2_local0[5] = 10
            f2_local0[9] = 20
        elseif f2_local4 >= 2.5 then
            f2_local0[1] = 30
            f2_local0[9] = 20
        else
            f2_local0[10] = 10
            f2_local0[11] = 10
            f2_local0[21] = 30
        end
    elseif f2_arg1:HasSpecialEffectId(TARGET_SELF, 5020) and f2_local9 >= 1 then
        if f2_local4 >= 16 then
            f2_local0[1] = 0
            f2_local0[2] = 20
            f2_local0[5] = 30
            f2_local0[6] = 20
        elseif f2_local4 >= 10.5 then
            f2_local0[1] = 0
            f2_local0[2] = 20
            f2_local0[5] = 30
            f2_local0[6] = 20
        elseif f2_local4 >= 6 then
            f2_local0[1] = 0
            f2_local0[5] = 0
            f2_local0[2] = 20
            f2_local0[22] = 50
        elseif f2_local4 >= 3 then
            f2_local0[1] = 0
            f2_local0[2] = 0
            f2_local0[11] = 10
            f2_local0[21] = 20
        else
            f2_local0[2] = 0
            f2_local0[10] = 10
            f2_local0[11] = 10
            f2_local0[21] = 30
        end
    elseif f2_local4 >= 16 then
        f2_local0[1] = 10
        f2_local0[2] = 20
        f2_local0[5] = 30
        f2_local0[6] = 20
    elseif f2_local4 >= 10.5 then
        f2_local0[1] = 10
        f2_local0[2] = 20
        f2_local0[5] = 30
        f2_local0[6] = 20
    elseif f2_local4 >= 6 then
        f2_local0[1] = 0
        f2_local0[5] = 0
        f2_local0[2] = 20
        f2_local0[22] = 50
    elseif f2_local4 >= 3 then
        f2_local0[1] = 0
        f2_local0[2] = 0
        f2_local0[11] = 10
        f2_local0[21] = 10
    else
        f2_local0[1] = 0
        f2_local0[2] = 0
        f2_local0[10] = 20
        f2_local0[11] = 20
        f2_local0[21] = 30
    end
    if f2_arg1:HasSpecialEffectAttribute(TARGET_ENE_0, SP_EFFECT_TYPE_TARGET_DOWN) then
        f2_local0[1] = f2_local0[1] + 20
        f2_local0[2] = f2_local0[2] + 50
    end
    if f2_arg1:GetNpcThinkParamID() == 132000 then
        if f2_arg1:IsFinishTimer(1) == true and f2_arg1:HasSpecialEffectId(TARGET_SELF, 5020) == false then
            f2_local0[1] = f2_local0[1] + 50
        end
        if f2_arg1:IsFinishTimer(3) == false then
            f2_local0[1] = f2_local0[1] + 20
            f2_local0[5] = f2_local0[5] + 20
            f2_local0[6] = f2_local0[6] + 10
        end
        if f2_local9 >= 2 then
            f2_local0[22] = f2_local0[22] - 30
        elseif f2_local9 >= 1 then
            f2_local0[22] = f2_local0[22] - 40
        else
        end
        if f2_arg1:GetExistMeshOnLineDistEx(TARGET_SELF, AI_DIR_TYPE_F, 5, f2_local7, f2_local7) <= 3.5 then
            f2_local0[6] = f2_local0[6] + 50
            f2_local0[22] = f2_local0[22] + 30
        end
    end
    if f2_arg1:GetNpcThinkParamID() == 132010 and f2_arg1:GetExistMeshOnLineDistEx(TARGET_SELF, AI_DIR_TYPE_F, 5, f2_local7, f2_local7) <= 3.5 then
        f2_local0[22] = f2_local0[22] + 50
    end
    f2_local0[2] = SetCoolTime(f2_arg1, f2_arg2, 3001, 12, f2_local0[2], 1)
    f2_local0[5] = SetCoolTime(f2_arg1, f2_arg2, 3004, 8, f2_local0[5], 1)
    f2_local0[9] = SetCoolTime(f2_arg1, f2_arg2, 3007, 8, f2_local0[9], 1)
    f2_local0[10] = SetCoolTime(f2_arg1, f2_arg2, 3017, 10, f2_local0[10], 1)
    f2_local0[11] = SetCoolTime(f2_arg1, f2_arg2, 3021, 10, f2_local0[11], 1)
    if f2_arg1:HasSpecialEffectId(TARGET_SELF, 10559) then
        f2_local0[2] = 0
    end
    if f2_arg1:HasSpecialEffectId(TARGET_SELF, 103581000) then
        f2_local0[5] = 0
    end
    f2_arg1:SetNumber(1, 1)
    f2_local1[1] = REGIST_FUNC(f2_arg1, f2_arg2, OldmanCrystal_Act01)
    f2_local1[2] = REGIST_FUNC(f2_arg1, f2_arg2, OldmanCrystal_Act02)
    f2_local1[5] = REGIST_FUNC(f2_arg1, f2_arg2, OldmanCrystal_Act05)
    f2_local1[6] = REGIST_FUNC(f2_arg1, f2_arg2, OldmanCrystal_Act06)
    f2_local1[9] = REGIST_FUNC(f2_arg1, f2_arg2, OldmanCrystal_Act09)
    f2_local1[10] = REGIST_FUNC(f2_arg1, f2_arg2, OldmanCrystal_Act10)
    f2_local1[11] = REGIST_FUNC(f2_arg1, f2_arg2, OldmanCrystal_Act11)
    f2_local1[20] = REGIST_FUNC(f2_arg1, f2_arg2, OldmanCrystal_Act20)
    f2_local1[21] = REGIST_FUNC(f2_arg1, f2_arg2, OldmanCrystal_Act21)
    f2_local1[22] = REGIST_FUNC(f2_arg1, f2_arg2, OldmanCrystal_Act22)
    f2_local1[23] = REGIST_FUNC(f2_arg1, f2_arg2, OldmanCrystal_Act23)
    f2_local1[24] = REGIST_FUNC(f2_arg1, f2_arg2, OldmanCrystal_Act24)
    f2_local1[25] = REGIST_FUNC(f2_arg1, f2_arg2, OldmanCrystal_Act25)
    f2_local1[26] = REGIST_FUNC(f2_arg1, f2_arg2, OldmanCrystal_Act26)
    local f2_local10 = REGIST_FUNC(f2_arg1, f2_arg2, OldmanCrystal_ActAfter_AdjustSpace)
    Common_Battle_Activate(f2_arg1, f2_arg2, f2_local0, f2_local1, f2_local10, f2_local2)
    
end

function OldmanCrystal_Act01(f3_arg0, f3_arg1, f3_arg2)
    local f3_local0 = 3000
    local f3_local1 = 999 - f3_arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local2 = 1.5
    local f3_local3 = 30
    local f3_local4 = f3_arg0:GetRandam_Int(1, 100)
    f3_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f3_local0, TARGET_ENE_0, f3_local1, f3_local2, f3_local3, 0, 0)
    f3_arg0:SetTimer(1, 4)
    GetWellSpace_Odds = 80
    return GetWellSpace_Odds
    
end

function OldmanCrystal_Act02(f4_arg0, f4_arg1, f4_arg2)
    local f4_local0 = 3001
    local f4_local1 = 999 - f4_arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f4_local2 = 999 - f4_arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local3 = 1.5
    local f4_local4 = 20
    local f4_local5 = f4_arg0:GetRandam_Int(1, 100)
    local f4_local6 = f4_arg0:GetMp(TARGET_SELF)
    local f4_local7 = f4_arg0:GetDist(TARGET_ENE_0)
    f4_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f4_local0, TARGET_ENE_0, f4_local2, f4_local3, f4_local4, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function OldmanCrystal_Act03(f5_arg0, f5_arg1, f5_arg2)
    local f5_local0 = 3002
    local f5_local1 = 999 - f5_arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local2 = 1.5
    local f5_local3 = 20
    local f5_local4 = f5_arg0:GetRandam_Int(1, 100)
    local f5_local5 = f5_arg0:GetDist(TARGET_ENE_0)
    f5_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f5_local0, TARGET_ENE_0, f5_local1, f5_local2, f5_local3, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function OldmanCrystal_Act04(f6_arg0, f6_arg1, f6_arg2)
    local f6_local0 = 3003
    local f6_local1 = 5.8 - f6_arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f6_local2 = 999 - f6_arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local3 = 1.5
    local f6_local4 = 20
    local f6_local5 = f6_arg0:GetRandam_Int(1, 100)
    f6_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f6_local0, TARGET_ENE_0, f6_local2, f6_local3, f6_local4, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function OldmanCrystal_Act05(f7_arg0, f7_arg1, f7_arg2)
    local f7_local0 = 3004
    local f7_local1 = 999 - f7_arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local2 = 1.5
    local f7_local3 = 150
    local f7_local4 = f7_arg0:GetRandam_Int(1, 100)
    local f7_local5 = f7_arg0:GetRandam_Float(2.5, 4.5)
    local f7_local6 = f7_arg0:GetRandam_Int(0, 1)
    local f7_local7 = f7_arg0:GetRandam_Int(30, 45)
    local f7_local8 = f7_arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local9 = f7_arg0:GetDistYSigned(TARGET_ENE_0)
    if f7_local9 <= 1.5 then
        f7_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 1.5, f7_local0, TARGET_ENE_0, f7_local1, f7_local2, f7_local3, 0, 0)
    else
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function OldmanCrystal_Act06(f8_arg0, f8_arg1, f8_arg2)
    local f8_local0 = 3005
    local f8_local1 = 3014
    local f8_local2 = 999 - f8_arg0:GetMapHitRadius(TARGET_SELF)
    local f8_local3 = 1.5
    local f8_local4 = 45
    local f8_local5 = f8_arg0:GetRandam_Int(1, 100)
    local f8_local6 = f8_arg0:GetDist(TARGET_ENE_0)
    if f8_local6 >= 12 then
        f8_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f8_local1, TARGET_ENE_0, f8_local2, f8_local3, f8_local4, 0, 0)
    else
        f8_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f8_local0, TARGET_ENE_0, f8_local2, f8_local3, f8_local4, 0, 0)
    end
    GetWellSpace_Odds = 50
    return GetWellSpace_Odds
    
end

function OldmanCrystal_Act07(f9_arg0, f9_arg1, f9_arg2)
    local f9_local0 = 3006
    local f9_local1 = 3.8 - f9_arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f9_local2 = 999 - f9_arg0:GetMapHitRadius(TARGET_SELF)
    local f9_local3 = 1.5
    local f9_local4 = 30
    local f9_local5 = f9_arg0:GetRandam_Int(1, 100)
    f9_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f9_local0, TARGET_ENE_0, f9_local2, f9_local3, f9_local4, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function OldmanCrystal_Act08(f10_arg0, f10_arg1, f10_arg2)
    local f10_local0 = 3014
    local f10_local1 = 20.8 - f10_arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f10_local2 = 999 - f10_arg0:GetMapHitRadius(TARGET_SELF)
    local f10_local3 = 1.5
    local f10_local4 = 60
    local f10_local5 = f10_arg0:GetRandam_Int(1, 100)
    f10_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f10_local0, TARGET_ENE_0, f10_local2, f10_local3, f10_local4, 0, 0)
    GetWellSpace_Odds = 50
    return GetWellSpace_Odds
    
end

function OldmanCrystal_Act09(f11_arg0, f11_arg1, f11_arg2)
    local f11_local0 = 3007
    local f11_local1 = 3008
    local f11_local2 = 999 - f11_arg0:GetMapHitRadius(TARGET_SELF)
    local f11_local3 = 1.5
    local f11_local4 = 45
    local f11_local5 = f11_arg0:GetRandam_Int(1, 100)
    f11_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f11_local0, TARGET_ENE_0, f11_local2, f11_local3, f11_local4)
    f11_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f11_local1, TARGET_ENE_0, f11_local2)
    GetWellSpace_Odds = 80
    return GetWellSpace_Odds
    
end

function OldmanCrystal_Act10(f12_arg0, f12_arg1, f12_arg2)
    local f12_local0 = 3017
    local f12_local1 = 999 - f12_arg0:GetMapHitRadius(TARGET_SELF)
    local f12_local2 = 1.5
    local f12_local3 = 20
    local f12_local4 = f12_arg0:GetRandam_Int(1, 100)
    f12_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f12_local0, TARGET_ENE_0, f12_local1, f12_local2, f12_local3, 0, 0)
    GetWellSpace_Odds = 50
    return GetWellSpace_Odds
    
end

function OldmanCrystal_Act11(f13_arg0, f13_arg1, f13_arg2)
    local f13_local0 = 5.9 - f13_arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f13_local1 = 999
    local f13_local2 = 999
    local f13_local3 = 0
    local f13_local4 = 0
    local f13_local5 = 2.5
    local f13_local6 = 5
    Approach_Act_Flex(f13_arg0, f13_arg1, f13_local0, f13_local1, f13_local2, f13_local3, f13_local4, f13_local5, f13_local6)
    local f13_local7 = 3021
    local f13_local8 = 3022
    local f13_local9 = 3023
    local f13_local10 = 3024
    local f13_local11 = 5.9 - f13_arg0:GetMapHitRadius(TARGET_SELF) + 0.5
    local f13_local12 = 5.9 - f13_arg0:GetMapHitRadius(TARGET_SELF) + 0.5
    local f13_local13 = 5.9 - f13_arg0:GetMapHitRadius(TARGET_SELF) + 0.5
    local f13_local14 = 999 - f13_arg0:GetMapHitRadius(TARGET_SELF)
    local f13_local15 = 1.5
    local f13_local16 = 120
    local f13_local17 = f13_arg0:GetRandam_Int(1, 100)
    if f13_local17 <= 70 or f13_arg0:GetNpcThinkParamID() == 132010 then
        f13_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f13_local7, TARGET_ENE_0, f13_local11, f13_local15, f13_local16)
        f13_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f13_local8, TARGET_ENE_0, f13_local12)
        f13_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f13_local9, TARGET_ENE_0, f13_local14)
    else
        f13_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f13_local7, TARGET_ENE_0, f13_local11, f13_local15, f13_local16)
        f13_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f13_local8, TARGET_ENE_0, f13_local13)
        f13_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f13_local10, TARGET_ENE_0, f13_local14)
    end
    GetWellSpace_Odds = 50
    return GetWellSpace_Odds
    
end

function OldmanCrystal_Act20(f14_arg0, f14_arg1, f14_arg2)
    f14_arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 0, 0, 0)
    
end

function OldmanCrystal_Act21(f15_arg0, f15_arg1, f15_arg2)
    f15_arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 2, TARGET_ENE_0, 6.5, TARGET_ENE_0, true, -1)
    
end

function OldmanCrystal_Act22(f16_arg0, f16_arg1, f16_arg2)
    local f16_local0 = f16_arg0:GetRandam_Int(0, 1)
    local f16_local1 = f16_arg0:GetNumber(2)
    f16_arg0:AddObserveArea(0, TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, 6)
    if f16_arg0:GetNpcThinkParamID() == 132010 and f16_local1 >= 3 then
        local f16_local2 = f16_arg0:GetRandam_Float(5.5, 7)
        f16_arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f16_local2, TARGET_ENE_0, f16_local0, f16_arg0:GetRandam_Int(30, 45), true, true, -1)
    elseif f16_arg0:GetNpcThinkParamID() == 132010 and f16_local1 >= 2 then
        local f16_local2 = f16_arg0:GetRandam_Float(4, 5.5)
        f16_arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f16_local2, TARGET_ENE_0, f16_local0, f16_arg0:GetRandam_Int(30, 45), true, true, -1)
    else
        local f16_local2 = f16_arg0:GetRandam_Float(2.5, 4)
        f16_arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f16_local2, TARGET_ENE_0, f16_local0, f16_arg0:GetRandam_Int(30, 45), true, true, -1)
    end
    
end

function OldmanCrystal_Act23(f17_arg0, f17_arg1, f17_arg2)
    f17_arg0:SetTimer(2, 0)
    f17_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 3, 3010, TARGET_NONE, 999, 0, 360, 0, 0)
    f17_arg0:SetTimer(0, 30)
    f17_arg0:SetNumber(1, 1)
    
end

function OldmanCrystal_Act24(f18_arg0, f18_arg1, f18_arg2)
    f18_arg0:SetTimer(2, 0)
    f18_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 3, 3011, TARGET_NONE, 999, 0, 360, 0, 0)
    f18_arg0:SetTimer(0, 40)
    f18_arg0:SetNumber(1, 1)
    
end

function OldmanCrystal_Act25(f19_arg0, f19_arg1, f19_arg2)
    f19_arg0:SetTimer(2, 0)
    local f19_local0 = f19_arg0:GetHpRate(TARGET_SELF)
    local f19_local1 = 30
    f19_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 3, 3012, TARGET_NONE, 999, 0, 360, 0, 0)
    f19_arg0:SetTimer(0, f19_local1)
    f19_arg0:SetNumber(1, 1)
    
end

function OldmanCrystal_Act26(f20_arg0, f20_arg1, f20_arg2)
    f20_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3013, TARGET_NONE, 999, 0, 360, 0, 0)
    
end

function OldmanCrystal_ActAfter_AdjustSpace(f21_arg0, f21_arg1, f21_arg2)
    f21_arg1:AddSubGoal(GOAL_OldmanCrystal_132000_AfterAttackAct, 10)
    
end

Goal.Terminate = function (f22_arg0, f22_arg1, f22_arg2)
    
end

Goal.Interrupt = function (f23_arg0, f23_arg1, f23_arg2)
    if f23_arg1:IsInterupt(INTERUPT_Inside_ObserveArea) and f23_arg1:IsInsideObserve(0) then
        f23_arg2:ClearSubGoal()
        f23_arg1:Replaning()
        f23_arg1:DeleteObserve(0)
        return true
    end
    if f23_arg1:GetNpcThinkParamID() == 132000 then
        local f23_local0 = f23_arg1:GetRandam_Int(1, 100)
        if f23_arg1:IsInterupt(INTERUPT_Damaged) and f23_arg1:HasSpecialEffectId(TARGET_SELF, 10558) and f23_arg1:HasSpecialEffectId(TARGET_SELF, 10559) == false and f23_arg1:HasSpecialEffectId(TARGET_SELF, 10554) == false then
            f23_arg1:SetTimer(2, 5)
        end
        if f23_arg1:IsInterupt(INTERUPT_UseItem) and f23_local0 >= 50 then
            f23_arg2:ClearSubGoal()
            OldmanCrystal_Act05(f23_arg1, f23_arg2, paramTbl)
            return true
        end
        if f23_arg1:IsInterupt(INTERUPT_Shoot) then
            f23_arg1:SetTimer(3, 5)
        end
    end
    if f23_arg1:IsInterupt(INTERUPT_Damaged) and f23_arg1:GetNpcThinkParamID() == 132010 then
        f23_arg2:ClearSubGoal()
        OldmanCrystal_Act26(f23_arg1, f23_arg2, paramTbl)
        return true
    end
    f23_arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    if f23_arg1:GetSpecialEffectActivateInterruptType(0) == 5025 and f23_arg1:GetNpcThinkParamID() == 132010 then
        f23_arg2:ClearSubGoal()
        OldmanCrystal_Act26(f23_arg1, f23_arg2, paramTbl)
        return true
    end
    local f23_local0 = f23_arg1:GetEventRequest()
    if f23_local0 == 10 and f23_arg1:GetNpcThinkParamID() == 132010 then
        f23_arg2:ClearSubGoal()
        OldmanCrystal_Act26(f23_arg1, f23_arg2, paramTbl)
        return true
    end
    return false
    
end

RegisterTableGoal(GOAL_OldmanCrystal_132000_AfterAttackAct, "OldmanCrystal_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_OldmanCrystal_132000_AfterAttackAct, true)

Goal.Activate = function (f24_arg0, f24_arg1, f24_arg2)
    local f24_local0 = f24_arg1:GetDist(TARGET_ENE_0)
    local f24_local1 = f24_arg1:GetToTargetAngle(TARGET_ENE_0)
    local f24_local2 = f24_arg1:GetNumber(2)
    if f24_arg1:IsEventFlag(13305894) == true then
        f24_local2 = f24_local2 + 1
    end
    if f24_arg1:IsEventFlag(13305895) == true then
        f24_local2 = f24_local2 + 1
    end
    if f24_arg1:IsEventFlag(13305896) == true then
        f24_local2 = f24_local2 + 1
    end
    f24_arg1:SetNumber(2, f24_local2)
    f24_arg1:SetStringIndexedNumber("DistMin_AAA", 0)
    f24_arg1:SetStringIndexedNumber("DistMax_AAA", 30)
    f24_arg1:SetStringIndexedNumber("BaseDir_AAA", AI_DIR_TYPE_F)
    f24_arg1:SetStringIndexedNumber("Angle_AAA", 180)
    if f24_arg1:GetNpcThinkParamID() == 132010 then
        if f24_local0 >= 20 then
            f24_arg1:SetStringIndexedNumber("Odds_BackAndSide_AAA", 100)
            f24_arg1:SetStringIndexedNumber("Odds_NoAct_AAA", 0)
        elseif f24_local0 >= 10 then
            f24_arg1:SetStringIndexedNumber("Odds_Back_AAA", 30)
            f24_arg1:SetStringIndexedNumber("Odds_BackAndSide_AAA", 60)
            f24_arg1:SetStringIndexedNumber("Odds_NoAct_AAA", 10)
        elseif f24_local0 >= 2.5 then
            f24_arg1:SetStringIndexedNumber("Odds_Back_AAA", 40)
            f24_arg1:SetStringIndexedNumber("Odds_BackAndSide_AAA", 40)
            f24_arg1:SetStringIndexedNumber("Odds_NoAct_AAA", 20)
        else
            f24_arg1:SetStringIndexedNumber("Odds_Back_AAA", 50)
            f24_arg1:SetStringIndexedNumber("Odds_NoAct_AAA", 50)
        end
    elseif f24_arg1:GetNpcThinkParamID() == 132000 and f24_local2 >= 1 then
        if f24_local0 >= 20 then
            f24_arg1:SetStringIndexedNumber("Odds_BackAndSide_AAA", 20)
            f24_arg1:SetStringIndexedNumber("Odds_NoAct_AAA", 80)
        elseif f24_local0 >= 10 then
            f24_arg1:SetStringIndexedNumber("Odds_BackAndSide_AAA", 10)
            f24_arg1:SetStringIndexedNumber("Odds_NoAct_AAA", 90)
        else
            f24_arg1:SetStringIndexedNumber("Odds_Back_AAA", 0)
            f24_arg1:SetStringIndexedNumber("Odds_BackAndSide_AAA", 0)
            f24_arg1:SetStringIndexedNumber("Odds_NoAct_AAA", 100)
        end
    elseif f24_local0 >= 20 then
        f24_arg1:SetStringIndexedNumber("Odds_BackAndSide_AAA", 0)
        f24_arg1:SetStringIndexedNumber("Odds_NoAct_AAA", 100)
    elseif f24_local0 >= 10 then
        f24_arg1:SetStringIndexedNumber("Odds_BackAndSide_AAA", 0)
        f24_arg1:SetStringIndexedNumber("Odds_NoAct_AAA", 100)
    else
        f24_arg1:SetStringIndexedNumber("Odds_Back_AAA", 0)
        f24_arg1:SetStringIndexedNumber("Odds_BackAndSide_AAA", 0)
        f24_arg1:SetStringIndexedNumber("Odds_NoAct_AAA", 100)
    end
    f24_arg2:AddSubGoal(GOAL_COMMON_AfterAttackAct, 10)
    
end

Goal.Update = function (f25_arg0, f25_arg1, f25_arg2)
    return Update_Default_NoSubGoal(f25_arg0, f25_arg1, f25_arg2)
    
end


