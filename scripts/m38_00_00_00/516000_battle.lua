RegisterTableGoal(GOAL_SkeletonKing_516000_Battle, "SkeletonKing")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_SkeletonKing_516000_Battle, true)

Goal.Initialize = function (f1_arg0, f1_arg1, f1_arg2)
    
end

Goal.Activate = function (f2_arg0, f2_arg1, f2_arg2)
    if f2_arg1:HasSpecialEffectId(TARGET_SELF, 5404) then
        f2_arg2:AddSubGoal(GOAL_SkeletonKing_516000_HeatUp_Battle, -1)
    else
        f2_arg2:AddSubGoal(GOAL_SkeletonKing_516000_Default_Battle, -1)
    end
    
end

Goal.Update = function (f3_arg0, f3_arg1, f3_arg2)
    if f3_arg2:GetSubGoalNum() <= 0 then
        return GOAL_RESULT_Success
    end
    return GOAL_RESULT_Continue
    
end


