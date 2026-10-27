RegisterTableGoal(GOAL_BossDaughter_602000_Battle, "GOAL_BossDaughter_602000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_BossDaughter_602000_Battle, true)

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
    local f2_local5 = f2_arg1:GetHpRate(TARGET_SELF)
    local f2_local6 = f2_arg1:GetEventRequest(0)
    local f2_local7 = f2_arg1:HasSpecialEffectId(TARGET_SELF, 13210)
    local f2_local8 = f2_arg1:HasSpecialEffectId(TARGET_SELF, 5407)
    local f2_local9 = f2_arg1:GetTimer(1)
    f2_arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    f2_arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    f2_arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    f2_arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    f2_arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    f2_arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    f2_arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    f2_arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 13210)
    if f2_arg1:GetNumber(5) <= 1 then
        f2_local0[70] = 10000
    elseif InsideRange(f2_arg1, f2_arg2, 180, 180, -999, 5) then
        if f2_arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 90) and SpaceCheck(f2_arg1, f2_arg2, 270, f2_arg1:GetStringIndexedNumber("Dist_SideStep")) == true then
            f2_local0[88] = 1000
            f2_local0[85] = 1
        elseif f2_arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 90) and SpaceCheck(f2_arg1, f2_arg2, 90, f2_arg1:GetStringIndexedNumber("Dist_SideStep")) == true then
            f2_local0[89] = 1000
            f2_local0[85] = 1
        else
            f2_local0[86] = 1000
            f2_local0[85] = 1
        end
    elseif InsideRange(f2_arg1, f2_arg2, 180, 240, -999, 20) then
        f2_local0[80] = 1000
    elseif f2_arg1:HasSpecialEffectId(TARGET_SELF, 5404) or f2_arg1:HasSpecialEffectId(TARGET_SELF, 5406) then
        f2_local0[11] = 1000
    elseif f2_local8 then
        if not f2_arg1:HasSpecialEffectId(TARGET_SELF, 5020) then
            f2_local0[41] = 1000
        elseif f2_arg1:HasSpecialEffectId(TARGET_SELF, 13210) then
            if f2_arg1:GetNumber(6) >= 1 then
                f2_local0[45] = 1000
            else
                f2_local0[44] = 1000
            end
        elseif f2_local3 >= 15 then
            f2_local0[8] = 900
            f2_local0[85] = 100
        elseif f2_local3 >= 8 then
            f2_local0[10] = 100
            f2_local0[30] = 0
            f2_local0[31] = 100
            f2_local0[32] = 0
            f2_local0[33] = 50
            f2_local0[34] = 75
            f2_local0[42] = 150
            f2_local0[35] = 150
            f2_local0[37] = 0
            f2_local0[38] = 0
            f2_local0[40] = 25
            f2_local0[41] = 75
            f2_local0[43] = 75
            f2_local0[8] = 10000
            f2_local0[77] = 200
            f2_local0[81] = 0
            f2_local0[82] = 0
            f2_local0[85] = 0
            f2_local0[86] = 0
            f2_local0[87] = 0
        elseif f2_local3 >= 5 then
            f2_local0[10] = 50
            f2_local0[30] = 25
            f2_local0[31] = 100
            f2_local0[32] = 50
            f2_local0[33] = 100
            f2_local0[34] = 75
            f2_local0[42] = 100
            f2_local0[35] = 50
            f2_local0[37] = 50
            f2_local0[38] = 50
            f2_local0[40] = 100
            f2_local0[41] = 50
            f2_local0[43] = 50
            f2_local0[8] = 3000
            f2_local0[77] = 100
            f2_local0[81] = 0
            f2_local0[82] = 0
            f2_local0[85] = 0
            f2_local0[86] = 50
            f2_local0[87] = 0
        elseif f2_local3 >= 2.5 then
            f2_local0[10] = 50
            f2_local0[30] = 225
            f2_local0[31] = 0
            f2_local0[32] = 250
            f2_local0[33] = 175
            f2_local0[34] = 0
            f2_local0[42] = 0
            f2_local0[35] = 0
            f2_local0[37] = 150
            f2_local0[38] = 50
            f2_local0[39] = 0
            f2_local0[40] = 50
            f2_local0[41] = 0
            f2_local0[77] = 50
            f2_local0[81] = 0
            f2_local0[82] = 0
            f2_local0[85] = 0
            f2_local0[86] = 0
            f2_local0[87] = 0
        else
            f2_local0[30] = 150
            f2_local0[31] = 0
            f2_local0[32] = 150
            f2_local0[33] = 0
            f2_local0[34] = 0
            f2_local0[42] = 0
            f2_local0[35] = 0
            f2_local0[37] = 200
            f2_local0[38] = 75
            f2_local0[39] = 0
            f2_local0[40] = 25
            f2_local0[41] = 0
            f2_local0[77] = 100
            f2_local0[81] = 0
            f2_local0[82] = 0
            f2_local0[85] = 0
            f2_local0[86] = 300
            f2_local0[87] = 0
        end
    elseif f2_local7 then
        if f2_local3 >= 20 then
            f2_local0[85] = 1000
        else
            f2_local0[13] = 1000
        end
    elseif f2_local3 >= 15 then
        f2_local0[8] = 3000
        f2_local0[85] = 1000
    elseif f2_local3 >= 9 then
        f2_local0[1] = 50
        f2_local0[2] = 0
        f2_local0[4] = 0
        f2_local0[5] = 50
        f2_local0[8] = 5000
        f2_local0[9] = 0
        f2_local0[10] = 325
        f2_local0[11] = 0
        f2_local0[12] = 250
        f2_local0[77] = 25
        f2_local0[78] = 0
        f2_local0[79] = 0
        f2_local0[81] = 300
        f2_local0[82] = 0
        f2_local0[85] = 0
        f2_local0[86] = 0
        f2_local0[87] = 100
    elseif f2_local3 >= 5 then
        f2_local0[1] = 50
        f2_local0[2] = 50
        f2_local0[4] = 200
        f2_local0[5] = 50
        f2_local0[8] = 2000
        f2_local0[9] = 0
        f2_local0[10] = 150
        f2_local0[11] = 0
        f2_local0[12] = 50
        f2_local0[77] = 50
        f2_local0[78] = 100
        f2_local0[79] = 0
        f2_local0[81] = 100
        f2_local0[82] = 0
        f2_local0[85] = 0
        f2_local0[86] = 0
        f2_local0[87] = 200
    else
        f2_local0[1] = 100
        f2_local0[2] = 100
        f2_local0[4] = 350
        f2_local0[5] = 100
        f2_local0[8] = 0
        f2_local0[9] = 0
        f2_local0[10] = 0
        f2_local0[11] = 0
        f2_local0[12] = 0
        f2_local0[77] = 50
        f2_local0[78] = 250
        f2_local0[79] = 0
        f2_local0[81] = 0
        f2_local0[82] = 0
        f2_local0[85] = 0
        f2_local0[86] = 0
        f2_local0[87] = 0
        if f2_local5 <= 0.7 and f2_arg1:GetNumber(7) == 0 and (not (f2_arg1:HasSpecialEffectId(TARGET_SELF, 5406) or f2_arg1:HasSpecialEffectId(TARGET_SELF, 5407))) then
            f2_local0[8] = 800
        end
    end
    if f2_arg1:IsFinishTimer(1) == false or f2_arg1:IsFinishTimer(2) == false or f2_arg1:IsFinishTimer(3) == false then
        f2_local0[4] = 0
        f2_local0[8] = 1
        f2_local0[36] = 1
    end
    f2_local0[1] = SetCoolTime(f2_arg1, f2_arg2, 3000, 3, f2_local0[1], 1)
    f2_local0[2] = SetCoolTime(f2_arg1, f2_arg2, 3005, 3, f2_local0[2], 1)
    f2_local0[3] = SetCoolTime(f2_arg1, f2_arg2, 3007, 10, f2_local0[3], 1)
    f2_local0[4] = SetCoolTime(f2_arg1, f2_arg2, 3013, 15, f2_local0[4], 1)
    f2_local0[5] = SetCoolTime(f2_arg1, f2_arg2, 3008, 3, f2_local0[5], 1)
    f2_local0[9] = SetCoolTime(f2_arg1, f2_arg2, 3021, 30, f2_local0[9], 1)
    f2_local0[10] = SetCoolTime(f2_arg1, f2_arg2, 1200, 13, f2_local0[10], 1)
    f2_local0[12] = SetCoolTime(f2_arg1, f2_arg2, 3010, 3, f2_local0[12], 1)
    f2_local0[10] = SetCoolTime(f2_arg1, f2_arg2, 4001200, 15, f2_local0[10], 1)
    f2_local0[30] = SetCoolTime(f2_arg1, f2_arg2, 4003000, 4, f2_local0[30], 1)
    f2_local0[31] = SetCoolTime(f2_arg1, f2_arg2, 4003004, 4, f2_local0[31], 1)
    f2_local0[32] = SetCoolTime(f2_arg1, f2_arg2, 4003010, 4, f2_local0[32], 1)
    f2_local0[33] = SetCoolTime(f2_arg1, f2_arg2, 4003016, 8, f2_local0[33], 1)
    f2_local0[34] = SetCoolTime(f2_arg1, f2_arg2, 4003017, 12, f2_local0[34], 1)
    f2_local0[42] = SetCoolTime(f2_arg1, f2_arg2, 4003037, 12, f2_local0[34], 1)
    f2_local0[35] = SetCoolTime(f2_arg1, f2_arg2, 4003018, 12, f2_local0[35], 1)
    f2_local0[37] = SetCoolTime(f2_arg1, f2_arg2, 4003021, 3, f2_local0[37], 1)
    f2_local0[38] = SetCoolTime(f2_arg1, f2_arg2, 4003026, 15, f2_local0[38], 1)
    f2_local0[40] = SetCoolTime(f2_arg1, f2_arg2, 4003032, 10, f2_local0[40], 1)
    if f2_arg1:HasSpecialEffectId(TARGET_SELF, 5020) then
        f2_local0[41] = SetCoolTime(f2_arg1, f2_arg2, 4003028, 22, f2_local0[41], 1)
    end
    f2_local0[43] = SetCoolTime(f2_arg1, f2_arg2, 4003015, 22, f2_local0[43], 1)
    f2_local0[76] = SetCoolTime(f2_arg1, f2_arg2, 3036, 6, f2_local0[76], 1)
    f2_local0[76] = SetCoolTime(f2_arg1, f2_arg2, 4003036, 6, f2_local0[76], 1)
    f2_local0[77] = SetCoolTime(f2_arg1, f2_arg2, 3023, 4, f2_local0[77], 1)
    f2_local0[77] = SetCoolTime(f2_arg1, f2_arg2, 3024, 4, f2_local0[77], 1)
    f2_local0[78] = SetCoolTime(f2_arg1, f2_arg2, 3026, 8, f2_local0[78], 1)
    f2_local1[1] = REGIST_FUNC(f2_arg1, f2_arg2, BossDaughter_602000_Act01)
    f2_local1[2] = REGIST_FUNC(f2_arg1, f2_arg2, BossDaughter_602000_Act02)
    f2_local1[3] = REGIST_FUNC(f2_arg1, f2_arg2, BossDaughter_602000_Act03)
    f2_local1[4] = REGIST_FUNC(f2_arg1, f2_arg2, BossDaughter_602000_Act04)
    f2_local1[5] = REGIST_FUNC(f2_arg1, f2_arg2, BossDaughter_602000_Act05)
    f2_local1[6] = REGIST_FUNC(f2_arg1, f2_arg2, BossDaughter_602000_Act06)
    f2_local1[8] = REGIST_FUNC(f2_arg1, f2_arg2, BossDaughter_602000_Act08)
    f2_local1[9] = REGIST_FUNC(f2_arg1, f2_arg2, BossDaughter_602000_Act09)
    f2_local1[10] = REGIST_FUNC(f2_arg1, f2_arg2, BossDaughter_602000_Act10)
    f2_local1[11] = REGIST_FUNC(f2_arg1, f2_arg2, BossDaughter_602000_Act11)
    f2_local1[12] = REGIST_FUNC(f2_arg1, f2_arg2, BossDaughter_602000_Act12)
    f2_local1[13] = REGIST_FUNC(f2_arg1, f2_arg2, BossDaughter_602000_Act13)
    f2_local1[30] = REGIST_FUNC(f2_arg1, f2_arg2, BossDaughter_602000_Act30)
    f2_local1[31] = REGIST_FUNC(f2_arg1, f2_arg2, BossDaughter_602000_Act31)
    f2_local1[32] = REGIST_FUNC(f2_arg1, f2_arg2, BossDaughter_602000_Act32)
    f2_local1[33] = REGIST_FUNC(f2_arg1, f2_arg2, BossDaughter_602000_Act33)
    f2_local1[34] = REGIST_FUNC(f2_arg1, f2_arg2, BossDaughter_602000_Act34)
    f2_local1[35] = REGIST_FUNC(f2_arg1, f2_arg2, BossDaughter_602000_Act35)
    f2_local1[36] = REGIST_FUNC(f2_arg1, f2_arg2, BossDaughter_602000_Act36)
    f2_local1[37] = REGIST_FUNC(f2_arg1, f2_arg2, BossDaughter_602000_Act37)
    f2_local1[38] = REGIST_FUNC(f2_arg1, f2_arg2, BossDaughter_602000_Act38)
    f2_local1[39] = REGIST_FUNC(f2_arg1, f2_arg2, BossDaughter_602000_Act39)
    f2_local1[40] = REGIST_FUNC(f2_arg1, f2_arg2, BossDaughter_602000_Act40)
    f2_local1[41] = REGIST_FUNC(f2_arg1, f2_arg2, BossDaughter_602000_Act41)
    f2_local1[42] = REGIST_FUNC(f2_arg1, f2_arg2, BossDaughter_602000_Act42)
    f2_local1[43] = REGIST_FUNC(f2_arg1, f2_arg2, BossDaughter_602000_Act43)
    f2_local1[44] = REGIST_FUNC(f2_arg1, f2_arg2, BossDaughter_602000_Act44)
    f2_local1[45] = REGIST_FUNC(f2_arg1, f2_arg2, BossDaughter_602000_Act45)
    f2_local1[50] = REGIST_FUNC(f2_arg1, f2_arg2, BossDaughter_602000_Act50)
    f2_local1[70] = REGIST_FUNC(f2_arg1, f2_arg2, BossDaughter_602000_Act70)
    f2_local1[76] = REGIST_FUNC(f2_arg1, f2_arg2, BossDaughter_602000_Act76)
    f2_local1[77] = REGIST_FUNC(f2_arg1, f2_arg2, BossDaughter_602000_Act77)
    f2_local1[78] = REGIST_FUNC(f2_arg1, f2_arg2, BossDaughter_602000_Act78)
    f2_local1[79] = REGIST_FUNC(f2_arg1, f2_arg2, BossDaughter_602000_Act79)
    f2_local1[80] = REGIST_FUNC(f2_arg1, f2_arg2, BossDaughter_602000_Act80)
    f2_local1[81] = REGIST_FUNC(f2_arg1, f2_arg2, BossDaughter_602000_Act81)
    f2_local1[82] = REGIST_FUNC(f2_arg1, f2_arg2, BossDaughter_602000_Act82)
    f2_local1[83] = REGIST_FUNC(f2_arg1, f2_arg2, BossDaughter_602000_Act83)
    f2_local1[84] = REGIST_FUNC(f2_arg1, f2_arg2, BossDaughter_602000_Act84)
    f2_local1[85] = REGIST_FUNC(f2_arg1, f2_arg2, BossDaughter_602000_Act85)
    f2_local1[86] = REGIST_FUNC(f2_arg1, f2_arg2, BossDaughter_602000_Act86)
    f2_local1[87] = REGIST_FUNC(f2_arg1, f2_arg2, BossDaughter_602000_Act87)
    f2_local1[88] = REGIST_FUNC(f2_arg1, f2_arg2, BossDaughter_602000_Act88)
    f2_local1[89] = REGIST_FUNC(f2_arg1, f2_arg2, BossDaughter_602000_Act89)
    local f2_local10 = REGIST_FUNC(f2_arg1, f2_arg2, BossDaughter_602000_ActAfter_AdjustSpace)
    Common_Battle_Activate(f2_arg1, f2_arg2, f2_local0, f2_local1, f2_local10, f2_local2)
    
end

function BossDaughter_602000_Act01(f3_arg0, f3_arg1, f3_arg2)
    f3_arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    local f3_local0 = 4.4 - f3_arg0:GetMapHitRadius(TARGET_SELF) + 1.2
    local f3_local1 = 4.4 - f3_arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f3_local2 = 4.4 - f3_arg0:GetMapHitRadius(TARGET_SELF) + 3
    local f3_local3 = 0
    local f3_local4 = 0
    local f3_local5 = 1
    local f3_local6 = 4
    local f3_local7 = 0
    Approach_Act_Flex(f3_arg0, f3_arg1, f3_local0, f3_local1, f3_local2, f3_local3, f3_local4, f3_local5, f3_local6)
    local f3_local8 = 5.5 - f3_arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local9 = 0
    local f3_local10 = 0
    local f3_local11 = f3_arg0:GetRandam_Int(1, 100)
    local f3_local12 = f3_arg0:GetRandam_Int(1, 100)
    local f3_local13 = f3_arg0:GetRandam_Int(1, 100)
    local f3_local14 = f3_arg0:GetRandam_Int(0, 1)
    f3_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, 8, f3_local9, f3_local10, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function BossDaughter_602000_Act02(f4_arg0, f4_arg1, f4_arg2)
    f4_arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    local f4_local0 = 4.6 - f4_arg0:GetMapHitRadius(TARGET_SELF) + 1.6
    local f4_local1 = 4.6 - f4_arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f4_local2 = 4.6 - f4_arg0:GetMapHitRadius(TARGET_SELF) + 3
    local f4_local3 = 0
    local f4_local4 = 0
    local f4_local5 = 1
    local f4_local6 = 4
    local f4_local7 = f4_arg0:GetRandam_Int(0, 1)
    local f4_local8 = 0
    Approach_Act_Flex(f4_arg0, f4_arg1, f4_local0, f4_local1, f4_local2, f4_local3, f4_local4, f4_local5, f4_local6)
    local f4_local9 = 5.5 - f4_arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local10 = 0
    local f4_local11 = 0
    local f4_local12 = f4_arg0:GetRandam_Int(1, 100)
    local f4_local13 = f4_arg0:GetRandam_Int(1, 100)
    local f4_local14 = f4_arg0:GetRandam_Int(1, 100)
    f4_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3005, TARGET_ENE_0, 8, f4_local10, f4_local11, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function BossDaughter_602000_Act03(f5_arg0, f5_arg1, f5_arg2)
    local f5_local0 = 5.1 - f5_arg0:GetMapHitRadius(TARGET_SELF) + 1.5
    local f5_local1 = 5.1 - f5_arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f5_local2 = 5.1 - f5_arg0:GetMapHitRadius(TARGET_SELF) + 3
    local f5_local3 = 0
    local f5_local4 = 0
    local f5_local5 = 1
    local f5_local6 = 4
    local f5_local7 = 0
    Approach_Act_Flex(f5_arg0, f5_arg1, f5_local0, f5_local1, f5_local2, f5_local3, f5_local4, f5_local5, f5_local6)
    local f5_local8 = 5.5 - f5_arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local9 = 0
    local f5_local10 = 0
    local f5_local11 = f5_arg0:GetRandam_Int(1, 100)
    f5_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, f5_local8, f5_local9, f5_local10, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function BossDaughter_602000_Act04(f6_arg0, f6_arg1, f6_arg2)
    local f6_local0 = 2 - f6_arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local1 = 2 - f6_arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f6_local2 = 2 - f6_arg0:GetMapHitRadius(TARGET_SELF) + 3
    local f6_local3 = 0
    local f6_local4 = 0
    local f6_local5 = 1
    local f6_local6 = 4
    local f6_local7 = 0
    local f6_local8 = 5.5 - f6_arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local9 = 0
    local f6_local10 = 0
    local f6_local11 = f6_arg0:GetRandam_Int(1, 100)
    local f6_local12 = 3023
    local f6_local13 = f6_arg0:GetNumber(1)
    local f6_local14 = f6_arg0:GetNumber(2)
    f6_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3013, TARGET_ENE_0, f6_local8, f6_local9, f6_local10, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function BossDaughter_602000_Act05(f7_arg0, f7_arg1, f7_arg2)
    f7_arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    local f7_local0 = 4.6 - f7_arg0:GetMapHitRadius(TARGET_SELF) + 1.8
    local f7_local1 = 4.6 - f7_arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f7_local2 = 4.6 - f7_arg0:GetMapHitRadius(TARGET_SELF) + 3
    local f7_local3 = 0
    local f7_local4 = 0
    local f7_local5 = 1
    local f7_local6 = 4
    local f7_local7 = 0
    Approach_Act_Flex(f7_arg0, f7_arg1, f7_local0, f7_local1, f7_local2, f7_local3, f7_local4, f7_local5, f7_local6)
    local f7_local8 = 5.5 - f7_arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local9 = 0
    local f7_local10 = 0
    local f7_local11 = f7_arg0:GetRandam_Int(1, 100)
    local f7_local12 = f7_arg0:GetRandam_Int(1, 100)
    local f7_local13 = f7_arg0:GetRandam_Int(1, 100)
    f7_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3008, TARGET_ENE_0, 8, f7_local9, f7_local10, 0, 0)
    f7_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3009, TARGET_ENE_0, 8, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function BossDaughter_602000_Act06(f8_arg0, f8_arg1, f8_arg2)
    local f8_local0 = 15 - f8_arg0:GetMapHitRadius(TARGET_SELF)
    local f8_local1 = 15 - f8_arg0:GetMapHitRadius(TARGET_SELF)
    local f8_local2 = 15 - f8_arg0:GetMapHitRadius(TARGET_SELF)
    local f8_local3 = 0
    local f8_local4 = 0
    local f8_local5 = 1
    local f8_local6 = 4
    local f8_local7 = 0
    Approach_Act_Flex(f8_arg0, f8_arg1, f8_local0, f8_local1, f8_local2, f8_local3, f8_local4, f8_local5, f8_local6)
    local f8_local8 = 5.5 - f8_arg0:GetMapHitRadius(TARGET_SELF)
    local f8_local9 = 0
    local f8_local10 = 0
    local f8_local11 = f8_arg0:GetRandam_Int(1, 100)
    f8_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3012, TARGET_ENE_0, f8_local8, f8_local9, f8_local10, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function BossDaughter_602000_Act08(f9_arg0, f9_arg1, f9_arg2)
    local f9_local0 = 5.5 - f9_arg0:GetMapHitRadius(TARGET_SELF)
    local f9_local1 = 0
    local f9_local2 = 0
    local f9_local3 = f9_arg0:GetRandam_Int(1, 100)
    local f9_local4 = 3023
    local f9_local5 = f9_arg0:GetNumber(1)
    local f9_local6 = f9_arg0:GetNumber(2)
    if f9_arg0:GetNumber(7) == 0 and f9_arg0:GetDist(TARGET_ENE_0) < 6 and SpaceCheck(f9_arg0, f9_arg1, 180, 7) == true then
        f9_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3026, TARGET_ENE_0, f9_local0, f9_local1, f9_local2, 0, 0)
    end
    f9_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3020, TARGET_ENE_0, f9_local0, f9_local1, f9_local2, 0, 0)
    f9_arg0:SetNumber(6, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BossDaughter_602000_Act09(f10_arg0, f10_arg1, f10_arg2)
    local f10_local0 = 5.5 - f10_arg0:GetMapHitRadius(TARGET_SELF)
    local f10_local1 = 5.5 - f10_arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f10_local2 = 5.5 - f10_arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f10_local3 = 0
    local f10_local4 = 0
    local f10_local5 = 6
    local f10_local6 = 4
    Approach_Act_Flex(f10_arg0, f10_arg1, f10_local0, f10_local1, f10_local2, f10_local3, f10_local4, f10_local5, f10_local6)
    local f10_local7 = 5.5 - f10_arg0:GetMapHitRadius(TARGET_SELF)
    local f10_local8 = 0
    local f10_local9 = 0
    local f10_local10 = f10_arg0:GetRandam_Int(1, 100)
    f10_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3021, TARGET_ENE_0, f10_local7, f10_local8, f10_local9, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function BossDaughter_602000_Act10(f11_arg0, f11_arg1, f11_arg2)
    f11_arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    local f11_local0 = f11_arg0:GetDist(TARGET_ENE_0)
    local f11_local1 = f11_arg0:GetRandam_Int(1, 100)
    local f11_local2 = f11_arg0:GetRandam_Int(1, 100)
    local f11_local3 = f11_arg0:GetRandam_Int(1, 100)
    local f11_local4 = 999
    local f11_local5 = 0
    local f11_local6 = 0
    local f11_local7 = 100
    local f11_local8 = 3200
    local f11_local9 = 10
    local f11_local10 = 0
    local f11_local11 = f11_arg0:GetRandam_Float(0.5, 3)
    if f11_local0 > 14 then
        f11_local11 = f11_arg0:GetRandam_Float(2.5, 4)
        if f11_arg0:HasSpecialEffectId(TARGET_SELF, 5406) or f11_arg0:HasSpecialEffectId(TARGET_SELF, 5407) then
            f11_local11 = f11_arg0:GetRandam_Float(0.1, 1)
        end
        if f11_local1 < 40 then
            f11_arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 10, TARGET_ENE_0, f11_arg0:GetRandam_Int(0, 1), 60, true, true, 9920):SetLifeEndSuccess(true)
        else
            f11_arg1:AddSubGoal(GOAL_COMMON_ApproachTarget_AlwaysGuard, 10, TARGET_ENE_0, 0, TARGET_SELF, true, 9920):SetLifeEndSuccess(true)
        end
    elseif f11_local0 > 8 then
        f11_local11 = f11_arg0:GetRandam_Float(2, 3)
        if f11_arg0:HasSpecialEffectId(TARGET_SELF, 5406) or f11_arg0:HasSpecialEffectId(TARGET_SELF, 5407) then
            f11_local11 = f11_arg0:GetRandam_Float(0.1, 1)
        end
        if f11_local1 < 70 then
            f11_arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 10, TARGET_ENE_0, f11_arg0:GetRandam_Int(0, 1), 60, true, true, 9920):SetLifeEndSuccess(true)
        else
            f11_arg1:AddSubGoal(GOAL_COMMON_ApproachTarget_AlwaysGuard, 10, TARGET_ENE_0, 0, TARGET_SELF, true, 9920):SetLifeEndSuccess(true)
        end
    else
        f11_local11 = f11_arg0:GetRandam_Float(0.1, 2)
        if f11_arg0:HasSpecialEffectId(TARGET_SELF, 5406) or f11_arg0:HasSpecialEffectId(TARGET_SELF, 5407) then
            f11_local11 = f11_arg0:GetRandam_Float(0.1, 0.5)
        end
        if f11_local1 < 40 then
            f11_arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 10, TARGET_ENE_0, f11_arg0:GetRandam_Int(0, 1), 60, true, true, 9920):SetLifeEndSuccess(true)
        else
            f11_arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 10, TARGET_ENE_0, 999, TARGET_ENE_0, true, 9920):SetLifeEndSuccess(true)
        end
    end
    f11_arg0:SetTimer(5, f11_local11)
    if f11_local0 >= 25 then
    elseif f11_local0 >= 19 then
        f11_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3200, TARGET_ENE_0, 999, 0, 0, 0, 0)
    elseif f11_local0 >= 11.8 then
        f11_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3200, TARGET_ENE_0, 999, 0, 0, 0, 0)
    elseif f11_local0 >= 10.5 then
        if f11_local1 < 50 then
            f11_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3200, TARGET_ENE_0, 999, 0, 0, 0, 0)
        else
            f11_arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
            f11_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3203, TARGET_ENE_0, 999, 0, 0, 0, 0)
        end
    elseif f11_local0 >= 9.2 then
        f11_arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
        f11_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3203, TARGET_ENE_0, 999, 0, 0, 0, 0)
    elseif f11_local0 >= 4.8 then
        if f11_local1 < 50 then
            f11_arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
            f11_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3203, TARGET_ENE_0, 999, 0, 0, 0, 0)
        else
            f11_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3202, TARGET_ENE_0, 999, 0, 0, 0, 0)
        end
    else
        f11_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3202, TARGET_ENE_0, 999, 0, 0, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function BossDaughter_602000_Act11(f12_arg0, f12_arg1, f12_arg2)
    local f12_local0 = 3 - f12_arg0:GetMapHitRadius(TARGET_SELF)
    local f12_local1 = 3 - f12_arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f12_local2 = 3 - f12_arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f12_local3 = 0
    local f12_local4 = 0
    local f12_local5 = 6
    local f12_local6 = 4
    local f12_local7 = 5.5 - f12_arg0:GetMapHitRadius(TARGET_SELF)
    local f12_local8 = 0
    local f12_local9 = 0
    local f12_local10 = f12_arg0:GetRandam_Int(1, 100)
    f12_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 1500, TARGET_ENE_0, f12_local7, f12_local8, f12_local9, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BossDaughter_602000_Act12(f13_arg0, f13_arg1, f13_arg2)
    local f13_local0 = 7.7 - f13_arg0:GetMapHitRadius(TARGET_SELF) + 4.4
    local f13_local1 = 7.7 - f13_arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f13_local2 = 7.7 - f13_arg0:GetMapHitRadius(TARGET_SELF) + 3
    local f13_local3 = 0
    local f13_local4 = 0
    local f13_local5 = 1.2
    local f13_local6 = 4
    if f13_arg0:GetDist(TARGET_ENE_0) > f13_local0 + 2 then
        f13_arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6000, TARGET_ENE_0, 0, AI_DIR_TYPE_F, Dist_Step)
    elseif f13_arg0:GetDist(TARGET_ENE_0) > f13_local0 + 5 then
        f13_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3025, TARGET_ENE_0, SuccessDist, TurnTime, FrontAngle, 0, 0)
    end
    Approach_Act_Flex(f13_arg0, f13_arg1, f13_local0, f13_local1, f13_local2, f13_local3, f13_local4, f13_local5, f13_local6)
    local f13_local7 = 5.5 - f13_arg0:GetMapHitRadius(TARGET_SELF)
    local f13_local8 = 0
    local f13_local9 = 0
    local f13_local10 = f13_arg0:GetRandam_Int(1, 100)
    local f13_local11 = 3010
    local f13_local12 = 3001
    local f13_local13 = 3002
    local f13_local14 = 3003
    local f13_local15 = 3004
    local f13_local16 = 4.2 - f13_arg0:GetMapHitRadius(TARGET_SELF)
    local f13_local17 = 3.6 - f13_arg0:GetMapHitRadius(TARGET_SELF)
    local f13_local18 = 4.2 - f13_arg0:GetMapHitRadius(TARGET_SELF)
    local f13_local19 = 5.8 - f13_arg0:GetMapHitRadius(TARGET_SELF)
    if f13_local10 < 33 then
        f13_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f13_local11, TARGET_ENE_0, f13_local16, f13_local8, f13_local9, 0, 0)
        f13_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f13_local14, TARGET_ENE_0, 10, 0, 0)
        f13_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, f13_local12, TARGET_ENE_0, 999, 0, 0)
    elseif f13_local10 < 66 then
        f13_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f13_local11, TARGET_ENE_0, f13_local17, f13_local8, f13_local9, 0, 0)
        f13_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, f13_local13, TARGET_ENE_0, 999, 0, 0)
    else
        f13_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f13_local11, TARGET_ENE_0, f13_local18, f13_local8, f13_local9, 0, 0)
        f13_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, f13_local15, TARGET_ENE_0, 999, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function BossDaughter_602000_Act13(f14_arg0, f14_arg1, f14_arg2)
    f14_arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    local f14_local0 = 5.5 - f14_arg0:GetMapHitRadius(TARGET_SELF)
    local f14_local1 = 0
    local f14_local2 = 0
    local f14_local3 = f14_arg0:GetRandam_Int(1, 100)
    local f14_local4 = f14_arg0:GetRandam_Int(1, 100)
    local f14_local5 = f14_arg0:GetRandam_Int(1, 100)
    f14_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3037, TARGET_ENE_0, 8, f14_local1, f14_local2, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function BossDaughter_602000_Act30(f15_arg0, f15_arg1, f15_arg2)
    f15_arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    local f15_local0 = 5.9 - f15_arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f15_local1 = 5.9 - f15_arg0:GetMapHitRadius(TARGET_SELF)
    local f15_local2 = 5.9 - f15_arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f15_local3 = 0
    local f15_local4 = 0
    local f15_local5 = 1
    local f15_local6 = 4
    local f15_local7 = 0
    if f15_arg0:GetDist(TARGET_ENE_0) > f15_local0 + 2 then
        f15_arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6000, TARGET_ENE_0, 0, AI_DIR_TYPE_F, f15_local7)
    elseif f15_arg0:GetDist(TARGET_ENE_0) > f15_local0 + 5 then
        f15_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3025, TARGET_ENE_0, SuccessDist, TurnTime, FrontAngle, 0, 0)
    end
    Approach_Act_Flex(f15_arg0, f15_arg1, f15_local0, f15_local1, f15_local2, f15_local3, f15_local4, f15_local5, f15_local6)
    local f15_local8 = 5.5 - f15_arg0:GetMapHitRadius(TARGET_SELF)
    local f15_local9 = 0
    local f15_local10 = 0
    local f15_local11 = f15_arg0:GetRandam_Int(1, 100)
    f15_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3000, TARGET_ENE_0, 999, f15_local9, f15_local10, 0, 0)
    if f15_local11 < 50 then
        f15_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3001, TARGET_ENE_0, 10, 0, 0)
        f15_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, 999, 0, 0)
    else
        f15_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3005, TARGET_ENE_0, 10, 0, 0)
        f15_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3007, TARGET_ENE_0, 999, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function BossDaughter_602000_Act31(f16_arg0, f16_arg1, f16_arg2)
    f16_arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    local f16_local0 = 8.3 - f16_arg0:GetMapHitRadius(TARGET_SELF) + 2.8
    local f16_local1 = 8.3 - f16_arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f16_local2 = 8.3 - f16_arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f16_local3 = 0
    local f16_local4 = 0
    local f16_local5 = 1
    local f16_local6 = 4
    local f16_local7 = 0
    if f16_arg0:GetDist(TARGET_ENE_0) > f16_local0 + 2 then
        f16_arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6000, TARGET_ENE_0, 0, AI_DIR_TYPE_F, f16_local7)
    elseif f16_arg0:GetDist(TARGET_ENE_0) > f16_local0 + 5 then
        f16_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3025, TARGET_ENE_0, SuccessDist, TurnTime, FrontAngle, 0, 0)
    end
    Approach_Act_Flex(f16_arg0, f16_arg1, f16_local0, f16_local1, f16_local2, f16_local3, f16_local4, f16_local5, f16_local6)
    local f16_local8 = 5.5 - f16_arg0:GetMapHitRadius(TARGET_SELF)
    local f16_local9 = 0
    local f16_local10 = 0
    local f16_local11 = f16_arg0:GetRandam_Int(1, 100)
    f16_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3004, TARGET_ENE_0, 999, f16_local9, f16_local10, 0, 0)
    if f16_local11 < 50 then
        f16_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3001, TARGET_ENE_0, 10, 0, 0)
        f16_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, 999, 0, 0)
    else
        f16_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3005, TARGET_ENE_0, 10, 0, 0)
        f16_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3007, TARGET_ENE_0, 999, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function BossDaughter_602000_Act32(f17_arg0, f17_arg1, f17_arg2)
    f17_arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    local f17_local0 = 6.2 - f17_arg0:GetMapHitRadius(TARGET_SELF) + 0.2
    local f17_local1 = 6.2 - f17_arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f17_local2 = 6.2 - f17_arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f17_local3 = 0
    local f17_local4 = 0
    local f17_local5 = 1
    local f17_local6 = 4
    local f17_local7 = 0
    if f17_arg0:GetDist(TARGET_ENE_0) > f17_local0 + 2 then
        f17_arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6000, TARGET_ENE_0, 0, AI_DIR_TYPE_F, f17_local7)
    elseif f17_arg0:GetDist(TARGET_ENE_0) > f17_local0 + 5 then
        f17_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3025, TARGET_ENE_0, SuccessDist, TurnTime, FrontAngle, 0, 0)
    end
    Approach_Act_Flex(f17_arg0, f17_arg1, f17_local0, f17_local1, f17_local2, f17_local3, f17_local4, f17_local5, f17_local6)
    local f17_local8 = 5.5 - f17_arg0:GetMapHitRadius(TARGET_SELF)
    local f17_local9 = 0
    local f17_local10 = 0
    local f17_local11 = f17_arg0:GetRandam_Int(1, 100)
    f17_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3010, TARGET_ENE_0, 999, f17_local9, f17_local10, 0, 0)
    f17_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3012, TARGET_ENE_0, 10, 0, 0)
    f17_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3013, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function BossDaughter_602000_Act33(f18_arg0, f18_arg1, f18_arg2)
    local f18_local0 = 99 - f18_arg0:GetMapHitRadius(TARGET_SELF)
    local f18_local1 = 99 - f18_arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f18_local2 = 99 - f18_arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f18_local3 = 0
    local f18_local4 = 0
    local f18_local5 = 1
    local f18_local6 = 4
    local f18_local7 = 5.5 - f18_arg0:GetMapHitRadius(TARGET_SELF)
    local f18_local8 = 0
    local f18_local9 = 0
    local f18_local10 = f18_arg0:GetRandam_Int(1, 100)
    f18_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3016, TARGET_ENE_0, f18_local7, f18_local8, f18_local9, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function BossDaughter_602000_Act34(f19_arg0, f19_arg1, f19_arg2)
    local f19_local0 = 99 - f19_arg0:GetMapHitRadius(TARGET_SELF)
    local f19_local1 = 99 - f19_arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f19_local2 = 99 - f19_arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f19_local3 = 0
    local f19_local4 = 0
    local f19_local5 = 1
    local f19_local6 = 4
    local f19_local7 = 5.5 - f19_arg0:GetMapHitRadius(TARGET_SELF)
    local f19_local8 = 0
    local f19_local9 = 0
    local f19_local10 = f19_arg0:GetRandam_Int(1, 100)
    f19_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3017, TARGET_ENE_0, 999, f19_local8, f19_local9, 0, 0)
    if f19_local10 < 60 then
        f19_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3019, TARGET_ENE_0, 999, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function BossDaughter_602000_Act35(f20_arg0, f20_arg1, f20_arg2)
    local f20_local0 = 12.1 - f20_arg0:GetMapHitRadius(TARGET_SELF) + 2.3
    local f20_local1 = 12.1 - f20_arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f20_local2 = 12.1 - f20_arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f20_local3 = 0
    local f20_local4 = 0
    local f20_local5 = 1
    local f20_local6 = 4
    local f20_local7 = f20_arg0:GetDist(TARGET_ENE_0)
    if f20_arg0:HasSpecialEffectId(TARGET_SELF, 13210) then
        if f20_local7 <= 7 then
            f20_arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, f20_arg0:GetRandam_Float(2.5, 3), TARGET_ENE_0, f20_local7 + 5, TARGET_ENE_0, true, -1):SetLifeEndSuccess(true)
        elseif f20_local7 <= 15 then
            f20_arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f20_arg0:GetRandam_Float(2.5, 3), TARGET_ENE_0, f20_arg0:GetRandam_Int(0, 1), f20_arg0:GetRandam_Int(50, 65), true, true, -1):SetLifeEndSuccess(true)
        else
            Approach_Act_Flex(f20_arg0, f20_arg1, 10, 10, 999, 0, 0, f20_arg0:GetRandam_Float(2.5, 3), f20_arg0:GetRandam_Float(1, 1.5))
        end
    elseif f20_arg0:GetDist(TARGET_ENE_0) > f20_local0 + 2 then
        f20_arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6000, TARGET_ENE_0, 0, AI_DIR_TYPE_F, Dist_Step)
    elseif f20_arg0:GetDist(TARGET_ENE_0) > f20_local0 + 5 then
        f20_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3025, TARGET_ENE_0, SuccessDist, TurnTime, FrontAngle, 0, 0)
    end
    Approach_Act_Flex(f20_arg0, f20_arg1, f20_local0, f20_local1, f20_local2, f20_local3, f20_local4, f20_local5, f20_local6)
    local f20_local8 = 5.5 - f20_arg0:GetMapHitRadius(TARGET_SELF)
    local f20_local9 = 0
    local f20_local10 = 0
    local f20_local11 = f20_arg0:GetRandam_Int(1, 100)
    f20_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3018, TARGET_ENE_0, f20_local8, f20_local9, f20_local10, 0, 0)
    f20_arg0:SetNumber(6, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function BossDaughter_602000_Act36(f21_arg0, f21_arg1, f21_arg2)
    local f21_local0 = 5.5 - f21_arg0:GetMapHitRadius(TARGET_SELF)
    local f21_local1 = 5.5 - f21_arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f21_local2 = 5.5 - f21_arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f21_local3 = 0
    local f21_local4 = 0
    local f21_local5 = 0
    local f21_local6 = 0
    local f21_local7 = 5.5 - f21_arg0:GetMapHitRadius(TARGET_SELF)
    local f21_local8 = 0
    local f21_local9 = 0
    local f21_local10 = f21_arg0:GetRandam_Int(1, 100)
    f21_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3020, TARGET_ENE_0, f21_local7, f21_local8, f21_local9, 0, 0)
    f21_arg0:SetNumber(6, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BossDaughter_602000_Act37(f22_arg0, f22_arg1, f22_arg2)
    local f22_local0 = 4.5 - f22_arg0:GetMapHitRadius(TARGET_SELF) + 1.2
    local f22_local1 = 4.5 - f22_arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f22_local2 = 4.5 - f22_arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f22_local3 = 0
    local f22_local4 = 0
    local f22_local5 = 1
    local f22_local6 = 4
    local f22_local7 = 0
    if f22_arg0:GetDist(TARGET_ENE_0) > f22_local0 + 2 then
        f22_arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6000, TARGET_ENE_0, 0, AI_DIR_TYPE_F, f22_local7)
    elseif f22_arg0:GetDist(TARGET_ENE_0) > f22_local0 + 5 then
        f22_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3025, TARGET_ENE_0, SuccessDist, TurnTime, FrontAngle, 0, 0)
    end
    Approach_Act_Flex(f22_arg0, f22_arg1, f22_local0, f22_local1, f22_local2, f22_local3, f22_local4, f22_local5, f22_local6)
    local f22_local8 = 5.5 - f22_arg0:GetMapHitRadius(TARGET_SELF)
    local f22_local9 = 0
    local f22_local10 = 0
    local f22_local11 = f22_arg0:GetRandam_Int(1, 100)
    f22_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3021, TARGET_ENE_0, 10, f22_local9, f22_local10, 0, 0)
    f22_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3022, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function BossDaughter_602000_Act38(f23_arg0, f23_arg1, f23_arg2)
    local f23_local0 = 6.8 - f23_arg0:GetMapHitRadius(TARGET_SELF) + 1.8
    local f23_local1 = 6.8 - f23_arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f23_local2 = 6.8 - f23_arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f23_local3 = 0
    local f23_local4 = 0
    local f23_local5 = 1
    local f23_local6 = 4
    local f23_local7 = 0
    if f23_arg0:GetDist(TARGET_ENE_0) > f23_local0 + 2 then
        f23_arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6000, TARGET_ENE_0, 0, AI_DIR_TYPE_F, f23_local7)
    elseif f23_arg0:GetDist(TARGET_ENE_0) > f23_local0 + 5 then
        f23_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3025, TARGET_ENE_0, SuccessDist, TurnTime, FrontAngle, 0, 0)
    end
    Approach_Act_Flex(f23_arg0, f23_arg1, f23_local0, f23_local1, f23_local2, f23_local3, f23_local4, f23_local5, f23_local6)
    local f23_local8 = 5.5 - f23_arg0:GetMapHitRadius(TARGET_SELF)
    local f23_local9 = 0
    local f23_local10 = 0
    local f23_local11 = f23_arg0:GetRandam_Int(1, 100)
    f23_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3026, TARGET_ENE_0, 10, f23_local9, f23_local10, 0, 0)
    f23_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3027, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function BossDaughter_602000_Act39(f24_arg0, f24_arg1, f24_arg2)
    local f24_local0 = 5.5 - f24_arg0:GetMapHitRadius(TARGET_SELF)
    local f24_local1 = 5.5 - f24_arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f24_local2 = 5.5 - f24_arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f24_local3 = 0
    local f24_local4 = 0
    local f24_local5 = 6
    local f24_local6 = 4
    local f24_local7 = 5.5 - f24_arg0:GetMapHitRadius(TARGET_SELF)
    local f24_local8 = 0
    local f24_local9 = 0
    local f24_local10 = f24_arg0:GetRandam_Int(1, 100)
    f24_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 1500, TARGET_ENE_0, f24_local7, f24_local8, f24_local9, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BossDaughter_602000_Act40(f25_arg0, f25_arg1, f25_arg2)
    local f25_local0 = 9.5 - f25_arg0:GetMapHitRadius(TARGET_SELF) + 0.7
    local f25_local1 = 9.5 - f25_arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f25_local2 = 9.5 - f25_arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f25_local3 = 0
    local f25_local4 = 0
    local f25_local5 = 1
    local f25_local6 = 4
    local f25_local7 = 0
    if f25_arg0:GetDist(TARGET_ENE_0) > f25_local0 + 2 then
        f25_arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6000, TARGET_ENE_0, 0, AI_DIR_TYPE_F, f25_local7)
    elseif f25_arg0:GetDist(TARGET_ENE_0) > f25_local0 + 5 then
        f25_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3025, TARGET_ENE_0, SuccessDist, TurnTime, FrontAngle, 0, 0)
    end
    Approach_Act_Flex(f25_arg0, f25_arg1, f25_local0, f25_local1, f25_local2, f25_local3, f25_local4, f25_local5, f25_local6)
    local f25_local8 = 5.5 - f25_arg0:GetMapHitRadius(TARGET_SELF)
    local f25_local9 = 0
    local f25_local10 = 0
    local f25_local11 = f25_arg0:GetRandam_Int(1, 100)
    f25_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3032, TARGET_ENE_0, 5.5, f25_local9, f25_local10, 0, 0)
    f25_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3033, TARGET_ENE_0, 5.5, 0, 0)
    f25_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3034, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function BossDaughter_602000_Act41(f26_arg0, f26_arg1, f26_arg2)
    local f26_local0 = 17.5 - f26_arg0:GetMapHitRadius(TARGET_SELF) + 4
    local f26_local1 = 17.5 - f26_arg0:GetMapHitRadius(TARGET_SELF) + 6
    local f26_local2 = 17.5 - f26_arg0:GetMapHitRadius(TARGET_SELF) + 6
    local f26_local3 = 0
    local f26_local4 = 0
    local f26_local5 = 1
    local f26_local6 = 4
    local f26_local7 = f26_arg0:GetDist(TARGET_ENE_0)
    if f26_arg0:GetDist(TARGET_ENE_0) > f26_local0 + 2 then
        f26_arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6000, TARGET_ENE_0, 0, AI_DIR_TYPE_F, Dist_Step)
    elseif f26_arg0:GetDist(TARGET_ENE_0) > f26_local0 + 5 then
        f26_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3025, TARGET_ENE_0, SuccessDist, TurnTime, FrontAngle, 0, 0)
    elseif f26_arg0:GetDist(TARGET_ENE_0) < 4 and SpaceCheck(f26_arg0, f26_arg1, 180, 3) == true then
        f26_arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6001, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 5)
    end
    Approach_Act_Flex(f26_arg0, f26_arg1, f26_local0, f26_local1, f26_local2, f26_local3, f26_local4, f26_local5, f26_local6)
    local f26_local8 = 5.5 - f26_arg0:GetMapHitRadius(TARGET_SELF)
    local f26_local9 = 0
    local f26_local10 = 0
    local f26_local11 = f26_arg0:GetRandam_Int(1, 100)
    f26_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3028, TARGET_ENE_0, f26_local8, f26_local9, f26_local10, 0, 0)
    f26_arg0:SetNumber(6, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function BossDaughter_602000_Act42(f27_arg0, f27_arg1, f27_arg2)
    local f27_local0 = 99 - f27_arg0:GetMapHitRadius(TARGET_SELF)
    local f27_local1 = 99 - f27_arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f27_local2 = 99 - f27_arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f27_local3 = 0
    local f27_local4 = 0
    local f27_local5 = 1
    local f27_local6 = 4
    local f27_local7 = 5.5 - f27_arg0:GetMapHitRadius(TARGET_SELF)
    local f27_local8 = 0
    local f27_local9 = 0
    local f27_local10 = f27_arg0:GetRandam_Int(1, 100)
    f27_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3037, TARGET_ENE_0, 999, f27_local8, f27_local9, 0, 0)
    if f27_local10 < 60 then
        f27_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3038, TARGET_ENE_0, 999, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function BossDaughter_602000_Act43(f28_arg0, f28_arg1, f28_arg2)
    local f28_local0 = 17.5 - f28_arg0:GetMapHitRadius(TARGET_SELF) + 4
    local f28_local1 = 17.5 - f28_arg0:GetMapHitRadius(TARGET_SELF) + 6
    local f28_local2 = 17.5 - f28_arg0:GetMapHitRadius(TARGET_SELF) + 6
    local f28_local3 = 0
    local f28_local4 = 0
    local f28_local5 = 1
    local f28_local6 = 4
    local f28_local7 = f28_arg0:GetDist(TARGET_ENE_0)
    if f28_arg0:GetDist(TARGET_ENE_0) > f28_local0 + 2 then
        f28_arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6000, TARGET_ENE_0, 0, AI_DIR_TYPE_F, Dist_Step)
    elseif f28_arg0:GetDist(TARGET_ENE_0) > f28_local0 + 5 then
        f28_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3025, TARGET_ENE_0, SuccessDist, TurnTime, FrontAngle, 0, 0)
    elseif f28_arg0:GetDist(TARGET_ENE_0) < 4 and SpaceCheck(f28_arg0, f28_arg1, 180, 3) == true then
        f28_arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6001, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 5)
    end
    Approach_Act_Flex(f28_arg0, f28_arg1, f28_local0, f28_local1, f28_local2, f28_local3, f28_local4, f28_local5, f28_local6)
    local f28_local8 = 5.5 - f28_arg0:GetMapHitRadius(TARGET_SELF)
    local f28_local9 = 0
    local f28_local10 = 0
    local f28_local11 = f28_arg0:GetRandam_Int(1, 100)
    f28_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3015, TARGET_ENE_0, f28_local8, f28_local9, f28_local10, 0, 0)
    f28_arg0:SetNumber(6, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function BossDaughter_602000_Act44(f29_arg0, f29_arg1, f29_arg2)
    local f29_local0 = 9.5 - f29_arg0:GetMapHitRadius(TARGET_SELF) + 0.7
    local f29_local1 = 9.5 - f29_arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f29_local2 = 9.5 - f29_arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f29_local3 = 0
    local f29_local4 = 0
    local f29_local5 = 1
    local f29_local6 = 4
    local f29_local7 = 0
    if f29_arg0:GetDist(TARGET_ENE_0) < 6 and SpaceCheck(f29_arg0, f29_arg1, 180, 3) == true then
        f29_arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6001, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 5)
    end
    local f29_local8 = 5.5 - f29_arg0:GetMapHitRadius(TARGET_SELF)
    local f29_local9 = 0
    local f29_local10 = 0
    local f29_local11 = f29_arg0:GetRandam_Int(1, 100)
    local f29_local12 = f29_arg0:GetDist(TARGET_ENE_0)
    f29_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3038, TARGET_ENE_0, 999, f29_local9, f29_local10, 0, 0)
    if f29_local11 < 50 then
        f29_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3023, TARGET_ENE_0, 999, f29_local9, f29_local10, 0, 0)
        f29_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3038, TARGET_ENE_0, 999, f29_local9, f29_local10, 0, 0)
        f29_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3023, TARGET_ENE_0, 999, f29_local9, f29_local10, 0, 0)
    else
        f29_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3024, TARGET_ENE_0, 999, f29_local9, f29_local10, 0, 0)
        f29_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3038, TARGET_ENE_0, 999, f29_local9, f29_local10, 0, 0)
        f29_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3024, TARGET_ENE_0, 999, f29_local9, f29_local10, 0, 0)
    end
    f29_arg0:SetNumber(6, f29_arg0:GetNumber(6) + 1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BossDaughter_602000_Act45(f30_arg0, f30_arg1, f30_arg2)
    local f30_local0 = 5.5 - f30_arg0:GetMapHitRadius(TARGET_SELF)
    local f30_local1 = 0
    local f30_local2 = 0
    local f30_local3 = f30_arg0:GetRandam_Int(1, 100)
    local f30_local4 = f30_arg0:GetDist(TARGET_ENE_0)
    if f30_local4 <= 7 then
        f30_arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, f30_arg0:GetRandam_Float(1.5, 2), TARGET_ENE_0, f30_local4 + 5, TARGET_ENE_0, true, -1):SetLifeEndSuccess(true)
    elseif f30_local4 <= 15 then
        f30_arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f30_arg0:GetRandam_Float(1.5, 2), TARGET_ENE_0, f30_arg0:GetRandam_Int(0, 1), f30_arg0:GetRandam_Int(50, 65), true, true, -1):SetLifeEndSuccess(true)
    else
        f30_arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f30_arg0:GetRandam_Float(1.5, 2), TARGET_ENE_0, 13, TARGET_SELF, true, -1):SetLifeEndSuccess(true)
    end
    f30_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3035, TARGET_ENE_0, f30_local0, f30_local1, f30_local2, 0, 0)
    f30_arg0:SetNumber(6, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BossDaughter_602000_Act50(f31_arg0, f31_arg1, f31_arg2)
    local f31_local0 = 10
    local f31_local1 = 10
    local f31_local2 = 10
    local f31_local3 = 0
    local f31_local4 = 0
    local f31_local5 = 1
    local f31_local6 = 4
    local f31_local7 = 0
    if f31_arg0:GetDist(TARGET_ENE_0) > f31_local0 + 2 then
        f31_arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6000, TARGET_ENE_0, 0, AI_DIR_TYPE_F, f31_local7)
    elseif f31_arg0:GetDist(TARGET_ENE_0) > f31_local0 + 5 then
        f31_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3025, TARGET_ENE_0, SuccessDist, TurnTime, FrontAngle, 0, 0)
    end
    Approach_Act_Flex(f31_arg0, f31_arg1, f31_local0, f31_local1, f31_local2, f31_local3, f31_local4, f31_local5, f31_local6)
    local f31_local8 = 5.5 - f31_arg0:GetMapHitRadius(TARGET_SELF)
    local f31_local9 = 0
    local f31_local10 = 0
    local f31_local11 = f31_arg0:GetRandam_Int(1, 100)
    f31_arg1:AddSubGoal(GOAL_COMMON_ComboAttack_SuccessAngle180, 10, 3008, TARGET_ENE_0, 10, f31_local9, f31_local10, 0, 0)
    f31_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3009, TARGET_ENE_0, 10, 0, 0)
    f31_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3002, TARGET_ENE_0, 10, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function BossDaughter_602000_Act70(f32_arg0, f32_arg1, f32_arg2)
    f32_arg0:AddObserveArea(0, TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, 4.5)
    f32_arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 8, TARGET_ENE_0, 10, TARGET_SELF, true, -1):SetLifeEndSuccess(true)
    f32_arg0:SetTimer(1, 2)
    f32_arg0:SetTimer(2, 2)
    f32_arg0:SetTimer(3, 20)
    if f32_arg0:GetNumber(5) == 0 then
        f32_arg0:SetNumber(5, 1)
    else
        f32_arg0:SetNumber(5, 2)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BossDaughter_602000_Act76(f33_arg0, f33_arg1, f33_arg2)
    local f33_local0 = 5.5 - f33_arg0:GetMapHitRadius(TARGET_SELF)
    local f33_local1 = 0
    local f33_local2 = 0
    local f33_local3 = f33_arg0:GetRandam_Int(1, 100)
    f33_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3036, TARGET_ENE_0, f33_local0, f33_local1, f33_local2, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BossDaughter_602000_Act77(f34_arg0, f34_arg1, f34_arg2)
    local f34_local0 = 5.5 - f34_arg0:GetMapHitRadius(TARGET_SELF)
    local f34_local1 = 0
    local f34_local2 = 0
    local f34_local3 = f34_arg0:GetRandam_Int(1, 100)
    local f34_local4 = f34_arg0:GetRandam_Int(1, 2)
    local f34_local5 = 3023
    if f34_local4 == 1 then
        f34_local5 = 3023
    else
        f34_local5 = 3024
    end
    if SpaceCheck(f34_arg0, f34_arg1, 90, 7) == true and SpaceCheck(f34_arg0, f34_arg1, 270, 7) == true then
        f34_arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, f34_local5, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
    elseif SpaceCheck(f34_arg0, f34_arg1, 90, 7) == true then
        f34_arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 3023, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 0)
    elseif SpaceCheck(f34_arg0, f34_arg1, 270, 7) == true then
        f34_arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 3024, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
    elseif SpaceCheck(f34_arg0, f34_arg1, 90, 4) == true and SpaceCheck(f34_arg0, f34_arg1, 270, 4) == true then
        f34_arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, f34_local5, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
    elseif SpaceCheck(f34_arg0, f34_arg1, 90, 4) == true then
        f34_arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 3023, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 0)
    elseif SpaceCheck(f34_arg0, f34_arg1, 270, 4) == true then
        f34_arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 3024, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
    else
        f34_arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, f34_local5, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BossDaughter_602000_Act78(f35_arg0, f35_arg1, f35_arg2)
    local f35_local0 = 5.5 - f35_arg0:GetMapHitRadius(TARGET_SELF)
    local f35_local1 = 0
    local f35_local2 = 0
    local f35_local3 = f35_arg0:GetRandam_Int(1, 100)
    if SpaceCheck(f35_arg0, f35_arg1, 180, 7) == true then
        f35_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3026, TARGET_ENE_0, f35_local0, f35_local1, f35_local2, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BossDaughter_602000_Act79(f36_arg0, f36_arg1, f36_arg2)
    local f36_local0 = 5.5 - f36_arg0:GetMapHitRadius(TARGET_SELF)
    local f36_local1 = 0
    local f36_local2 = 0
    local f36_local3 = f36_arg0:GetRandam_Int(1, 100)
    f36_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3025, TARGET_ENE_0, f36_local0, f36_local1, f36_local2, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BossDaughter_602000_Act80(f37_arg0, f37_arg1, f37_arg2)
    f37_arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, f37_arg0:GetRandam_Int(20, 30))
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BossDaughter_602000_Act81(f38_arg0, f38_arg1, f38_arg2)
    local f38_local0 = 0
    local f38_local1 = f38_arg0:GetRandam_Int(1, 100)
    local f38_local2 = f38_arg0:GetDist(TARGET_ENE_0)
    local f38_local3 = f38_arg0:GetRandam_Float(1, 3)
    f38_arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f38_local3, TARGET_ENE_0, f38_arg0:GetRandam_Int(0, 1), f38_arg0:GetRandam_Int(50, 65), true, true, -1):SetTargetRange(1, 4.5, 999)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BossDaughter_602000_Act82(f39_arg0, f39_arg1, f39_arg2)
    local f39_local0 = f39_arg0:GetRandam_Int(1, 2)
    local f39_local1 = 6002
    if f39_local0 == 1 then
        f39_local1 = 6003
    end
    if SpaceCheck(f39_arg0, f39_arg1, 90, 4) == true and SpaceCheck(f39_arg0, f39_arg1, 270, 4) == true then
        f39_arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, f39_local1, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
    elseif SpaceCheck(f39_arg0, f39_arg1, 90, 4) == true then
        f39_arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6003, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 0)
    elseif SpaceCheck(f39_arg0, f39_arg1, 270, 4) == true then
        f39_arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6002, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BossDaughter_602000_Act83(f40_arg0, f40_arg1, f40_arg2)
    local f40_local0 = 5.5 - f40_arg0:GetMapHitRadius(TARGET_SELF)
    local f40_local1 = 0
    local f40_local2 = 0
    local f40_local3 = f40_arg0:GetRandam_Int(1, 100)
    if SpaceCheck(f40_arg0, f40_arg1, 90, 7) == true then
        f40_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3023, TARGET_ENE_0, f40_local0, f40_local1, f40_local2, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BossDaughter_602000_Act84(f41_arg0, f41_arg1, f41_arg2)
    local f41_local0 = 5.5 - f41_arg0:GetMapHitRadius(TARGET_SELF)
    local f41_local1 = 0
    local f41_local2 = 0
    local f41_local3 = f41_arg0:GetRandam_Int(1, 100)
    if SpaceCheck(f41_arg0, f41_arg1, 270, 7) == true then
        f41_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3024, TARGET_ENE_0, f41_local0, f41_local1, f41_local2, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BossDaughter_602000_Act85(f42_arg0, f42_arg1, f42_arg2)
    local f42_local0 = 8.3 - f42_arg0:GetMapHitRadius(TARGET_SELF) + 2.8
    local f42_local1 = 8.3 - f42_arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f42_local2 = 8.3 - f42_arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f42_local3 = 0
    local f42_local4 = 0
    local f42_local5 = 1
    local f42_local6 = 4
    local f42_local7 = 0
    if f42_arg0:GetDist(TARGET_ENE_0) > 18 then
        f42_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3025, TARGET_ENE_0, SuccessDist, TurnTime, FrontAngle, 0, 0)
    else
        f42_arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6000, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BossDaughter_602000_Act86(f43_arg0, f43_arg1, f43_arg2)
    f43_arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6001, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 5)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BossDaughter_602000_Act87(f44_arg0, f44_arg1, f44_arg2)
    local f44_local0 = f44_arg0:GetDist(TARGET_ENE_0)
    local f44_local1 = 10
    local f44_local2 = 999
    local f44_local3 = 0
    f44_arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 1, TARGET_ENE_0, f44_local0 + 5, TARGET_ENE_0, true, -1)
    
end

function BossDaughter_602000_Act88(f45_arg0, f45_arg1, f45_arg2)
    f45_arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6002, TARGET_ENE_0, 0, AI_DIR_TYPE_L, f45_arg0:GetStringIndexedNumber("Dist_SideStep"))
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BossDaughter_602000_Act89(f46_arg0, f46_arg1, f46_arg2)
    f46_arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6003, TARGET_ENE_0, 0, AI_DIR_TYPE_R, f46_arg0:GetStringIndexedNumber("Dist_SideStep"))
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BossDaughter_602000_ActAfter_AdjustSpace(f47_arg0, f47_arg1, f47_arg2)
    f47_arg1:AddSubGoal(GOAL_BossDaughter_602000_AfterAttackAct, 10)
    
end

Goal.Update = function (f48_arg0, f48_arg1, f48_arg2)
    return Update_Default_NoSubGoal(f48_arg0, f48_arg1, f48_arg2)
    
end

Goal.Terminate = function (f49_arg0, f49_arg1, f49_arg2)
    
end

Goal.Interrupt = function (f50_arg0, f50_arg1, f50_arg2)
    local f50_local0 = f50_arg1:GetDist(TARGET_ENE_0)
    local f50_local1 = f50_arg1:GetRandam_Int(1, 100)
    local f50_local2 = f50_arg1:GetRandam_Int(1, 100)
    local f50_local3 = f50_arg1:GetRandam_Int(1, 100)
    local f50_local4 = f50_arg1:GetRandam_Int(1, 100)
    local f50_local5 = f50_arg1:GetRandam_Int(1, 100)
    if f50_arg1:IsInterupt(INTERUPT_Inside_ObserveArea) and f50_arg1:IsInsideObserve(0) then
        f50_arg2:ClearSubGoal()
        f50_arg1:Replaning()
        f50_arg1:DeleteObserve(0)
        return true
    end
    if f50_arg1:IsInterupt(INTERUPT_TargetOutOfRange) and f50_arg1:IsTargetOutOfRangeInterruptSlot(1) then
        f50_arg2:ClearSubGoal()
        f50_arg1:Replaning()
        if f50_arg1:HasSpecialEffectId(TARGET_SELF, 13210) then
            f50_arg2:AddSubGoal(GOAL_COMMON_SidewayMove, f50_arg1:GetRandam_Float(1, 1.5), TARGET_ENE_0, f50_arg1:GetRandam_Int(0, 1), f50_arg1:GetRandam_Int(50, 65), true, true, -1)
        end
        return true
    end
    if f50_arg1:IsInterupt(INTERUPT_Shoot) then
        local f50_local6 = f50_arg1:GetDist(TARGET_ENE_0)
        if f50_arg1:HasSpecialEffectId(TARGET_SELF, 5821) then
            f50_arg2:ClearSubGoal()
            if f50_local6 >= 20 then
                f50_arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
                f50_arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3203, TARGET_ENE_0, 999, 0, 0, 0, 0)
            elseif f50_local6 >= 10.5 then
                if f50_local1 < 50 then
                    f50_arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3200, TARGET_ENE_0, 999, 0, 0, 0, 0)
                else
                    f50_arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3202, TARGET_ENE_0, 999, 0, 0, 0, 0)
                end
            elseif f50_local6 >= 6.5 then
                f50_arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3202, TARGET_ENE_0, 999, 0, 0, 0, 0)
            elseif f50_local6 >= 6.5 then
                if f50_local1 < 50 then
                    f50_arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3202, TARGET_ENE_0, 999, 0, 0, 0, 0)
                else
                    f50_arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3201, TARGET_ENE_0, 999, 0, 0, 0, 0)
                end
            elseif f50_local1 < 40 then
                f50_arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3202, TARGET_ENE_0, 999, 0, 0, 0, 0)
            else
                f50_arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3201, TARGET_ENE_0, 999, 0, 0, 0, 0)
            end
        elseif f50_local1 <= 80 and f50_local6 > 5 then
            f50_arg2:ClearSubGoal()
            if f50_local2 <= 40 then
                f50_arg2:AddSubGoal(GOAL_EnemyStepLR, 1, TARGET_ENE_0, -99)
            else
                f50_arg2:AddSubGoal(GOAL_COMMON_SpinStep, 1, 6000, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
            end
        end
        return true
    end
    if f50_local0 < 3 and f50_arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 180) and not f50_arg1:HasSpecialEffectId(TARGET_SELF, 5406) and not f50_arg1:HasSpecialEffectId(TARGET_SELF, 5407) and SpaceCheck(f50_arg1, f50_arg2, 180, 3) == false then
        local f50_local6 = 20
        local f50_local7 = 3018
        if Counter_Act(f50_arg1, f50_arg2, f50_local6, f50_local7) then
        end
    end
    if f50_arg1:IsInterupt(INTERUPT_Damaged) and f50_local1 < 30 then
        f50_arg2:ClearSubGoal()
        if f50_arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 90) and SpaceCheck(f50_arg1, f50_arg2, 270, f50_arg1:GetStringIndexedNumber("Dist_SideStep")) == true then
            BossDaughter_602000_Act88(f50_arg1, f50_arg2, paramTbl)
        elseif f50_arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 90) and SpaceCheck(f50_arg1, f50_arg2, 90, f50_arg1:GetStringIndexedNumber("Dist_SideStep")) == true then
            BossDaughter_602000_Act89(f50_arg1, f50_arg2, paramTbl)
        elseif f50_local1 < 30 then
            f50_arg2:AddSubGoal(GOAL_EnemyStepLR, 1, TARGET_ENE_0, -99)
        else
            f50_arg2:AddSubGoal(GOAL_COMMON_SpinStep, 1, 6001, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
        end
    end
    local f50_local6 = 3
    local f50_local7 = 3023
    local f50_local8 = 60
    local f50_local9 = f50_arg1:GetRandam_Int(1, 2)
    if f50_local9 == 1 then
        f50_local7 = 3023
    else
        f50_local7 = 3024
    end
    if ReactBackstab_Act(f50_arg1, f50_arg2, f50_local6, f50_local7, f50_local8) then
        return true
    end
    if f50_arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) then
        if f50_arg1:GetSpecialEffectActivateInterruptType(0) == 5025 then
            f50_arg2:ClearSubGoal()
            f50_arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
            if f50_local0 >= 4 then
                if f50_local1 < 60 then
                    f50_arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3029, TARGET_ENE_0, 999, 0, 0)
                elseif f50_local1 < 80 then
                    f50_arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3001, TARGET_ENE_0, 6, 0, 0)
                    f50_arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, 999, 0, 0)
                else
                    f50_arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3005, TARGET_ENE_0, 6, 0, 0)
                end
            elseif f50_local1 < 40 then
                f50_arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3029, TARGET_ENE_0, 999, 0, 0)
            elseif f50_local1 < 70 then
                f50_arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3001, TARGET_ENE_0, 6, 0, 0)
                f50_arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, 999, 0, 0)
            else
                f50_arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3005, TARGET_ENE_0, 6, 0, 0)
            end
            f50_arg2:AddSubGoal(GOAL_BossDaughter_602000_AfterAttackAct, 10)
        elseif f50_arg1:GetSpecialEffectActivateInterruptType(0) == 5026 then
            f50_arg2:ClearSubGoal()
            if f50_local0 >= 5 then
                if f50_local1 < 30 then
                    f50_arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3007, TARGET_ENE_0, 999, 0, 0)
                else
                    f50_arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3030, TARGET_ENE_0, 999, 0, 0)
                    if f50_local3 < 70 then
                        f50_arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3019, TARGET_ENE_0, 999, 0, 0)
                    end
                end
            else
                f50_arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3007, TARGET_ENE_0, 999, 0, 0)
            end
            f50_arg2:AddSubGoal(GOAL_BossDaughter_602000_AfterAttackAct, 10)
        elseif f50_arg1:GetSpecialEffectActivateInterruptType(0) == 5027 then
            f50_arg2:ClearSubGoal()
            if f50_local0 >= 4 then
                if f50_local1 < 30 then
                    f50_arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3012, TARGET_ENE_0, 6, 0, 0)
                    if f50_local2 < 90 then
                        f50_arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3013, TARGET_ENE_0, 5.5, 0, 0)
                        f50_arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3034, TARGET_ENE_0, 999, 0, 0)
                    end
                else
                    f50_arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3030, TARGET_ENE_0, 999, 0, 0)
                    if f50_local3 < 70 then
                        f50_arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3019, TARGET_ENE_0, 999, 0, 0)
                    end
                end
            else
                f50_arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3012, TARGET_ENE_0, 6, 0, 0)
                if f50_local2 < 90 then
                    f50_arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3013, TARGET_ENE_0, 5.5, 0, 0)
                    f50_arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3034, TARGET_ENE_0, 999, 0, 0)
                end
            end
            f50_arg2:AddSubGoal(GOAL_BossDaughter_602000_AfterAttackAct, 10)
        elseif f50_arg1:GetSpecialEffectActivateInterruptType(0) == 5028 then
            f50_arg2:ClearSubGoal()
            if f50_local0 >= 2.6 then
                if f50_local2 < 40 then
                    f50_arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3006, TARGET_ENE_0, 999, 0, 0)
                elseif f50_local2 < 90 then
                    f50_arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3014, TARGET_ENE_0, 999, 0, 0)
                end
            elseif f50_local2 < 60 then
                f50_arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3006, TARGET_ENE_0, 999, 0, 0)
            elseif f50_local2 < 90 then
                f50_arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3014, TARGET_ENE_0, 999, 0, 0)
            end
            f50_arg2:AddSubGoal(GOAL_BossDaughter_602000_AfterAttackAct, 10)
        elseif f50_arg1:GetSpecialEffectActivateInterruptType(0) == 5029 then
            f50_arg2:ClearSubGoal()
            if f50_local0 >= 4 then
                if f50_local3 < 40 then
                    f50_arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, 999, 0, 0)
                elseif f50_local3 < 80 then
                    f50_arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3004, TARGET_ENE_0, 999, 0, 0)
                end
            elseif f50_local3 < 40 then
                f50_arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, 999, 0, 0)
            elseif f50_local3 < 80 then
                f50_arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3004, TARGET_ENE_0, 999, 0, 0)
            end
            f50_arg2:AddSubGoal(GOAL_BossDaughter_602000_AfterAttackAct, 10)
        elseif f50_arg1:GetSpecialEffectActivateInterruptType(0) == 5030 and (f50_arg1:IsFinishTimer(5) == true or f50_local0 <= 4.5) then
            f50_arg2:ClearSubGoal()
            if f50_local0 >= 20 then
                f50_arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
                f50_arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3204, TARGET_ENE_0, 999, 0, 0, 0, 0)
            elseif f50_local0 >= 14 then
                if f50_local1 < 20 and not f50_arg1:HasSpecialEffectId(TARGET_SELF, 5406) then
                    f50_arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3203, TARGET_ENE_0, 999, 0, 0, 0, 0)
                elseif f50_local1 < 60 then
                    f50_arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3200, TARGET_ENE_0, 999, 0, 0, 0, 0)
                else
                    f50_arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
                    f50_arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3204, TARGET_ENE_0, 999, 0, 0, 0, 0)
                end
            elseif f50_local0 >= 10.5 then
                if f50_local1 < 35 and not f50_arg1:HasSpecialEffectId(TARGET_SELF, 5406) then
                    f50_arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3203, TARGET_ENE_0, 999, 0, 0, 0, 0)
                else
                    f50_arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3200, TARGET_ENE_0, 999, 0, 0, 0, 0)
                end
            elseif f50_local0 >= 7.5 then
                if f50_local1 < 40 and not f50_arg1:HasSpecialEffectId(TARGET_SELF, 5406) then
                    f50_arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3203, TARGET_ENE_0, 999, 0, 0, 0, 0)
                else
                    f50_arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
                    f50_arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3204, TARGET_ENE_0, 999, 0, 0, 0, 0)
                end
            elseif f50_local0 >= 6.5 then
                if f50_local1 < 70 then
                    f50_arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3202, TARGET_ENE_0, 999, 0, 0, 0, 0)
                else
                    f50_arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3201, TARGET_ENE_0, 999, 0, 0, 0, 0)
                end
            elseif f50_local1 < 70 then
                f50_arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3202, TARGET_ENE_0, 999, 0, 0, 0, 0)
            else
                f50_arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3201, TARGET_ENE_0, 999, 0, 0, 0, 0)
            end
            f50_arg2:AddSubGoal(GOAL_BossDaughter_602000_AfterAttackAct, 10)
        elseif f50_arg1:GetSpecialEffectActivateInterruptType(0) == 5031 then
            f50_arg2:ClearSubGoal()
            f50_arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
            if f50_local0 >= 8 then
                f50_arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3038, TARGET_ENE_0, 999, 0, 0, 0, 0)
            else
                f50_arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3039, TARGET_ENE_0, 999, 0, 0, 0, 0)
                f50_arg2:AddSubGoal(GOAL_BossDaughter_602000_AfterAttackAct, 10)
            end
        elseif f50_arg1:GetSpecialEffectActivateInterruptType(0) == 13210 then
            f50_arg2:ClearSubGoal()
            if f50_arg1:HasSpecialEffectId(TARGET_SELF, 5407) then
                f50_arg1:SetTimer(2, 90)
            else
                f50_arg1:SetTimer(1, 19)
            end
            f50_arg1:SetNumber(7, 1)
            if f50_local0 <= 5 then
                if SpaceCheck(f50_arg1, f50_arg2, 180, 7) == true and not f50_arg1:HasSpecialEffectId(TARGET_SELF, 5407) then
                    f50_arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3026, TARGET_ENE_0, 999, 0, 0, 0, 0)
                elseif SpaceCheck(f50_arg1, f50_arg2, 180, 2) == true then
                    f50_arg2:AddSubGoal(GOAL_COMMON_SpinStep, 1, 6001, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
                end
            end
            if f50_local1 < 45 then
                BossDaughter_602000_Act77(f50_arg1, f50_arg2, paramTbl)
            else
                f50_arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3036, TARGET_ENE_0, 999, 0, 0, 0, 0)
            end
            if f50_local0 <= 7 then
                f50_arg2:AddSubGoal(GOAL_COMMON_LeaveTarget, f50_arg1:GetRandam_Float(1.5, 2), TARGET_ENE_0, 999, TARGET_ENE_0, true, -1):SetLifeEndSuccess(true)
            elseif f50_local0 <= 15 then
                f50_arg2:AddSubGoal(GOAL_COMMON_SidewayMove, f50_arg1:GetRandam_Float(1.5, 2), TARGET_ENE_0, f50_arg1:GetRandam_Int(0, 1), f50_arg1:GetRandam_Int(50, 65), true, true, -1):SetLifeEndSuccess(true)
            else
                f50_arg2:AddSubGoal(GOAL_COMMON_ApproachTarget, f50_arg1:GetRandam_Float(1.5, 2), TARGET_ENE_0, 13, TARGET_SELF, true, -1):SetLifeEndSuccess(true)
            end
        end
        return true
    end
    return false
    
end

RegisterTableGoal(GOAL_BossDaughter_602000_AfterAttackAct, "GOAL_BossDaughter_602000_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_BossDaughter_602000_AfterAttackAct, true)

Goal.Activate = function (f51_arg0, f51_arg1, f51_arg2)
    local f51_local0 = f51_arg1:GetDist(TARGET_ENE_0)
    local f51_local1 = f51_arg1:GetToTargetAngle(TARGET_ENE_0)
    local f51_local2 = f51_arg1:GetHpRate(TARGET_SELF)
    local f51_local3 = f51_arg1:GetRandam_Int(1, 100)
    local f51_local4 = f51_arg1:GetRandam_Int(1, 100)
    local f51_local5 = {}
    if f51_arg1:HasSpecialEffectId(TARGET_SELF, 5404) then
        if f51_local0 >= 6 then
            f51_local5[1] = 60
            f51_local5[2] = 15
            f51_local5[3] = 0
            f51_local5[4] = 5
            f51_local5[5] = 20
            f51_local5[6] = 0
        elseif f51_local0 >= 3 then
            f51_local5[1] = 50
            f51_local5[2] = 10
            f51_local5[3] = 0
            f51_local5[4] = 30
            f51_local5[5] = 10
        else
            f51_local5[1] = 50
            f51_local5[2] = 0
            f51_local5[3] = 5
            f51_local5[4] = 30
            f51_local5[5] = 15
        end
    elseif f51_local0 >= 7 then
        f51_local5[1] = 40
        f51_local5[2] = 0
        f51_local5[3] = 0
        f51_local5[4] = 0
        f51_local5[5] = 0
        f51_local5[6] = 40
        f51_local5[7] = 0
        f51_local5[8] = 20
    elseif f51_local0 >= 4 then
        f51_local5[1] = 70
        f51_local5[2] = 0
        f51_local5[3] = 0
        f51_local5[4] = 0
        f51_local5[5] = 0
        f51_local5[7] = 10
        f51_local5[8] = 20
    else
        f51_local5[1] = 80
        f51_local5[2] = 0
        f51_local5[3] = 0
        f51_local5[4] = 0
        f51_local5[5] = 0
        f51_local5[7] = 10
        f51_local5[8] = 10
    end
    local f51_local6 = SelectOddsIndex(f51_arg1, f51_local5)
    if f51_local6 == 1 then
    elseif f51_local6 == 2 then
        BossDaughter_602000_Act85(f51_arg1, f51_arg2, paramTbl)
    elseif f51_local6 == 3 then
        BossDaughter_602000_Act86(f51_arg1, f51_arg2, paramTbl)
    elseif f51_local6 == 4 then
        BossDaughter_602000_Act82(f51_arg1, f51_arg2, paramTbl)
    elseif f51_local6 == 5 then
        BossDaughter_602000_Act77(f51_arg1, f51_arg2, paramTbl)
    elseif f51_local6 == 6 then
        BossDaughter_602000_Act81(f51_arg1, f51_arg2, paramTbl)
    elseif f51_local6 == 7 then
        BossDaughter_602000_Act78(f51_arg1, f51_arg2, paramTbl)
    elseif f51_local6 == 8 then
        BossDaughter_602000_Act87(f51_arg1, f51_arg2, paramTbl)
    end
    
end

Goal.Update = function (f52_arg0, f52_arg1, f52_arg2)
    return Update_Default_NoSubGoal(f52_arg0, f52_arg1, f52_arg2)
    
end


