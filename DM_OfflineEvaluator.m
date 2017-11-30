function [EstimatedQuality] = DM_OfflineEvaluator(SampleNumber,rhat,Feature_Index,phat_new)

EstimatedQuality = 0;

for i = 1:SampleNumber
    EstimatedQuality = EstimatedQuality+ phat_new(Feature_Index(i),:)*rhat(Feature_Index(i),:)';
end

EstimatedQuality = EstimatedQuality/SampleNumber;

end