function [EstimatedQuality] = DR_OfflineEvaluator(SampleNumber,ObservedRewards,NewActions,...
                                                                rhat,muhat,muhat_new,Feature_Index)

EstimatedQuality = 0;

for i = 1:SampleNumber
    
    EstimatedQuality = EstimatedQuality+(ObservedRewards(i)-rhat(Feature_Index(i),NewActions(i)))...
        *(muhat_new(Feature_Index(i),NewActions(i)))/muhat(Feature_Index(i),NewActions(i))...
        + muhat_new(Feature_Index(i),:)*rhat(Feature_Index(i),:)';
    
end

EstimatedQuality = EstimatedQuality/SampleNumber;

end