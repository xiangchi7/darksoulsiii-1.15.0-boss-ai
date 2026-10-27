RegisterTableGoal(GOAL_Gunda_511000_Switch, "GOAL_Gunda_511000_Switch")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_Gunda_511000_Switch, true)

Goal.Initialize = function (f1_arg0, f1_arg1, f1_arg2)
    
end

Goal.Activate = function (f2_arg0, f2_arg1, f2_arg2)
    if f2_arg1:HasSpecialEffectId(TARGET_SELF, 5404) and f2_arg1:GetNpcThinkParamID() == 511100 == false then
        f2_arg2:AddSubGoal(GOAL_Gunda_511000_HU_Battle, -1)
    else
        f2_arg2:AddSubGoal(GOAL_Gunda_511000_Battle, -1)
    end
    
end

Goal.Update = function (f3_arg0, f3_arg1, f3_arg2)
    return Update_Default_NoSubGoal(f3_arg0, f3_arg1, f3_arg2)
    
end


