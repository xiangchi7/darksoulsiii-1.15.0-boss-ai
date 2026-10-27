RegisterTableGoal(GOAL_DaemonOfAsh_305000_Battle, "DaemonOfAshBattle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_DaemonOfAsh_305000_Battle, true)

Goal.Initialize = function (f1_arg0, f1_arg1, f1_arg2, f1_arg3)
    
end

Goal.Activate = function (f2_arg0, f2_arg1, f2_arg2)
    Init_Pseudo_Global(f2_arg1, f2_arg2)
    f2_arg1:SetStringIndexedNumber("Dist_SideStep", 0)
    f2_arg1:SetStringIndexedNumber("Dist_BackStep", 0)
    local f2_local0 = {}
    local f2_local1 = {}
    local f2_local2 = {}
    Common_Clear_Param(f2_local0, f2_local1, f2_local2)
    f2_arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    local f2_local3 = f2_arg1:GetDist(TARGET_ENE_0)
    if f2_arg1:HasSpecialEffectId(TARGET_SELF, 5404) == true then
        if f2_local3 >= 6 then
            f2_local0[14] = 100
        else
            f2_local0[13] = 60
            f2_local0[14] = 40
        end
    elseif f2_arg1:HasSpecialEffectId(TARGET_SELF, 5020) == false then
        if f2_arg1:GetHpRate(TARGET_SELF) <= 0.7 then
            f2_local0[12] = 100
        elseif f2_local3 >= 12 then
            if InsideDir(f2_arg1, f2_arg2, 0, 180) then
                f2_local0[1] = 20
                f2_local0[8] = 20
                f2_local0[2] = 60
            else
                f2_local0[20] = 100
            end
        elseif f2_local3 >= 9 then
            if InsideDir(f2_arg1, f2_arg2, 0, 90) then
                f2_local0[1] = 40
                f2_local0[8] = 60
            else
                f2_local0[1] = 70
                f2_local0[20] = 30
            end
        elseif f2_local3 >= 5 then
            if InsideDir(f2_arg1, f2_arg2, 0, 270) then
                f2_local0[1] = 100
            else
                f2_local0[1] = 70
                f2_local0[20] = 30
            end
        elseif f2_local3 >= 3.5 then
            if InsideDir(f2_arg1, f2_arg2, 0, 270) then
                f2_local0[1] = 60
                f2_local0[7] = 40
            else
                f2_local0[1] = 40
                f2_local0[7] = 40
                f2_local0[20] = 20
            end
        elseif f2_local3 >= 1.2 then
            if InsideDir(f2_arg1, f2_arg2, 0, 70) then
                f2_local0[3] = 20
                f2_local0[6] = 20
                f2_local0[7] = 30
                f2_local0[11] = 30
            elseif InsideDir(f2_arg1, f2_arg2, 62.5, 55) then
                f2_local0[5] = 60
                f2_local0[7] = 20
                f2_local0[11] = 20
            elseif InsideDir(f2_arg1, f2_arg2, 117.5, 55) then
                f2_local0[5] = 80
                f2_local0[20] = 20
            elseif InsideDir(f2_arg1, f2_arg2, -62.5, 55) then
                f2_local0[4] = 60
                f2_local0[7] = 20
                f2_local0[11] = 20
            elseif InsideDir(f2_arg1, f2_arg2, -117.5, 55) then
                f2_local0[4] = 80
                f2_local0[20] = 20
            else
                f2_local0[20] = 20
            end
        elseif InsideDir(f2_arg1, f2_arg2, 0, 70) then
            f2_local0[7] = 50
            f2_local0[11] = 50
        elseif InsideDir(f2_arg1, f2_arg2, 62.5, 55) then
            f2_local0[5] = 60
            f2_local0[7] = 20
            f2_local0[11] = 20
        elseif InsideDir(f2_arg1, f2_arg2, 117.5, 55) then
            f2_local0[5] = 80
            f2_local0[20] = 20
        elseif InsideDir(f2_arg1, f2_arg2, -62.5, 55) then
            f2_local0[4] = 60
            f2_local0[7] = 20
            f2_local0[11] = 20
        elseif InsideDir(f2_arg1, f2_arg2, -117.5, 55) then
            f2_local0[4] = 80
            f2_local0[20] = 20
        else
            f2_local0[20] = 20
        end
    elseif f2_local3 >= 15 then
        if InsideDir(f2_arg1, f2_arg2, 0, 180) then
            f2_local0[2] = 30
            f2_local0[3] = 5
            f2_local0[6] = 5
            f2_local0[17] = 30
            f2_local0[18] = 30
        else
            f2_local0[20] = 100
        end
    elseif f2_local3 >= 10 then
        if InsideDir(f2_arg1, f2_arg2, 0, 180) then
            f2_local0[1] = 10
            f2_local0[8] = 10
            f2_local0[9] = 40
            f2_local0[10] = 20
            f2_local0[16] = 20
        else
            f2_local0[1] = 5
            f2_local0[8] = 5
            f2_local0[9] = 20
            f2_local0[10] = 10
            f2_local0[16] = 10
            f2_local0[20] = 50
        end
    elseif f2_local3 >= 5 then
        if InsideDir(f2_arg1, f2_arg2, 0, 270) then
            f2_local0[1] = 30
            f2_local0[8] = 20
            f2_local0[9] = 25
            f2_local0[10] = 15
            f2_local0[16] = 10
        else
            f2_local0[1] = 15
            f2_local0[8] = 10
            f2_local0[9] = 15
            f2_local0[10] = 5
            f2_local0[16] = 5
            f2_local0[20] = 50
        end
    elseif f2_local3 >= 3.5 then
        if InsideDir(f2_arg1, f2_arg2, 0, 270) then
            f2_local0[1] = 25
            f2_local0[7] = 15
            f2_local0[8] = 25
            f2_local0[9] = 15
            f2_local0[10] = 10
            f2_local0[16] = 10
        else
            f2_local0[1] = 15
            f2_local0[7] = 10
            f2_local0[8] = 10
            f2_local0[9] = 5
            f2_local0[10] = 5
            f2_local0[16] = 5
            f2_local0[20] = 50
        end
    elseif InsideDir(f2_arg1, f2_arg2, 0, 70) then
        f2_local0[3] = 25
        f2_local0[6] = 25
        f2_local0[7] = 10
        f2_local0[9] = 10
        f2_local0[10] = 10
        f2_local0[11] = 10
        f2_local0[16] = 10
    elseif InsideDir(f2_arg1, f2_arg2, 62.5, 55) then
        f2_local0[5] = 50
        f2_local0[7] = 10
        f2_local0[9] = 10
        f2_local0[10] = 10
        f2_local0[16] = 10
        f2_local0[11] = 10
    elseif InsideDir(f2_arg1, f2_arg2, 117.5, 55) then
        f2_local0[5] = 50
        f2_local0[9] = 25
        f2_local0[10] = 15
        f2_local0[16] = 10
    elseif InsideDir(f2_arg1, f2_arg2, -62.5, 55) then
        f2_local0[4] = 50
        f2_local0[7] = 10
        f2_local0[9] = 10
        f2_local0[10] = 10
        f2_local0[16] = 10
        f2_local0[11] = 10
    elseif InsideDir(f2_arg1, f2_arg2, -117.5, 55) then
        f2_local0[4] = 50
        f2_local0[9] = 25
        f2_local0[10] = 15
        f2_local0[16] = 10
    else
        f2_local0[9] = 15
        f2_local0[10] = 20
        f2_local0[16] = 15
        f2_local0[20] = 50
    end
    f2_local0[1] = SetCoolTime(f2_arg1, f2_arg2, 3000, 15, f2_local0[1], 1)
    f2_local0[2] = SetCoolTime(f2_arg1, f2_arg2, 3003, 15, f2_local0[2], 1)
    f2_local0[3] = SetCoolTime(f2_arg1, f2_arg2, 3004, 10, f2_local0[3], 1)
    f2_local0[6] = SetCoolTime(f2_arg1, f2_arg2, 3007, 10, f2_local0[6], 1)
    f2_local0[7] = SetCoolTime(f2_arg1, f2_arg2, 3008, 10, f2_local0[7], 1)
    f2_local0[8] = SetCoolTime(f2_arg1, f2_arg2, 3009, 15, f2_local0[8], 1)
    f2_local0[9] = SetCoolTime(f2_arg1, f2_arg2, 3020, 20, f2_local0[9], 1)
    f2_local0[10] = SetCoolTime(f2_arg1, f2_arg2, 3021, 20, f2_local0[10], 1)
    f2_local0[10] = SetCoolTime(f2_arg1, f2_arg2, 3024, 20, f2_local0[10], 1)
    f2_local0[16] = SetCoolTime(f2_arg1, f2_arg2, 3024, 20, f2_local0[16], 1)
    f2_local0[16] = SetCoolTime(f2_arg1, f2_arg2, 3021, 20, f2_local0[16], 1)
    f2_local0[17] = SetCoolTime(f2_arg1, f2_arg2, 3000, 15, f2_local0[17], 1)
    f2_local0[18] = SetCoolTime(f2_arg1, f2_arg2, 3009, 15, f2_local0[18], 1)
    f2_local1[1] = REGIST_FUNC(f2_arg1, f2_arg2, DeamonOfAsh_Act01)
    f2_local1[2] = REGIST_FUNC(f2_arg1, f2_arg2, DeamonOfAsh_Act02)
    f2_local1[3] = REGIST_FUNC(f2_arg1, f2_arg2, DeamonOfAsh_Act03)
    f2_local1[4] = REGIST_FUNC(f2_arg1, f2_arg2, DeamonOfAsh_Act04)
    f2_local1[5] = REGIST_FUNC(f2_arg1, f2_arg2, DeamonOfAsh_Act05)
    f2_local1[6] = REGIST_FUNC(f2_arg1, f2_arg2, DeamonOfAsh_Act06)
    f2_local1[7] = REGIST_FUNC(f2_arg1, f2_arg2, DeamonOfAsh_Act07)
    f2_local1[8] = REGIST_FUNC(f2_arg1, f2_arg2, DeamonOfAsh_Act08)
    f2_local1[9] = REGIST_FUNC(f2_arg1, f2_arg2, DeamonOfAsh_Act09)
    f2_local1[10] = REGIST_FUNC(f2_arg1, f2_arg2, DeamonOfAsh_Act10)
    f2_local1[11] = REGIST_FUNC(f2_arg1, f2_arg2, DeamonOfAsh_Act11)
    f2_local1[12] = REGIST_FUNC(f2_arg1, f2_arg2, DeamonOfAsh_Act12)
    f2_local1[13] = REGIST_FUNC(f2_arg1, f2_arg2, DeamonOfAsh_Act13)
    f2_local1[14] = REGIST_FUNC(f2_arg1, f2_arg2, DeamonOfAsh_Act14)
    f2_local1[15] = REGIST_FUNC(f2_arg1, f2_arg2, DeamonOfAsh_Act15)
    f2_local1[16] = REGIST_FUNC(f2_arg1, f2_arg2, DeamonOfAsh_Act16)
    f2_local1[17] = REGIST_FUNC(f2_arg1, f2_arg2, DeamonOfAsh_Act17)
    f2_local1[18] = REGIST_FUNC(f2_arg1, f2_arg2, DeamonOfAsh_Act18)
    f2_local1[20] = REGIST_FUNC(f2_arg1, f2_arg2, DeamonOfAsh_Act20)
    local f2_local4 = REGIST_FUNC(f2_arg1, f2_arg2, DeamonOfAsh_ActAfter_AdjustSpace)
    Common_Battle_Activate(f2_arg1, f2_arg2, f2_local0, f2_local1, 0, f2_local2)
    
end

function DeamonOfAsh_Act01(f3_arg0, f3_arg1, f3_arg2)
    local f3_local0 = 14 - f3_arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local1 = 14 - f3_arg0:GetMapHitRadius(TARGET_SELF) + 1.5
    local f3_local2 = 14 - f3_arg0:GetMapHitRadius(TARGET_SELF) + 3
    local f3_local3 = 30
    local f3_local4 = 0
    local f3_local5 = 3
    local f3_local6 = 5
    Approach_Act_Flex(f3_arg0, f3_arg1, f3_local0, f3_local1, f3_local2, f3_local3, f3_local4, f3_local5, f3_local6)
    local f3_local7 = 3000
    local f3_local8 = 3001
    local f3_local9 = 3002
    local f3_local10 = 3010
    local f3_local11 = 3023
    local f3_local12 = 16 - f3_arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f3_local13 = 10.2 - f3_arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f3_local14 = 13.7 - f3_arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f3_local15 = 4.5 - f3_arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local16 = 15 - f3_arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local17 = 0
    local f3_local18 = 0
    local f3_local19 = f3_arg0:GetRandam_Int(1, 100)
    f3_arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    if f3_local19 <= 0 then
        f3_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f3_local7, TARGET_ENE_0, f3_local16, f3_local17, f3_local18)
    elseif f3_local19 <= 15 then
        f3_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f3_local7, TARGET_ENE_0, f3_local12, f3_local17, f3_local18)
        f3_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f3_local8, TARGET_ENE_0, f3_local16)
    elseif f3_local19 <= 30 then
        f3_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f3_local7, TARGET_ENE_0, f3_local12, f3_local17, f3_local18)
        f3_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f3_local8, TARGET_ENE_0, f3_local14)
        f3_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f3_local10, TARGET_ENE_0, f3_local16)
    elseif f3_local19 <= 60 then
        f3_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f3_local7, TARGET_ENE_0, f3_local12, f3_local17, f3_local18)
        f3_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f3_local8, TARGET_ENE_0, f3_local14)
        f3_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f3_local10, TARGET_ENE_0, f3_local14)
        f3_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f3_local10, TARGET_ENE_0, f3_local16)
    elseif f3_local19 <= 80 then
        f3_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f3_local7, TARGET_ENE_0, f3_local12, f3_local17, f3_local18)
        f3_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f3_local8, TARGET_ENE_0, f3_local15)
        f3_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f3_local11, TARGET_ENE_0, f3_local16)
    else
        f3_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f3_local7, TARGET_ENE_0, f3_local13, f3_local17, f3_local18)
        f3_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f3_local9, TARGET_ENE_0, f3_local16)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function DeamonOfAsh_Act02(f4_arg0, f4_arg1, f4_arg2)
    local f4_local0 = 22.2 - f4_arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local1 = 22.2 - f4_arg0:GetMapHitRadius(TARGET_SELF) + 1.5
    local f4_local2 = 22.2 - f4_arg0:GetMapHitRadius(TARGET_SELF) + 3
    local f4_local3 = 30
    local f4_local4 = 0
    local f4_local5 = 3
    local f4_local6 = 5
    Approach_Act_Flex(f4_arg0, f4_arg1, f4_local0, f4_local1, f4_local2, f4_local3, f4_local4, f4_local5, f4_local6)
    local f4_local7 = 3003
    local f4_local8 = 15 - f4_arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local9 = 1.5
    local f4_local10 = 45
    f4_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f4_local7, TARGET_ENE_0, f4_local8, f4_local9, f4_local10)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function DeamonOfAsh_Act03(f5_arg0, f5_arg1, f5_arg2)
    local f5_local0 = 3004
    local f5_local1 = 15 - f5_arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local2 = 0
    local f5_local3 = 0
    f5_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f5_local0, TARGET_ENE_0, f5_local1, f5_local2, f5_local3)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function DeamonOfAsh_Act04(f6_arg0, f6_arg1, f6_arg2)
    local f6_local0 = 3005
    local f6_local1 = 3023
    local f6_local2 = 4.5 - f6_arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local3 = 15 - f6_arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local4 = 0
    local f6_local5 = 0
    local f6_local6 = f6_arg0:GetRandam_Int(1, 100)
    if f6_local6 <= 25 then
        f6_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f6_local0, TARGET_ENE_0, f6_local3, f6_local4, f6_local5)
    else
        f6_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f6_local0, TARGET_ENE_0, f6_local2, f6_local4, f6_local5)
        f6_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f6_local1, TARGET_ENE_0, f6_local3)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function DeamonOfAsh_Act05(f7_arg0, f7_arg1, f7_arg2)
    local f7_local0 = 3006
    local f7_local1 = 3023
    local f7_local2 = 4.5 - f7_arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local3 = 15 - f7_arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local4 = 0
    local f7_local5 = 0
    local f7_local6 = f7_arg0:GetRandam_Int(1, 100)
    if f7_local6 <= 25 then
        f7_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f7_local0, TARGET_ENE_0, f7_local3, f7_local4, f7_local5)
    else
        f7_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f7_local0, TARGET_ENE_0, f7_local2, f7_local4, f7_local5)
        f7_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f7_local1, TARGET_ENE_0, f7_local3)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function DeamonOfAsh_Act06(f8_arg0, f8_arg1, f8_arg2)
    local f8_local0 = 3007
    local f8_local1 = 3023
    local f8_local2 = 4.5 - f8_arg0:GetMapHitRadius(TARGET_SELF)
    local f8_local3 = 15 - f8_arg0:GetMapHitRadius(TARGET_SELF)
    local f8_local4 = 0
    local f8_local5 = 0
    local f8_local6 = f8_arg0:GetRandam_Int(1, 100)
    if f8_local6 <= 25 then
        f8_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f8_local0, TARGET_ENE_0, f8_local3, f8_local4, f8_local5)
    else
        f8_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f8_local0, TARGET_ENE_0, f8_local2, f8_local4, f8_local5)
        f8_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f8_local1, TARGET_ENE_0, f8_local3)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function DeamonOfAsh_Act07(f9_arg0, f9_arg1, f9_arg2)
    local f9_local0 = 3008
    local f9_local1 = 15 - f9_arg0:GetMapHitRadius(TARGET_SELF)
    local f9_local2 = 0
    local f9_local3 = 0
    f9_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f9_local0, TARGET_ENE_0, f9_local1, f9_local2, f9_local3)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function DeamonOfAsh_Act08(f10_arg0, f10_arg1, f10_arg2)
    local f10_local0 = 13.7 - f10_arg0:GetMapHitRadius(TARGET_SELF) - 2
    local f10_local1 = 13.7 - f10_arg0:GetMapHitRadius(TARGET_SELF) + 1.5
    local f10_local2 = 13.7 - f10_arg0:GetMapHitRadius(TARGET_SELF) + 3
    local f10_local3 = 30
    local f10_local4 = 0
    local f10_local5 = 3
    local f10_local6 = 5
    Approach_Act_Flex(f10_arg0, f10_arg1, f10_local0, f10_local1, f10_local2, f10_local3, f10_local4, f10_local5, f10_local6)
    local f10_local7 = 3009
    local f10_local8 = 3023
    local f10_local9 = 4.5 - f10_arg0:GetMapHitRadius(TARGET_SELF)
    local f10_local10 = 15 - f10_arg0:GetMapHitRadius(TARGET_SELF)
    local f10_local11 = 0
    local f10_local12 = 0
    local f10_local13 = f10_arg0:GetRandam_Int(1, 100)
    if f10_local13 <= 25 then
        f10_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f10_local7, TARGET_ENE_0, f10_local10, f10_local11, f10_local12)
    else
        f10_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f10_local7, TARGET_ENE_0, f10_local9, f10_local11, f10_local12)
        f10_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f10_local8, TARGET_ENE_0, f10_local10)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function DeamonOfAsh_Act09(f11_arg0, f11_arg1, f11_arg2)
    local f11_local0 = 3020
    local f11_local1 = 15 - f11_arg0:GetMapHitRadius(TARGET_SELF)
    local f11_local2 = 0
    local f11_local3 = 0
    f11_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f11_local0, TARGET_ENE_0, f11_local1, f11_local2, f11_local3)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function DeamonOfAsh_Act10(f12_arg0, f12_arg1, f12_arg2)
    local f12_local0 = 3021
    local f12_local1 = 15 - f12_arg0:GetMapHitRadius(TARGET_SELF)
    local f12_local2 = 0
    local f12_local3 = 0
    f12_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f12_local0, TARGET_ENE_0, f12_local1, f12_local2, f12_local3)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function DeamonOfAsh_Act11(f13_arg0, f13_arg1, f13_arg2)
    local f13_local0 = 4.5 - f13_arg0:GetMapHitRadius(TARGET_SELF)
    local f13_local1 = 4.5 - f13_arg0:GetMapHitRadius(TARGET_SELF) + 1.5
    local f13_local2 = 4.5 - f13_arg0:GetMapHitRadius(TARGET_SELF) + 3
    local f13_local3 = 30
    local f13_local4 = 0
    local f13_local5 = 3
    local f13_local6 = 5
    Approach_Act_Flex(f13_arg0, f13_arg1, f13_local0, f13_local1, f13_local2, f13_local3, f13_local4, f13_local5, f13_local6)
    local f13_local7 = 3022
    local f13_local8 = 15 - f13_arg0:GetMapHitRadius(TARGET_SELF)
    local f13_local9 = 0
    local f13_local10 = 0
    f13_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f13_local7, TARGET_ENE_0, f13_local8, f13_local9, f13_local10)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function DeamonOfAsh_Act12(f14_arg0, f14_arg1, f14_arg2)
    local f14_local0 = 1500
    local f14_local1 = 15 - f14_arg0:GetMapHitRadius(TARGET_SELF)
    local f14_local2 = 0
    local f14_local3 = 0
    f14_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f14_local0, TARGET_ENE_0, f14_local1, f14_local2, f14_local3)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function DeamonOfAsh_Act13(f15_arg0, f15_arg1, f15_arg2)
    local f15_local0 = 3000
    local f15_local1 = 15 - f15_arg0:GetMapHitRadius(TARGET_SELF)
    local f15_local2 = 0
    local f15_local3 = 0
    f15_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f15_local0, TARGET_ENE_0, f15_local1, f15_local2, f15_local3)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function DeamonOfAsh_Act14(f16_arg0, f16_arg1, f16_arg2)
    f16_arg1:AddSubGoal(GOAL_COMMON_Wait, f16_arg0:GetRandam_Int(0.5, 1.5), TARGET_NONE)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function DeamonOfAsh_Act15(f17_arg0, f17_arg1, f17_arg2)
    local f17_local0 = 3011
    local f17_local1 = 15 - f17_arg0:GetMapHitRadius(TARGET_SELF)
    local f17_local2 = 0
    local f17_local3 = 0
    local f17_local4 = f17_arg0:GetRandam_Int(1, 100)
    f17_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f17_local0, TARGET_ENE_0, f17_local1, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function DeamonOfAsh_Act16(f18_arg0, f18_arg1, f18_arg2)
    local f18_local0 = 3024
    local f18_local1 = 15 - f18_arg0:GetMapHitRadius(TARGET_SELF)
    local f18_local2 = 0
    local f18_local3 = 0
    f18_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f18_local0, TARGET_ENE_0, f18_local1, f18_local2, f18_local3)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function DeamonOfAsh_Act17(f19_arg0, f19_arg1, f19_arg2)
    local f19_local0 = 14 - f19_arg0:GetMapHitRadius(TARGET_SELF) - 5
    local f19_local1 = 14 - f19_arg0:GetMapHitRadius(TARGET_SELF) + 1.5
    local f19_local2 = 14 - f19_arg0:GetMapHitRadius(TARGET_SELF) + 3
    local f19_local3 = 30
    local f19_local4 = 0
    local f19_local5 = 3
    local f19_local6 = 10
    Approach_Act_Flex(f19_arg0, f19_arg1, f19_local0, f19_local1, f19_local2, f19_local3, f19_local4, f19_local5, f19_local6)
    local f19_local7 = 3000
    local f19_local8 = 3001
    local f19_local9 = 3002
    local f19_local10 = 3010
    local f19_local11 = 3023
    local f19_local12 = 16 - f19_arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f19_local13 = 10.2 - f19_arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f19_local14 = 13.7 - f19_arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f19_local15 = 4.5 - f19_arg0:GetMapHitRadius(TARGET_SELF)
    local f19_local16 = 15 - f19_arg0:GetMapHitRadius(TARGET_SELF)
    local f19_local17 = 0
    local f19_local18 = 0
    local f19_local19 = f19_arg0:GetRandam_Int(1, 100)
    f19_arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    if f19_local19 <= 0 then
        f19_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f19_local7, TARGET_ENE_0, f19_local16, f19_local17, f19_local18)
    elseif f19_local19 <= 15 then
        f19_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f19_local7, TARGET_ENE_0, f19_local12, f19_local17, f19_local18)
        f19_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f19_local8, TARGET_ENE_0, f19_local16)
    elseif f19_local19 <= 30 then
        f19_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f19_local7, TARGET_ENE_0, f19_local12, f19_local17, f19_local18)
        f19_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f19_local8, TARGET_ENE_0, f19_local14)
        f19_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f19_local10, TARGET_ENE_0, f19_local16)
    elseif f19_local19 <= 60 then
        f19_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f19_local7, TARGET_ENE_0, f19_local12, f19_local17, f19_local18)
        f19_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f19_local8, TARGET_ENE_0, f19_local14)
        f19_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f19_local10, TARGET_ENE_0, f19_local14)
        f19_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f19_local10, TARGET_ENE_0, f19_local16)
    elseif f19_local19 <= 80 then
        f19_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f19_local7, TARGET_ENE_0, f19_local12, f19_local17, f19_local18)
        f19_arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f19_local8, TARGET_ENE_0, f19_local15)
        f19_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f19_local11, TARGET_ENE_0, f19_local16)
    else
        f19_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f19_local7, TARGET_ENE_0, f19_local13, f19_local17, f19_local18)
        f19_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f19_local9, TARGET_ENE_0, f19_local16)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function DeamonOfAsh_Act18(f20_arg0, f20_arg1, f20_arg2)
    local f20_local0 = 13.7 - f20_arg0:GetMapHitRadius(TARGET_SELF) - 5
    local f20_local1 = 13.7 - f20_arg0:GetMapHitRadius(TARGET_SELF) + 1.5
    local f20_local2 = 13.7 - f20_arg0:GetMapHitRadius(TARGET_SELF) + 3
    local f20_local3 = 30
    local f20_local4 = 0
    local f20_local5 = 3
    local f20_local6 = 10
    Approach_Act_Flex(f20_arg0, f20_arg1, f20_local0, f20_local1, f20_local2, f20_local3, f20_local4, f20_local5, f20_local6)
    local f20_local7 = 3009
    local f20_local8 = 3023
    local f20_local9 = 4.5 - f20_arg0:GetMapHitRadius(TARGET_SELF)
    local f20_local10 = 15 - f20_arg0:GetMapHitRadius(TARGET_SELF)
    local f20_local11 = 0
    local f20_local12 = 0
    local f20_local13 = f20_arg0:GetRandam_Int(1, 100)
    if f20_local13 <= 25 then
        f20_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f20_local7, TARGET_ENE_0, f20_local10, f20_local11, f20_local12)
    else
        f20_arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f20_local7, TARGET_ENE_0, f20_local9, f20_local11, f20_local12)
        f20_arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f20_local8, TARGET_ENE_0, f20_local10)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function DeamonOfAsh_Act20(f21_arg0, f21_arg1, f21_arg2)
    f21_arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, f21_arg0:GetRandam_Int(20, 40))
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function DeamonOfAsh_ActAfter_AdjustSpace(f22_arg0, f22_arg1, f22_arg2)
    
end

Goal.Update = function (f23_arg0, f23_arg1, f23_arg2)
    return Update_Default_NoSubGoal(f23_arg0, f23_arg1, f23_arg2)
    
end

Goal.Terminate = function (f24_arg0, f24_arg1, f24_arg2)
    
end

Goal.Interrupt = function (f25_arg0, f25_arg1, f25_arg2)
    if f25_arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) then
        local f25_local0 = f25_arg1:GetDist(TARGET_ENE_0)
        if f25_arg1:GetSpecialEffectActivateInterruptType(0) == 5025 and f25_local0 <= 7 and f25_arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 90) or f25_arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 90) or f25_arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 90) then
            f25_arg2:ClearSubGoal()
            DeamonOfAsh_Act15(f25_arg1, f25_arg2, paramTbl)
        end
    end
    
end

Goal.Update = function (f26_arg0, f26_arg1, f26_arg2)
    return Update_Default_NoSubGoal(f26_arg0, f26_arg1, f26_arg2)
    
end


