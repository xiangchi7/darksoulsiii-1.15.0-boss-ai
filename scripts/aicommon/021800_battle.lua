local f0_local0 = false
RegisterTableGoal(GOAL_NPC_Yellow_Substitute, "GOAL_NPC_Yellow_Substitute")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_NPC_Yellow_Substitute, true)

Goal.Initialize = function (f1_arg0, f1_arg1, f1_arg2, f1_arg3)
    
end

Goal.Activate = function (f2_arg0, f2_arg1, f2_arg2)
    Init_Pseudo_Global(f2_arg1, f2_arg2)
    f2_arg1:SetStringIndexedNumber("Dist_Rolling", 4.4)
    f2_arg1:SetStringIndexedNumber("Dist_BackStep", 2.5)
    f2_arg1:SetStringIndexedNumber("AddDistWalk", 0)
    f2_arg1:SetStringIndexedNumber("AddDistRun", 0.2)
    local f2_local0 = {}
    local f2_local1 = {}
    local f2_local2 = {}
    Common_Clear_Param(f2_local0, f2_local1, f2_local2)
    local f2_local3 = f2_arg1:GetRandam_Int(1, 100)
    local f2_local4 = f2_arg1:GetDist(TARGET_ENE_0)
    local f2_local5 = f2_arg1:GetHpRate(TARGET_SELF)
    local f2_local6 = f2_arg1:GetMp(TARGET_SELF)
    local f2_local7 = f2_arg1:GetSp(TARGET_SELF)
    if f2_local7 <= 40 and f2_local4 <= 3.2 then
        f2_local0[1] = 1
        f2_local0[24] = 200
        f2_local0[40] = 1
        f2_local0[41] = 800
    elseif f2_local7 <= 60 and f2_local4 > 3.2 then
        f2_local0[1] = 1
        f2_local0[40] = 1000
        f2_local0[41] = 1
    elseif f2_arg1:GetTeamOrder(ORDER_TYPE_Role) ~= ROLE_TYPE_Kankyaku and f2_arg1:GetTeamOrder(ORDER_TYPE_Role) ~= ROLE_TYPE_Torimaki and f2_arg1:IsFinishTimer(2) then
        if f2_arg1:IsBothHandMode(TARGET_SELF) then
            if f2_local4 >= 6 then
                f2_local0[1] = 100
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 1000
                f2_local0[15] = 0
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 0
                f2_local0[40] = 0
                f2_local0[41] = 0
                f2_local0[25] = 1000
            elseif f2_local4 >= 4.5 then
                f2_local0[1] = 0
                f2_local0[2] = 100
                f2_local0[3] = 0
                f2_local0[4] = 400
                f2_local0[15] = 0
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 0
                f2_local0[40] = 0
                f2_local0[41] = 0
                f2_local0[50] = 200
                f2_local0[25] = 500
            elseif f2_local4 >= 2.7 + 0 then
                f2_local0[1] = 100
                f2_local0[2] = 100
                f2_local0[3] = 0
                f2_local0[4] = 200
                f2_local0[15] = 0
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 0
                f2_local0[41] = 0
                f2_local0[50] = 400
                f2_local0[25] = 500
            elseif f2_local4 >= 1 then
                f2_local0[1] = 50
                f2_local0[2] = 200
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[15] = 0
                f2_local0[20] = 0
                f2_local0[21] = 150
                f2_local0[22] = 0
                f2_local0[23] = 250
                f2_local0[24] = 200
                f2_local0[40] = 0
                f2_local0[41] = 0
                f2_local0[25] = 500
            else
                f2_local0[1] = 100
                f2_local0[2] = 100
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[15] = 50
                f2_local0[20] = 0
                f2_local0[21] = 200
                f2_local0[22] = 0
                f2_local0[23] = 100
                f2_local0[24] = 350
                f2_local0[40] = 0
                f2_local0[41] = 0
                if f2_arg1:IsTargetGuard(TARGET_ENE_0) then
                    f2_local0[15] = f2_local0[15] + 300
                end
            end
        elseif f2_local4 >= 8 then
            f2_local0[1] = 1
            f2_local0[2] = 1
            f2_local0[3] = 0
            f2_local0[4] = 1000
            f2_local0[15] = 0
            f2_local0[20] = 0
            f2_local0[21] = 0
            f2_local0[22] = 0
            f2_local0[23] = 0
            f2_local0[24] = 0
            f2_local0[40] = 1
            f2_local0[41] = 0
            f2_local0[25] = 1000
        elseif f2_local4 >= 6 then
            f2_local0[1] = 1
            f2_local0[2] = 1
            f2_local0[3] = 0
            f2_local0[4] = 1000
            f2_local0[15] = 0
            f2_local0[20] = 0
            f2_local0[21] = 0
            f2_local0[22] = 0
            f2_local0[23] = 0
            f2_local0[24] = 0
            f2_local0[40] = 1
            f2_local0[41] = 0
            f2_local0[50] = 100
            f2_local0[25] = 1000
        elseif f2_local4 >= 4 then
            f2_local0[1] = 0
            f2_local0[2] = 0
            f2_local0[3] = 100
            f2_local0[4] = 200
            f2_local0[15] = 0
            f2_local0[20] = 0
            f2_local0[21] = 0
            f2_local0[22] = 0
            f2_local0[23] = 0
            f2_local0[24] = 0
            f2_local0[40] = 300
            f2_local0[41] = 100
            f2_local0[50] = 0
            f2_local0[25] = 1000
        elseif f2_local4 >= 1 then
            f2_local0[1] = 50
            f2_local0[2] = 50
            f2_local0[3] = 0
            f2_local0[4] = 0
            f2_local0[15] = 0
            f2_local0[20] = 0
            f2_local0[21] = 0
            f2_local0[22] = 0
            f2_local0[23] = 0
            f2_local0[24] = 200
            f2_local0[40] = 200
            f2_local0[41] = 0
            f2_local0[25] = 0
        else
            f2_local0[1] = 150
            f2_local0[2] = 100
            f2_local0[3] = 0
            f2_local0[4] = 0
            f2_local0[15] = 0
            f2_local0[20] = 0
            f2_local0[21] = 0
            f2_local0[22] = 0
            f2_local0[23] = 100
            f2_local0[24] = 250
            f2_local0[40] = 300
            f2_local0[41] = 0
        end
    elseif f2_local4 >= 8 then
        f2_local0[1] = 0
        f2_local0[2] = 0
        f2_local0[3] = 0
        f2_local0[4] = 0
        f2_local0[6] = 600
        f2_local0[15] = 0
        f2_local0[20] = 0
        f2_local0[21] = 0
        f2_local0[22] = 0
        f2_local0[23] = 0
        f2_local0[24] = 0
        f2_local0[40] = 400
        f2_local0[41] = 0
        f2_local0[25] = 1000
    elseif f2_local4 >= 6 then
        f2_local0[1] = 0
        f2_local0[2] = 0
        f2_local0[3] = 0
        f2_local0[4] = 0
        f2_local0[6] = 600
        f2_local0[15] = 0
        f2_local0[20] = 0
        f2_local0[21] = 0
        f2_local0[22] = 0
        f2_local0[23] = 0
        f2_local0[24] = 0
        f2_local0[40] = 400
        f2_local0[41] = 0
        f2_local0[50] = 0
        f2_local0[25] = 500
    elseif f2_local4 >= 4 then
        f2_local0[1] = 0
        f2_local0[2] = 0
        f2_local0[3] = 0
        f2_local0[4] = 0
        f2_local0[15] = 0
        f2_local0[20] = 0
        f2_local0[21] = 0
        f2_local0[22] = 0
        f2_local0[23] = 0
        f2_local0[24] = 300
        f2_local0[40] = 200
        f2_local0[41] = 300
        f2_local0[50] = 0
        f2_local0[25] = 500
    elseif f2_local4 >= 1 then
        f2_local0[1] = 150
        f2_local0[2] = 100
        f2_local0[3] = 0
        f2_local0[4] = 0
        f2_local0[15] = 0
        f2_local0[20] = 0
        f2_local0[21] = 0
        f2_local0[22] = 0
        f2_local0[23] = 0
        f2_local0[24] = 100
        f2_local0[40] = 500
        f2_local0[41] = 0
        f2_local0[25] = 0
    else
        f2_local0[1] = 100
        f2_local0[2] = 50
        f2_local0[3] = 0
        f2_local0[4] = 0
        f2_local0[15] = 0
        f2_local0[20] = 0
        f2_local0[21] = 50
        f2_local0[22] = 0
        f2_local0[23] = 0
        f2_local0[24] = 350
        f2_local0[40] = 0
        f2_local0[41] = 0
    end
    if not f2_arg1:HasSpecialEffectId(TARGET_SELF, 9133) then
        f2_local0[25] = 0
    end
    if f2_arg1:GetEquipWeaponIndex(ARM_L) ~= WEP_Primary then
        f2_local0[4] = 0
        f2_local0[5] = 0
        f2_local0[50] = 0
    end
    if not f2_arg1:IsFinishTimer(3) then
        f2_local0[21] = 0
    end
    if SpaceCheck(f2_arg1, f2_arg2, 180, f2_arg1:GetStringIndexedNumber("Dist_BackStep")) == false then
        f2_local0[21] = 0
    end
    if SpaceCheck(f2_arg1, f2_arg2, -45, f2_arg1:GetStringIndexedNumber("Dist_Rolling")) == false or SpaceCheck(f2_arg1, f2_arg2, 45, f2_arg1:GetStringIndexedNumber("Dist_Rolling")) == false then
        f2_local0[22] = 0
    end
    if SpaceCheck(f2_arg1, f2_arg2, -90, f2_arg1:GetStringIndexedNumber("Dist_Rolling")) == false or SpaceCheck(f2_arg1, f2_arg2, 90, f2_arg1:GetStringIndexedNumber("Dist_Rolling")) == false then
        f2_local0[23] = 0
    end
    if SpaceCheck(f2_arg1, f2_arg2, -135, f2_arg1:GetStringIndexedNumber("Dist_Rolling")) == false or SpaceCheck(f2_arg1, f2_arg2, 135, f2_arg1:GetStringIndexedNumber("Dist_Rolling")) == false then
        f2_local0[24] = 0
    end
    if SpaceCheck(f2_arg1, f2_arg2, 180, f2_arg1:GetStringIndexedNumber("Dist_Rolling")) == false then
        f2_local0[24] = 0
    end
    if f2_local7 <= 0 then
        f2_local0[21] = 0
        f2_local0[22] = 0
        f2_local0[23] = 0
        f2_local0[24] = 0
    end
    f2_local1[1] = REGIST_FUNC(f2_arg1, f2_arg2, NPC_Yellow_Substitute_Act01)
    f2_local1[2] = REGIST_FUNC(f2_arg1, f2_arg2, NPC_Yellow_Substitute_Act02)
    f2_local1[3] = REGIST_FUNC(f2_arg1, f2_arg2, NPC_Yellow_Substitute_Act03)
    f2_local1[4] = REGIST_FUNC(f2_arg1, f2_arg2, NPC_Yellow_Substitute_Act04)
    f2_local1[5] = REGIST_FUNC(f2_arg1, f2_arg2, NPC_Yellow_Substitute_Act05)
    f2_local1[6] = REGIST_FUNC(f2_arg1, f2_arg2, NPC_Yellow_Substitute_Act06)
    f2_local1[15] = REGIST_FUNC(f2_arg1, f2_arg2, NPC_Yellow_Substitute_Act15)
    f2_local1[20] = REGIST_FUNC(f2_arg1, f2_arg2, NPC_Yellow_Substitute_Act20)
    f2_local1[21] = REGIST_FUNC(f2_arg1, f2_arg2, NPC_Yellow_Substitute_Act21)
    f2_local1[22] = REGIST_FUNC(f2_arg1, f2_arg2, NPC_Yellow_Substitute_Act22)
    f2_local1[23] = REGIST_FUNC(f2_arg1, f2_arg2, NPC_Yellow_Substitute_Act23)
    f2_local1[24] = REGIST_FUNC(f2_arg1, f2_arg2, NPC_Yellow_Substitute_Act24)
    f2_local1[25] = REGIST_FUNC(f2_arg1, f2_arg2, NPC_Yellow_Substitute_Act25)
    f2_local1[26] = REGIST_FUNC(f2_arg1, f2_arg2, NPC_Yellow_Substitute_Act26)
    f2_local1[40] = REGIST_FUNC(f2_arg1, f2_arg2, NPC_Yellow_Substitute_Act40)
    f2_local1[41] = REGIST_FUNC(f2_arg1, f2_arg2, NPC_Yellow_Substitute_Act41)
    f2_local1[42] = REGIST_FUNC(f2_arg1, f2_arg2, NPC_Yellow_Substitute_Act42)
    f2_local1[43] = REGIST_FUNC(f2_arg1, f2_arg2, NPC_Yellow_Substitute_Act43)
    f2_local1[44] = REGIST_FUNC(f2_arg1, f2_arg2, NPC_Yellow_Substitute_Act44)
    f2_local1[45] = REGIST_FUNC(f2_arg1, f2_arg2, NPC_Yellow_Substitute_Act45)
    f2_local1[46] = REGIST_FUNC(f2_arg1, f2_arg2, NPC_Yellow_Substitute_Act46)
    f2_local1[47] = REGIST_FUNC(f2_arg1, f2_arg2, NPC_Yellow_Substitute_Act47)
    f2_local1[50] = REGIST_FUNC(f2_arg1, f2_arg2, NPC_Yellow_Substitute_Act50)
    f2_local1[80] = REGIST_FUNC(f2_arg1, f2_arg2, NPC_Yellow_Substitute_Act80)
    local f2_local8 = REGIST_FUNC(f2_arg1, f2_arg2, NPC_Yellow_Substitute_ActAfter_AdjustSpace)
    Common_Battle_Activate(f2_arg1, f2_arg2, f2_local0, f2_local1, f2_local8, f2_local2)
    
end

function NPC_Yellow_Substitute_Act01(f3_arg0, f3_arg1, f3_arg2)
    local f3_local0 = f3_arg0:GetRandam_Int(1, 100)
    local f3_local1 = f3_arg0:GetRandam_Int(1, 100)
    local f3_local2 = f3_arg0:GetDist(TARGET_ENE_0)
    local f3_local3 = f3_arg0:GetSp(TARGET_SELF)
    local f3_local4 = 2.5
    local f3_local5 = 100
    if f3_arg0:GetEquipWeaponIndex(ARM_L) == WEP_Primary and f3_arg0:IsBothHandMode(TARGET_SELF) then
        f3_local4 = 2.5
        f3_local5 = 0
    end
    if f3_arg0:GetEquipWeaponIndex(ARM_L) ~= WEP_Primary then
        f3_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ArrowKeyLeft, TARGET_ENE_0, 999, 0, 0)
    end
    local f3_local6 = f3_local4
    local f3_local7 = f3_local4 + 1.3
    local f3_local8 = f3_local4 + 1.3
    local f3_local9 = 100
    local f3_local10 = 1.8
    local f3_local11 = 2
    if f3_local3 < 20 then
        f3_local5 = 0
    end
    NPC_Approach_Act_Flex(f3_arg0, f3_arg1, f3_local6, f3_local7, f3_local8, f3_local9, f3_local5, f3_local10, f3_local11)
    if f3_local3 >= 20 then
        f3_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_R1, TARGET_ENE_0, f3_local4, 0, 0)
        f3_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R1, TARGET_ENE_0, 999, 0, 0)
    else
        f3_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R1, TARGET_ENE_0, f3_local4, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function NPC_Yellow_Substitute_Act02(f4_arg0, f4_arg1, f4_arg2)
    local f4_local0 = f4_arg0:GetRandam_Int(1, 100)
    local f4_local1 = f4_arg0:GetRandam_Int(1, 100)
    local f4_local2 = f4_arg0:GetDist(TARGET_ENE_0)
    local f4_local3 = f4_arg0:GetSp(TARGET_SELF)
    local f4_local4 = 3.1
    local f4_local5 = 100
    if f4_arg0:GetEquipWeaponIndex(ARM_L) == WEP_Primary and f4_arg0:IsBothHandMode(TARGET_SELF) then
        f4_local4 = 2.6
        f4_local5 = 0
    end
    if f4_arg0:GetEquipWeaponIndex(ARM_L) ~= WEP_Primary then
        f4_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ArrowKeyLeft, TARGET_ENE_0, 999, 0, 0)
    end
    local f4_local6 = f4_local4
    local f4_local7 = f4_local4 + 1.3
    local f4_local8 = f4_local4 + 1.3
    local f4_local9 = 100
    local f4_local10 = 1.8
    local f4_local11 = 2
    if f4_local3 < 20 then
        f4_local5 = 0
    end
    NPC_Approach_Act_Flex(f4_arg0, f4_arg1, f4_local6, f4_local7, f4_local8, f4_local9, f4_local5, f4_local10, f4_local11)
    if f4_local3 >= 35 and f4_local0 > 60 then
        f4_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_R2, TARGET_ENE_0, f4_local4, 0, 0)
        f4_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R2, TARGET_ENE_0, 999, 0, 0)
    else
        f4_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_R2, TARGET_ENE_0, f4_local4, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function NPC_Yellow_Substitute_Act03(f5_arg0, f5_arg1, f5_arg2)
    local f5_local0 = 3.8 + 1
    local f5_local1 = f5_local0 + 2
    local f5_local2 = f5_local0 + 2
    local f5_local3 = 0
    local f5_local4 = 0
    local f5_local5 = 1.8
    local f5_local6 = 2
    local f5_local7 = f5_arg0:GetSp(TARGET_SELF)
    NPC_Approach_Act_Flex(f5_arg0, f5_arg1, f5_local0, f5_local1, f5_local2, f5_local3, f5_local4, f5_local5, f5_local6)
    f5_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 2, NPC_ATK_Up_R2, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function NPC_Yellow_Substitute_Act04(f6_arg0, f6_arg1, f6_arg2)
    local f6_local0 = 2.7
    local f6_local1 = 1.5
    local f6_local2 = f6_arg0:GetRandam_Int(1, 100)
    local f6_local3 = f6_arg0:GetDist(TARGET_ENE_0)
    local f6_local4 = f6_arg0:GetSp(TARGET_SELF)
    if f6_local3 < 5 then
        if f6_arg0:GetEquipWeaponIndex(ARM_L) == WEP_Primary and f6_arg0:IsBothHandMode(TARGET_SELF) then
            if f6_local2 <= 30 then
                f6_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_Down_ButtonXmark, TARGET_ENE_0, 999, 0, 0)
            end
        else
            f6_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_Down_ButtonXmark, TARGET_ENE_0, 999, 0, 0)
        end
    end
    if f6_arg0:GetEquipWeaponIndex(ARM_L) ~= WEP_Primary then
        f6_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ArrowKeyLeft, TARGET_ENE_0, 999, 0, 0)
        f6_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ButtonTriangle, TARGET_ENE_0, 999, 0, 0)
    elseif not f6_arg0:IsBothHandMode(TARGET_SELF) then
        f6_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ButtonTriangle, TARGET_ENE_0, 999, 0, 0)
    end
    f6_arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 0.3, TARGET_ENE_0, f6_local0, TARGET_SELF, true, NPC_ATK_L2):SetLifeEndSuccess(true)
    f6_arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 3, TARGET_ENE_0, f6_local0, TARGET_SELF, true, NPC_ATK_L2):SetTargetRange(0, 2.7, 6)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function NPC_Yellow_Substitute_Act05(f7_arg0, f7_arg1, f7_arg2)
    local f7_local0 = 6 + 2
    local f7_local1 = 7
    local f7_local2 = f7_arg0:GetRandam_Int(1, 100)
    local f7_local3 = f7_arg0:GetDist(TARGET_ENE_0)
    local f7_local4 = f7_arg0:GetSp(TARGET_SELF)
    if f7_arg0:GetEquipWeaponIndex(ARM_L) ~= WEP_Primary then
        f7_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ArrowKeyLeft, TARGET_ENE_0, 999, 0, 0)
        f7_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ButtonTriangle, TARGET_ENE_0, 999, 0, 0)
    elseif not f7_arg0:IsBothHandMode(TARGET_SELF) then
        f7_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ButtonTriangle, TARGET_ENE_0, 999, 0, 0)
    end
    if f7_local0 + 1 < f7_local3 then
        f7_arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 3, TARGET_ENE_0, f7_local0 + 1, TARGET_SELF, false, -1)
    end
    f7_arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 1.8, TARGET_ENE_0, f7_local0, TARGET_SELF, true, NPC_ATK_L2)
    if f7_local4 > 40 then
        f7_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_L2Hold_R1, TARGET_ENE_0, f7_local1, 0, 0)
        NPC_Yellow_Substitute_Act22(f7_arg0, f7_arg1, f7_arg2)
    else
        f7_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_L2Hold_R1, TARGET_ENE_0, f7_local1, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function NPC_Yellow_Substitute_Act06(f8_arg0, f8_arg1, f8_arg2)
    local f8_local0 = 10
    local f8_local1 = 1.5
    local f8_local2 = f8_arg0:GetRandam_Int(1, 100)
    local f8_local3 = f8_arg0:GetDist(TARGET_ENE_0)
    local f8_local4 = f8_arg0:GetSp(TARGET_SELF)
    local f8_local5 = f8_arg0:GetRandam_Int(0, 1)
    local f8_local6 = 90
    if f8_arg0:GetEquipWeaponIndex(ARM_L) == WEP_Primary then
        f8_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ArrowKeyLeft, TARGET_ENE_0, 999, 0, 0)
    end
    if f8_local3 < f8_local0 then
        f8_arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 1, TARGET_ENE_0, 999, TARGET_ENE_0, true, NPC_ATK_L2):SetLifeEndSuccess(true)
    elseif f8_local0 + 2 < f8_local3 then
        f8_arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 3, TARGET_ENE_0, f8_local0, TARGET_SELF, true, NPC_ATK_L2)
    else
        f8_arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 1, TARGET_ENE_0, f8_local5, f8_local6, true, true, NPC_ATK_L2):SetLifeEndSuccess(true)
    end
    if f8_local3 < 8 then
        f8_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R1, TARGET_ENE_0, 999, 0, 0)
    elseif f8_local2 < 35 then
        f8_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_L2Hold_R1, TARGET_ENE_0, 999, 0, 0)
    else
        f8_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R1, TARGET_ENE_0, 999, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function NPC_Yellow_Substitute_Act15(f9_arg0, f9_arg1, f9_arg2)
    local f9_local0 = 2.5
    local f9_local1 = f9_local0
    local f9_local2 = f9_local0 + 2
    local f9_local3 = 70
    local f9_local4 = 0
    local f9_local5 = 1.8
    local f9_local6 = 2
    if f9_arg0:IsBothHandMode(TARGET_SELF) then
        f9_local4 = 50
    end
    NPC_Approach_Act_Flex(f9_arg0, f9_arg1, f9_local0, f9_local1, f9_local2, f9_local3, f9_local4, f9_local5, f9_local6)
    f9_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_Up_R1, TARGET_ENE_0, 999, 0, 0)
    f9_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_R1, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function NPC_Yellow_Substitute_Act20(f10_arg0, f10_arg1, f10_arg2)
    local f10_local0 = f10_arg0:GetDist(TARGET_ENE_0)
    local f10_local1 = f10_arg0:GetRandam_Int(1, 100)
    local f10_local2 = 3.8 + 1
    local f10_local3 = 3.1
    if f10_arg0:GetEquipWeaponIndex(ARM_R) == WEP_Primary and f10_arg0:IsBothHandMode(TARGET_SELF) then
        f10_local2 = 3.8 + 1
        f10_local3 = 2.6
    end
    if f10_local0 <= f10_local2 + 1 then
        f10_arg1:AddSubGoal(GOAL_COMMON_DashTarget, 3, TARGET_ENE_0, 3, TARGET_SELF, 0)
        f10_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R1, TARGET_ENE_0, 999, 0, 0)
    elseif f10_local1 <= 100 then
        f10_arg1:AddSubGoal(GOAL_COMMON_DashTarget, 3, TARGET_ENE_0, f10_local2, TARGET_SELF, 0)
        f10_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R1, TARGET_ENE_0, 999, 0, 0)
    else
        f10_arg1:AddSubGoal(GOAL_COMMON_DashTarget, 3, TARGET_ENE_0, f10_local3, TARGET_SELF, 0)
        f10_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R2, TARGET_ENE_0, 999, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function NPC_Yellow_Substitute_Act21(f11_arg0, f11_arg1, f11_arg2)
    local f11_local0 = f11_arg0:GetDist(TARGET_ENE_0)
    local f11_local1 = f11_arg0:GetRandam_Int(1, 100)
    local f11_local2 = f11_arg0:GetRandam_Int(1, 100)
    local f11_local3 = f11_arg0:GetSp(TARGET_SELF)
    f11_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ButtonXmark, TARGET_ENE_0, 999, 0, 0):TimingSetTimer(3, 5, AI_TIMING_SET__ACTIVATE)
    if f11_local1 <= 70 and f11_local3 > 0 then
        local f11_local4 = 3.8 + 1
        local f11_local5 = 3.1
        local f11_local6 = 100
        if f11_arg0:GetEquipWeaponIndex(ARM_R) == WEP_Primary and f11_arg0:IsBothHandMode(TARGET_SELF) then
            f11_local4 = 3.8 + 1
            f11_local5 = 2.6
        end
        f11_arg1:AddSubGoal(GOAL_COMMON_NPCStepAttack, 10, TARGET_ENE_0, f11_local4, f11_local5, f11_local6)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function NPC_Yellow_Substitute_Act22(f12_arg0, f12_arg1, f12_arg2)
    local f12_local0 = f12_arg0:GetDist(TARGET_ENE_0)
    local f12_local1 = f12_arg0:GetRandam_Int(1, 100)
    local f12_local2 = f12_arg0:GetRandam_Int(1, 100)
    local f12_local3 = f12_arg0:GetSp(TARGET_SELF)
    local f12_local4 = f12_arg0:GetMp(TARGET_SELF)
    if f12_local0 >= 3.5 then
        f12_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_Up_ButtonXmark, TARGET_ENE_0, 999, 0, 0)
    elseif SpaceCheck(f12_arg0, f12_arg1, -45, f12_arg0:GetStringIndexedNumber("Dist_Rolling")) == false then
        f12_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_UpRight_ButtonXmark, TARGET_ENE_0, 999, 0, 0)
    elseif SpaceCheck(f12_arg0, f12_arg1, 45, f12_arg0:GetStringIndexedNumber("Dist_Rolling")) == false then
        f12_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_UpLeft_ButtonXmark, TARGET_ENE_0, 999, 0, 0)
    elseif f12_local1 <= 50 then
        f12_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_UpRight_ButtonXmark, TARGET_ENE_0, 999, 0, 0)
    else
        f12_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_UpLeft_ButtonXmark, TARGET_ENE_0, 999, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function NPC_Yellow_Substitute_Act23(f13_arg0, f13_arg1, f13_arg2)
    local f13_local0 = f13_arg0:GetDist(TARGET_ENE_0)
    local f13_local1 = f13_arg0:GetRandam_Int(1, 100)
    local f13_local2 = f13_arg0:GetRandam_Int(1, 100)
    local f13_local3 = f13_arg0:GetSp(TARGET_SELF)
    local f13_local4 = f13_arg0:GetMp(TARGET_SELF)
    if SpaceCheck(f13_arg0, f13_arg1, -90, f13_arg0:GetStringIndexedNumber("Dist_Rolling")) == false then
        f13_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_Right_ButtonXmark, TARGET_ENE_0, 999, 0, 0)
    elseif SpaceCheck(f13_arg0, f13_arg1, 90, f13_arg0:GetStringIndexedNumber("Dist_Rolling")) == false then
        f13_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_Left_ButtonXmark, TARGET_ENE_0, 999, 0, 0)
    elseif f13_local1 <= 50 then
        f13_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_Right_ButtonXmark, TARGET_ENE_0, 999, 0, 0)
    else
        f13_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_Left_ButtonXmark, TARGET_ENE_0, 999, 0, 0)
    end
    if f13_local2 <= 80 and f13_local3 > 0 and f13_local4 >= 0 then
        local f13_local5 = 2.5
        local f13_local6 = 2.5
        local f13_local7 = 60
        if f13_arg0:GetEquipWeaponIndex(ARM_R) == WEP_Primary and f13_arg0:IsBothHandMode(TARGET_SELF) then
            f13_local5 = 2.5
            f13_local6 = 2.5
        end
        f13_arg1:AddSubGoal(GOAL_COMMON_NPCStepAttack, 10, TARGET_ENE_0, f13_local5, f13_local6, f13_local7)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function NPC_Yellow_Substitute_Act24(f14_arg0, f14_arg1, f14_arg2)
    local f14_local0 = f14_arg0:GetDist(TARGET_ENE_0)
    local f14_local1 = f14_arg0:GetRandam_Int(1, 100)
    local f14_local2 = f14_arg0:GetRandam_Int(1, 100)
    local f14_local3 = f14_arg0:GetRandam_Int(1, 100)
    local f14_local4 = f14_arg0:GetSp(TARGET_SELF)
    local f14_local5 = f14_arg0:GetMp(TARGET_SELF)
    if f14_local0 <= 1 then
        f14_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_Down_ButtonXmark, TARGET_ENE_0, 999, 0, 0)
    elseif SpaceCheck(f14_arg0, f14_arg1, -135, f14_arg0:GetStringIndexedNumber("Dist_Rolling")) == false then
        f14_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_DownRight_ButtonXmark, TARGET_ENE_0, 999, 0, 0)
    elseif SpaceCheck(f14_arg0, f14_arg1, 135, f14_arg0:GetStringIndexedNumber("Dist_Rolling")) == false then
        f14_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_DownLeft_ButtonXmark, TARGET_ENE_0, 999, 0, 0)
    elseif f14_local1 <= 50 then
        f14_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_DownRight_ButtonXmark, TARGET_ENE_0, 999, 0, 0)
    else
        f14_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_DownLeft_ButtonXmark, TARGET_ENE_0, 999, 0, 0)
    end
    if f14_arg0:IsBothHandMode(TARGET_SELF) then
        f14_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 0.5, NPC_ATK_ButtonTriangle, TARGET_ENE_0, 999, 0, 0)
        f14_arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 1, TARGET_ENE_0, f14_arg0:GetRandam_Int(0, 1), f14_arg0:GetRandam_Int(45, 60), true, true, NPC_ATK_L1Hold):TimingSetTimer(10, 0.5, AI_TIMING_SET__ACTIVATE)
    elseif f14_local2 <= 80 and f14_local4 > 0 and f14_local5 >= 0 then
        local f14_local6 = 2.5
        local f14_local7 = 2.5
        local f14_local8 = 60
        if f14_arg0:GetEquipWeaponIndex(ARM_R) == WEP_Primary and f14_arg0:IsBothHandMode(TARGET_SELF) then
            f14_local6 = 2.5
            f14_local7 = 2.5
        end
        f14_arg1:AddSubGoal(GOAL_COMMON_NPCStepAttack, 2, TARGET_ENE_0, f14_local6, f14_local7, f14_local8)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function NPC_Yellow_Substitute_Act25(f15_arg0, f15_arg1, f15_arg2)
    if not f15_arg0:HasSpecialEffectId(TARGET_SELF, 18010) then
        f15_arg0:ChangeEquipItem(2)
    else
        f15_arg0:ChangeEquipItem(3)
    end
    local f15_local0 = f15_arg0:GetDist(TARGET_ENE_0)
    if f15_local0 < 4 then
        f15_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_Down_ButtonXmark, TARGET_ENE_0, 999, 0, 0)
    end
    f15_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_ButtonSquare, TARGET_ENE_0, 999, 0, 0):TimingSetTimer(2, 10, AI_TIMING_SET__ACTIVATE)
    if f15_arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
        f15_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_Left_ButtonXmark, TARGET_ENE_0, 999, 0, 0)
    else
        f15_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_Right_ButtonXmark, TARGET_ENE_0, 999, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function NPC_Yellow_Substitute_Act40(f16_arg0, f16_arg1, f16_arg2)
    local f16_local0 = f16_arg0:GetDist(TARGET_ENE_0)
    local f16_local1 = f16_arg0:GetRandam_Float(2, 2)
    local f16_local2 = f16_arg0:GetRandam_Int(0, 1)
    local f16_local3 = f16_arg0:GetRandam_Int(45, 60)
    local f16_local4 = 30
    local f16_local5 = 50
    local f16_local6 = 0
    local f16_local7 = f16_arg0:GetRandam_Int(1, 100)
    local f16_local8 = f16_arg0:GetRandam_Int(1, 100)
    local f16_local9 = f16_arg0:GetRandam_Int(1, 100)
    local f16_local10 = f16_arg0:GetSp(TARGET_SELF)
    local f16_local11 = 70
    local f16_local12 = -1
    if f16_arg0:GetEquipWeaponIndex(ARM_L) ~= WEP_Primary then
        f16_arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f16_local1, TARGET_ENE_0, f16_local2, f16_local3, true, true, NPC_ATK_L2Hold)
    elseif f16_arg0:IsBothHandMode(TARGET_SELF) then
        f16_arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f16_local1, TARGET_ENE_0, f16_local2, f16_local3, true, true, f16_local12):SetTargetRange(1, 4, 8)
    elseif f16_local0 < 5 and f16_local10 > 30 then
        f16_arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f16_local1, TARGET_ENE_0, f16_local2, f16_local3, true, true, NPC_ATK_L1Hold):TimingSetTimer(10, 0.6, AI_TIMING_SET__ACTIVATE)
    else
        f16_arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f16_local1, TARGET_ENE_0, f16_local2, f16_local3, true, true, f16_local12):SetTargetRange(1, 4, 8)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function NPC_Yellow_Substitute_Act41(f17_arg0, f17_arg1, f17_arg2)
    local f17_local0 = f17_arg0:GetRandam_Float(1, 1.5)
    local f17_local1 = f17_arg0:GetDist(TARGET_ENE_0) + 2
    local f17_local2 = 0
    local f17_local3 = 100
    local f17_local4 = 0
    local f17_local5 = f17_arg0:GetRandam_Int(1, 100)
    local f17_local6 = f17_arg0:GetRandam_Int(1, 100)
    local f17_local7 = f17_arg0:GetRandam_Int(1, 100)
    local f17_local8 = f17_arg0:GetSp(TARGET_SELF)
    if f17_arg0:GetEquipWeaponIndex(ARM_L) ~= WEP_Primary then
    elseif not f17_arg0:IsBothHandMode(TARGET_SELF) then
        f17_local1 = 6.5
    else
        f17_local1 = 6.5
    end
    local f17_local9 = -1
    if f17_local5 <= f17_local2 then
        f17_local9 = 1
    end
    local f17_local10 = -1
    if f17_local6 <= f17_local3 then
        f17_local10 = 9910
    end
    if f17_arg0:GetEquipWeaponIndex(ARM_L) ~= WEP_Primary then
        f17_local9 = false
        f17_local10 = -1
    end
    f17_arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, f17_local0, TARGET_ENE_0, f17_local1, TARGET_ENE_0, f17_local9, f17_local10)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function NPC_Yellow_Substitute_Act42(f18_arg0, f18_arg1, f18_arg2)
    f18_arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 3020)
    f18_arg0:ChangeEquipItem(0)
    f18_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_ButtonSquare, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function NPC_Yellow_Substitute_Act43(f19_arg0, f19_arg1, f19_arg2)
    f19_arg0:ChangeEquipItem(1)
    f19_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_ButtonSquare, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function NPC_Yellow_Substitute_Act44(f20_arg0, f20_arg1, f20_arg2)
    f20_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_ArrowKeyRight, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function NPC_Yellow_Substitute_Act45(f21_arg0, f21_arg1, f21_arg2)
    f21_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_ArrowKeyLeft, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function NPC_Yellow_Substitute_Act46(f22_arg0, f22_arg1, f22_arg2)
    f22_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_Gesture00, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function NPC_Yellow_Substitute_Act47(f23_arg0, f23_arg1, f23_arg2)
    f23_arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_Gesture03, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function NPC_Yellow_Substitute_Act50(f24_arg0, f24_arg1, f24_arg2)
    local f24_local0 = f24_arg0:GetDist(TARGET_ENE_0)
    local f24_local1 = f24_arg0:GetRandam_Float(2, 2.5)
    local f24_local2 = f24_arg0:GetRandam_Int(0, 1)
    local f24_local3 = f24_arg0:GetRandam_Int(45, 60)
    local f24_local4 = 30
    local f24_local5 = 50
    local f24_local6 = 0
    local f24_local7 = f24_arg0:GetRandam_Int(1, 100)
    local f24_local8 = f24_arg0:GetRandam_Int(1, 100)
    local f24_local9 = f24_arg0:GetRandam_Int(1, 100)
    local f24_local10 = f24_arg0:GetSp(TARGET_SELF)
    local f24_local11 = 50
    local f24_local12 = -1
    if f24_arg0:GetEquipWeaponIndex(ARM_L) ~= WEP_Primary then
        f24_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ArrowKeyLeft, TARGET_ENE_0, 999, 0, 0)
        f24_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ButtonTriangle, TARGET_ENE_0, 999, 0, 0)
    elseif not f24_arg0:IsBothHandMode(TARGET_SELF) then
        f24_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ButtonTriangle, TARGET_ENE_0, 999, 0, 0)
    end
    if f24_local0 < 2 and f24_local11 < f24_local10 then
        f24_arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f24_local1, TARGET_ENE_0, f24_local2, f24_local3, true, true, NPC_ATK_L1Hold)
    elseif f24_local0 < 7 and f24_local11 < f24_local10 then
        if f24_local0 > 2.7 + 0 + 1 then
            f24_arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 3.5, TARGET_ENE_0, 2.7 + 0 + 0.5, TARGET_SELF, true, NPC_ATK_L2):SetTargetRange(0, 2.7, 6)
        end
        f24_arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f24_local1, TARGET_ENE_0, f24_local2, f24_local3, true, true, NPC_ATK_L2Hold):SetTargetRange(0, 2.7, 6)
        if f24_local7 <= 15 then
            f24_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_L2Hold_R1, TARGET_ENE_0, 999, 0, 0)
        end
    else
        f24_arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f24_local1, TARGET_ENE_0, f24_local2, f24_local3, true, true, f24_local12)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function NPC_Yellow_Substitute_Act80(f25_arg0, f25_arg1, f25_arg2)
    local f25_local0 = f25_arg0:GetDist(TARGET_ENE_0)
    local f25_local1 = f25_arg0:GetRandam_Float(1, 1.5)
    local f25_local2 = f25_arg0:GetRandam_Int(0, 1)
    local f25_local3 = f25_arg0:GetRandam_Int(45, 60)
    local f25_local4 = 30
    local f25_local5 = 50
    local f25_local6 = 0
    local f25_local7 = f25_arg0:GetRandam_Int(1, 100)
    local f25_local8 = f25_arg0:GetRandam_Int(1, 100)
    local f25_local9 = f25_arg0:GetRandam_Int(1, 100)
    local f25_local10 = f25_arg0:GetSp(TARGET_SELF)
    local f25_local11 = 70
    local f25_local12 = -1
    f25_arg1:AddSubGoal(GOAL_COMMON_Guard, WaitTime, NPC_ATK_L1Hold, TARGET_ENE_0, true, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function NPC_Yellow_Substitute_ActAfter_AdjustSpace(f26_arg0, f26_arg1, f26_arg2)
    
end

Goal.Update = function (f27_arg0, f27_arg1, f27_arg2)
    return Update_Default_NoSubGoal(f27_arg0, f27_arg1, f27_arg2)
    
end

Goal.Terminate = function (f28_arg0, f28_arg1, f28_arg2)
    
end

Goal.Interrupt = function (f29_arg0, f29_arg1, f29_arg2)
    local f29_local0 = f29_arg1:GetSp(TARGET_SELF)
    local f29_local1 = f29_arg1:GetDist(TARGET_ENE_0)
    local f29_local2 = f29_arg1:GetRandam_Int(1, 100)
    local f29_local3 = f29_arg1:GetRandam_Int(1, 100)
    if f29_arg1:IsInterupt(INTERUPT_TargetOutOfRange) then
        if f29_arg1:IsTargetOutOfRangeInterruptSlot(0) and f29_arg1:GetEquipWeaponIndex(ARM_L) == WEP_Primary and f29_arg1:IsBothHandMode(TARGET_SELF) then
            if f29_local1 < 4 then
                f29_arg2:ClearSubGoal()
                if f29_local2 <= 50 or f0_local0 == false then
                    f0_local0 = true
                    if f29_local0 > 30 then
                        f29_arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_L2Hold_R2, TARGET_ENE_0, 999, 0, 0):SetTargetRange(3, -1, 2.5 + 0.5)
                    else
                        f29_arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_L2Hold_R2, TARGET_ENE_0, 999, 0, 0):SetTargetRange(3, -1, 2.7 - 1)
                    end
                elseif f29_local2 <= 75 then
                    if f29_local0 > 30 then
                        f29_arg2:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ButtonXmark, TARGET_ENE_0, 999, 0, 0):TimingSetTimer(3, 5, AI_TIMING_SET__ACTIVATE)
                        f29_arg2:AddSubGoal(GOAL_COMMON_NPCStepAttack, 10, TARGET_ENE_0, 3.8 + 1, 2.6, 100)
                    else
                        f29_arg2:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_ButtonXmark, TARGET_ENE_0, 999, 0, 0):TimingSetTimer(3, 5, AI_TIMING_SET__ACTIVATE)
                    end
                else
                    f29_arg2:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, NPC_ATK_Up_ButtonXmark, TARGET_ENE_0, 999, 0, 0)
                    f29_arg2:AddSubGoal(GOAL_COMMON_NPCStepAttack, 10, TARGET_ENE_0, 3.8 + 1, 2.6, 100)
                end
                return true
            elseif f29_arg1:IsFinishTimer(4) then
                f29_arg2:ClearSubGoal()
                f29_arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_L2Hold_R1, TARGET_ENE_0, 999, 0, 0):SetTargetRange(2, 2.7 + 0, 999)
                f29_arg1:SetTimer(4, f29_arg1:GetRandam_Float(0.5, 3))
                return true
            end
        end
        if f29_arg1:IsTargetOutOfRangeInterruptSlot(2) and f29_arg1:GetEquipWeaponIndex(ARM_L) == WEP_Primary and f29_arg1:IsBothHandMode(TARGET_SELF) then
            if f29_local0 > 30 then
                f29_arg2:ClearSubGoal()
                f29_arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_L2Hold_R2, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif f29_local0 > 0 then
                f29_arg2:ClearSubGoal()
                f29_arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_L2Hold_R2, TARGET_ENE_0, 999, 0, 0)
                return true
            else
            end
        end
        if f29_arg1:IsTargetOutOfRangeInterruptSlot(3) and f29_arg1:GetEquipWeaponIndex(ARM_L) == WEP_Primary and f29_arg1:IsBothHandMode(TARGET_SELF) then
            if f29_local0 > 30 and f29_local1 > 6 and f29_arg1:IsFinishTimer(4) then
                f29_arg2:ClearSubGoal()
                f29_arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_L2Hold_R1, TARGET_ENE_0, 999, 0, 0)
                f29_arg1:SetTimer(4, f29_arg1:GetRandam_Float(0.5, 3))
                return true
            elseif f29_local0 > 20 and f29_local1 >= 2.7 + 0 then
                f29_arg2:ClearSubGoal()
                NPC_Yellow_Substitute_Act50(f29_arg1, f29_arg2, paramTbl)
                return true
            else
            end
        end
        if f29_arg1:IsTargetOutOfRangeInterruptSlot(1) then
            f29_arg2:ClearSubGoal()
            f29_arg1:Replaning()
        end
    end
    if not f29_arg1:IsBothHandMode(TARGET_SELF) and f29_arg1:IsInterupt(INTERUPT_ParryTiming) and f29_arg1:IsTargetGuard(TARGET_SELF) and f29_arg1:IsFinishTimer(10) and f29_local1 <= 2 then
        f29_arg1:SetTimer(10, 3)
        f29_arg2:ClearSubGoal()
        f29_arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 0.5, NPC_ATK_L2, TARGET_ENE_0, 999, 0, 0)
        return true
    end
    if f29_arg1:IsInterupt(INTERUPT_SuccessParry) then
        f29_arg2:ClearSubGoal()
        f29_arg2:AddSubGoal(GOAL_COMMON_ApproachTarget, 1, TARGET_ENE_0, -1, TARGET_SELF, false, 0):SetLifeEndSuccess(true)
        f29_arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R1, TARGET_ENE_0, 999, 0, -1)
        return true
    end
    if f29_arg1:IsInterupt(INTERUPT_GuardBreak) then
        f29_arg2:ClearSubGoal()
        if f29_arg1:HasSpecialEffectId(TARGET_SELF, 100250) then
            f29_arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_L2Hold_R2, TARGET_ENE_0, 999, 0, 0)
        elseif f29_local1 < 1.5 then
            f29_arg2:AddSubGoal(GOAL_COMMON_ApproachTarget, 1, TARGET_ENE_0, -1, TARGET_SELF, false, 0):SetLifeEndSuccess(true)
            f29_arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, NPC_ATK_R1, TARGET_ENE_0, 999, 0, -1)
            return true
        end
    end
    if f29_arg1:IsInterupt(INTERUPT_FindAttack) and f29_local1 < 1.8 and f29_local2 <= 60 and f29_local0 > 60 then
        f29_arg2:ClearSubGoal()
        NPC_Yellow_Substitute_Act23(f29_arg1, f29_arg2)
        return true
    end
    if f29_arg1:IsInterupt(INTERUPT_Shoot) then
        if f29_local2 <= 70 and f29_local0 >= 20 and f29_arg1:IsInsideTargetEx(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_F, 20, 999) then
            f29_arg2:ClearSubGoal()
            if f29_local3 < 65 then
                NPC_Yellow_Substitute_Act22(f29_arg1, f29_arg2, paramTbl)
            else
                NPC_Yellow_Substitute_Act23(f29_arg1, f29_arg2, paramTbl)
            end
            return true
        elseif not f29_arg1:IsInsideTargetEx(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_F, 20, 999) and f29_local1 >= 4 then
            f29_arg2:ClearSubGoal()
            NPC_Yellow_Substitute_Act20(f29_arg1, f29_arg2, paramTbl)
        end
    end
    return false
    
end


