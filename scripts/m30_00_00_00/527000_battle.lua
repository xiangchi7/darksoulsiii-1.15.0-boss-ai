RegisterTableGoal(GOAL_PursuitHeroine527000_Switch, "PursuitHeroineSwitch")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_PursuitHeroine527000_Switch, true)

Goal.Initialize = function (f1_arg0, f1_arg1, f1_arg2, f1_arg3)
    
end

Goal.Activate = function (f2_arg0, f2_arg1, f2_arg2)
    if f2_arg1:HasSpecialEffectId(TARGET_SELF, 5404) then
        f2_arg2:AddSubGoal(GOAL_PursuitHeroine527000_HU_Battle, -1)
    else
        f2_arg2:AddSubGoal(GOAL_PursuitHeroine527000_Battle, -1)
    end
    
end

Goal.Update = function (f3_arg0, f3_arg1, f3_arg2)
    return Update_Default_NoSubGoal(f3_arg0, f3_arg1, f3_arg2)
    
end

Goal.Terminate = function (f4_arg0, f4_arg1, f4_arg2)
    
end


