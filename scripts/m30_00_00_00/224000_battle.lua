RegisterTableGoal(GOAL_Fullarmor224000_Battle, "FullarmorBattle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_Fullarmor224000_Battle, true)

Goal.Initialize = function (f1_arg0, f1_arg1, f1_arg2, f1_arg3)
    f1_arg1:SetNumber(0, 0)
    f1_arg1:SetNumber(1, 0)
    
end

Goal.Activate = function (f2_arg0, f2_arg1, f2_arg2)
    Init_Pseudo_Global(f2_arg1, f2_arg2)
    f2_arg1:SetStringIndexedNumber("Dist_SideStep", 3)
    f2_arg1:SetStringIndexedNumber("Dist_BackStep", 3)
    local f2_local0 = {}
    local f2_local1 = {}
    local f2_local2 = {}
    Common_Clear_Param(f2_local0, f2_local1, f2_local2)
    f2_arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    local f2_local3 = f2_arg1:GetDist(TARGET_ENE_0)
    local f2_local4 = f2_arg1:GetRandam_Int(1, 100)
    local f2_local5 = f2_arg1:GetEventRequest()
    if f2_arg1:GetHpRate(TARGET_SELF) <= 0.6 and not f2_arg1:HasSpecialEffectId(TARGET_SELF, 11923) then
        f2_arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 1500, TARGET_ENE_0, DIST_None, 0, 0, 180, 0)
        return false
    end
    if f2_arg1:GetNumber(0) == 0 then
        f2_local0[26] = 100
    elseif f2_arg1:GetNumber(1) == 0 and f2_arg1:HasSpecialEffectId(TARGET_SELF, 11923) then
        f2_local0[25] = 100
    elseif f2_arg1:IsFinishTimer(0) == true and f2_arg1:HasSpecialEffectId(TARGET_SELF, 11923) then
        f2_local0[25] = 100
    elseif f2_arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 90) and f2_local3 < 4 then
        if not f2_arg1:HasSpecialEffectId(TARGET_SELF, 11923) then
            f2_local0[15] = 99
            f2_local0[21] = 1
        elseif f2_arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
            f2_local0[6] = 30
            f2_local0[17] = 60
            f2_local0[20] = 10
        else
            f2_local0[6] = 30
            f2_local0[16] = 60
            f2_local0[20] = 10
        end
    elseif f2_arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 90) and f2_local3 >= 4 then
        if not f2_arg1:HasSpecialEffectId(TARGET_SELF, 11923) then
            f2_local0[20] = 100
        else
            f2_local0[20] = 100
        end
    elseif f2_arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 90) and f2_local3 < 5.5 then
        if not f2_arg1:HasSpecialEffectId(TARGET_SELF, 11923) then
            f2_local0[20] = 29
            f2_local0[21] = 1
            f2_local0[23] = 69
        else
            f2_local0[8] = 40
            f2_local0[16] = 30
            f2_local0[20] = 30
        end
    elseif f2_arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 90) and f2_local3 < 5.5 then
        if not f2_arg1:HasSpecialEffectId(TARGET_SELF, 11923) then
            f2_local0[20] = 29
            f2_local0[21] = 1
            f2_local0[22] = 70
        else
            f2_local0[7] = 40
            f2_local0[17] = 30
            f2_local0[20] = 30
        end
    elseif f2_arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 90) and f2_local3 >= 5.5 then
        if not f2_arg1:HasSpecialEffectId(TARGET_SELF, 11923) then
            f2_local0[20] = 29
            f2_local0[21] = 1
            f2_local0[23] = 70
        else
            f2_local0[8] = 40
            f2_local0[20] = 60
        end
    elseif f2_arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 90) and f2_local3 >= 5.5 then
        if not f2_arg1:HasSpecialEffectId(TARGET_SELF, 11923) then
            f2_local0[20] = 29
            f2_local0[21] = 1
            f2_local0[22] = 70
        else
            f2_local0[7] = 40
            f2_local0[20] = 60
        end
    elseif f2_arg1:HasSpecialEffectId(TARGET_SELF, 11923) == false then
        if f2_local3 >= 15 then
            f2_local0[1] = 80
            f2_local0[2] = 5
            f2_local0[3] = 0
            f2_local0[5] = 5
            f2_local0[6] = 5
            f2_local0[7] = 0
            f2_local0[8] = 0
            f2_local0[9] = 0
            f2_local0[10] = 0
            f2_local0[11] = 0
            f2_local0[12] = 0
            f2_local0[14] = 0
            f2_local0[18] = 0
            f2_local0[21] = 5
        elseif f2_local3 >= 10 then
            f2_local0[1] = 50
            f2_local0[2] = 15
            f2_local0[3] = 0
            f2_local0[5] = 15
            f2_local0[6] = 15
            f2_local0[7] = 0
            f2_local0[8] = 0
            f2_local0[9] = 0
            f2_local0[10] = 0
            f2_local0[11] = 0
            f2_local0[12] = 0
            f2_local0[14] = 0
            f2_local0[18] = 0
            f2_local0[21] = 5
        elseif f2_local3 >= 5 then
            f2_local0[1] = 0
            f2_local0[2] = 20
            f2_local0[3] = 0
            f2_local0[5] = 25
            f2_local0[6] = 25
            f2_local0[7] = 0
            f2_local0[8] = 0
            f2_local0[9] = 0
            f2_local0[10] = 10
            f2_local0[11] = 0
            f2_local0[12] = 0
            f2_local0[14] = 0
            f2_local0[18] = 20
            f2_local0[21] = 0
        else
            f2_local0[1] = 0
            f2_local0[2] = 15
            f2_local0[3] = 0
            f2_local0[5] = 10
            f2_local0[6] = 15
            f2_local0[7] = 0
            f2_local0[8] = 0
            f2_local0[9] = 0
            f2_local0[10] = 30
            f2_local0[11] = 0
            f2_local0[12] = 0
            f2_local0[14] = 0
            f2_local0[18] = 30
            f2_local0[21] = 0
        end
    elseif f2_local3 >= 15 then
        f2_local0[1] = 40
        f2_local0[2] = 0
        f2_local0[3] = 0
        f2_local0[5] = 0
        f2_local0[6] = 0
        f2_local0[7] = 0
        f2_local0[8] = 0
        f2_local0[9] = 0
        f2_local0[10] = 0
        f2_local0[11] = 0
        f2_local0[12] = 0
        f2_local0[14] = 20
        f2_local0[18] = 0
        f2_local0[21] = 0
    elseif f2_local3 >= 10 then
        f2_local0[1] = 25
        f2_local0[2] = 0
        f2_local0[3] = 5
        f2_local0[5] = 0
        f2_local0[6] = 0
        f2_local0[7] = 5
        f2_local0[8] = 5
        f2_local0[9] = 0
        f2_local0[10] = 0
        f2_local0[11] = 10
        f2_local0[12] = 5
        f2_local0[14] = 15
        f2_local0[18] = 0
        f2_local0[21] = 0
    elseif f2_local3 >= 5 then
        f2_local0[1] = 0
        f2_local0[2] = 0
        f2_local0[3] = 20
        f2_local0[5] = 0
        f2_local0[6] = 0
        f2_local0[7] = 20
        f2_local0[8] = 20
        f2_local0[9] = 0
        f2_local0[10] = 0
        f2_local0[11] = 0
        f2_local0[12] = 10
        f2_local0[14] = 0
        f2_local0[18] = 0
        f2_local0[21] = 0
    else
        f2_local0[1] = 0
        f2_local0[2] = 0
        f2_local0[3] = 0
        f2_local0[5] = 0
        f2_local0[6] = 0
        f2_local0[7] = 0
        f2_local0[8] = 0
        f2_local0[9] = 25
        f2_local0[10] = 25
        f2_local0[11] = 25
        f2_local0[12] = 0
        f2_local0[14] = 0
        f2_local0[18] = 0
        f2_local0[21] = 0
    end
    f2_local0[1] = SetCoolTime(f2_arg1, f2_arg2, 3000, 20, f2_local0[1], 1)
    f2_local0[2] = SetCoolTime(f2_arg1, f2_arg2, 3008, 15, f2_local0[2], 1)
    f2_local0[3] = SetCoolTime(f2_arg1, f2_arg2, 3002, 20, f2_local0[3], 1)
    f2_local0[5] = SetCoolTime(f2_arg1, f2_arg2, 3010, 15, f2_local0[5], 1)
    f2_local0[6] = SetCoolTime(f2_arg1, f2_arg2, 3019, 15, f2_local0[6], 1)
    f2_local0[7] = SetCoolTime(f2_arg1, f2_arg2, 3012, 20, f2_local0[7], 1)
    f2_local0[8] = SetCoolTime(f2_arg1, f2_arg2, 3013, 20, f2_local0[8], 1)
    f2_local0[9] = SetCoolTime(f2_arg1, f2_arg2, 3004, 25, f2_local0[9], 1)
    f2_local0[10] = SetCoolTime(f2_arg1, f2_arg2, 3007, 25, f2_local0[10], 1)
    f2_local0[11] = SetCoolTime(f2_arg1, f2_arg2, 3003, 15, f2_local0[11], 1)
    f2_local0[12] = SetCoolTime(f2_arg1, f2_arg2, 3014, 20, f2_local0[12], 1)
    f2_local0[13] = SetCoolTime(f2_arg1, f2_arg2, 3015, 15, f2_local0[13], 1)
    f2_local0[14] = SetCoolTime(f2_arg1, f2_arg2, 3016, 15, f2_local0[14], 1)
    f2_local0[16] = SetCoolTime(f2_arg1, f2_arg2, 3005, 10, f2_local0[16], 1)
    f2_local0[17] = SetCoolTime(f2_arg1, f2_arg2, 3006, 10, f2_local0[17], 1)
    f2_local0[18] = SetCoolTime(f2_arg1, f2_arg2, 6001, 15, f2_local0[18], 1)
    f2_local0[19] = SetCoolTime(f2_arg1, f2_arg2, 3018, 30, f2_local0[19], 1)
    f2_local1[1] = REGIST_FUNC(f2_arg1, f2_arg2, FullArmor_Act01)
    f2_local1[2] = REGIST_FUNC(f2_arg1, f2_arg2, FullArmor_Act02)
    f2_local1[3] = REGIST_FUNC(f2_arg1, f2_arg2, FullArmor_Act03)
    f2_local1[5] = REGIST_FUNC(f2_arg1, f2_arg2, FullArmor_Act05)
    f2_local1[6] = REGIST_FUNC(f2_arg1, f2_arg2, FullArmor_Act06)
    f2_local1[7] = REGIST_FUNC(f2_arg1, f2_arg2, FullArmor_Act07)
    f2_local1[8] = REGIST_FUNC(f2_arg1, f2_arg2, FullArmor_Act08)
    f2_local1[9] = REGIST_FUNC(f2_arg1, f2_arg2, FullArmor_Act09)
    f2_local1[10] = REGIST_FUNC(f2_arg1, f2_arg2, FullArmor_Act10)
    f2_local1[11] = REGIST_FUNC(f2_arg1, f2_arg2, FullArmor_Act11)
    f2_local1[12] = REGIST_FUNC(f2_arg1, f2_arg2, FullArmor_Act12)
    f2_local1[13] = REGIST_FUNC(f2_arg1, f2_arg2, FullArmor_Act13)
    f2_local1[14] = REGIST_FUNC(f2_arg1, f2_arg2, FullArmor_Act14)
    f2_local1[15] = REGIST_FUNC(f2_arg1, f2_arg2, FullArmor_Act15)
    f2_local1[16] = REGIST_FUNC(f2_arg1, f2_arg2, FullArmor_Act16)
    f2_local1[17] = REGIST_FUNC(f2_arg1, f2_arg2, FullArmor_Act17)
    f2_local1[18] = REGIST_FUNC(f2_arg1, f2_arg2, FullArmor_Act18)
    f2_local1[19] = REGIST_FUNC(f2_arg1, f2_arg2, FullArmor_Act19)
    f2_local1[20] = REGIST_FUNC(f2_arg1, f2_arg2, FullArmor_Act20)
    f2_local1[21] = REGIST_FUNC(f2_arg1, f2_arg2, FullArmor_Act21)
    f2_local1[22] = REGIST_FUNC(f2_arg1, f2_arg2, FullArmor_Act22)
    f2_local1[23] = REGIST_FUNC(f2_arg1, f2_arg2, FullArmor_Act23)
    f2_local1[24] = REGIST_FUNC(f2_arg1, f2_arg2, FullArmor_Act24)
    f2_local1[25] = REGIST_FUNC(f2_arg1, f2_arg2, FullArmor_Act25)
    f2_local1[26] = REGIST_FUNC(f2_arg1, f2_arg2, FullArmor_Act26)
    local f2_local6 = REGIST_FUNC(f2_arg1, f2_arg2, FullArmor_ActAfter_AdjustSpace)
    Common_Battle_Activate(f2_arg1, f2_arg2, f2_local0, f2_local1, f2_local6, f2_local2)
    
end

Goal.Update = function (f3_arg0, f3_arg1, f3_arg2)
    return Update_Default_NoSubGoal(f3_arg0, f3_arg1, f3_arg2)
    
end

function FullArmor_Act01(f4_arg0, f4_arg1, f4_arg2)
    f4_arg0:SetStringIndexedNumber("AddDistWalk", 6.1)
    f4_arg0:SetStringIndexedNumber("AddDistRun", 9)
    if f4_arg0:HasSpecialEffectId(TARGET_SELF, 11923) then
        local f4_local0 = 15.2 - f4_arg0:GetMapHitRadius(TARGET_SELF)
        local f4_local1 = 15.2 - f4_arg0:GetMapHitRadius(TARGET_SELF) + 7
        local f4_local2 = 15.2 - f4_arg0:GetMapHitRadius(TARGET_SELF) + 10
        local f4_local3 = 50
        local f4_local4 = 0
        local f4_local5 = 4
        local f4_local6 = 4
        Approach_Act_Flex(f4_arg0, f4_arg1, f4_local0, f4_local1, f4_local2, f4_local3, f4_local4, f4_local5, f4_local6)
    else
        local f4_local0 = 15.2 - f4_arg0:GetMapHitRadius(TARGET_SELF)
        local f4_local1 = 15.2 - f4_arg0:GetMapHitRadius(TARGET_SELF) + 7
        local f4_local2 = 15.2 - f4_arg0:GetMapHitRadius(TARGET_SELF) + 10
        local f4_local3 = 50
        local f4_local4 = 0
        local f4_local5 = 4
        local f4_local6 = 4
        Approach_Act_Flex(f4_arg0, f4_arg1, f4_local0, f4_local1, f4_local2, f4_local3, f4_local4, f4_local5, f4_local6)
    end
    local f4_local0 = 3000
    local f4_local1 = 3001
    local f4_local2 = 3021
    local f4_local3 = 8 - f4_arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f4_local4 = 8.6 - f4_arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f4_local5 = 10 - f4_arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local6 = 0
    local f4_local7 = 0
    local f4_local8 = f4_arg0:GetRandam_Int(1, 100)
    f4_arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    if f4_local8 <= 20 then
        f4_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f4_local0, TARGET_ENE_0, f4_local5, f4_local6, f4_local7, 0, 0)
    elseif f4_local8 <= 60 then
        f4_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f4_local0, TARGET_ENE_0, f4_local3, f4_local6, f4_local7, 0, 0)
        f4_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f4_local1, TARGET_ENE_0, f4_local5, 0, 0)
    else
        f4_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f4_local0, TARGET_ENE_0, f4_local4, f4_local6, f4_local7, 0, 0)
        f4_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f4_local2, TARGET_ENE_0, f4_local5, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function FullArmor_Act02(f5_arg0, f5_arg1, f5_arg2)
    if f5_arg0:HasSpecialEffectId(TARGET_SELF, 11923) then
        local f5_local0 = 6.7 - f5_arg0:GetMapHitRadius(TARGET_SELF)
        local f5_local1 = 6.7 - f5_arg0:GetMapHitRadius(TARGET_SELF)
        local f5_local2 = 6.7 - f5_arg0:GetMapHitRadius(TARGET_SELF)
        local f5_local3 = 100
        local f5_local4 = 0
        local f5_local5 = 4
        local f5_local6 = 4
        Approach_Act_Flex(f5_arg0, f5_arg1, f5_local0, f5_local1, f5_local2, f5_local3, f5_local4, f5_local5, f5_local6)
    else
        local f5_local0 = 6.7 - f5_arg0:GetMapHitRadius(TARGET_SELF)
        local f5_local1 = 6.7 - f5_arg0:GetMapHitRadius(TARGET_SELF) + 7
        local f5_local2 = 6.7 - f5_arg0:GetMapHitRadius(TARGET_SELF) + 10
        local f5_local3 = 50
        local f5_local4 = 0
        local f5_local5 = 4
        local f5_local6 = 4
        Approach_Act_Flex(f5_arg0, f5_arg1, f5_local0, f5_local1, f5_local2, f5_local3, f5_local4, f5_local5, f5_local6)
    end
    local f5_local0 = 3008
    local f5_local1 = 3021
    local f5_local2 = 3020
    local f5_local3 = 8.6 - f5_arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f5_local4 = 8 - f5_arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f5_local5 = 10 - f5_arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local6 = 0
    local f5_local7 = 0
    local f5_local8 = f5_arg0:GetRandam_Int(1, 100)
    f5_arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    if f5_local8 <= 20 then
        f5_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f5_local0, TARGET_ENE_0, f5_local5, f5_local6, f5_local7, 0, 0)
    elseif f5_local8 <= 50 then
        f5_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f5_local0, TARGET_ENE_0, f5_local3, f5_local6, f5_local7, 0, 0)
        f5_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f5_local1, TARGET_ENE_0, f5_local5, 0, 0)
    else
        f5_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f5_local0, TARGET_ENE_0, f5_local3, f5_local6, f5_local7, 0, 0)
        f5_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f5_local1, TARGET_ENE_0, f5_local4, f5_local6, f5_local7, 0, 0)
        f5_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f5_local2, TARGET_ENE_0, f5_local5, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function FullArmor_Act03(f6_arg0, f6_arg1, f6_arg2)
    f6_arg0:SetStringIndexedNumber("AddDistWalk", 2)
    f6_arg0:SetStringIndexedNumber("AddDistRun", 4.1)
    if f6_arg0:HasSpecialEffectId(TARGET_SELF, 11923) then
        local f6_local0 = 13 - f6_arg0:GetMapHitRadius(TARGET_SELF)
        local f6_local1 = 13 - f6_arg0:GetMapHitRadius(TARGET_SELF)
        local f6_local2 = 13 - f6_arg0:GetMapHitRadius(TARGET_SELF)
        local f6_local3 = 100
        local f6_local4 = 0
        local f6_local5 = 4
        local f6_local6 = 4
        Approach_Act_Flex(f6_arg0, f6_arg1, f6_local0, f6_local1, f6_local2, f6_local3, f6_local4, f6_local5, f6_local6)
    else
        local f6_local0 = 13 - f6_arg0:GetMapHitRadius(TARGET_SELF)
        local f6_local1 = 13 - f6_arg0:GetMapHitRadius(TARGET_SELF)
        local f6_local2 = 13 - f6_arg0:GetMapHitRadius(TARGET_SELF) + 1
        local f6_local3 = 70
        local f6_local4 = 0
        local f6_local5 = 4
        local f6_local6 = 4
        Approach_Act_Flex(f6_arg0, f6_arg1, f6_local0, f6_local1, f6_local2, f6_local3, f6_local4, f6_local5, f6_local6)
    end
    local f6_local0 = 3002
    local f6_local1 = 10 - f6_arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local2 = 0
    local f6_local3 = 0
    f6_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f6_local0, TARGET_ENE_0, f6_local1, f6_local2, f6_local3, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function FullArmor_Act05(f7_arg0, f7_arg1, f7_arg2)
    if f7_arg0:HasSpecialEffectId(TARGET_SELF, 11923) then
        local f7_local0 = 10.4 - f7_arg0:GetMapHitRadius(TARGET_SELF)
        local f7_local1 = 10.4 - f7_arg0:GetMapHitRadius(TARGET_SELF)
        local f7_local2 = 10.4 - f7_arg0:GetMapHitRadius(TARGET_SELF)
        local f7_local3 = 100
        local f7_local4 = 0
        local f7_local5 = 4
        local f7_local6 = 4
        Approach_Act_Flex(f7_arg0, f7_arg1, f7_local0, f7_local1, f7_local2, f7_local3, f7_local4, f7_local5, f7_local6)
    else
        local f7_local0 = 10.4 - f7_arg0:GetMapHitRadius(TARGET_SELF)
        local f7_local1 = 10.4 - f7_arg0:GetMapHitRadius(TARGET_SELF) + 7
        local f7_local2 = 10.4 - f7_arg0:GetMapHitRadius(TARGET_SELF) + 10
        local f7_local3 = 70
        local f7_local4 = 0
        local f7_local5 = 4
        local f7_local6 = 4
        Approach_Act_Flex(f7_arg0, f7_arg1, f7_local0, f7_local1, f7_local2, f7_local3, f7_local4, f7_local5, f7_local6)
    end
    local f7_local0 = 3010
    local f7_local1 = 10 - f7_arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local2 = 0
    local f7_local3 = 0
    f7_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f7_local0, TARGET_ENE_0, f7_local1, f7_local2, f7_local3, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function FullArmor_Act06(f8_arg0, f8_arg1, f8_arg2)
    f8_arg0:SetStringIndexedNumber("AddDistWalk", 2.1)
    f8_arg0:SetStringIndexedNumber("AddDistRun", 4)
    if f8_arg0:HasSpecialEffectId(TARGET_SELF, 11923) then
        local f8_local0 = 8.6 - f8_arg0:GetMapHitRadius(TARGET_SELF)
        local f8_local1 = 8.6 - f8_arg0:GetMapHitRadius(TARGET_SELF)
        local f8_local2 = 8.6 - f8_arg0:GetMapHitRadius(TARGET_SELF)
        local f8_local3 = 100
        local f8_local4 = 0
        local f8_local5 = 4
        local f8_local6 = 4
        Approach_Act_Flex(f8_arg0, f8_arg1, f8_local0, f8_local1, f8_local2, f8_local3, f8_local4, f8_local5, f8_local6)
    else
        local f8_local0 = 8.6 - f8_arg0:GetMapHitRadius(TARGET_SELF)
        local f8_local1 = 8.6 - f8_arg0:GetMapHitRadius(TARGET_SELF) + 7
        local f8_local2 = 8.6 - f8_arg0:GetMapHitRadius(TARGET_SELF) + 10
        local f8_local3 = 50
        local f8_local4 = 4
        local f8_local5 = 4
        Approach_Act_Flex(f8_arg0, f8_arg1, f8_local0, f8_local1, f8_local2, f8_local3, Odds_Guard, f8_local4, f8_local5)
    end
    local f8_local0 = 3019
    local f8_local1 = 10 - f8_arg0:GetMapHitRadius(TARGET_SELF)
    local f8_local2 = 0
    local f8_local3 = 0
    local f8_local4 = f8_arg0:GetRandam_Int(1, 100)
    f8_arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    f8_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f8_local0, TARGET_ENE_0, f8_local1, f8_local2, f8_local3, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function FullArmor_Act07(f9_arg0, f9_arg1, f9_arg2)
    f9_arg0:SetStringIndexedNumber("AddDistWalk", 1.9)
    f9_arg0:SetStringIndexedNumber("AddDistRun", 4)
    if f9_arg0:HasSpecialEffectId(TARGET_SELF, 11923) then
        local f9_local0 = 7.7 - f9_arg0:GetMapHitRadius(TARGET_SELF)
        local f9_local1 = 7.7 - f9_arg0:GetMapHitRadius(TARGET_SELF)
        local f9_local2 = 8.6 - f9_arg0:GetMapHitRadius(TARGET_SELF)
        local f9_local3 = 100
        local f9_local4 = 0
        local f9_local5 = 4
        local f9_local6 = 4
        Approach_Act_Flex(f9_arg0, f9_arg1, f9_local0, f9_local1, f9_local2, f9_local3, f9_local4, f9_local5, f9_local6)
    else
        local f9_local0 = 7.7 - f9_arg0:GetMapHitRadius(TARGET_SELF)
        local f9_local1 = 7.7 - f9_arg0:GetMapHitRadius(TARGET_SELF)
        local f9_local2 = 7.7 - f9_arg0:GetMapHitRadius(TARGET_SELF) + 1
        local f9_local3 = 70
        local f9_local4 = 0
        local f9_local5 = 4
        local f9_local6 = 4
        Approach_Act_Flex(f9_arg0, f9_arg1, f9_local0, f9_local1, f9_local2, f9_local3, f9_local4, f9_local5, f9_local6)
    end
    local f9_local0 = 3012
    local f9_local1 = 10 - f9_arg0:GetMapHitRadius(TARGET_SELF)
    local f9_local2 = 0
    local f9_local3 = 0
    f9_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f9_local0, TARGET_ENE_0, f9_local1, f9_local2, f9_local3, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function FullArmor_Act08(f10_arg0, f10_arg1, f10_arg2)
    f10_arg0:SetStringIndexedNumber("AddDistWalk", 2.3)
    f10_arg0:SetStringIndexedNumber("AddDistRun", 4.5)
    if f10_arg0:HasSpecialEffectId(TARGET_SELF, 11923) then
        local f10_local0 = 6.1 - f10_arg0:GetMapHitRadius(TARGET_SELF)
        local f10_local1 = 6.1 - f10_arg0:GetMapHitRadius(TARGET_SELF)
        local f10_local2 = 6.1 - f10_arg0:GetMapHitRadius(TARGET_SELF)
        local f10_local3 = 100
        local f10_local4 = 0
        local f10_local5 = 4
        local f10_local6 = 4
        Approach_Act_Flex(f10_arg0, f10_arg1, f10_local0, f10_local1, f10_local2, f10_local3, f10_local4, f10_local5, f10_local6)
    else
        local f10_local0 = 6.1 - f10_arg0:GetMapHitRadius(TARGET_SELF)
        local f10_local1 = 6.1 - f10_arg0:GetMapHitRadius(TARGET_SELF)
        local f10_local2 = 6.1 - f10_arg0:GetMapHitRadius(TARGET_SELF) + 1
        local f10_local3 = 70
        local f10_local4 = 0
        local f10_local5 = 4
        local f10_local6 = 4
        Approach_Act_Flex(f10_arg0, f10_arg1, f10_local0, f10_local1, f10_local2, f10_local3, f10_local4, f10_local5, f10_local6)
    end
    local f10_local0 = 3013
    local f10_local1 = 10 - f10_arg0:GetMapHitRadius(TARGET_SELF)
    local f10_local2 = 0
    local f10_local3 = 0
    f10_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f10_local0, TARGET_ENE_0, f10_local1, f10_local2, f10_local3, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function FullArmor_Act09(f11_arg0, f11_arg1, f11_arg2)
    f11_arg0:SetStringIndexedNumber("AddDistWalk", 2)
    f11_arg0:SetStringIndexedNumber("AddDistRun", 4.2)
    if f11_arg0:HasSpecialEffectId(TARGET_SELF, 11923) then
        local f11_local0 = 6.9 - f11_arg0:GetMapHitRadius(TARGET_SELF)
        local f11_local1 = 6.9 - f11_arg0:GetMapHitRadius(TARGET_SELF)
        local f11_local2 = 6.9 - f11_arg0:GetMapHitRadius(TARGET_SELF)
        local f11_local3 = 100
        local f11_local4 = 0
        local f11_local5 = 4
        local f11_local6 = 4
        Approach_Act_Flex(f11_arg0, f11_arg1, f11_local0, f11_local1, f11_local2, f11_local3, f11_local4, f11_local5, f11_local6)
    else
        local f11_local0 = 6.9 - f11_arg0:GetMapHitRadius(TARGET_SELF)
        local f11_local1 = 6.9 - f11_arg0:GetMapHitRadius(TARGET_SELF) + 7
        local f11_local2 = 6.9 - f11_arg0:GetMapHitRadius(TARGET_SELF) + 10
        local f11_local3 = 50
        local f11_local4 = 0
        local f11_local5 = 4
        local f11_local6 = 4
        Approach_Act_Flex(f11_arg0, f11_arg1, f11_local0, f11_local1, f11_local2, f11_local3, f11_local4, f11_local5, f11_local6)
    end
    local f11_local0 = 3004
    local f11_local1 = 10 - f11_arg0:GetMapHitRadius(TARGET_SELF)
    local f11_local2 = 0
    local f11_local3 = 0
    f11_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f11_local0, TARGET_ENE_0, f11_local1, f11_local2, f11_local3, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function FullArmor_Act10(f12_arg0, f12_arg1, f12_arg2)
    f12_arg0:SetStringIndexedNumber("AddDistWalk", 1.9)
    f12_arg0:SetStringIndexedNumber("AddDistRun", 3.3)
    if f12_arg0:HasSpecialEffectId(TARGET_SELF, 11923) then
        local f12_local0 = 5.8 - f12_arg0:GetMapHitRadius(TARGET_SELF)
        local f12_local1 = 5.8 - f12_arg0:GetMapHitRadius(TARGET_SELF)
        local f12_local2 = 5.8 - f12_arg0:GetMapHitRadius(TARGET_SELF)
        local f12_local3 = 100
        local f12_local4 = 0
        local f12_local5 = 4
        local f12_local6 = 4
        Approach_Act_Flex(f12_arg0, f12_arg1, f12_local0, f12_local1, f12_local2, f12_local3, f12_local4, f12_local5, f12_local6)
    else
        local f12_local0 = 5.8 - f12_arg0:GetMapHitRadius(TARGET_SELF)
        local f12_local1 = 5.8 - f12_arg0:GetMapHitRadius(TARGET_SELF) + 7
        local f12_local2 = 5.8 - f12_arg0:GetMapHitRadius(TARGET_SELF) + 10
        local f12_local3 = 50
        local f12_local4 = 0
        local f12_local5 = 4
        local f12_local6 = 4
        Approach_Act_Flex(f12_arg0, f12_arg1, f12_local0, f12_local1, f12_local2, f12_local3, f12_local4, f12_local5, f12_local6)
    end
    local f12_local0 = 3007
    local f12_local1 = 10 - f12_arg0:GetMapHitRadius(TARGET_SELF)
    local f12_local2 = 0
    local f12_local3 = 0
    if f12_arg0:HasSpecialEffectId(TARGET_SELF, 11923) == false then
        f12_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f12_local0, TARGET_ENE_0, f12_local1, f12_local2, f12_local3, 0, 0)
    else
        f12_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f12_local0, TARGET_ENE_0, DistToAtt1, f12_local2, f12_local3, 0, 0)
        f12_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f12_local0, TARGET_ENE_0, DistToAtt1, f12_local2, f12_local3, 0, 0)
        f12_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f12_local0, TARGET_ENE_0, f12_local1, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function FullArmor_Act11(f13_arg0, f13_arg1, f13_arg2)
    f13_arg0:SetStringIndexedNumber("AddDistWalk", 4)
    f13_arg0:SetStringIndexedNumber("AddDistRun", 6)
    if f13_arg0:HasSpecialEffectId(TARGET_SELF, 11923) then
        local f13_local0 = 16.5 - f13_arg0:GetMapHitRadius(TARGET_SELF)
        local f13_local1 = 16.5 - f13_arg0:GetMapHitRadius(TARGET_SELF)
        local f13_local2 = 16.5 - f13_arg0:GetMapHitRadius(TARGET_SELF)
        local f13_local3 = 100
        local f13_local4 = 0
        local f13_local5 = 4
        local f13_local6 = 4
        Approach_Act_Flex(f13_arg0, f13_arg1, f13_local0, f13_local1, f13_local2, f13_local3, f13_local4, f13_local5, f13_local6)
    else
        local f13_local0 = 16.5 - f13_arg0:GetMapHitRadius(TARGET_SELF)
        local f13_local1 = 16.5 - f13_arg0:GetMapHitRadius(TARGET_SELF) + 7
        local f13_local2 = 16.5 - f13_arg0:GetMapHitRadius(TARGET_SELF) + 10
        local f13_local3 = 50
        local f13_local4 = 0
        local f13_local5 = 4
        local f13_local6 = 4
        Approach_Act_Flex(f13_arg0, f13_arg1, f13_local0, f13_local1, f13_local2, f13_local3, f13_local4, f13_local5, f13_local6)
    end
    local f13_local0 = 3003
    local f13_local1 = 10 - f13_arg0:GetMapHitRadius(TARGET_SELF)
    local f13_local2 = 0
    local f13_local3 = 0
    f13_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f13_local0, TARGET_ENE_0, f13_local1, f13_local2, f13_local3, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function FullArmor_Act12(f14_arg0, f14_arg1, f14_arg2)
    f14_arg0:SetStringIndexedNumber("AddDistWalk", 3)
    f14_arg0:SetStringIndexedNumber("AddDistRun", 5)
    if f14_arg0:HasSpecialEffectId(TARGET_SELF, 11923) then
        local f14_local0 = 9.5 - f14_arg0:GetMapHitRadius(TARGET_SELF)
        local f14_local1 = 9.5 - f14_arg0:GetMapHitRadius(TARGET_SELF)
        local f14_local2 = 9.5 - f14_arg0:GetMapHitRadius(TARGET_SELF)
        local f14_local3 = 100
        local f14_local4 = 0
        local f14_local5 = 4
        local f14_local6 = 4
        Approach_Act_Flex(f14_arg0, f14_arg1, f14_local0, f14_local1, f14_local2, f14_local3, f14_local4, f14_local5, f14_local6)
    else
        local f14_local0 = 9.5 - f14_arg0:GetMapHitRadius(TARGET_SELF)
        local f14_local1 = 9.5 - f14_arg0:GetMapHitRadius(TARGET_SELF) + 7
        local f14_local2 = 9.5 - f14_arg0:GetMapHitRadius(TARGET_SELF) + 10
        local f14_local3 = 50
        local f14_local4 = 0
        local f14_local5 = 4
        local f14_local6 = 4
        Approach_Act_Flex(f14_arg0, f14_arg1, f14_local0, f14_local1, f14_local2, f14_local3, f14_local4, f14_local5, f14_local6)
    end
    local f14_local0 = 3014
    local f14_local1 = 10 - f14_arg0:GetMapHitRadius(TARGET_SELF)
    local f14_local2 = 0
    local f14_local3 = 0
    f14_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f14_local0, TARGET_ENE_0, f14_local1, f14_local2, f14_local3, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function FullArmor_Act13(f15_arg0, f15_arg1, f15_arg2)
    f15_arg0:SetStringIndexedNumber("AddDistWalk", 0)
    f15_arg0:SetStringIndexedNumber("AddDistRun", 0)
    local f15_local0 = 3015
    local f15_local1 = 10 - f15_arg0:GetMapHitRadius(TARGET_SELF)
    local f15_local2 = 13.7 - f15_arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f15_local3 = 0
    local f15_local4 = 0
    local f15_local5 = f15_arg0:GetRandam_Int(1, 100)
    f15_arg1:AddSubGoal(GOAL_EnemyStepBack, 3, TARGET_ENE_0, 3)
    if f15_local5 <= 20 then
        f15_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f15_local0, TARGET_ENE_0, f15_local1, f15_local3, f15_local4, 0, 0)
    elseif f15_local5 <= 50 then
        f15_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f15_local0, TARGET_ENE_0, f15_local2, f15_local3, f15_local4, 0, 0)
        f15_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f15_local0, TARGET_ENE_0, f15_local1, 0, 0)
    else
        f15_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f15_local0, TARGET_ENE_0, f15_local2, f15_local3, f15_local4, 0, 0)
        f15_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f15_local0, TARGET_ENE_0, f15_local2, f15_local3, f15_local4, 0, 0)
        f15_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f15_local0, TARGET_ENE_0, f15_local1, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function FullArmor_Act14(f16_arg0, f16_arg1, f16_arg2)
    f16_arg0:SetStringIndexedNumber("AddDistWalk", 0)
    f16_arg0:SetStringIndexedNumber("AddDistRun", 0)
    if f16_arg0:HasSpecialEffectId(TARGET_SELF, 11923) then
        local f16_local0 = 31.6 - f16_arg0:GetMapHitRadius(TARGET_SELF)
        local f16_local1 = 31.6 - f16_arg0:GetMapHitRadius(TARGET_SELF)
        local f16_local2 = 31.6 - f16_arg0:GetMapHitRadius(TARGET_SELF)
        local f16_local3 = 100
        local f16_local4 = 0
        local f16_local5 = 4
        local f16_local6 = 4
        Approach_Act_Flex(f16_arg0, f16_arg1, f16_local0, f16_local1, f16_local2, f16_local3, f16_local4, f16_local5, f16_local6)
    else
        local f16_local0 = 31.6 - f16_arg0:GetMapHitRadius(TARGET_SELF)
        local f16_local1 = 31.6 - f16_arg0:GetMapHitRadius(TARGET_SELF) + 7
        local f16_local2 = 31.6 - f16_arg0:GetMapHitRadius(TARGET_SELF) + 10
        local f16_local3 = 50
        local f16_local4 = 0
        local f16_local5 = 4
        local f16_local6 = 4
        Approach_Act_Flex(f16_arg0, f16_arg1, f16_local0, f16_local1, f16_local2, f16_local3, f16_local4, f16_local5, f16_local6)
    end
    local f16_local0 = 3016
    local f16_local1 = 10 - f16_arg0:GetMapHitRadius(TARGET_SELF)
    local f16_local2 = 0
    local f16_local3 = 0
    f16_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f16_local0, TARGET_ENE_0, f16_local1, f16_local2, f16_local3, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function FullArmor_Act15(f17_arg0, f17_arg1, f17_arg2)
    local f17_local0 = 3017
    local f17_local1 = 10 - f17_arg0:GetMapHitRadius(TARGET_SELF)
    local f17_local2 = 0
    local f17_local3 = 0
    f17_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f17_local0, TARGET_ENE_0, f17_local1, f17_local2, f17_local3, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function FullArmor_Act16(f18_arg0, f18_arg1, f18_arg2)
    local f18_local0 = 3005
    local f18_local1 = 10 - f18_arg0:GetMapHitRadius(TARGET_SELF)
    local f18_local2 = 0
    local f18_local3 = 90
    f18_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f18_local0, TARGET_ENE_0, f18_local1, f18_local2, f18_local3, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function FullArmor_Act17(f19_arg0, f19_arg1, f19_arg2)
    local f19_local0 = 3006
    local f19_local1 = 10 - f19_arg0:GetMapHitRadius(TARGET_SELF)
    local f19_local2 = 0
    local f19_local3 = -90
    f19_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f19_local0, TARGET_ENE_0, f19_local1, f19_local2, f19_local3, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function FullArmor_Act18(f20_arg0, f20_arg1, f20_arg2)
    f20_arg1:AddSubGoal(GOAL_EnemyStepBack, 3, TARGET_ENE_0, 3)
    f20_arg1:AddSubGoal(GOAL_FullArmor_224000_SelectAttack, 10)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function FullArmor_Act19(f21_arg0, f21_arg1, f21_arg2)
    local f21_local0 = 3018
    local f21_local1 = 10 - f21_arg0:GetMapHitRadius(TARGET_SELF)
    local f21_local2 = 0
    local f21_local3 = 0
    local f21_local4 = f21_arg0:GetDist(TARGET_ENE_0)
    if f21_local4 <= 18 then
        f21_arg1:AddSubGoal(GOAL_EnemyStepBack, 3, TARGET_ENE_0, 7)
        f21_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f21_local0, TARGET_ENE_0, f21_local1, f21_local2, f21_local3, 0, 0)
    else
        f21_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f21_local0, TARGET_ENE_0, f21_local1, f21_local2, f21_local3, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function FullArmor_Act20(f22_arg0, f22_arg1, f22_arg2)
    f22_arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 90)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function FullArmor_Act21(f23_arg0, f23_arg1, f23_arg2)
    f23_arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, f23_arg0:GetRandam_Int(0, 1), f23_arg0:GetRandam_Int(30, 45), true, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function FullArmor_Act22(f24_arg0, f24_arg1, f24_arg2)
    f24_arg1:AddSubGoal(GOAL_EnemyStepRight, 3, TARGET_ENE_0, 3)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function FullArmor_Act23(f25_arg0, f25_arg1, f25_arg2)
    f25_arg1:AddSubGoal(GOAL_EnemyStepLeft, 3, TARGET_ENE_0, 3)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function FullArmor_Act24(f26_arg0, f26_arg1, f26_arg2)
    local f26_local0 = 3022
    local f26_local1 = 3021
    local f26_local2 = 8.6 - f26_arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f26_local3 = 10 - f26_arg0:GetMapHitRadius(TARGET_SELF)
    local f26_local4 = 0
    local f26_local5 = 0
    local f26_local6 = f26_arg0:GetRandam_Int(1, 100)
    if f26_local6 <= 70 then
        f26_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f26_local0, TARGET_ENE_0, f26_local3, f26_local4, f26_local5, 0, 0)
    else
        f26_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f26_local0, TARGET_ENE_0, f26_local2, f26_local4, f26_local5, 0, 0)
        f26_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f26_local1, TARGET_ENE_0, f26_local3, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function FullArmor_Act25(f27_arg0, f27_arg1, f27_arg2)
    f27_arg0:SetNumber(1, 1)
    f27_arg0:SetTimer(0, 47)
    f27_arg0:SetStringIndexedNumber("AddDistWalk", 0)
    f27_arg0:SetStringIndexedNumber("AddDistRun", 0)
    local f27_local0 = f27_arg0:GetDist(TARGET_ENE_0)
    if f27_local0 <= 13.7 then
        f27_arg1:AddSubGoal(GOAL_EnemyStepBack, 3, TARGET_ENE_0, 3)
    end
    local f27_local1 = 13.7 - f27_arg0:GetMapHitRadius(TARGET_SELF)
    local f27_local2 = 13.7 - f27_arg0:GetMapHitRadius(TARGET_SELF)
    local f27_local3 = 13.7 - f27_arg0:GetMapHitRadius(TARGET_SELF)
    local f27_local4 = 100
    local f27_local5 = 0
    local f27_local6 = 4
    local f27_local7 = 4
    Approach_Act_Flex(f27_arg0, f27_arg1, f27_local1, f27_local2, f27_local3, f27_local4, f27_local5, f27_local6, f27_local7)
    local f27_local8 = 3015
    local f27_local9 = 3018
    local f27_local10 = 13.7 - f27_arg0:GetMapHitRadius(TARGET_SELF) + 10
    local f27_local11 = 999 - f27_arg0:GetMapHitRadius(TARGET_SELF)
    local f27_local12 = 10 - f27_arg0:GetMapHitRadius(TARGET_SELF)
    local f27_local13 = 0
    local f27_local14 = 0
    local f27_local15 = f27_arg0:GetRandam_Int(1, 100)
    local f27_local16 = f27_arg0:GetDist(TARGET_ENE_0)
    f27_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f27_local8, TARGET_ENE_0, f27_local10, f27_local13, f27_local14, 0, 0)
    f27_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, f27_local8, TARGET_ENE_0, f27_local10, f27_local13, f27_local14, 0, 0)
    f27_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, f27_local8, TARGET_ENE_0, f27_local11, f27_local13, f27_local14, 0, 0)
    f27_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f27_local9, TARGET_ENE_0, f27_local12, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function FullArmor_Act26(f28_arg0, f28_arg1, f28_arg2)
    f28_arg0:SetNumber(0, 1)
    f28_arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, 6, TARGET_SELF, true, 9910)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function FullArmor_ActAfter_AdjustSpace(f29_arg0, f29_arg1, f29_arg2)
    f29_arg1:AddSubGoal(GOAL_Fullarmor224000_AfterAttackAct, 10)
    
end

Goal.Interrupt = function (f30_arg0, f30_arg1, f30_arg2)
    return false
    
end

Goal.Update = function (f31_arg0, f31_arg1, f31_arg2)
    return Update_Default_NoSubGoal(f31_arg0, f31_arg1, f31_arg2)
    
end

Goal.Terminate = function (f32_arg0, f32_arg1, f32_arg2)
    
end

Goal.Interrupt = function (f33_arg0, f33_arg1, f33_arg2)
    if f33_arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) then
        local f33_local0 = f33_arg1:GetDist(TARGET_ENE_0)
        local f33_local1 = f33_arg1:GetRandam_Int(1, 100)
        if f33_arg1:GetSpecialEffectActivateInterruptType(0) == 5025 and InsideRange(f33_arg1, f33_arg2, 0, 60, 11, 17) then
            f33_arg2:ClearSubGoal()
            FullArmor_Act24(f33_arg1, f33_arg2, paramTbl)
        end
    end
    
end

RegisterTableGoal(GOAL_FullArmor_224000_SelectAttack, "FullArmor_224000_StepAttack")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_FullArmor_224000_SelectAttack, true)

Goal.Activate = function (f34_arg0, f34_arg1, f34_arg2)
    local f34_local0 = f34_arg1:GetDist(TARGET_ENE_0)
    if f34_arg1:IsInsideTargetEx(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_B, 120, 999) then
        return
    end
    local f34_local1 = f34_arg1:GetRandam_Int(1, 100)
    if f34_local1 <= 40 then
        f34_arg1:SetStringIndexedNumber("AddDistWalk", 2.2)
        f34_arg1:SetStringIndexedNumber("AddDistRun", 4.6)
        local f34_local2 = 9.5 - f34_arg1:GetMapHitRadius(TARGET_SELF)
        local f34_local3 = 9.5 - f34_arg1:GetMapHitRadius(TARGET_SELF)
        local f34_local4 = 9.5 - f34_arg1:GetMapHitRadius(TARGET_SELF)
        local f34_local5 = 100
        local f34_local6 = 0
        local f34_local7 = 4
        local f34_local8 = 4
        Approach_Act_Flex(f34_arg1, f34_arg2, f34_local2, f34_local3, f34_local4, f34_local5, f34_local6, f34_local7, f34_local8)
        local f34_local9 = 3009
        local f34_local10 = 3021
        local f34_local11 = 8.6 - f34_arg1:GetMapHitRadius(TARGET_SELF) + 1
        local f34_local12 = 10 - f34_arg1:GetMapHitRadius(TARGET_SELF)
        local f34_local13 = 0
        local f34_local14 = 0
        local f34_local15 = f34_arg1:GetRandam_Int(1, 100)
        if f34_local15 <= 50 then
            f34_arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f34_local9, TARGET_ENE_0, f34_local12, f34_local13, f34_local14, 0, 0)
        else
            f34_arg2:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f34_local9, TARGET_ENE_0, f34_local11, f34_local13, f34_local14, 0, 0)
            f34_arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f34_local10, TARGET_ENE_0, f34_local12, 0, 0)
        end
        GetWellSpace_Odds = 100
        return GetWellSpace_Odds
    elseif f34_local1 <= 70 then
        f34_arg1:SetStringIndexedNumber("AddDistWalk", 2.2)
        f34_arg1:SetStringIndexedNumber("AddDistRun", 4.8)
        local f34_local2 = 10.4 - f34_arg1:GetMapHitRadius(TARGET_SELF)
        local f34_local3 = 10.4 - f34_arg1:GetMapHitRadius(TARGET_SELF)
        local f34_local4 = 10.4 - f34_arg1:GetMapHitRadius(TARGET_SELF)
        local f34_local5 = 100
        local f34_local6 = 0
        local f34_local7 = 4
        local f34_local8 = 4
        Approach_Act_Flex(f34_arg1, f34_arg2, f34_local2, f34_local3, f34_local4, f34_local5, f34_local6, f34_local7, f34_local8)
        local f34_local9 = 3010
        local f34_local10 = 10 - f34_arg1:GetMapHitRadius(TARGET_SELF)
        local f34_local11 = 0
        local f34_local12 = 0
        f34_arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f34_local9, TARGET_ENE_0, f34_local10, f34_local11, f34_local12, 0, 0)
        GetWellSpace_Odds = 100
        return GetWellSpace_Odds
    else
        f34_arg1:SetStringIndexedNumber("AddDistWalk", 2.1)
        f34_arg1:SetStringIndexedNumber("AddDistRun", 4)
        local f34_local2 = 8.6 - f34_arg1:GetMapHitRadius(TARGET_SELF)
        local f34_local3 = 8.6 - f34_arg1:GetMapHitRadius(TARGET_SELF)
        local f34_local4 = 8.6 - f34_arg1:GetMapHitRadius(TARGET_SELF)
        local f34_local5 = 50
        local f34_local6 = 0
        local f34_local7 = 4
        local f34_local8 = 4
        Approach_Act_Flex(f34_arg1, f34_arg2, f34_local2, f34_local3, f34_local4, f34_local5, f34_local6, f34_local7, f34_local8)
        local f34_local9 = 3019
        local f34_local10 = 10 - f34_arg1:GetMapHitRadius(TARGET_SELF)
        local f34_local11 = 0
        local f34_local12 = 0
        f34_arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f34_local9, TARGET_ENE_0, f34_local10, f34_local11, f34_local12, 0, 0)
        GetWellSpace_Odds = 100
        return GetWellSpace_Odds
    end
    
end

Goal.Update = function (f35_arg0, f35_arg1, f35_arg2)
    return Update_Default_NoSubGoal(f35_arg0, f35_arg1, f35_arg2)
    
end


