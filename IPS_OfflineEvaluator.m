    function [EstimatedQuality]  = IPS_OfflineEvaluator(SampleNumber,ObservedRewards,NewActions,muhat,muhat_new,Feature_Index)

EstimatedQuality = 0;

for i = 1:SampleNumber
    EstimatedQuality = EstimatedQuality + ObservedRewards(i)...
        *(muhat_new(Feature_Index(i),NewActions(i)))/muhat(Feature_Index(i),NewActions(i));
end

EstimatedQuality = EstimatedQuality/SampleNumber;

end

