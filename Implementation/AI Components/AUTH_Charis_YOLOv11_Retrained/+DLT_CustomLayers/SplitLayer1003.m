classdef SplitLayer1003 < nnet.layer.Layer & nnet.layer.Formattable
    % A custom layer auto-generated while importing an ONNX network.

    %#ok<*PROPLC>
    %#ok<*NBRAK>
    %#ok<*INUSL>
    %#ok<*VARARG>
    properties (Learnable)
    end

    properties (State)
    end

    properties
        Vars
        NumDims
    end


    methods(Static, Hidden)
        % Specify the path to the class that will be used for codegen
        function name = matlabCodegenRedirect(~)
            name = 'DLT_CustomLayers.coder.SplitLayer1003';
        end
    end


    methods
        function this = SplitLayer1003(name)
            this.Name = name;
            this.NumOutputs = 2;
            this.OutputNames = {'x_model_8_Split_ou_1', 'x_model_8_Split_outp'};
        end

        function [x_model_8_Split_ou_1, x_model_8_Split_outp] = predict(this, x_model_8_cv1_act_Mu)
            if isdlarray(x_model_8_cv1_act_Mu)
                x_model_8_cv1_act_Mu = stripdims(x_model_8_cv1_act_Mu);
            end
            x_model_8_cv1_act_MuNumDims = 4;
            x_model_8_cv1_act_Mu = DLT_CustomLayers.ops.permuteInputVar(x_model_8_cv1_act_Mu, [4 3 1 2], 4);

            [x_model_8_Split_ou_1, x_model_8_Split_outp, x_model_8_Split_ou_1NumDims, x_model_8_Split_outpNumDims] = SplitGraph1009(this, x_model_8_cv1_act_Mu, x_model_8_cv1_act_MuNumDims, false);
            x_model_8_Split_ou_1 = DLT_CustomLayers.ops.permuteOutputVar(x_model_8_Split_ou_1, [3 4 2 1], 4);
            x_model_8_Split_outp = DLT_CustomLayers.ops.permuteOutputVar(x_model_8_Split_outp, [3 4 2 1], 4);

            x_model_8_Split_ou_1 = dlarray(single(x_model_8_Split_ou_1), 'SSCB');
            x_model_8_Split_outp = dlarray(single(x_model_8_Split_outp), 'SSCB');
        end

        function [x_model_8_Split_ou_1, x_model_8_Split_outp] = forward(this, x_model_8_cv1_act_Mu)
            if isdlarray(x_model_8_cv1_act_Mu)
                x_model_8_cv1_act_Mu = stripdims(x_model_8_cv1_act_Mu);
            end
            x_model_8_cv1_act_MuNumDims = 4;
            x_model_8_cv1_act_Mu = DLT_CustomLayers.ops.permuteInputVar(x_model_8_cv1_act_Mu, [4 3 1 2], 4);

            [x_model_8_Split_ou_1, x_model_8_Split_outp, x_model_8_Split_ou_1NumDims, x_model_8_Split_outpNumDims] = SplitGraph1009(this, x_model_8_cv1_act_Mu, x_model_8_cv1_act_MuNumDims, true);
            x_model_8_Split_ou_1 = DLT_CustomLayers.ops.permuteOutputVar(x_model_8_Split_ou_1, [3 4 2 1], 4);
            x_model_8_Split_outp = DLT_CustomLayers.ops.permuteOutputVar(x_model_8_Split_outp, [3 4 2 1], 4);

            x_model_8_Split_ou_1 = dlarray(single(x_model_8_Split_ou_1), 'SSCB');
            x_model_8_Split_outp = dlarray(single(x_model_8_Split_outp), 'SSCB');
        end

        function [x_model_8_Split_ou_1, x_model_8_Split_outp, x_model_8_Split_ou_1NumDims1010, x_model_8_Split_outpNumDims1011] = SplitGraph1009(this, x_model_8_cv1_act_Mu, x_model_8_cv1_act_MuNumDims, Training)

            % Execute the operators:
            % Split:
            [x_model_8_Split_outp, x_model_8_Split_ou_1, x_model_8_Split_outpNumDims, x_model_8_Split_ou_1NumDims] = DLT_CustomLayers.ops.onnxSplit13(x_model_8_cv1_act_Mu, 1, this.Vars.onnx__Split_262, 2, x_model_8_cv1_act_MuNumDims);

            % Set graph output arguments
            x_model_8_Split_ou_1NumDims1010 = x_model_8_Split_ou_1NumDims;
            x_model_8_Split_outpNumDims1011 = x_model_8_Split_outpNumDims;

        end

    end

end