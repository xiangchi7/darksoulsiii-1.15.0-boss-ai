RegisterTableGoal(GOAL_DragonAngel_209000_Switch, "GOAL_DragonAngel_209000_Switch")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_DragonAngel_209000_Switch, true)

Goal.Initialize = function (f1_arg0, f1_arg1, f1_arg2, f1_arg3)
    
end

Goal.Activate = function (f2_arg0, f2_arg1, f2_arg2)
    if f2_arg1:HasSpecialEffectId(TARGET_SELF, 5404) then
        f2_arg2:AddSubGoal(GOAL_DragonAngel_209000_HU_Battle, -1)
    else
        f2_arg2:AddSubGoal(GOAL_DragonAngel_209000_Battle, -1)
    end
    
end


