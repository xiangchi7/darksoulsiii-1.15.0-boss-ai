RegisterTableGoal(GOAL_DarknessSmallBrother_525100_Battle, "DarknessSmallBrother_525100")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_DarknessSmallBrother_525100_Battle, true)

Goal.Initialize = function (f1_arg0, f1_arg1, f1_arg2, f1_arg3)
    f1_arg1:SetNumber(0, 0)
    
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
    local f2_local5 = f2_arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local f2_local6 = f2_arg1:GetEventRequest()
    f2_local0[20] = 0
    f2_local1[1] = REGIST_FUNC(f2_arg1, f2_arg2, DarknessSmallBrother_525100_Act01)
    f2_local1[2] = REGIST_FUNC(f2_arg1, f2_arg2, DarknessSmallBrother_525100_Act02)
    f2_local1[20] = REGIST_FUNC(f2_arg1, f2_arg2, DarknessSmallBrother_525100_Act20)
    local f2_local7 = REGIST_FUNC(f2_arg1, f2_arg2, DarknessSmallBrother_525100_ActAfter_AdjustSpace)
    Common_Battle_Activate(f2_arg1, f2_arg2, f2_local0, f2_local1, f2_local7, f2_local2)
    
end

function DarknessSmallBrother_525100_Act01(f3_arg0, f3_arg1, f3_arg2)
    local f3_local0 = 3000
    local f3_local1 = 20 - f3_arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local2 = 0
    local f3_local3 = 0
    f3_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f3_local0, TARGET_ENE_0, 999, f3_local2, f3_local3, 0, 180)
    f3_arg1:AddSubGoal(GOAL_COMMON_Wait, 3, TARGET_NONE, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function DarknessSmallBrother_525100_Act02(f4_arg0, f4_arg1, f4_arg2)
    local f4_local0 = 3001
    local f4_local1 = 20 - f4_arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local2 = 0
    local f4_local3 = 0
    f4_arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f4_local0, TARGET_ENE_0, 999, f4_local2, f4_local3, 0, 180)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function DarknessSmallBrother_525100_Act20(f5_arg0, f5_arg1, f5_arg2)
    f5_arg1:AddSubGoal(GOAL_COMMON_Wait, 6, TARGET_NONE, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function DarknessSmallBrother_525100_ActAfter_AdjustSpace(f6_arg0, f6_arg1, f6_arg2)
    
end

Goal.Update = function (f7_arg0, f7_arg1, f7_arg2)
    return Update_Default_NoSubGoal(f7_arg0, f7_arg1, f7_arg2)
    
end

Goal.Terminate = function (f8_arg0, f8_arg1, f8_arg2)
    
end

Goal.Interrupt = function (f9_arg0, f9_arg1, f9_arg2)
    local f9_local0 = f9_arg1:GetHpRate(TARGET_SELF)
    return false
    
end


