from stable_baselines3 import PPO
import torch
class OnnxablePolicy(torch.nn.Module):
  def __init__(self, extractor, action_net, value_net):
      super(OnnxablePolicy, self).__init__()
      self.extractor = extractor
      self.action_net = action_net
      self.value_net = value_net

  def forward(self, observation):
      # NOTE: You may have to process (normalize) observation in the correct
      #       way before using this. See `common.preprocessing.preprocess_obs`
      action_hidden, value_hidden = self.extractor(observation)
      return self.action_net(action_hidden), self.value_net(value_hidden)

model = PPO.load("ppo_lidar_worldinfo", device=torch.device("cpu"))
print(model.policy.features_extractor)
print(model.policy.mlp_extractor)
print(model.policy.value_net)
print(model.policy.action_net)
onnxable_model = OnnxablePolicy(model.policy.mlp_extractor, model.policy.action_net, model.policy.value_net)
ex_in1 = torch.randn(1, 390, 24)
print(type(model.policy).__mro__)
torch.onnx.export(onnxable_model, ex_in1, "out.onnx", opset_version=9)
