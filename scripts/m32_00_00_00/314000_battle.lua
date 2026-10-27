local f0_local0 = {3204300, 3204310, 3204311, 3204312, 3204313, 3204314, 3204315, 3204316, 3204317, 3204318, 3204319, 3204320, 3204321, 3204322, 3204323, 3204324, 3204325, 3204328, 3204329}
RegisterTableGoal(GOAL_Hellkite_314000_Battle, "Hellkite_314000_Battle")

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
    local f2_local3 = f2_arg1:GetDist(TARGET_ENE_0)
    local f2_local4 = f2_arg1:GetEventRequest()
    if InsideRange(f2_arg1, f2_arg2, 180, 180, 3, 10) and f2_arg1:GetRandam_Int(1, 100) <= 75 then
        f2_local0[7] = 100
    elseif f2_arg1:IsInsideTargetRegion(TARGET_ENE_0, 3204350) or f2_arg1:IsInsideTargetRegion(TARGET_ENE_0, 3204351) or f2_arg1:IsInsideTargetRegion(TARGET_ENE_0, 3204352) or f2_arg1:IsInsideTargetRegion(TARGET_ENE_0, 3204353) or f2_arg1:IsInsideTargetRegion(TARGET_ENE_0, 3204354) then
        if f2_arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 90) then
            f2_local0[20] = 100
        elseif f2_local3 >= 20 then
            f2_local0[1] = 100
            f2_local0[2] = 150
            f2_local0[3] = 30
            f2_local0[4] = 10
            f2_local0[5] = 10
            f2_local0[6] = 10
            f2_local0[7] = 0
            f2_local0[8] = 60
            f2_local0[9] = 0
        elseif f2_local3 >= 13 then
            f2_local0[1] = 40
            f2_local0[2] = 80
            f2_local0[3] = 50
            f2_local0[4] = 20
            f2_local0[5] = 20
            f2_local0[6] = 20
            f2_local0[7] = 0
            f2_local0[8] = 80
            f2_local0[9] = 50
        elseif f2_local3 >= 9 then
            f2_local0[1] = 10
            f2_local0[2] = 30
            f2_local0[3] = 150
            f2_local0[4] = 30
            f2_local0[5] = 30
            f2_local0[6] = 30
            f2_local0[7] = 0
            f2_local0[8] = 80
            f2_local0[9] = 80
        else
            f2_local0[1] = 0
            f2_local0[2] = 0
            f2_local0[3] = 0
            f2_local0[4] = 100
            f2_local0[5] = 100
            f2_local0[6] = 100
            f2_local0[7] = 100
            f2_local0[8] = 0
            f2_local0[9] = 80
        end
    elseif f2_arg1:IsInsideTargetRegion(TARGET_ENE_0, 3204355) then
        if not f2_arg1:IsInsideTargetRegion(TARGET_SELF, 3204354) then
            f2_local0[21] = 100
        elseif f2_local3 <= 12 then
            f2_local0[4] = 30
            f2_local0[5] = 20
            f2_local0[6] = 20
            f2_local0[9] = 40
        elseif f2_local3 <= 20 then
            f2_local0[1] = 10
            f2_local0[2] = 40
            f2_local0[3] = 50
            f2_local0[4] = 10
            f2_local0[9] = 30
        elseif f2_arg1:IsInsideTargetRegion(TARGET_SELF, 3204354) then
            f2_local0[41] = 100
        end
    elseif f2_arg1:IsInsideTargetRegion(TARGET_ENE_0, 3204358) then
        if f2_arg1:IsInsideTargetRegion(TARGET_SELF, 3204340) then
            f2_local0[23] = 100
        else
            f2_local0[24] = 100
        end
    elseif f2_arg1:IsInsideTargetRegion(TARGET_ENE_0, 3204356) then
        if f2_arg1:IsInsideTargetRegion(TARGET_SELF, 3204350) or f2_arg1:IsInsideTargetRegion(TARGET_SELF, 3204351) or f2_arg1:IsInsideTargetRegion(TARGET_SELF, 3204352) or f2_arg1:IsInsideTargetRegion(TARGET_SELF, 3204353) then
            f2_local0[21] = 100
        elseif f2_arg1:IsInsideTargetRegion(TARGET_SELF, 3204355) or f2_arg1:IsInsideTargetRegion(TARGET_SELF, 3204356) then
            f2_local0[41] = 100
        elseif f2_arg1:IsInsideTargetRegion(TARGET_SELF, 3204354) then
            if f2_arg1:IsInsideTargetRegion(TARGET_SELF, 3204309) then
                f2_local0[37] = 100
            else
                local f2_local5 = f2_arg1:GetToTargetAngle(TARGET_ENE_0)
                if math.abs(f2_local5) <= 45 then
                    f2_local0[37] = 100
                else
                    f2_local0[21] = 100
                end
            end
        elseif f2_arg1:IsInsideTargetRegion(TARGET_SELF, 3204357) then
            f2_local0[21] = 50
            f2_local0[37] = 50
        else
            f2_local0[21] = 100
        end
    elseif f2_arg1:IsInsideTargetRegion(TARGET_ENE_0, 3204357) then
        if f2_arg1:IsInsideTargetRegion(TARGET_SELF, 3204309) then
            if f2_local3 <= 9 then
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 100
                f2_local0[5] = 100
                f2_local0[6] = 100
                f2_local0[7] = 50
                f2_local0[9] = 80
            elseif f2_local3 <= 15 then
                f2_local0[1] = 10
                f2_local0[2] = 50
                f2_local0[3] = 160
                f2_local0[4] = 10
                f2_local0[5] = 10
                f2_local0[6] = 10
                f2_local0[9] = 100
            elseif f2_local3 <= 20 then
                f2_local0[1] = 70
                f2_local0[2] = 150
                f2_local0[3] = 80
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[9] = 30
            else
                f2_local0[29] = 100
            end
        else
            f2_local0[21] = 100
        end
    elseif f2_arg1:IsInsideTargetRegion(TARGET_ENE_0, 3204359) or f2_arg1:IsInsideTargetRegion(TARGET_ENE_0, 3204360) then
        if f2_arg1:IsInsideTargetRegion(TARGET_SELF, 3204300) or f2_arg1:IsInsideTargetRegion(TARGET_SELF, 3204353) or f2_arg1:IsInsideTargetRegion(TARGET_SELF, 3204354) or f2_arg1:IsInsideTargetRegion(TARGET_SELF, 3204355) then
            f2_local0[40] = 100
        else
            f2_local0[21] = 100
        end
    elseif f2_arg1:IsInsideTargetRegion(TARGET_ENE_0, 3204362) or f2_arg1:IsInsideTargetRegion(TARGET_ENE_0, 3204363) or f2_arg1:IsInsideTargetRegion(TARGET_ENE_0, 3204364) then
        f2_local0[50] = 100
    elseif f2_arg1:IsInsideTargetRegion(TARGET_SELF, 3204340) then
        f2_local0[22] = 100
    else
        f2_local0[46] = 100
    end
    f2_local0[1] = SetCoolTime(f2_arg1, f2_arg2, 3000, 10, f2_local0[1], 1)
    f2_local0[24] = SetCoolTime(f2_arg1, f2_arg2, 3000, 10, f2_local0[24], 1)
    f2_local0[26] = SetCoolTime(f2_arg1, f2_arg2, 3000, 10, f2_local0[26], 1)
    f2_local0[29] = SetCoolTime(f2_arg1, f2_arg2, 3000, 10, f2_local0[29], 1)
    f2_local0[32] = SetCoolTime(f2_arg1, f2_arg2, 3000, 10, f2_local0[32], 1)
    f2_local0[35] = SetCoolTime(f2_arg1, f2_arg2, 3000, 10, f2_local0[35], 1)
    f2_local0[38] = SetCoolTime(f2_arg1, f2_arg2, 3000, 10, f2_local0[38], 1)
    f2_local0[2] = SetCoolTime(f2_arg1, f2_arg2, 3001, 10, f2_local0[2], 1)
    f2_local0[25] = SetCoolTime(f2_arg1, f2_arg2, 3001, 10, f2_local0[25], 1)
    f2_local0[27] = SetCoolTime(f2_arg1, f2_arg2, 3001, 10, f2_local0[27], 1)
    f2_local0[30] = SetCoolTime(f2_arg1, f2_arg2, 3001, 10, f2_local0[30], 1)
    f2_local0[33] = SetCoolTime(f2_arg1, f2_arg2, 3001, 10, f2_local0[33], 1)
    f2_local0[36] = SetCoolTime(f2_arg1, f2_arg2, 3001, 10, f2_local0[36], 1)
    f2_local0[39] = SetCoolTime(f2_arg1, f2_arg2, 3001, 10, f2_local0[39], 1)
    f2_local0[9] = SetCoolTime(f2_arg1, f2_arg2, 3008, 15, f2_local0[9], 1)
    f2_local1[1] = REGIST_FUNC(f2_arg1, f2_arg2, Hellkite_314000_Act01)
    f2_local1[2] = REGIST_FUNC(f2_arg1, f2_arg2, Hellkite_314000_Act02)
    f2_local1[3] = REGIST_FUNC(f2_arg1, f2_arg2, Hellkite_314000_Act03)
    f2_local1[4] = REGIST_FUNC(f2_arg1, f2_arg2, Hellkite_314000_Act04)
    f2_local1[5] = REGIST_FUNC(f2_arg1, f2_arg2, Hellkite_314000_Act05)
    f2_local1[6] = REGIST_FUNC(f2_arg1, f2_arg2, Hellkite_314000_Act06)
    f2_local1[7] = REGIST_FUNC(f2_arg1, f2_arg2, Hellkite_314000_Act07)
    f2_local1[8] = REGIST_FUNC(f2_arg1, f2_arg2, Hellkite_314000_Act08)
    f2_local1[9] = REGIST_FUNC(f2_arg1, f2_arg2, Hellkite_314000_Act09)
    f2_local1[10] = REGIST_FUNC(f2_arg1, f2_arg2, Hellkite_314000_Act10)
    f2_local1[11] = REGIST_FUNC(f2_arg1, f2_arg2, Hellkite_314000_Act11)
    f2_local1[12] = REGIST_FUNC(f2_arg1, f2_arg2, Hellkite_314000_Act12)
    f2_local1[13] = REGIST_FUNC(f2_arg1, f2_arg2, Hellkite_314000_Act13)
    f2_local1[14] = REGIST_FUNC(f2_arg1, f2_arg2, Hellkite_314000_Act14)
    f2_local1[20] = REGIST_FUNC(f2_arg1, f2_arg2, Hellkite_314000_Act20)
    f2_local1[21] = REGIST_FUNC(f2_arg1, f2_arg2, Hellkite_314000_Act21)
    f2_local1[22] = REGIST_FUNC(f2_arg1, f2_arg2, Hellkite_314000_Act22)
    f2_local1[23] = REGIST_FUNC(f2_arg1, f2_arg2, Hellkite_314000_Act23)
    f2_local1[24] = REGIST_FUNC(f2_arg1, f2_arg2, Hellkite_314000_Act24)
    f2_local1[25] = REGIST_FUNC(f2_arg1, f2_arg2, Hellkite_314000_Act25)
    f2_local1[26] = REGIST_FUNC(f2_arg1, f2_arg2, Hellkite_314000_Act26)
    f2_local1[27] = REGIST_FUNC(f2_arg1, f2_arg2, Hellkite_314000_Act27)
    f2_local1[28] = REGIST_FUNC(f2_arg1, f2_arg2, Hellkite_314000_Act28)
    f2_local1[29] = REGIST_FUNC(f2_arg1, f2_arg2, Hellkite_314000_Act29)
    f2_local1[30] = REGIST_FUNC(f2_arg1, f2_arg2, Hellkite_314000_Act30)
    f2_local1[31] = REGIST_FUNC(f2_arg1, f2_arg2, Hellkite_314000_Act31)
    f2_local1[32] = REGIST_FUNC(f2_arg1, f2_arg2, Hellkite_314000_Act32)
    f2_local1[33] = REGIST_FUNC(f2_arg1, f2_arg2, Hellkite_314000_Act33)
    f2_local1[34] = REGIST_FUNC(f2_arg1, f2_arg2, Hellkite_314000_Act34)
    f2_local1[35] = REGIST_FUNC(f2_arg1, f2_arg2, Hellkite_314000_Act35)
    f2_local1[36] = REGIST_FUNC(f2_arg1, f2_arg2, Hellkite_314000_Act36)
    f2_local1[37] = REGIST_FUNC(f2_arg1, f2_arg2, Hellkite_314000_Act37)
    f2_local1[38] = REGIST_FUNC(f2_arg1, f2_arg2, Hellkite_314000_Act38)
    f2_local1[39] = REGIST_FUNC(f2_arg1, f2_arg2, Hellkite_314000_Act39)
    f2_local1[40] = REGIST_FUNC(f2_arg1, f2_arg2, Hellkite_314000_Act40)
    f2_local1[41] = REGIST_FUNC(f2_arg1, f2_arg2, Hellkite_314000_Act41)
    f2_local1[42] = REGIST_FUNC(f2_arg1, f2_arg2, Hellkite_314000_Act42)
    f2_local1[43] = REGIST_FUNC(f2_arg1, f2_arg2, Hellkite_314000_Act43)
    f2_local1[44] = REGIST_FUNC(f2_arg1, f2_arg2, Hellkite_314000_Act44)
    f2_local1[45] = REGIST_FUNC(f2_arg1, f2_arg2, Hellkite_314000_Act45)
    f2_local1[46] = REGIST_FUNC(f2_arg1, f2_arg2, Hellkite_314000_Act46)
    f2_local1[50] = REGIST_FUNC(f2_arg1, f2_arg2, Hellkite_314000_Act50)
    local f2_local5 = REGIST_FUNC(f2_arg1, f2_arg2, Hellkite_314000_ActAfter_AdjustSpace)
    Common_Battle_Activate(f2_arg1, f2_arg2, f2_local0, f2_local1, f2_local5, f2_local2)
    
end

function Hellkite_314000_Act01(f3_arg0, f3_arg1, f3_arg2)
    local f3_local0 = 52.8 - f3_arg0:GetMapHitRadius(TARGET_SELF) + 50
    local f3_local1 = 52.8 - f3_arg0:GetMapHitRadius(TARGET_SELF) + 50
    local f3_local2 = 52.8 - f3_arg0:GetMapHitRadius(TARGET_SELF) + 50
    local f3_local3 = 0
    local f3_local4 = 0
    local f3_local5 = 5
    local f3_local6 = 5
    Approach_Act_Flex(f3_arg0, f3_arg1, f3_local0, f3_local1, f3_local2, f3_local3, f3_local4, f3_local5, f3_local6)
    local f3_local7 = 3000
    local f3_local8 = 52.8 - f3_arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f3_local9 = 999 - f3_arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local10 = 1.5
    local f3_local11 = 20
    local f3_local12 = f3_arg0:GetRandam_Int(1, 100)
    f3_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f3_local7, TARGET_ENE_0, f3_local9, f3_local10, f3_local11, 0, 0)
    return 100
    
end

function Hellkite_314000_Act02(f4_arg0, f4_arg1, f4_arg2)
    local f4_local0 = 27.8 - f4_arg0:GetMapHitRadius(TARGET_SELF) + 50
    local f4_local1 = 27.8 - f4_arg0:GetMapHitRadius(TARGET_SELF) + 50
    local f4_local2 = 27.8 - f4_arg0:GetMapHitRadius(TARGET_SELF) + 50
    local f4_local3 = 0
    local f4_local4 = 0
    local f4_local5 = 5
    local f4_local6 = 5
    Approach_Act_Flex(f4_arg0, f4_arg1, f4_local0, f4_local1, f4_local2, f4_local3, f4_local4, f4_local5, f4_local6)
    local f4_local7 = 3001
    local f4_local8 = 27.8 - f4_arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f4_local9 = 999 - f4_arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local10 = 1.5
    local f4_local11 = 20
    local f4_local12 = f4_arg0:GetRandam_Int(1, 100)
    f4_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f4_local7, TARGET_ENE_0, f4_local9, f4_local10, f4_local11, 0, 0)
    return 100
    
end

function Hellkite_314000_Act03(f5_arg0, f5_arg1, f5_arg2)
    local f5_local0 = 16.3 - f5_arg0:GetMapHitRadius(TARGET_SELF) + 50
    local f5_local1 = 16.3 - f5_arg0:GetMapHitRadius(TARGET_SELF) + 0.9
    local f5_local2 = 16.3 - f5_arg0:GetMapHitRadius(TARGET_SELF) + 4
    local f5_local3 = 0
    local f5_local4 = 0
    local f5_local5 = 5
    local f5_local6 = 5
    Approach_Act_Flex(f5_arg0, f5_arg1, f5_local0, f5_local1, f5_local2, f5_local3, f5_local4, f5_local5, f5_local6)
    local f5_local7 = 3002
    local f5_local8 = 16.3 - f5_arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f5_local9 = 999 - f5_arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local10 = 1.5
    local f5_local11 = 20
    local f5_local12 = f5_arg0:GetRandam_Int(1, 100)
    f5_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f5_local7, TARGET_ENE_0, f5_local9, f5_local10, f5_local11, 0, 0)
    return 100
    
end

function Hellkite_314000_Act04(f6_arg0, f6_arg1, f6_arg2)
    local f6_local0 = 8.8 - f6_arg0:GetMapHitRadius(TARGET_SELF) + 50
    local f6_local1 = 8.8 - f6_arg0:GetMapHitRadius(TARGET_SELF) + 50
    local f6_local2 = 8.8 - f6_arg0:GetMapHitRadius(TARGET_SELF) + 50
    local f6_local3 = 0
    local f6_local4 = 0
    local f6_local5 = 5
    local f6_local6 = 5
    Approach_Act_Flex(f6_arg0, f6_arg1, f6_local0, f6_local1, f6_local2, f6_local3, f6_local4, f6_local5, f6_local6)
    local f6_local7 = 3003
    local f6_local8 = 8.8 - f6_arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f6_local9 = 999 - f6_arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local10 = 1.5
    local f6_local11 = 20
    local f6_local12 = f6_arg0:GetRandam_Int(1, 100)
    f6_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f6_local7, TARGET_ENE_0, f6_local9, f6_local10, f6_local11, 0, 0)
    return 100
    
end

function Hellkite_314000_Act05(f7_arg0, f7_arg1, f7_arg2)
    local f7_local0 = 6.3 - f7_arg0:GetMapHitRadius(TARGET_SELF) + 50
    local f7_local1 = 6.3 - f7_arg0:GetMapHitRadius(TARGET_SELF) + 50
    local f7_local2 = 6.3 - f7_arg0:GetMapHitRadius(TARGET_SELF) + 50
    local f7_local3 = 0
    local f7_local4 = 0
    local f7_local5 = 5
    local f7_local6 = 5
    Approach_Act_Flex(f7_arg0, f7_arg1, f7_local0, f7_local1, f7_local2, f7_local3, f7_local4, f7_local5, f7_local6)
    local f7_local7 = 3004
    local f7_local8 = 6.3 - f7_arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f7_local9 = 999 - f7_arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local10 = 1.5
    local f7_local11 = 20
    local f7_local12 = f7_arg0:GetRandam_Int(1, 100)
    f7_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f7_local7, TARGET_ENE_0, f7_local9, f7_local10, f7_local11, 0, 0)
    return 100
    
end

function Hellkite_314000_Act06(f8_arg0, f8_arg1, f8_arg2)
    local f8_local0 = 6.3 - f8_arg0:GetMapHitRadius(TARGET_SELF) + 50
    local f8_local1 = 6.3 - f8_arg0:GetMapHitRadius(TARGET_SELF) + 50
    local f8_local2 = 6.3 - f8_arg0:GetMapHitRadius(TARGET_SELF) + 50
    local f8_local3 = 0
    local f8_local4 = 0
    local f8_local5 = 5
    local f8_local6 = 5
    Approach_Act_Flex(f8_arg0, f8_arg1, f8_local0, f8_local1, f8_local2, f8_local3, f8_local4, f8_local5, f8_local6)
    local f8_local7 = 3005
    local f8_local8 = 6.3 - f8_arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f8_local9 = 999 - f8_arg0:GetMapHitRadius(TARGET_SELF)
    local f8_local10 = 1.5
    local f8_local11 = 20
    local f8_local12 = f8_arg0:GetRandam_Int(1, 100)
    f8_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f8_local7, TARGET_ENE_0, f8_local9, f8_local10, f8_local11, 0, 0)
    return 100
    
end

function Hellkite_314000_Act07(f9_arg0, f9_arg1, f9_arg2)
    local f9_local0 = 3006
    local f9_local1 = 999 - f9_arg0:GetMapHitRadius(TARGET_SELF)
    local f9_local2 = 0
    local f9_local3 = 0
    f9_arg1:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, f9_local0, TARGET_ENE_0, f9_local1, f9_local2, f9_local3)
    return 100
    
end

function Hellkite_314000_Act08(f10_arg0, f10_arg1, f10_arg2)
    local f10_local0 = 26.8 - f10_arg0:GetMapHitRadius(TARGET_SELF) + 50
    local f10_local1 = 26.8 - f10_arg0:GetMapHitRadius(TARGET_SELF) + 0.9
    local f10_local2 = 26.8 - f10_arg0:GetMapHitRadius(TARGET_SELF) + 4
    local f10_local3 = 0
    local f10_local4 = 0
    local f10_local5 = 5
    local f10_local6 = 5
    Approach_Act_Flex(f10_arg0, f10_arg1, f10_local0, f10_local1, f10_local2, f10_local3, f10_local4, f10_local5, f10_local6)
    local f10_local7 = 3007
    local f10_local8 = 26.8 - f10_arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f10_local9 = 999 - f10_arg0:GetMapHitRadius(TARGET_SELF)
    local f10_local10 = 1.5
    local f10_local11 = 20
    local f10_local12 = f10_arg0:GetRandam_Int(1, 100)
    f10_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f10_local7, TARGET_ENE_0, f10_local9, f10_local10, f10_local11, 0, 0)
    return 100
    
end

function Hellkite_314000_Act09(f11_arg0, f11_arg1, f11_arg2)
    local f11_local0 = 10.8 - f11_arg0:GetMapHitRadius(TARGET_SELF) + 50
    local f11_local1 = 10.8 - f11_arg0:GetMapHitRadius(TARGET_SELF) + 0.9
    local f11_local2 = 10.8 - f11_arg0:GetMapHitRadius(TARGET_SELF) + 4
    local f11_local3 = 0
    local f11_local4 = 0
    local f11_local5 = 5
    local f11_local6 = 5
    Approach_Act_Flex(f11_arg0, f11_arg1, f11_local0, f11_local1, f11_local2, f11_local3, f11_local4, f11_local5, f11_local6)
    local f11_local7 = 3008
    local f11_local8 = 10.8 - f11_arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f11_local9 = 999 - f11_arg0:GetMapHitRadius(TARGET_SELF)
    local f11_local10 = 1.5
    local f11_local11 = 20
    local f11_local12 = f11_arg0:GetRandam_Int(1, 100)
    f11_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f11_local7, TARGET_ENE_0, f11_local9, f11_local10, f11_local11, 0, 0)
    return 100
    
end

function Hellkite_314000_Act10(f12_arg0, f12_arg1, f12_arg2)
    local f12_local0 = 3009
    local f12_local1 = 999 - f12_arg0:GetMapHitRadius(TARGET_SELF)
    local f12_local2 = 0
    local f12_local3 = 0
    f12_arg1:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, f12_local0, TARGET_ENE_0, f12_local1, f12_local2, f12_local3)
    return 100
    
end

function Hellkite_314000_Act11(f13_arg0, f13_arg1, f13_arg2)
    local f13_local0 = 3010
    local f13_local1 = 999 - f13_arg0:GetMapHitRadius(TARGET_SELF)
    local f13_local2 = 0
    local f13_local3 = 0
    f13_arg1:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, f13_local0, TARGET_ENE_0, f13_local1, f13_local2, f13_local3)
    return 100
    
end

function Hellkite_314000_Act12(f14_arg0, f14_arg1, f14_arg2)
    local f14_local0 = 3011
    local f14_local1 = 999 - f14_arg0:GetMapHitRadius(TARGET_SELF)
    local f14_local2 = 0
    local f14_local3 = 0
    f14_arg1:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, f14_local0, TARGET_ENE_0, f14_local1, f14_local2, f14_local3)
    return 100
    
end

function Hellkite_314000_Act13(f15_arg0, f15_arg1, f15_arg2)
    local f15_local0 = 3000
    local f15_local1 = 999 - f15_arg0:GetMapHitRadius(TARGET_SELF)
    local f15_local2 = 0
    local f15_local3 = 0
    f15_arg1:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, f15_local0, TARGET_ENE_0, f15_local1, f15_local2, f15_local3)
    return 100
    
end

function Hellkite_314000_Act14(f16_arg0, f16_arg1, f16_arg2)
    local f16_local0 = 3012
    local f16_local1 = 999 - f16_arg0:GetMapHitRadius(TARGET_SELF)
    local f16_local2 = 0
    local f16_local3 = 0
    f16_arg1:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, f16_local0, TARGET_ENE_0, f16_local1, f16_local2, f16_local3)
    return 100
    
end

function Hellkite_314000_Act20(f17_arg0, f17_arg1, f17_arg2)
    f17_arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 0)
    return 100
    
end

function Hellkite_314000_Act21(f18_arg0, f18_arg1, f18_arg2)
    Hellkite_314000_ApproachToEntity(f18_arg0, f18_arg1, 3204300, -2.2)
    return 0
    
end

function Hellkite_314000_Act22(f19_arg0, f19_arg1, f19_arg2)
    Hellkite_314000_TurnToEntity(f19_arg0, f19_arg1, 3204302)
    local f19_local0 = 999 - f19_arg0:GetMapHitRadius(TARGET_SELF)
    local f19_local1 = 0
    local f19_local2 = 0
    if f19_arg0:IsInsideTargetRegion(TARGET_ENE_0, 3204399) then
        f19_arg1:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3015, TARGET_ENE_0, f19_local0, f19_local1, f19_local2)
    end
    return 0
    
end

function Hellkite_314000_Act23(f20_arg0, f20_arg1, f20_arg2)
    Hellkite_314000_TurnToEntity(f20_arg0, f20_arg1, 3204306, 1)
    local f20_local0 = 3000
    local f20_local1 = 999 - f20_arg0:GetMapHitRadius(TARGET_SELF)
    local f20_local2 = 0
    local f20_local3 = 0
    f20_arg1:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, f20_local0, TARGET_NONE, f20_local1, f20_local2, f20_local3)
    return 0
    
end

function Hellkite_314000_Act24(f21_arg0, f21_arg1, f21_arg2)
    Hellkite_314000_ApproachToEntity(f21_arg0, f21_arg1, 3204340, -2.2)
    return 0
    
end

function Hellkite_314000_Act25(f22_arg0, f22_arg1, f22_arg2)
    Hellkite_314000_TurnToEntity(f22_arg0, f22_arg1, 3204353)
    local f22_local0 = 3001
    local f22_local1 = 999 - f22_arg0:GetMapHitRadius(TARGET_SELF)
    local f22_local2 = 0
    local f22_local3 = 0
    f22_arg1:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, f22_local0, TARGET_ENE_0, f22_local1, f22_local2, f22_local3)
    return 0
    
end

function Hellkite_314000_Act26(f23_arg0, f23_arg1, f23_arg2)
    Hellkite_314000_TurnToEntity(f23_arg0, f23_arg1, 3204301)
    local f23_local0 = 3000
    local f23_local1 = 999 - f23_arg0:GetMapHitRadius(TARGET_SELF)
    local f23_local2 = 0
    local f23_local3 = 0
    f23_arg1:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, f23_local0, TARGET_ENE_0, f23_local1, f23_local2, f23_local3)
    return 0
    
end

function Hellkite_314000_Act27(f24_arg0, f24_arg1, f24_arg2)
    Hellkite_314000_TurnToEntity(f24_arg0, f24_arg1, 3204301)
    local f24_local0 = 3001
    local f24_local1 = 999 - f24_arg0:GetMapHitRadius(TARGET_SELF)
    local f24_local2 = 0
    local f24_local3 = 0
    f24_arg1:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, f24_local0, TARGET_ENE_0, f24_local1, f24_local2, f24_local3)
    return 0
    
end

function Hellkite_314000_Act28(f25_arg0, f25_arg1, f25_arg2)
    Hellkite_314000_TurnToEntity(f25_arg0, f25_arg1, 3204301)
    Hellkite_314000_Approach(f25_arg0, f25_arg1, 16)
    local f25_local0 = 3002
    local f25_local1 = 999 - f25_arg0:GetMapHitRadius(TARGET_SELF)
    local f25_local2 = 0
    local f25_local3 = 0
    f25_arg1:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, f25_local0, TARGET_ENE_0, f25_local1, f25_local2, f25_local3)
    return 0
    
end

function Hellkite_314000_Act29(f26_arg0, f26_arg1, f26_arg2)
    Hellkite_314000_TurnToEntity(f26_arg0, f26_arg1, 3204304)
    local f26_local0 = 3000
    local f26_local1 = 999 - f26_arg0:GetMapHitRadius(TARGET_SELF)
    local f26_local2 = 0
    local f26_local3 = 0
    f26_arg1:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, f26_local0, TARGET_ENE_0, f26_local1, f26_local2, f26_local3)
    return 0
    
end

function Hellkite_314000_Act30(f27_arg0, f27_arg1, f27_arg2)
    Hellkite_314000_TurnToEntity(f27_arg0, f27_arg1, 3204304)
    local f27_local0 = 3001
    local f27_local1 = 999 - f27_arg0:GetMapHitRadius(TARGET_SELF)
    local f27_local2 = 0
    local f27_local3 = 0
    f27_arg1:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, f27_local0, TARGET_ENE_0, f27_local1, f27_local2, f27_local3)
    return 0
    
end

function Hellkite_314000_Act31(f28_arg0, f28_arg1, f28_arg2)
    Hellkite_314000_TurnToEntity(f28_arg0, f28_arg1, 3204304)
    Hellkite_314000_Approach(f28_arg0, f28_arg1, 16)
    local f28_local0 = 3002
    local f28_local1 = 999 - f28_arg0:GetMapHitRadius(TARGET_SELF)
    local f28_local2 = 0
    local f28_local3 = 0
    f28_arg1:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, f28_local0, TARGET_ENE_0, f28_local1, f28_local2, f28_local3)
    return 0
    
end

function Hellkite_314000_Act32(f29_arg0, f29_arg1, f29_arg2)
    Hellkite_314000_TurnToEntity(f29_arg0, f29_arg1, 3204303)
    local f29_local0 = 3000
    local f29_local1 = 999 - f29_arg0:GetMapHitRadius(TARGET_SELF)
    local f29_local2 = 0
    local f29_local3 = 0
    f29_arg1:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, f29_local0, TARGET_ENE_0, f29_local1, f29_local2, f29_local3)
    return 0
    
end

function Hellkite_314000_Act33(f30_arg0, f30_arg1, f30_arg2)
    Hellkite_314000_TurnToEntity(f30_arg0, f30_arg1, 3204303)
    local f30_local0 = 3001
    local f30_local1 = 999 - f30_arg0:GetMapHitRadius(TARGET_SELF)
    local f30_local2 = 0
    local f30_local3 = 0
    f30_arg1:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, f30_local0, TARGET_ENE_0, f30_local1, f30_local2, f30_local3)
    return 0
    
end

function Hellkite_314000_Act34(f31_arg0, f31_arg1, f31_arg2)
    Hellkite_314000_TurnToEntity(f31_arg0, f31_arg1, 3204303)
    Hellkite_314000_Approach(f31_arg0, f31_arg1, 16)
    local f31_local0 = 3002
    local f31_local1 = 999 - f31_arg0:GetMapHitRadius(TARGET_SELF)
    local f31_local2 = 0
    local f31_local3 = 0
    f31_arg1:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, f31_local0, TARGET_ENE_0, f31_local1, f31_local2, f31_local3)
    return 0
    
end

function Hellkite_314000_Act35(f32_arg0, f32_arg1, f32_arg2)
    Hellkite_314000_TurnToEntity(f32_arg0, f32_arg1, 3204355)
    local f32_local0 = 3000
    local f32_local1 = 999 - f32_arg0:GetMapHitRadius(TARGET_SELF)
    local f32_local2 = 0
    local f32_local3 = 0
    f32_arg1:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, f32_local0, TARGET_ENE_0, f32_local1, f32_local2, f32_local3)
    return 0
    
end

function Hellkite_314000_Act36(f33_arg0, f33_arg1, f33_arg2)
    Hellkite_314000_TurnToEntity(f33_arg0, f33_arg1, 3204355)
    local f33_local0 = 3001
    local f33_local1 = 999 - f33_arg0:GetMapHitRadius(TARGET_SELF)
    local f33_local2 = 0
    local f33_local3 = 0
    f33_arg1:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, f33_local0, TARGET_ENE_0, f33_local1, f33_local2, f33_local3)
    return 0
    
end

function Hellkite_314000_Act37(f34_arg0, f34_arg1, f34_arg2)
    Hellkite_314000_Approach(f34_arg0, f34_arg1)
    return 0
    
end

function Hellkite_314000_Act38(f35_arg0, f35_arg1, f35_arg2)
    Hellkite_314000_TurnToEntity(f35_arg0, f35_arg1, 3204357)
    local f35_local0 = 3000
    local f35_local1 = 999 - f35_arg0:GetMapHitRadius(TARGET_SELF)
    local f35_local2 = 0
    local f35_local3 = 0
    f35_arg1:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, f35_local0, TARGET_ENE_0, f35_local1, f35_local2, f35_local3)
    return 0
    
end

function Hellkite_314000_Act39(f36_arg0, f36_arg1, f36_arg2)
    Hellkite_314000_TurnToEntity(f36_arg0, f36_arg1, 3204357)
    local f36_local0 = 3001
    local f36_local1 = 999 - f36_arg0:GetMapHitRadius(TARGET_SELF)
    local f36_local2 = 0
    local f36_local3 = 0
    f36_arg1:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, f36_local0, TARGET_ENE_0, f36_local1, f36_local2, f36_local3)
    return 0
    
end

function Hellkite_314000_Act40(f37_arg0, f37_arg1, f37_arg2)
    Hellkite_314000_TurnToEntity(f37_arg0, f37_arg1, 3204305)
    local f37_local0 = 3014
    local f37_local1 = 999 - f37_arg0:GetMapHitRadius(TARGET_SELF)
    local f37_local2 = 0
    local f37_local3 = 0
    f37_arg1:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, f37_local0, TARGET_NONE, f37_local1, f37_local2, f37_local3)
    return 0
    
end

function Hellkite_314000_Act41(f38_arg0, f38_arg1, f38_arg2)
    Hellkite_314000_TurnToEntity(f38_arg0, f38_arg1, 3204303, 3)
    local f38_local0 = 3014
    local f38_local1 = 999 - f38_arg0:GetMapHitRadius(TARGET_SELF)
    local f38_local2 = 0
    local f38_local3 = 0
    f38_arg1:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, f38_local0, TARGET_NONE, f38_local1, f38_local2, f38_local3)
    return 0
    
end

function Hellkite_314000_Act42(f39_arg0, f39_arg1, f39_arg2)
    f39_arg0:SetEventMoveTarget(3204302)
    local f39_local0 = f39_arg0:GetToTargetAngle(POINT_EVENT)
    if math.abs(f39_local0) <= 90 then
        if f39_arg0:IsInsideTargetRegion(TARGET_SELF, 3204321) then
            Hellkite_314000_TurnToEntity(f39_arg0, f39_arg1, 3204300)
        else
            Hellkite_314000_ApproachToEntity(f39_arg0, f39_arg1, 3204321, -2.2)
        end
    elseif f39_arg0:IsInsideTargetRegion(TARGET_SELF, 3204300) then
        Hellkite_314000_TurnToEntity(f39_arg0, f39_arg1, 3204321)
    else
        Hellkite_314000_ApproachToEntity(f39_arg0, f39_arg1, 3204300, -2.2)
    end
    return 0
    
end

function Hellkite_314000_Act43(f40_arg0, f40_arg1, f40_arg2)
    Hellkite_314000_TurnToEntity(f40_arg0, f40_arg1, 3204307)
    local f40_local0 = 3019
    local f40_local1 = 999 - f40_arg0:GetMapHitRadius(TARGET_SELF)
    local f40_local2 = 0
    local f40_local3 = 0
    f40_arg1:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, f40_local0, TARGET_ENE_0, f40_local1, f40_local2, f40_local3)
    f40_arg1:AddSubGoal(GOAL_COMMON_Wait, 3, TARGET_NONE, 0, 0, 0)
    return 0
    
end

function Hellkite_314000_Act44(f41_arg0, f41_arg1, f41_arg2)
    Hellkite_314000_TurnToEntity(f41_arg0, f41_arg1, 3204308)
    local f41_local0 = 3019
    local f41_local1 = 999 - f41_arg0:GetMapHitRadius(TARGET_SELF)
    local f41_local2 = 0
    local f41_local3 = 0
    f41_arg1:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, f41_local0, TARGET_ENE_0, f41_local1, f41_local2, f41_local3)
    f41_arg1:AddSubGoal(GOAL_COMMON_Wait, 3, TARGET_NONE, 0, 0, 0)
    return 0
    
end

function Hellkite_314000_Act45(f42_arg0, f42_arg1, f42_arg2)
    local f42_local0 = 3002
    local f42_local1 = 999 - f42_arg0:GetMapHitRadius(TARGET_SELF)
    local f42_local2 = 0
    local f42_local3 = 0
    f42_arg1:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, f42_local0, TARGET_ENE_0, f42_local1, f42_local2, f42_local3)
    return 100
    
end

function Hellkite_314000_Act46(f43_arg0, f43_arg1, f43_arg2)
    Hellkite_314000_TurnToEntity(f43_arg0, f43_arg1, 3204354)
    Hellkite_314000_ApproachToEntity(f43_arg0, f43_arg1, 3204340, -2.2)
    return 0
    
end

function Hellkite_314000_Act50(f44_arg0, f44_arg1, f44_arg2)
    local f44_local0 = 3013
    local f44_local1 = 999
    local f44_local2 = 0
    local f44_local3 = 0
    f44_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f44_local0, TARGET_ENE_0, f44_local1, f44_local2, f44_local3, 0, 0)
    return 0
    
end

function Hellkite_314000_ActAfter_AdjustSpace(f45_arg0, f45_arg1, f45_arg2)
    
end

Goal.Update = function (f46_arg0, f46_arg1, f46_arg2)
    return Update_Default_NoSubGoal(f46_arg0, f46_arg1, f46_arg2)
    
end

Goal.Terminate = function (f47_arg0, f47_arg1, f47_arg2)
    
end

Goal.Interrupt = function (f48_arg0, f48_arg1, f48_arg2)
    if f48_arg1:IsLadderAct(TARGET_SELF) then
        return false
    end
    if f48_arg1:IsInterupt(INTERUPT_Damaged) and f48_arg1:IsInsideTargetRegion(TARGET_ENE_0, 3204356) then
        f48_arg2:ClearSubGoal()
        f48_arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, 999, 6, 10, 0, 0)
    end
    if f48_arg1:IsInterupt(INTERUPT_Damaged) then
        if f48_arg1:IsInsideTargetRegion(TARGET_ENE_0, 3204365) or f48_arg1:IsInsideTargetRegion(TARGET_ENE_0, 3204366) or f48_arg1:IsInsideTargetRegion(TARGET_ENE_0, 3204367) or f48_arg1:IsInsideTargetRegion(TARGET_ENE_0, 3204368) or f48_arg1:IsInsideTargetRegion(TARGET_ENE_0, 3204369) or f48_arg1:IsInsideTargetRegion(TARGET_ENE_0, 3204370) then
            f48_arg2:ClearSubGoal()
            f48_arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3013, TARGET_ENE_0, 999, 0, 0, 0, 0)
        end
        return true
    end
    return false
    
end

function Hellkite_314000_GetMovePontToNearPC(f49_arg0)
    local f49_local0 = 1
    local f49_local1 = {}
    for f49_local2 = 1, table.getn(f0_local0), 1 do
        f49_arg0:SetEventMoveTarget(f0_local0[f49_local2])
        f49_local1[f49_local2] = f49_arg0:GetDistAtoB(POINT_EVENT, TARGET_ENE_0)
    end
    local f49_local2 = 999
    local f49_local3 = 0
    for f49_local4 = 1, table.getn(f49_local1), 1 do
        if f49_local1[f49_local4] <= f49_local2 then
            f49_local2 = f49_local1[f49_local4]
            f49_local3 = f0_local0[f49_local4]
        end
    end
    return f49_local3
    


end

function Hellkite_314000_Approach(f50_arg0, f50_arg1, f50_arg2)
    local f50_local0 = 0
    if f50_arg2 == nil then
        f50_local0 = 0
    else
        f50_local0 = f50_arg2
    end
    local f50_local1 = Hellkite_314000_GetMovePontToNearPC(f50_arg0)
    f50_arg0:SetEventMoveTarget(f50_local1)
    f50_arg0:DbgSetLastActIdx(f50_local1 - 3204300)
    f50_arg1:AddSubGoal(GOAL_COMMON_Turn, 2, POINT_EVENT, 1)
    f50_arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 1, POINT_EVENT, f50_local0, POINT_EVENT, true, -1)
    return
    
end

function Hellkite_314000_ApproachToEntity(f51_arg0, f51_arg1, f51_arg2, f51_arg3)
    if f51_arg2 == nil then
        return
    end
    local f51_local0 = 0
    if f51_arg3 == nil then
        f51_local0 = 0
    else
        f51_local0 = f51_arg3
    end
    f51_arg0:SetEventMoveTarget(f51_arg2)
    f51_arg0:DbgSetLastActIdx(f51_arg2 - 3204300)
    f51_arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 1, POINT_EVENT, f51_local0, POINT_EVENT, true, -1)
    return
    
end

function Hellkite_314000_TurnToEntity(f52_arg0, f52_arg1, f52_arg2, f52_arg3)
    local f52_local0 = 0
    local f52_local1 = 1
    if f52_arg2 == nil then
        return
    end
    if f52_arg3 == nil then
        f52_local0 = 2.5
    else
        f52_local0 = f52_arg3
    end
    f52_arg0:SetEventMoveTarget(f52_arg2)
    f52_arg0:DbgSetLastActIdx(f52_arg2 - 3204300)
    if f52_arg0:IsLookToTarget(POINT_EVENT, f52_local0) then
        f52_arg1:AddSubGoal(GOAL_COMMON_Wait, f52_local1, TARGET_SELF)
    else
        f52_arg1:AddSubGoal(GOAL_COMMON_Turn, 5, POINT_EVENT, f52_local0)
    end
    return
    
end

function Hellkite_314000_MovePointToPoint(f53_arg0, f53_arg1)
    f53_arg0:SetEventMoveTarget(3204302)
    local f53_local0 = f53_arg0:GetToTargetAngle(POINT_EVENT)
    if math.abs(f53_local0) <= 90 then
        if f53_arg0:IsInsideTargetRegion(TARGET_SELF, 3204321) then
            Hellkite_314000_TurnToEntity(f53_arg0, f53_arg1, 3204300)
        else
            Hellkite_314000_ApproachToEntity(f53_arg0, f53_arg1, 3204321, -2.2)
        end
    elseif f53_arg0:IsInsideTargetRegion(TARGET_SELF, 3204300) then
        Hellkite_314000_TurnToEntity(f53_arg0, f53_arg1, 3204321)
    else
        Hellkite_314000_ApproachToEntity(f53_arg0, f53_arg1, 3204300, -2.2)
    end
    
end


