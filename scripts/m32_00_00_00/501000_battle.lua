RegisterTableGoal(GOAL_StormyKing501000_Battle, "StormyKing501000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_StormyKing501000_Battle, true)

Goal.Initialize = function (f1_arg0, f1_arg1, f1_arg2, f1_arg3)
    f1_arg1:SetNumber(0, 0)
    
end

Goal.Activate = function (f2_arg0, f2_arg1, f2_arg2)
    Init_Pseudo_Global(f2_arg1, f2_arg2)
    f2_arg1:SetStringIndexedNumber("Dist_SideStep", 9)
    f2_arg1:SetStringIndexedNumber("Dist_BackStep", 9)
    local f2_local0 = {}
    local f2_local1 = {}
    local f2_local2 = {}
    Common_Clear_Param(f2_local0, f2_local1, f2_local2)
    f2_arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    f2_arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    f2_arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    f2_arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    f2_arg1:SetNumber(0, 0)
    f2_arg1:AddObserveArea(0, TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 180, 4.7 - f2_arg1:GetMapHitRadius(TARGET_SELF))
    local f2_local3 = f2_arg1:GetDist(TARGET_ENE_0)
    local f2_local4 = f2_arg1:GetRandam_Int(1, 100)
    local f2_local5 = f2_arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    if f2_arg1:GetHpRate(TARGET_SELF) <= 0.6 and f2_arg1:GetNumber(1) == 0 then
        f2_local0[47] = 100
    elseif f2_arg1:GetHpRate(TARGET_SELF) >= 0.6 then
        if f2_arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 90) and f2_local3 <= 4 then
            f2_local0[12] = 40
            f2_local0[19] = 40
            f2_local0[30] = 20
        elseif f2_arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 90) and f2_local3 <= 7 then
            f2_local0[3] = 20
            f2_local0[17] = 10
            f2_local0[30] = 20
        elseif f2_arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 90) and f2_local3 <= 7 then
            f2_local0[1] = 20
            f2_local0[18] = 10
            f2_local0[30] = 20
        elseif f2_arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 90) and f2_local3 > 7 then
            f2_local0[13] = 25
            f2_local0[14] = 25
            f2_local0[30] = 40
            f2_local0[17] = 10
        elseif f2_arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 90) and f2_local3 > 7 then
            f2_local0[13] = 25
            f2_local0[14] = 25
            f2_local0[30] = 40
            f2_local0[18] = 10
        elseif f2_arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 180) then
            f2_local0[30] = 100
        elseif f2_local3 >= 20 then
            f2_local0[1] = 0
            f2_local0[2] = 45
            f2_local0[3] = 0
            f2_local0[4] = 0
            f2_local0[5] = 0
            f2_local0[6] = 0
            f2_local0[10] = 30
            f2_local0[11] = 10
            f2_local0[12] = 0
            f2_local0[13] = 10
            f2_local0[14] = 5
            f2_local0[15] = 30
            f2_local0[16] = 0
        elseif f2_local3 >= 15 then
            f2_local0[1] = 0
            f2_local0[2] = 15
            f2_local0[3] = 0
            f2_local0[4] = 0
            f2_local0[5] = 5
            f2_local0[6] = 0
            f2_local0[10] = 15
            f2_local0[11] = 15
            f2_local0[13] = 40
            f2_local0[14] = 10
            f2_local0[15] = 15
            f2_local0[16] = 0
        elseif f2_local3 >= 10 then
            f2_local0[1] = 0
            f2_local0[2] = 0
            f2_local0[3] = 0
            f2_local0[4] = 0
            f2_local0[5] = 20
            f2_local0[6] = 0
            f2_local0[10] = 0
            f2_local0[11] = 25
            f2_local0[13] = 20
            f2_local0[14] = 35
            f2_local0[15] = 0
            f2_local0[16] = 0
        elseif f2_local3 >= 5 then
            f2_local0[1] = 0
            f2_local0[2] = 0
            f2_local0[3] = 0
            f2_local0[4] = 0
            f2_local0[5] = 20
            f2_local0[6] = 25
            f2_local0[10] = 0
            f2_local0[11] = 15
            f2_local0[13] = 15
            f2_local0[14] = 10
            f2_local0[15] = 15
            f2_local0[16] = 5
        elseif f2_local3 >= 3 then
            f2_local0[1] = 15
            f2_local0[2] = 0
            f2_local0[3] = 15
            f2_local0[4] = 15
            f2_local0[5] = 10
            f2_local0[6] = 10
            f2_local0[10] = 0
            f2_local0[11] = 0
            f2_local0[13] = 0
            f2_local0[14] = 0
            f2_local0[15] = 15
            f2_local0[16] = 15
        else
            f2_local0[1] = 15
            f2_local0[2] = 0
            f2_local0[3] = 15
            f2_local0[4] = 15
            f2_local0[5] = 10
            f2_local0[6] = 10
            f2_local0[10] = 0
            f2_local0[11] = 0
            f2_local0[13] = 0
            f2_local0[14] = 0
            f2_local0[15] = 0
            f2_local0[16] = 15
        end
    elseif f2_arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 90) and f2_local3 <= 4 then
        f2_local0[12] = 30
        f2_local0[19] = 30
        f2_local0[30] = 10
        f2_local0[41] = 20
        f2_local0[43] = 10
    elseif f2_arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 90) and f2_local3 <= 7 then
        f2_local0[3] = 10
        f2_local0[30] = 20
        f2_local0[17] = 10
        f2_local0[41] = 20
        f2_local0[43] = 10
    elseif f2_arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 90) and f2_local3 <= 7 then
        f2_local0[1] = 10
        f2_local0[18] = 10
        f2_local0[30] = 20
        f2_local0[41] = 20
        f2_local0[43] = 10
    elseif f2_arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 90) and f2_local3 > 7 then
        f2_local0[13] = 20
        f2_local0[14] = 20
        f2_local0[30] = 30
        f2_local0[17] = 10
        f2_local0[41] = 20
    elseif f2_arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 90) and f2_local3 > 7 then
        f2_local0[13] = 20
        f2_local0[14] = 20
        f2_local0[30] = 30
        f2_local0[18] = 10
        f2_local0[41] = 20
    elseif f2_arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 180) then
        f2_local0[30] = 80
        f2_local0[41] = 20
    elseif f2_local3 >= 20 then
        f2_local0[1] = 0
        f2_local0[2] = 35
        f2_local0[3] = 0
        f2_local0[4] = 0
        f2_local0[5] = 0
        f2_local0[6] = 0
        f2_local0[10] = 20
        f2_local0[12] = 0
        f2_local0[13] = 10
        f2_local0[14] = 5
        f2_local0[15] = 10
        f2_local0[16] = 0
        f2_local0[40] = 0
        f2_local0[41] = 20
        f2_local0[42] = 0
        f2_local0[43] = 0
        f2_local0[44] = 0
        f2_local0[45] = 0
        f2_local0[46] = 10
    elseif f2_local3 >= 15 then
        f2_local0[1] = 0
        f2_local0[2] = 10
        f2_local0[3] = 0
        f2_local0[4] = 0
        f2_local0[5] = 5
        f2_local0[6] = 0
        f2_local0[10] = 10
        f2_local0[13] = 30
        f2_local0[14] = 0
        f2_local0[15] = 5
        f2_local0[16] = 0
        f2_local0[40] = 0
        f2_local0[41] = 20
        f2_local0[42] = 0
        f2_local0[43] = 0
        f2_local0[44] = 0
        f2_local0[45] = 0
        f2_local0[46] = 25
    elseif f2_local3 >= 10 then
        f2_local0[1] = 0
        f2_local0[2] = 0
        f2_local0[3] = 0
        f2_local0[4] = 0
        f2_local0[5] = 5
        f2_local0[6] = 0
        f2_local0[10] = 0
        f2_local0[13] = 20
        f2_local0[14] = 25
        f2_local0[15] = 0
        f2_local0[16] = 0
        f2_local0[40] = 0
        f2_local0[41] = 20
        f2_local0[42] = 0
        f2_local0[43] = 0
        f2_local0[44] = 0
        f2_local0[45] = 5
        f2_local0[46] = 25
    elseif f2_local3 >= 5 then
        f2_local0[1] = 0
        f2_local0[2] = 0
        f2_local0[3] = 0
        f2_local0[4] = 0
        f2_local0[5] = 10
        f2_local0[6] = 10
        f2_local0[10] = 0
        f2_local0[13] = 10
        f2_local0[14] = 5
        f2_local0[15] = 0
        f2_local0[16] = 5
        f2_local0[40] = 0
        f2_local0[41] = 20
        f2_local0[42] = 10
        f2_local0[43] = 0
        f2_local0[44] = 5
        f2_local0[45] = 15
        f2_local0[46] = 25
    elseif f2_local3 >= 3 then
        f2_local0[1] = 5
        f2_local0[2] = 0
        f2_local0[3] = 0
        f2_local0[4] = 5
        f2_local0[5] = 5
        f2_local0[6] = 5
        f2_local0[10] = 0
        f2_local0[13] = 0
        f2_local0[14] = 0
        f2_local0[15] = 20
        f2_local0[16] = 0
        f2_local0[40] = 10
        f2_local0[41] = 20
        f2_local0[42] = 0
        f2_local0[43] = 0
        f2_local0[44] = 15
        f2_local0[45] = 15
        f2_local0[46] = 0
    else
        f2_local0[1] = 5
        f2_local0[2] = 0
        f2_local0[3] = 0
        f2_local0[4] = 5
        f2_local0[5] = 5
        f2_local0[6] = 5
        f2_local0[10] = 0
        f2_local0[13] = 0
        f2_local0[14] = 0
        f2_local0[15] = 0
        f2_local0[16] = 0
        f2_local0[40] = 15
        f2_local0[41] = 20
        f2_local0[42] = 0
        f2_local0[43] = 0
        f2_local0[44] = 15
        f2_local0[45] = 15
        f2_local0[46] = 0
    end
    f2_local0[1] = SetCoolTime(f2_arg1, f2_arg2, 3003, 15, f2_local0[1], 1)
    f2_local0[2] = SetCoolTime(f2_arg1, f2_arg2, 3000, 15, f2_local0[2], 1)
    f2_local0[3] = SetCoolTime(f2_arg1, f2_arg2, 3004, 15, f2_local0[3], 1)
    f2_local0[4] = SetCoolTime(f2_arg1, f2_arg2, 3008, 15, f2_local0[4], 1)
    f2_local0[5] = SetCoolTime(f2_arg1, f2_arg2, 3016, 20, f2_local0[5], 1)
    f2_local0[6] = SetCoolTime(f2_arg1, f2_arg2, 3027, 15, f2_local0[6], 1)
    f2_local0[10] = SetCoolTime(f2_arg1, f2_arg2, 3002, 15, f2_local0[10], 1)
    f2_local0[11] = SetCoolTime(f2_arg1, f2_arg2, 3006, 30, f2_local0[11], 1)
    f2_local0[12] = SetCoolTime(f2_arg1, f2_arg2, 3011, 5, f2_local0[12], 1)
    f2_local0[13] = SetCoolTime(f2_arg1, f2_arg2, 3018, 20, f2_local0[13], 1)
    f2_local0[14] = SetCoolTime(f2_arg1, f2_arg2, 3019, 30, f2_local0[14], 1)
    f2_local0[15] = SetCoolTime(f2_arg1, f2_arg2, 3022, 15, f2_local0[15], 1)
    f2_local0[16] = SetCoolTime(f2_arg1, f2_arg2, 3009, 15, f2_local0[16], 1)
    f2_local0[20] = SetCoolTime(f2_arg1, f2_arg2, 3020, 15, f2_local0[20], 1)
    f2_local0[21] = SetCoolTime(f2_arg1, f2_arg2, 3021, 15, f2_local0[21], 1)
    f2_local0[22] = SetCoolTime(f2_arg1, f2_arg2, 3001, 15, f2_local0[22], 1)
    f2_local0[23] = SetCoolTime(f2_arg1, f2_arg2, 3017, 15, f2_local0[23], 1)
    f2_local0[33] = SetCoolTime(f2_arg1, f2_arg2, 6000, 25, f2_local0[33], 1)
    f2_local0[34] = SetCoolTime(f2_arg1, f2_arg2, 6001, 25, f2_local0[34], 1)
    f2_local0[35] = SetCoolTime(f2_arg1, f2_arg2, 6003, 25, f2_local0[35], 1)
    f2_local0[36] = SetCoolTime(f2_arg1, f2_arg2, 6002, 25, f2_local0[36], 1)
    f2_local0[40] = SetCoolTime(f2_arg1, f2_arg2, 3019, 25, f2_local0[40], 1)
    f2_local0[41] = SetCoolTime(f2_arg1, f2_arg2, 3027, 40, f2_local0[41], 1)
    f2_local0[42] = SetCoolTime(f2_arg1, f2_arg2, 3028, 25, f2_local0[42], 1)
    f2_local0[43] = SetCoolTime(f2_arg1, f2_arg2, 3015, 25, f2_local0[43], 1)
    f2_local0[44] = SetCoolTime(f2_arg1, f2_arg2, 3003, 25, f2_local0[44], 1)
    f2_local0[45] = SetCoolTime(f2_arg1, f2_arg2, 3016, 25, f2_local0[45], 1)
    f2_local0[46] = SetCoolTime(f2_arg1, f2_arg2, 3029, 25, f2_local0[46], 1)
    f2_local0[47] = SetCoolTime(f2_arg1, f2_arg2, 3027, 25, f2_local0[47], 1)
    f2_local0[47] = SetCoolTime(f2_arg1, f2_arg2, 3028, 25, f2_local0[47], 1)
    f2_local1[1] = REGIST_FUNC(f2_arg1, f2_arg2, StormyKing501000_Act01)
    f2_local1[2] = REGIST_FUNC(f2_arg1, f2_arg2, StormyKing501000_Act02)
    f2_local1[3] = REGIST_FUNC(f2_arg1, f2_arg2, StormyKing501000_Act03)
    f2_local1[4] = REGIST_FUNC(f2_arg1, f2_arg2, StormyKing501000_Act04)
    f2_local1[5] = REGIST_FUNC(f2_arg1, f2_arg2, StormyKing501000_Act05)
    f2_local1[6] = REGIST_FUNC(f2_arg1, f2_arg2, StormyKing501000_Act06)
    f2_local1[10] = REGIST_FUNC(f2_arg1, f2_arg2, StormyKing501000_Act10)
    f2_local1[11] = REGIST_FUNC(f2_arg1, f2_arg2, StormyKing501000_Act11)
    f2_local1[12] = REGIST_FUNC(f2_arg1, f2_arg2, StormyKing501000_Act12)
    f2_local1[13] = REGIST_FUNC(f2_arg1, f2_arg2, StormyKing501000_Act13)
    f2_local1[14] = REGIST_FUNC(f2_arg1, f2_arg2, StormyKing501000_Act14)
    f2_local1[15] = REGIST_FUNC(f2_arg1, f2_arg2, StormyKing501000_Act15)
    f2_local1[16] = REGIST_FUNC(f2_arg1, f2_arg2, StormyKing501000_Act16)
    f2_local1[17] = REGIST_FUNC(f2_arg1, f2_arg2, StormyKing501000_Act17)
    f2_local1[18] = REGIST_FUNC(f2_arg1, f2_arg2, StormyKing501000_Act18)
    f2_local1[19] = REGIST_FUNC(f2_arg1, f2_arg2, StormyKing501000_Act19)
    f2_local1[20] = REGIST_FUNC(f2_arg1, f2_arg2, StormyKing501000_Act20)
    f2_local1[21] = REGIST_FUNC(f2_arg1, f2_arg2, StormyKing501000_Act21)
    f2_local1[22] = REGIST_FUNC(f2_arg1, f2_arg2, StormyKing501000_Act22)
    f2_local1[23] = REGIST_FUNC(f2_arg1, f2_arg2, StormyKing501000_Act23)
    f2_local1[24] = REGIST_FUNC(f2_arg1, f2_arg2, StormyKing501000_Act24)
    f2_local1[25] = REGIST_FUNC(f2_arg1, f2_arg2, StormyKing501000_Act25)
    f2_local1[26] = REGIST_FUNC(f2_arg1, f2_arg2, StormyKing501000_Act26)
    f2_local1[27] = REGIST_FUNC(f2_arg1, f2_arg2, StormyKing501000_Act27)
    f2_local1[30] = REGIST_FUNC(f2_arg1, f2_arg2, StormyKing501000_Act30)
    f2_local1[32] = REGIST_FUNC(f2_arg1, f2_arg2, StormyKing501000_Act32)
    f2_local1[33] = REGIST_FUNC(f2_arg1, f2_arg2, StormyKing501000_Act33)
    f2_local1[34] = REGIST_FUNC(f2_arg1, f2_arg2, StormyKing501000_Act34)
    f2_local1[35] = REGIST_FUNC(f2_arg1, f2_arg2, StormyKing501000_Act35)
    f2_local1[36] = REGIST_FUNC(f2_arg1, f2_arg2, StormyKing501000_Act36)
    f2_local1[37] = REGIST_FUNC(f2_arg1, f2_arg2, StormyKing501000_Act37)
    f2_local1[40] = REGIST_FUNC(f2_arg1, f2_arg2, StormyKing501000_Act40)
    f2_local1[41] = REGIST_FUNC(f2_arg1, f2_arg2, StormyKing501000_Act41)
    f2_local1[42] = REGIST_FUNC(f2_arg1, f2_arg2, StormyKing501000_Act42)
    f2_local1[43] = REGIST_FUNC(f2_arg1, f2_arg2, StormyKing501000_Act43)
    f2_local1[44] = REGIST_FUNC(f2_arg1, f2_arg2, StormyKing501000_Act44)
    f2_local1[45] = REGIST_FUNC(f2_arg1, f2_arg2, StormyKing501000_Act45)
    f2_local1[46] = REGIST_FUNC(f2_arg1, f2_arg2, StormyKing501000_Act46)
    f2_local1[47] = REGIST_FUNC(f2_arg1, f2_arg2, StormyKing501000_Act47)
    local f2_local6 = REGIST_FUNC(f2_arg1, f2_arg2, StormyKing501000_ActAfter_AdjustSpace)
    Common_Battle_Activate(f2_arg1, f2_arg2, f2_local0, f2_local1, f2_local6, f2_local2)
    
end

function StormyKing501000_Act01(f3_arg0, f3_arg1, f3_arg2)
    local f3_local0 = 7.9 - f3_arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local1 = 7.9 - f3_arg0:GetMapHitRadius(TARGET_SELF) + 998
    local f3_local2 = 7.9 - f3_arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f3_local3 = 0
    local f3_local4 = 0
    local f3_local5 = 5
    local f3_local6 = 5
    Approach_Act_Flex(f3_arg0, f3_arg1, f3_local0, f3_local1, f3_local2, f3_local3, f3_local4, f3_local5, f3_local6)
    local f3_local7 = 3003
    local f3_local8 = 3012
    local f3_local9 = 3013
    local f3_local10 = 5.8 - f3_arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f3_local11 = 12.9 - f3_arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f3_local12 = 6.6 - f3_arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local13 = 0
    local f3_local14 = 0
    local f3_local15 = f3_arg0:GetRandam_Int(1, 100)
    f3_arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    f3_arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    f3_arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    if f3_local15 <= 20 then
        f3_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f3_local7, TARGET_ENE_0, f3_local12, f3_local13, f3_local14, 0, 0)
    elseif f3_local15 <= 30 then
        f3_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f3_local7, TARGET_ENE_0, f3_local10, f3_local13, f3_local14, 0, 0)
        f3_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f3_local8, TARGET_ENE_0, f3_local12, 0, 0)
    else
        f3_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f3_local7, TARGET_ENE_0, f3_local10, f3_local13, f3_local14, 0, 0)
        f3_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f3_local8, TARGET_ENE_0, f3_local11, f3_local13, f3_local14, 0, 0)
        f3_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f3_local9, TARGET_ENE_0, f3_local12, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function StormyKing501000_Act02(f4_arg0, f4_arg1, f4_arg2)
    local f4_local0 = 3000
    local f4_local1 = 3001
    local f4_local2 = 71.6 - f4_arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f4_local3 = 6.6 - f4_arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local4 = 0
    local f4_local5 = 0
    local f4_local6 = f4_arg0:GetRandam_Int(1, 100)
    f4_arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    f4_arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    if f4_local6 <= 35 then
        f4_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f4_local0, TARGET_ENE_0, f4_local3, f4_local4, f4_local5, 0, 0)
    else
        f4_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f4_local0, TARGET_ENE_0, f4_local2, f4_local4, f4_local5, 0, 0)
        f4_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f4_local1, TARGET_ENE_0, f4_local3, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function StormyKing501000_Act03(f5_arg0, f5_arg1, f5_arg2)
    local f5_local0 = 6.8 - f5_arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local1 = 6.8 - f5_arg0:GetMapHitRadius(TARGET_SELF) + 998
    local f5_local2 = 6.8 - f5_arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f5_local3 = 0
    local f5_local4 = 0
    local f5_local5 = 5
    local f5_local6 = 5
    Approach_Act_Flex(f5_arg0, f5_arg1, f5_local0, f5_local1, f5_local2, f5_local3, f5_local4, f5_local5, f5_local6)
    local f5_local7 = 3004
    local f5_local8 = 3005
    local f5_local9 = 11.1 - f5_arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f5_local10 = 6.6 - f5_arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local11 = 0
    local f5_local12 = 0
    local f5_local13 = f5_arg0:GetRandam_Int(1, 100)
    f5_arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    f5_arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    if f5_local13 <= 30 then
        f5_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f5_local7, TARGET_ENE_0, f5_local10, f5_local11, f5_local12, 0, 0)
    else
        f5_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f5_local7, TARGET_ENE_0, f5_local9, f5_local11, f5_local12, 0, 0)
        f5_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f5_local8, TARGET_ENE_0, f5_local10, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function StormyKing501000_Act04(f6_arg0, f6_arg1, f6_arg2)
    local f6_local0 = 7.9 - f6_arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local1 = 7.9 - f6_arg0:GetMapHitRadius(TARGET_SELF) + 998
    local f6_local2 = 7.9 - f6_arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f6_local3 = 0
    local f6_local4 = 0
    local f6_local5 = 5
    local f6_local6 = 5
    Approach_Act_Flex(f6_arg0, f6_arg1, f6_local0, f6_local1, f6_local2, f6_local3, f6_local4, f6_local5, f6_local6)
    local f6_local7 = 3008
    local f6_local8 = 3014
    local f6_local9 = 3005
    local f6_local10 = 5.3 - f6_arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f6_local11 = 11.1 - f6_arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f6_local12 = 6.6 - f6_arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local13 = 0
    local f6_local14 = 0
    local f6_local15 = f6_arg0:GetRandam_Int(1, 100)
    f6_arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    f6_arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    f6_arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    if f6_local15 <= 30 then
        f6_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f6_local7, TARGET_ENE_0, f6_local12, f6_local13, f6_local14, 0, 0)
    elseif f6_local15 <= 60 then
        f6_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f6_local7, TARGET_ENE_0, f6_local10, f6_local13, f6_local14, 0, 0)
        f6_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f6_local8, TARGET_ENE_0, f6_local12, 0, 0)
    else
        f6_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f6_local7, TARGET_ENE_0, f6_local10, f6_local13, f6_local14, 0, 0)
        f6_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f6_local8, TARGET_ENE_0, f6_local11, f6_local13, f6_local14, 0, 0)
        f6_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f6_local9, TARGET_ENE_0, f6_local12, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function StormyKing501000_Act05(f7_arg0, f7_arg1, f7_arg2)
    local f7_local0 = 10.1 - f7_arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local1 = 10.1 - f7_arg0:GetMapHitRadius(TARGET_SELF) + 998
    local f7_local2 = 10.1 - f7_arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f7_local3 = 0
    local f7_local4 = 0
    local f7_local5 = 5
    local f7_local6 = 5
    Approach_Act_Flex(f7_arg0, f7_arg1, f7_local0, f7_local1, f7_local2, f7_local3, f7_local4, f7_local5, f7_local6)
    local f7_local7 = 3016
    local f7_local8 = 3017
    local f7_local9 = 3012
    local f7_local10 = 14.4 - f7_arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f7_local11 = 5.8 - f7_arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f7_local12 = 6.6 - f7_arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local13 = 0
    local f7_local14 = 0
    local f7_local15 = f7_arg0:GetRandam_Int(1, 100)
    f7_arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    f7_arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    f7_arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    if f7_local15 <= 50 then
        f7_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f7_local7, TARGET_ENE_0, f7_local10, f7_local13, f7_local14, 0, 0)
        f7_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f7_local8, TARGET_ENE_0, f7_local12, 0, 0)
    else
        f7_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f7_local7, TARGET_ENE_0, f7_local10, f7_local13, f7_local14, 0, 0)
        f7_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f7_local8, TARGET_ENE_0, f7_local11, f7_local13, f7_local14, 0, 0)
        f7_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f7_local9, TARGET_ENE_0, f7_local12, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function StormyKing501000_Act06(f8_arg0, f8_arg1, f8_arg2)
    local f8_local0 = 9 - f8_arg0:GetMapHitRadius(TARGET_SELF)
    local f8_local1 = 9 - f8_arg0:GetMapHitRadius(TARGET_SELF) + 0.9
    local f8_local2 = 9 - f8_arg0:GetMapHitRadius(TARGET_SELF) + 4
    local f8_local3 = 0
    local f8_local4 = 0
    local f8_local5 = 5
    local f8_local6 = 5
    Approach_Act_Flex(f8_arg0, f8_arg1, f8_local0, f8_local1, f8_local2, f8_local3, f8_local4, f8_local5, f8_local6)
    local f8_local7 = 3023
    local f8_local8 = 3017
    local f8_local9 = 3014
    local f8_local10 = 14.4 - f8_arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f8_local11 = 5.3 - f8_arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f8_local12 = 6.6 - f8_arg0:GetMapHitRadius(TARGET_SELF)
    local f8_local13 = 0
    local f8_local14 = 0
    local f8_local15 = f8_arg0:GetRandam_Int(1, 100)
    if f8_local15 <= 10 then
        f8_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f8_local7, TARGET_ENE_0, f8_local12, f8_local13, f8_local14, 0, 0)
    elseif f8_local15 <= 50 then
        f8_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f8_local7, TARGET_ENE_0, f8_local10, f8_local13, f8_local14, 0, 0)
        f8_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f8_local8, TARGET_ENE_0, f8_local12, 0, 0)
    else
        f8_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f8_local7, TARGET_ENE_0, f8_local10, f8_local13, f8_local14, 0, 0)
        f8_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f8_local8, TARGET_ENE_0, f8_local11, f8_local13, f8_local14, 0, 0)
        f8_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f8_local9, TARGET_ENE_0, f8_local12, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function StormyKing501000_Act10(f9_arg0, f9_arg1, f9_arg2)
    local f9_local0 = 110.6 - f9_arg0:GetMapHitRadius(TARGET_SELF)
    local f9_local1 = 110.6 - f9_arg0:GetMapHitRadius(TARGET_SELF) + 998
    local f9_local2 = 110.6 - f9_arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f9_local3 = 0
    local f9_local4 = 0
    local f9_local5 = 5
    local f9_local6 = 5
    Approach_Act_Flex(f9_arg0, f9_arg1, f9_local0, f9_local1, f9_local2, f9_local3, f9_local4, f9_local5, f9_local6)
    local f9_local7 = 3002
    local f9_local8 = 6.6 - f9_arg0:GetMapHitRadius(TARGET_SELF)
    local f9_local9 = 0
    local f9_local10 = 0
    local f9_local11 = f9_arg0:GetRandam_Int(1, 100)
    f9_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f9_local7, TARGET_ENE_0, f9_local8, f9_local9, f9_local10, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function StormyKing501000_Act11(f10_arg0, f10_arg1, f10_arg2)
    local f10_local0 = 16.2 - f10_arg0:GetMapHitRadius(TARGET_SELF)
    local f10_local1 = 16.2 - f10_arg0:GetMapHitRadius(TARGET_SELF) + 998
    local f10_local2 = 16.2 - f10_arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f10_local3 = 0
    local f10_local4 = 0
    local f10_local5 = 5
    local f10_local6 = 5
    Approach_Act_Flex(f10_arg0, f10_arg1, f10_local0, f10_local1, f10_local2, f10_local3, f10_local4, f10_local5, f10_local6)
    local f10_local7 = 3006
    local f10_local8 = 6.6 - f10_arg0:GetMapHitRadius(TARGET_SELF)
    local f10_local9 = 0
    local f10_local10 = 0
    local f10_local11 = f10_arg0:GetRandam_Int(1, 100)
    f10_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f10_local7, TARGET_ENE_0, f10_local8, f10_local9, f10_local10, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function StormyKing501000_Act12(f11_arg0, f11_arg1, f11_arg2)
    local f11_local0 = 3011
    local f11_local1 = 6.6 - f11_arg0:GetMapHitRadius(TARGET_SELF)
    local f11_local2 = 0
    local f11_local3 = 0
    local f11_local4 = f11_arg0:GetRandam_Int(1, 100)
    f11_arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    f11_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f11_local0, TARGET_ENE_0, f11_local1, f11_local2, f11_local3, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function StormyKing501000_Act13(f12_arg0, f12_arg1, f12_arg2)
    local f12_local0 = 13.8 - f12_arg0:GetMapHitRadius(TARGET_SELF)
    local f12_local1 = 13.8 - f12_arg0:GetMapHitRadius(TARGET_SELF) + 998
    local f12_local2 = 13.8 - f12_arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f12_local3 = 0
    local f12_local4 = 0
    local f12_local5 = 5
    local f12_local6 = 5
    Approach_Act_Flex(f12_arg0, f12_arg1, f12_local0, f12_local1, f12_local2, f12_local3, f12_local4, f12_local5, f12_local6)
    local f12_local7 = 3018
    local f12_local8 = 6.6 - f12_arg0:GetMapHitRadius(TARGET_SELF)
    local f12_local9 = 0
    local f12_local10 = 0
    local f12_local11 = f12_arg0:GetRandam_Int(1, 100)
    f12_arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    f12_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f12_local7, TARGET_ENE_0, f12_local8, f12_local9, f12_local10, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function StormyKing501000_Act14(f13_arg0, f13_arg1, f13_arg2)
    local f13_local0 = 12 - f13_arg0:GetMapHitRadius(TARGET_SELF)
    local f13_local1 = 12 - f13_arg0:GetMapHitRadius(TARGET_SELF) + 998
    local f13_local2 = 12 - f13_arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f13_local3 = 0
    local f13_local4 = 0
    local f13_local5 = 5
    local f13_local6 = 5
    Approach_Act_Flex(f13_arg0, f13_arg1, f13_local0, f13_local1, f13_local2, f13_local3, f13_local4, f13_local5, f13_local6)
    local f13_local7 = 3025
    local f13_local8 = 6.6 - f13_arg0:GetMapHitRadius(TARGET_SELF)
    local f13_local9 = 1.5
    local f13_local10 = 60
    local f13_local11 = f13_arg0:GetRandam_Int(1, 100)
    f13_arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    f13_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f13_local7, TARGET_ENE_0, f13_local8, f13_local9, f13_local10, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function StormyKing501000_Act15(f14_arg0, f14_arg1, f14_arg2)
    local f14_local0 = 22.6 - f14_arg0:GetMapHitRadius(TARGET_SELF)
    local f14_local1 = 22.6 - f14_arg0:GetMapHitRadius(TARGET_SELF) + 998
    local f14_local2 = 22.6 - f14_arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f14_local3 = 0
    local f14_local4 = 0
    local f14_local5 = 5
    local f14_local6 = 5
    Approach_Act_Flex(f14_arg0, f14_arg1, f14_local0, f14_local1, f14_local2, f14_local3, f14_local4, f14_local5, f14_local6)
    local f14_local7 = 3022
    local f14_local8 = 6.6 - f14_arg0:GetMapHitRadius(TARGET_SELF)
    local f14_local9 = 0
    local f14_local10 = 0
    local f14_local11 = f14_arg0:GetRandam_Int(1, 100)
    f14_arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    f14_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f14_local7, TARGET_ENE_0, f14_local8, f14_local9, f14_local10, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function StormyKing501000_Act16(f15_arg0, f15_arg1, f15_arg2)
    local f15_local0 = 6.5 - f15_arg0:GetMapHitRadius(TARGET_SELF)
    local f15_local1 = 6.5 - f15_arg0:GetMapHitRadius(TARGET_SELF) + 998
    local f15_local2 = 6.5 - f15_arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f15_local3 = 0
    local f15_local4 = 0
    local f15_local5 = 5
    local f15_local6 = 5
    Approach_Act_Flex(f15_arg0, f15_arg1, f15_local0, f15_local1, f15_local2, f15_local3, f15_local4, f15_local5, f15_local6)
    local f15_local7 = 3009
    local f15_local8 = 6.6 - f15_arg0:GetMapHitRadius(TARGET_SELF)
    local f15_local9 = 0
    local f15_local10 = 0
    local f15_local11 = f15_arg0:GetRandam_Int(1, 100)
    f15_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f15_local7, TARGET_ENE_0, f15_local8, f15_local9, f15_local10, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function StormyKing501000_Act17(f16_arg0, f16_arg1, f16_arg2)
    local f16_local0 = 3023
    local f16_local1 = 6.6 - f16_arg0:GetMapHitRadius(TARGET_SELF)
    local f16_local2 = 0
    local f16_local3 = 0
    local f16_local4 = f16_arg0:GetRandam_Int(1, 100)
    f16_arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    f16_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f16_local0, TARGET_ENE_0, f16_local1, f16_local2, f16_local3, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function StormyKing501000_Act18(f17_arg0, f17_arg1, f17_arg2)
    local f17_local0 = 3024
    local f17_local1 = 6.6 - f17_arg0:GetMapHitRadius(TARGET_SELF)
    local f17_local2 = 0
    local f17_local3 = 0
    local f17_local4 = f17_arg0:GetRandam_Int(1, 100)
    f17_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f17_local0, TARGET_ENE_0, f17_local1, f17_local2, f17_local3, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function StormyKing501000_Act19(f18_arg0, f18_arg1, f18_arg2)
    local f18_local0 = 3026
    local f18_local1 = 6.6 - f18_arg0:GetMapHitRadius(TARGET_SELF)
    local f18_local2 = 0
    local f18_local3 = 0
    local f18_local4 = f18_arg0:GetRandam_Int(1, 100)
    f18_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f18_local0, TARGET_ENE_0, f18_local1, f18_local2, f18_local3, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function StormyKing501000_Act20(f19_arg0, f19_arg1, f19_arg2)
    f19_arg0:SetNumber(0, f19_arg0:GetNumber(0) + 1)
    local f19_local0 = 3020
    local f19_local1 = 6.6 - f19_arg0:GetMapHitRadius(TARGET_SELF)
    local f19_local2 = 0
    local f19_local3 = 0
    local f19_local4 = f19_arg0:GetRandam_Int(1, 100)
    f19_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f19_local0, TARGET_ENE_0, f19_local1, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function StormyKing501000_Act21(f20_arg0, f20_arg1, f20_arg2)
    local f20_local0 = 3005
    local f20_local1 = 6.6 - f20_arg0:GetMapHitRadius(TARGET_SELF)
    local f20_local2 = 0
    local f20_local3 = 0
    local f20_local4 = f20_arg0:GetRandam_Int(1, 100)
    f20_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f20_local0, TARGET_ENE_0, f20_local1, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function StormyKing501000_Act22(f21_arg0, f21_arg1, f21_arg2)
    local f21_local0 = 3013
    local f21_local1 = 6.6 - f21_arg0:GetMapHitRadius(TARGET_SELF)
    local f21_local2 = 0
    local f21_local3 = 0
    local f21_local4 = f21_arg0:GetRandam_Int(1, 100)
    f21_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f21_local0, TARGET_ENE_0, f21_local1, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function StormyKing501000_Act23(f22_arg0, f22_arg1, f22_arg2)
    local f22_local0 = 3017
    local f22_local1 = 6.6 - f22_arg0:GetMapHitRadius(TARGET_SELF)
    local f22_local2 = 0
    local f22_local3 = 0
    local f22_local4 = f22_arg0:GetRandam_Int(1, 100)
    f22_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f22_local0, TARGET_ENE_0, f22_local1, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function StormyKing501000_Act24(f23_arg0, f23_arg1, f23_arg2)
    local f23_local0 = 3021
    local f23_local1 = 6.6 - f23_arg0:GetMapHitRadius(TARGET_SELF)
    local f23_local2 = 0
    local f23_local3 = 0
    local f23_local4 = f23_arg0:GetRandam_Int(1, 100)
    f23_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f23_local0, TARGET_ENE_0, f23_local1, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function StormyKing501000_Act25(f24_arg0, f24_arg1, f24_arg2)
    local f24_local0 = 3002
    local f24_local1 = 6.6 - f24_arg0:GetMapHitRadius(TARGET_SELF)
    local f24_local2 = 0
    local f24_local3 = 0
    local f24_local4 = f24_arg0:GetRandam_Int(1, 100)
    f24_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f24_local0, TARGET_ENE_0, f24_local1, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function StormyKing501000_Act26(f25_arg0, f25_arg1, f25_arg2)
    local f25_local0 = 3012
    local f25_local1 = 6.6 - f25_arg0:GetMapHitRadius(TARGET_SELF)
    local f25_local2 = 0
    local f25_local3 = 0
    local f25_local4 = f25_arg0:GetRandam_Int(1, 100)
    f25_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f25_local0, TARGET_ENE_0, f25_local1, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function StormyKing501000_Act27(f26_arg0, f26_arg1, f26_arg2)
    local f26_local0 = 3014
    local f26_local1 = 6.6 - f26_arg0:GetMapHitRadius(TARGET_SELF)
    local f26_local2 = 0
    local f26_local3 = 0
    local f26_local4 = f26_arg0:GetRandam_Int(1, 100)
    f26_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f26_local0, TARGET_ENE_0, f26_local1, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function StormyKing501000_Act30(f27_arg0, f27_arg1, f27_arg2)
    f27_arg1:AddSubGoal(GOAL_COMMON_Turn, 1.5, TARGET_ENE_0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function StormyKing501000_Act31(f28_arg0, f28_arg1, f28_arg2)
    local f28_local0 = f28_arg0:GetDist(TARGET_ENE_0)
    local f28_local1 = 10
    local f28_local2 = 12
    if f28_local1 <= f28_local0 then
        Approach_Act(f28_arg0, f28_arg1, f28_local1, f28_local2, Odds_Guard, 3)
    end
    f28_arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, f28_local1, TARGET_ENE_0, true, -1)
    
end

function StormyKing501000_Act32(f29_arg0, f29_arg1, f29_arg2)
    local f29_local0 = f29_arg0:GetRandam_Int(0, 1)
    f29_arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 4, TARGET_ENE_0, f29_local0, f29_arg0:GetRandam_Int(30, 45), true, true, -1)
    
end

function StormyKing501000_Act33(f30_arg0, f30_arg1, f30_arg2)
    f30_arg1:AddSubGoal(GOAL_EnemyStepFront, 3, TARGET_ENE_0, 9)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function StormyKing501000_Act34(f31_arg0, f31_arg1, f31_arg2)
    f31_arg1:AddSubGoal(GOAL_EnemyStepBack, 3, TARGET_ENE_0, 9)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function StormyKing501000_Act35(f32_arg0, f32_arg1, f32_arg2)
    f32_arg1:AddSubGoal(GOAL_EnemyStepRight, 3, TARGET_ENE_0, 9)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function StormyKing501000_Act36(f33_arg0, f33_arg1, f33_arg2)
    f33_arg1:AddSubGoal(GOAL_EnemyStepLeft, 3, TARGET_ENE_0, 9)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function StormyKing501000_Act37(f34_arg0, f34_arg1, f34_arg2)
    f34_arg1:AddSubGoal(GOAL_COMMON_Wait, 0.01, TARGET_NONE, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function StormyKing501000_Act38(f35_arg0, f35_arg1, f35_arg2)
    local f35_local0 = 3027
    local f35_local1 = 6.6 - f35_arg0:GetMapHitRadius(TARGET_SELF)
    local f35_local2 = 0
    local f35_local3 = 0
    local f35_local4 = f35_arg0:GetRandam_Int(1, 100)
    f35_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f35_local0, TARGET_ENE_0, f35_local1, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function StormyKing501000_Act40(f36_arg0, f36_arg1, f36_arg2)
    local f36_local0 = 1.4 - f36_arg0:GetMapHitRadius(TARGET_SELF)
    local f36_local1 = 1.4 - f36_arg0:GetMapHitRadius(TARGET_SELF) + 998
    local f36_local2 = 1.4 - f36_arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f36_local3 = 0
    local f36_local4 = 0
    local f36_local5 = 5
    local f36_local6 = 5
    Approach_Act_Flex(f36_arg0, f36_arg1, f36_local0, f36_local1, f36_local2, f36_local3, f36_local4, f36_local5, f36_local6)
    local f36_local7 = 3019
    local f36_local8 = 6.6 - f36_arg0:GetMapHitRadius(TARGET_SELF)
    local f36_local9 = 0
    local f36_local10 = 0
    local f36_local11 = f36_arg0:GetRandam_Int(1, 100)
    f36_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f36_local7, TARGET_ENE_0, f36_local8, f36_local9, f36_local10, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function StormyKing501000_Act41(f37_arg0, f37_arg1, f37_arg2)
    local f37_local0 = 3027
    local f37_local1 = 6.6 - f37_arg0:GetMapHitRadius(TARGET_SELF)
    local f37_local2 = 0
    local f37_local3 = 0
    local f37_local4 = f37_arg0:GetRandam_Int(1, 100)
    f37_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f37_local0, TARGET_ENE_0, f37_local1, f37_local2, f37_local3, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function StormyKing501000_Act42(f38_arg0, f38_arg1, f38_arg2)
    local f38_local0 = 10 - f38_arg0:GetMapHitRadius(TARGET_SELF)
    local f38_local1 = 10 - f38_arg0:GetMapHitRadius(TARGET_SELF) + 998
    local f38_local2 = 10 - f38_arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f38_local3 = 0
    local f38_local4 = 0
    local f38_local5 = 5
    local f38_local6 = 5
    Approach_Act_Flex(f38_arg0, f38_arg1, f38_local0, f38_local1, f38_local2, f38_local3, f38_local4, f38_local5, f38_local6)
    local f38_local7 = 3028
    local f38_local8 = 6.6 - f38_arg0:GetMapHitRadius(TARGET_SELF)
    local f38_local9 = 0
    local f38_local10 = 0
    local f38_local11 = f38_arg0:GetRandam_Int(1, 100)
    f38_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f38_local7, TARGET_ENE_0, f38_local8, f38_local9, f38_local10, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function StormyKing501000_Act43(f39_arg0, f39_arg1, f39_arg2)
    local f39_local0 = 3015
    local f39_local1 = 6.6 - f39_arg0:GetMapHitRadius(TARGET_SELF)
    local f39_local2 = 0
    local f39_local3 = 0
    local f39_local4 = f39_arg0:GetRandam_Int(1, 100)
    f39_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f39_local0, TARGET_ENE_0, f39_local1, f39_local2, f39_local3, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function StormyKing501000_Act44(f40_arg0, f40_arg1, f40_arg2)
    local f40_local0 = 7.9 - f40_arg0:GetMapHitRadius(TARGET_SELF)
    local f40_local1 = 7.9 - f40_arg0:GetMapHitRadius(TARGET_SELF) + 0.9
    local f40_local2 = 7.9 - f40_arg0:GetMapHitRadius(TARGET_SELF) + 4
    local f40_local3 = 0
    local f40_local4 = 0
    local f40_local5 = 5
    local f40_local6 = 5
    Approach_Act_Flex(f40_arg0, f40_arg1, f40_local0, f40_local1, f40_local2, f40_local3, f40_local4, f40_local5, f40_local6)
    local f40_local7 = 3003
    local f40_local8 = 3012
    local f40_local9 = 3019
    local f40_local10 = 5.8 - f40_arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f40_local11 = 1.4 - f40_arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f40_local12 = 6.6 - f40_arg0:GetMapHitRadius(TARGET_SELF)
    local f40_local13 = 0
    local f40_local14 = 0
    local f40_local15 = f40_arg0:GetRandam_Int(1, 100)
    if f40_local15 <= 10 then
        f40_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f40_local7, TARGET_ENE_0, f40_local12, f40_local13, f40_local14, 0, 0)
    elseif f40_local15 <= 10 then
        f40_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f40_local7, TARGET_ENE_0, f40_local10, f40_local13, f40_local14, 0, 0)
        f40_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f40_local8, TARGET_ENE_0, f40_local12, 0, 0)
    else
        f40_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f40_local7, TARGET_ENE_0, f40_local10, f40_local13, f40_local14, 0, 0)
        f40_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f40_local8, TARGET_ENE_0, f40_local11, f40_local13, f40_local14, 0, 0)
        f40_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f40_local9, TARGET_ENE_0, f40_local12, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function StormyKing501000_Act45(f41_arg0, f41_arg1, f41_arg2)
    local f41_local0 = 10.1 - f41_arg0:GetMapHitRadius(TARGET_SELF)
    local f41_local1 = 10.1 - f41_arg0:GetMapHitRadius(TARGET_SELF) + 0.9
    local f41_local2 = 10.1 - f41_arg0:GetMapHitRadius(TARGET_SELF) + 4
    local f41_local3 = 0
    local f41_local4 = 0
    local f41_local5 = 5
    local f41_local6 = 5
    Approach_Act_Flex(f41_arg0, f41_arg1, f41_local0, f41_local1, f41_local2, f41_local3, f41_local4, f41_local5, f41_local6)
    local f41_local7 = 3016
    local f41_local8 = 3028
    local f41_local9 = 10 - f41_arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f41_local10 = 6.6 - f41_arg0:GetMapHitRadius(TARGET_SELF)
    local f41_local11 = 0
    local f41_local12 = 0
    local f41_local13 = f41_arg0:GetRandam_Int(1, 100)
    f41_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f41_local7, TARGET_ENE_0, f41_local9, f41_local11, f41_local12, 0, 0)
    f41_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f41_local8, TARGET_ENE_0, f41_local10, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function StormyKing501000_Act46(f42_arg0, f42_arg1, f42_arg2)
    local f42_local0 = 22.6 - f42_arg0:GetMapHitRadius(TARGET_SELF)
    local f42_local1 = 22.6 - f42_arg0:GetMapHitRadius(TARGET_SELF) + 998
    local f42_local2 = 22.6 - f42_arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f42_local3 = 0
    local f42_local4 = 0
    local f42_local5 = 5
    local f42_local6 = 5
    Approach_Act_Flex(f42_arg0, f42_arg1, f42_local0, f42_local1, f42_local2, f42_local3, f42_local4, f42_local5, f42_local6)
    local f42_local7 = 3029
    local f42_local8 = 6.6 - f42_arg0:GetMapHitRadius(TARGET_SELF)
    local f42_local9 = 0
    local f42_local10 = 0
    local f42_local11 = f42_arg0:GetRandam_Int(1, 100)
    f42_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f42_local7, TARGET_ENE_0, f42_local8, f42_local9, f42_local10, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function StormyKing501000_Act47(f43_arg0, f43_arg1, f43_arg2)
    local f43_local0 = 10 - f43_arg0:GetMapHitRadius(TARGET_SELF)
    local f43_local1 = 10 - f43_arg0:GetMapHitRadius(TARGET_SELF) + 0.9
    local f43_local2 = 10 - f43_arg0:GetMapHitRadius(TARGET_SELF) + 4
    local f43_local3 = 0
    local f43_local4 = 0
    local f43_local5 = 5
    local f43_local6 = 5
    Approach_Act_Flex(f43_arg0, f43_arg1, f43_local0, f43_local1, f43_local2, f43_local3, f43_local4, f43_local5, f43_local6)
    local f43_local7 = 3028
    local f43_local8 = 3027
    local f43_local9 = 999
    local f43_local10 = 6.6 - f43_arg0:GetMapHitRadius(TARGET_SELF)
    local f43_local11 = 0
    local f43_local12 = 0
    f43_arg1:AddSubGoal(GOAL_COMMON_ComboAttack_SuccessAngle180, 10, f43_local7, TARGET_ENE_0, f43_local9, f43_local11, f43_local12, 0, 0)
    f43_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f43_local8, TARGET_ENE_0, f43_local10, f43_local11, f43_local12, 0, 0):TimingSetNumber(1, 1, AI_TIMING_SET__ACTIVATE)
    
end

function StormyKing501000_ActAfter_AdjustSpace(f44_arg0, f44_arg1, f44_arg2)
    f44_arg1:AddSubGoal(GOAL_StormyKing501000_AfterAttackAct, 10)
    
end

Goal.Update = function (f45_arg0, f45_arg1, f45_arg2)
    return Update_Default_NoSubGoal(f45_arg0, f45_arg1, f45_arg2)
    
end

Goal.Terminate = function (f46_arg0, f46_arg1, f46_arg2)
    
end

Goal.Interrupt = function (f47_arg0, f47_arg1, f47_arg2)
    local f47_local0 = f47_arg1:GetDist(TARGET_ENE_0)
    local f47_local1 = f47_arg1:GetRandam_Int(1, 100)
    if f47_arg1:IsInterupt(INTERUPT_Damaged) and f47_arg1:IsStartAttack() == false and f47_local0 >= 4.5 then
        f47_arg2:ClearSubGoal()
        return true
    end
    if f47_arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) then
        if f47_arg1:HasSpecialEffectId(TARGET_ENE_0, 90) then
            f47_arg2:ClearSubGoal()
            f47_arg2:AddSubGoal(GOAL_StormyKing501000_AfterAttackAct, 10)
            return true
        end
        if f47_arg1:GetSpecialEffectActivateInterruptType(0) == 5025 and f47_arg1:HasSpecialEffectId(TARGET_ENE_0, 90) == false and f47_arg1:GetNumber(0) <= 2 then
            if f47_arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 90) and f47_local0 <= 9.5 and f47_local1 <= 50 then
                f47_arg2:ClearSubGoal()
                StormyKing501000_Act20(f47_arg1, f47_arg2, paramTbl)
            end
        elseif f47_arg1:GetSpecialEffectActivateInterruptType(0) == 5026 and f47_arg1:HasSpecialEffectId(TARGET_ENE_0, 90) == false then
            if f47_arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 90) and f47_local0 <= 11 then
                if f47_local1 <= 50 then
                    f47_arg2:ClearSubGoal()
                    StormyKing501000_Act21(f47_arg1, f47_arg2, paramTbl)
                else
                    f47_arg2:ClearSubGoal()
                    StormyKing501000_Act22(f47_arg1, f47_arg2, paramTbl)
                end
            elseif f47_arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 90) and f47_local0 <= 14.5 then
                f47_arg2:ClearSubGoal()
                StormyKing501000_Act23(f47_arg1, f47_arg2, paramTbl)
            elseif f47_arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 90) and f47_local0 <= 110.5 then
                f47_arg2:ClearSubGoal()
                StormyKing501000_Act24(f47_arg1, f47_arg2, paramTbl)
            end
        elseif f47_arg1:GetSpecialEffectActivateInterruptType(0) == 5027 and f47_arg1:HasSpecialEffectId(TARGET_ENE_0, 90) == false then
            if f47_arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 90) and f47_local0 >= 15 then
                f47_arg2:ClearSubGoal()
                StormyKing501000_Act25(f47_arg1, f47_arg2, paramTbl)
            elseif f47_arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 90) and f47_local0 <= 5.5 then
                f47_arg2:ClearSubGoal()
                StormyKing501000_Act26(f47_arg1, f47_arg2, paramTbl)
            elseif f47_arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 90) and f47_local0 <= 5.3 then
                f47_arg2:ClearSubGoal()
                StormyKing501000_Act27(f47_arg1, f47_arg2, paramTbl)
            end
        elseif f47_arg1:GetSpecialEffectActivateInterruptType(0) == 5028 and f47_arg1:HasSpecialEffectId(TARGET_ENE_0, 90) == false then
            if f47_arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 90) and f47_local0 >= 11 then
                f47_arg2:ClearSubGoal()
                StormyKing501000_Act23(f47_arg1, f47_arg2, paramTbl)
            elseif f47_arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 90) and f47_local0 >= 14.5 then
                f47_arg2:ClearSubGoal()
                StormyKing501000_Act24(f47_arg1, f47_arg2, paramTbl)
            end
        end
    end
    
end

RegisterTableGoal(GOAL_StormyKing501000_AfterAttackAct, "StormyKing501000_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_StormyKing501000_AfterAttackAct, true)

Goal.Activate = function (f48_arg0, f48_arg1, f48_arg2)
    local f48_local0 = f48_arg1:GetDist(TARGET_ENE_0)
    local f48_local1 = f48_arg1:GetToTargetAngle(TARGET_ENE_0)
    if f48_local0 >= 15 then
        f48_arg1:SetStringIndexedNumber("Odds_NoAct_AAA", 10)
        f48_arg1:SetStringIndexedNumber("Odds_BackAndSide_AAA", 20)
        f48_arg1:SetStringIndexedNumber("Odds_Back_AAA", 0)
    elseif f48_local0 >= 5 then
        f48_arg1:SetStringIndexedNumber("Odds_NoAct_AAA", 10)
        f48_arg1:SetStringIndexedNumber("Odds_BackAndSide_AAA", 10)
        f48_arg1:SetStringIndexedNumber("Odds_Back_AAA", 0)
    else
        f48_arg1:SetStringIndexedNumber("Odds_NoAct_AAA", 10)
        f48_arg1:SetStringIndexedNumber("Odds_BackAndSide_AAA", 0)
        f48_arg1:SetStringIndexedNumber("Odds_Back_AAA", 0)
    end
    f48_arg2:AddSubGoal(GOAL_COMMON_AfterAttackAct, 10)
    
end

Goal.Update = function (f49_arg0, f49_arg1, f49_arg2)
    return Update_Default_NoSubGoal(f49_arg0, f49_arg1, f49_arg2)
    
end


