RegisterTableGoal(GOAL_LastBoss_Switch, "GOAL_LastBoss_Switch")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_LastBoss_Switch, true)

Goal.Initialize = function (f1_arg0, f1_arg1, f1_arg2, f1_arg3)
    
end

Goal.Activate = function (f2_arg0, f2_arg1, f2_arg2)
    if f2_arg1:HasSpecialEffectId(TARGET_SELF, 5408) then
        f2_arg2:AddSubGoal(GOAL_LastBoss_Gwyn_Battle, -1)
    elseif f2_arg1:HasSpecialEffectId(TARGET_SELF, 5407) then
        f2_arg2:AddSubGoal(GOAL_LastBoss_Magician_Battle, -1)
    elseif f2_arg1:HasSpecialEffectId(TARGET_SELF, 5405) then
        f2_arg2:AddSubGoal(GOAL_LastBoss_CurvedBlade_Battle, -1)
    elseif f2_arg1:HasSpecialEffectId(TARGET_SELF, 5404) then
        f2_arg2:AddSubGoal(GOAL_LastBoss_PiercingSword_Battle, -1)
    else
        f2_arg2:AddSubGoal(GOAL_LastBoss_LargeSword_Battle, -1)
    end
    
end


