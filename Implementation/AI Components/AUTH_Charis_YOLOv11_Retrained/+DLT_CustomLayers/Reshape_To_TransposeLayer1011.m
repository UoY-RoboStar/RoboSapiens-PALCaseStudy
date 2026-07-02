classdef Reshape_To_TransposeLayer1011 < nnet.layer.Layer & nnet.layer.Formattable
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
            name = 'DLT_CustomLayers.coder.Reshape_To_TransposeLayer1011';
        end
    end


    methods
        function this = Reshape_To_TransposeLayer1011(name)
            this.Name = name;
            this.NumInputs = 3;
            this.NumOutputs = 3;
            this.OutputNames = {'x_model_23_dfl_Trans', 'x_model_23_Sigmoid_o', 'x_model_23_Sigmoid_oNumDims'};
        end

        function [x_model_23_dfl_Trans, x_model_23_Sigmoid_o, x_model_23_Sigmoid_oNumDims] = predict(this, x_model_23_Concat_ou, x_model_23_Concat_1_, x_model_23_Concat_2_)
            if isdlarray(x_model_23_Concat_ou)
                x_model_23_Concat_ou = stripdims(x_model_23_Concat_ou);
            end
            if isdlarray(x_model_23_Concat_1_)
                x_model_23_Concat_1_ = stripdims(x_model_23_Concat_1_);
            end
            if isdlarray(x_model_23_Concat_2_)
                x_model_23_Concat_2_ = stripdims(x_model_23_Concat_2_);
            end
            x_model_23_Concat_ouNumDims = 4;
            x_model_23_Concat_1_NumDims = 4;
            x_model_23_Concat_2_NumDims = 4;
            x_model_23_Concat_ou = DLT_CustomLayers.ops.permuteInputVar(x_model_23_Concat_ou, [4 3 1 2], 4);
            x_model_23_Concat_1_ = DLT_CustomLayers.ops.permuteInputVar(x_model_23_Concat_1_, [4 3 1 2], 4);
            x_model_23_Concat_2_ = DLT_CustomLayers.ops.permuteInputVar(x_model_23_Concat_2_, [4 3 1 2], 4);

            [x_model_23_dfl_Trans, x_model_23_Sigmoid_o, x_model_23_dfl_TransNumDims, x_model_23_Sigmoid_oNumDims] = Reshape_To_TransposeGraph1031(this, x_model_23_Concat_ou, x_model_23_Concat_1_, x_model_23_Concat_2_, x_model_23_Concat_ouNumDims, x_model_23_Concat_1_NumDims, x_model_23_Concat_2_NumDims, false);
            x_model_23_dfl_Trans = DLT_CustomLayers.ops.permuteOutputVar(x_model_23_dfl_Trans, [3 4 2 1], 4);
            x_model_23_Sigmoid_o = DLT_CustomLayers.ops.permuteOutputVar(x_model_23_Sigmoid_o, ['as-is'], 0);

            x_model_23_dfl_Trans = dlarray(single(x_model_23_dfl_Trans), 'SSCB');
            x_model_23_Sigmoid_o = dlarray(single(x_model_23_Sigmoid_o), repmat('U', 1, max(2, x_model_23_Sigmoid_oNumDims)));
            x_model_23_Sigmoid_oNumDims = dlarray(ones(1,x_model_23_Sigmoid_oNumDims,'like',x_model_23_dfl_Trans), 'UU');
        end

        function [x_model_23_dfl_Trans, x_model_23_Sigmoid_o, x_model_23_Sigmoid_oNumDims] = forward(this, x_model_23_Concat_ou, x_model_23_Concat_1_, x_model_23_Concat_2_)
            if isdlarray(x_model_23_Concat_ou)
                x_model_23_Concat_ou = stripdims(x_model_23_Concat_ou);
            end
            if isdlarray(x_model_23_Concat_1_)
                x_model_23_Concat_1_ = stripdims(x_model_23_Concat_1_);
            end
            if isdlarray(x_model_23_Concat_2_)
                x_model_23_Concat_2_ = stripdims(x_model_23_Concat_2_);
            end
            x_model_23_Concat_ouNumDims = 4;
            x_model_23_Concat_1_NumDims = 4;
            x_model_23_Concat_2_NumDims = 4;
            x_model_23_Concat_ou = DLT_CustomLayers.ops.permuteInputVar(x_model_23_Concat_ou, [4 3 1 2], 4);
            x_model_23_Concat_1_ = DLT_CustomLayers.ops.permuteInputVar(x_model_23_Concat_1_, [4 3 1 2], 4);
            x_model_23_Concat_2_ = DLT_CustomLayers.ops.permuteInputVar(x_model_23_Concat_2_, [4 3 1 2], 4);

            [x_model_23_dfl_Trans, x_model_23_Sigmoid_o, x_model_23_dfl_TransNumDims, x_model_23_Sigmoid_oNumDims] = Reshape_To_TransposeGraph1031(this, x_model_23_Concat_ou, x_model_23_Concat_1_, x_model_23_Concat_2_, x_model_23_Concat_ouNumDims, x_model_23_Concat_1_NumDims, x_model_23_Concat_2_NumDims, true);
            x_model_23_dfl_Trans = DLT_CustomLayers.ops.permuteOutputVar(x_model_23_dfl_Trans, [3 4 2 1], 4);
            x_model_23_Sigmoid_o = DLT_CustomLayers.ops.permuteOutputVar(x_model_23_Sigmoid_o, ['as-is'], 0);

            x_model_23_dfl_Trans = dlarray(single(x_model_23_dfl_Trans), 'SSCB');
            x_model_23_Sigmoid_o = dlarray(single(x_model_23_Sigmoid_o), repmat('U', 1, max(2, x_model_23_Sigmoid_oNumDims)));
            x_model_23_Sigmoid_oNumDims = dlarray(ones(1,x_model_23_Sigmoid_oNumDims,'like',x_model_23_dfl_Trans), 'UU');
        end

        function [x_model_23_dfl_Trans, x_model_23_Sigmoid_o, x_model_23_dfl_TransNumDims1033, x_model_23_Sigmoid_oNumDims1034] = Reshape_To_TransposeGraph1031(this, x_model_23_Concat_ou, x_model_23_Concat_1_, x_model_23_Concat_2_, x_model_23_Concat_ouNumDims, x_model_23_Concat_1_NumDims, x_model_23_Concat_2_NumDims, Training)

            % Execute the operators:
            % Reshape:
            [shape, x_model_23_Reshape_oNumDims] = DLT_CustomLayers.ops.prepareReshapeArgs(x_model_23_Concat_ou, this.Vars.x_model_23_Constan_6, x_model_23_Concat_ouNumDims, 0);
            x_model_23_Reshape_o = reshape(x_model_23_Concat_ou, shape{:});

            % Reshape:
            [shape, x_model_23_Reshape_1NumDims] = DLT_CustomLayers.ops.prepareReshapeArgs(x_model_23_Concat_1_, this.Vars.x_model_23_Constan_6, x_model_23_Concat_1_NumDims, 0);
            x_model_23_Reshape_1 = reshape(x_model_23_Concat_1_, shape{:});

            % Reshape:
            [shape, x_model_23_Reshape_2NumDims] = DLT_CustomLayers.ops.prepareReshapeArgs(x_model_23_Concat_2_, this.Vars.x_model_23_Constan_6, x_model_23_Concat_2_NumDims, 0);
            x_model_23_Reshape_2 = reshape(x_model_23_Concat_2_, shape{:});

            % Concat:
            [x_model_23_Concat_3_, x_model_23_Concat_3_NumDims] = DLT_CustomLayers.ops.onnxConcat(2, {x_model_23_Reshape_o, x_model_23_Reshape_1, x_model_23_Reshape_2}, [x_model_23_Reshape_oNumDims, x_model_23_Reshape_1NumDims, x_model_23_Reshape_2NumDims]);

            % Split:
            [x_model_23_Split_out, x_model_23_Split_o_1, x_model_23_Split_outNumDims, x_model_23_Split_o_1NumDims] = DLT_CustomLayers.ops.onnxSplit13(x_model_23_Concat_3_, 1, this.Vars.onnx__Split_562, 2, x_model_23_Concat_3_NumDims);

            % Reshape:
            [shape, x_model_23_dfl_Res_1NumDims] = DLT_CustomLayers.ops.prepareReshapeArgs(x_model_23_Split_out, this.Vars.x_model_23_dfl_Con_1, x_model_23_Split_outNumDims, 0);
            x_model_23_dfl_Res_1 = reshape(x_model_23_Split_out, shape{:});

            % Sigmoid:
            x_model_23_Sigmoid_o = sigmoid(dlarray(x_model_23_Split_o_1));
            x_model_23_Sigmoid_oNumDims = x_model_23_Split_o_1NumDims;

            % Transpose:
            [perm, x_model_23_dfl_TransNumDims] = DLT_CustomLayers.ops.prepareTransposeArgs(this.Vars.TransposePerm1032, x_model_23_dfl_Res_1NumDims);
            if isempty(perm)
                x_model_23_dfl_Trans = x_model_23_dfl_Res_1;
            else
                x_model_23_dfl_Trans = permute(x_model_23_dfl_Res_1, perm);
            end

            % Set graph output arguments
            x_model_23_dfl_TransNumDims1033 = x_model_23_dfl_TransNumDims;
            x_model_23_Sigmoid_oNumDims1034 = x_model_23_Sigmoid_oNumDims;

        end

    end

end