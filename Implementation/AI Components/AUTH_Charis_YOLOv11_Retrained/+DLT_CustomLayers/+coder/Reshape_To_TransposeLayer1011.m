classdef Reshape_To_TransposeLayer1011 < nnet.layer.Layer & nnet.layer.Formattable
    % A custom layer auto-generated while importing an ONNX network.
    %#codegen

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
        % Specify the properties of the class that will not be modified
        % after the first assignment.
        function p = matlabCodegenNontunableProperties(~)
            p = {
                % Constants, i.e., Vars, NumDims and all learnables and states
                'Vars'
                'NumDims'
                };
        end
    end


    methods(Static, Hidden)
        % Instantiate a codegenable layer instance from a MATLAB layer instance
        function this_cg = matlabCodegenToRedirected(mlInstance)
            this_cg = DLT_CustomLayers.coder.Reshape_To_TransposeLayer1011(mlInstance);
        end
        function this_ml = matlabCodegenFromRedirected(cgInstance)
            this_ml = DLT_CustomLayers.Reshape_To_TransposeLayer1011(cgInstance.Name);
            if isstruct(cgInstance.Vars)
                names = fieldnames(cgInstance.Vars);
                for i=1:numel(names)
                    fieldname = names{i};
                    this_ml.Vars.(fieldname) = dlarray(cgInstance.Vars.(fieldname));
                end
            else
                this_ml.Vars = [];
            end
            this_ml.NumDims = cgInstance.NumDims;
        end
    end

    methods
        function this = Reshape_To_TransposeLayer1011(mlInstance)
            this.Name = mlInstance.Name;
            this.NumInputs = 3;
            this.NumOutputs = 3;
            this.OutputNames = {'x_model_23_dfl_Trans', 'x_model_23_Sigmoid_o', 'x_model_23_Sigmoid_oNumDims'};
            if isstruct(mlInstance.Vars)
                names = fieldnames(mlInstance.Vars);
                for i=1:numel(names)
                    fieldname = names{i};
                    this.Vars.(fieldname) = DLT_CustomLayers.coder.ops.extractIfDlarray(mlInstance.Vars.(fieldname));
                end
            else
                this.Vars = [];
            end

            this.NumDims = mlInstance.NumDims;
        end

        function [x_model_23_dfl_Trans, x_model_23_Sigmoid_o, x_model_23_Sigmoid_oNumDims] = predict(this, x_model_23_Concat_ou__, x_model_23_Concat_1___, x_model_23_Concat_2___)
            if isdlarray(x_model_23_Concat_ou__)
                x_model_23_Concat_ou_ = stripdims(x_model_23_Concat_ou__);
            else
                x_model_23_Concat_ou_ = x_model_23_Concat_ou__;
            end
            if isdlarray(x_model_23_Concat_1___)
                x_model_23_Concat_1__ = stripdims(x_model_23_Concat_1___);
            else
                x_model_23_Concat_1__ = x_model_23_Concat_1___;
            end
            if isdlarray(x_model_23_Concat_2___)
                x_model_23_Concat_2__ = stripdims(x_model_23_Concat_2___);
            else
                x_model_23_Concat_2__ = x_model_23_Concat_2___;
            end
            x_model_23_Concat_ouNumDims = 4;
            x_model_23_Concat_1_NumDims = 4;
            x_model_23_Concat_2_NumDims = 4;
            x_model_23_Concat_ou = DLT_CustomLayers.coder.ops.permuteInputVar(x_model_23_Concat_ou_, [4 3 1 2], 4);
            x_model_23_Concat_1_ = DLT_CustomLayers.coder.ops.permuteInputVar(x_model_23_Concat_1__, [4 3 1 2], 4);
            x_model_23_Concat_2_ = DLT_CustomLayers.coder.ops.permuteInputVar(x_model_23_Concat_2__, [4 3 1 2], 4);

            [x_model_23_dfl_Trans__, x_model_23_Sigmoid_o__, x_model_23_dfl_TransNumDims__, x_model_23_Sigmoid_oNumDims__] = Reshape_To_TransposeGraph1031(this, x_model_23_Concat_ou, x_model_23_Concat_1_, x_model_23_Concat_2_, x_model_23_Concat_ouNumDims, x_model_23_Concat_1_NumDims, x_model_23_Concat_2_NumDims, false);
            x_model_23_dfl_Trans_ = DLT_CustomLayers.coder.ops.permuteOutputVar(x_model_23_dfl_Trans__, [3 4 2 1], 4);
            x_model_23_Sigmoid_o_ = DLT_CustomLayers.coder.ops.permuteOutputVar(x_model_23_Sigmoid_o__, ['as-is'], 0);

            x_model_23_dfl_Trans = dlarray(single(x_model_23_dfl_Trans_), 'SSCB');
            x_model_23_Sigmoid_o = dlarray(single(x_model_23_Sigmoid_o_), repmat('U', 1, max(2, coder.const(x_model_23_Sigmoid_oNumDims__))));
            x_model_23_Sigmoid_oNumDims = dlarray(ones(1,x_model_23_Sigmoid_oNumDims__,'like',x_model_23_dfl_Trans), 'UU');
        end

        function [x_model_23_dfl_Trans, x_model_23_Sigmoid_o, x_model_23_dfl_TransNumDims1033, x_model_23_Sigmoid_oNumDims1034] = Reshape_To_TransposeGraph1031(this, x_model_23_Concat_ou, x_model_23_Concat_1_, x_model_23_Concat_2_, x_model_23_Concat_ouNumDims, x_model_23_Concat_1_NumDims, x_model_23_Concat_2_NumDims, Training)

            % Execute the operators:
            % Reshape:
            [shape1016, x_model_23_Reshape_oNumDims] = DLT_CustomLayers.coder.ops.prepareReshapeArgs(x_model_23_Concat_ou, this.Vars.x_model_23_Constan_6, coder.const(x_model_23_Concat_ouNumDims), 0);
            x_model_23_Reshape_o = reshape(x_model_23_Concat_ou, shape1016{:});

            % Reshape:
            [shape1017, x_model_23_Reshape_1NumDims] = DLT_CustomLayers.coder.ops.prepareReshapeArgs(x_model_23_Concat_1_, this.Vars.x_model_23_Constan_6, coder.const(x_model_23_Concat_1_NumDims), 0);
            x_model_23_Reshape_1 = reshape(x_model_23_Concat_1_, shape1017{:});

            % Reshape:
            [shape1018, x_model_23_Reshape_2NumDims] = DLT_CustomLayers.coder.ops.prepareReshapeArgs(x_model_23_Concat_2_, this.Vars.x_model_23_Constan_6, coder.const(x_model_23_Concat_2_NumDims), 0);
            x_model_23_Reshape_2 = reshape(x_model_23_Concat_2_, shape1018{:});

            % Concat:
            [x_model_23_Concat_3_, x_model_23_Concat_3_NumDims] = DLT_CustomLayers.coder.ops.onnxConcat(2, {x_model_23_Reshape_o, x_model_23_Reshape_1, x_model_23_Reshape_2}, [coder.const(x_model_23_Reshape_oNumDims), coder.const(x_model_23_Reshape_1NumDims), coder.const(x_model_23_Reshape_2NumDims)]);

            % Split:
            [x_model_23_Split_out, x_model_23_Split_o_1, x_model_23_Split_outNumDims, x_model_23_Split_o_1NumDims] = DLT_CustomLayers.coder.ops.onnxSplit13(x_model_23_Concat_3_, 1, this.Vars.onnx__Split_562, 2, coder.const(x_model_23_Concat_3_NumDims));

            % Reshape:
            [shape1019, x_model_23_dfl_Res_1NumDims] = DLT_CustomLayers.coder.ops.prepareReshapeArgs(x_model_23_Split_out, this.Vars.x_model_23_dfl_Con_1, coder.const(x_model_23_Split_outNumDims), 0);
            x_model_23_dfl_Res_1 = reshape(x_model_23_Split_out, shape1019{:});

            % Sigmoid:
            X1020 = dlarray(DLT_CustomLayers.coder.ops.extractIfDlarray(x_model_23_Split_o_1));
            Y1021 = sigmoid(X1020);
            x_model_23_Sigmoid_o = DLT_CustomLayers.coder.ops.extractIfDlarray(Y1021);
            x_model_23_Sigmoid_oNumDims = coder.const(x_model_23_Split_o_1NumDims);

            % Transpose:
            [perm1022, x_model_23_dfl_TransNumDims] = DLT_CustomLayers.coder.ops.prepareTransposeArgs(this.Vars.TransposePerm1032, coder.const(x_model_23_dfl_Res_1NumDims));
            if isempty(perm1022)
                x_model_23_dfl_Trans = x_model_23_dfl_Res_1;
            else
                x_model_23_dfl_Trans = permute(DLT_CustomLayers.coder.ops.extractIfDlarray(x_model_23_dfl_Res_1), perm1022);
            end

            % Set graph output arguments
            x_model_23_dfl_TransNumDims1033 = coder.const(x_model_23_dfl_TransNumDims);
            x_model_23_Sigmoid_oNumDims1034 = coder.const(x_model_23_Sigmoid_oNumDims);

        end

    end

end