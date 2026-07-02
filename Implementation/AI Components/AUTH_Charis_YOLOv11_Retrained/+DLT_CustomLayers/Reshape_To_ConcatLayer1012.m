classdef Reshape_To_ConcatLayer1012 < nnet.layer.Layer & nnet.layer.Formattable
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
            name = 'DLT_CustomLayers.coder.Reshape_To_ConcatLayer1012';
        end
    end


    methods
        function this = Reshape_To_ConcatLayer1012(name)
            this.Name = name;
            this.NumInputs = 3;
            this.OutputNames = {'output0'};
        end

        function [output0] = predict(this, x_model_23_dfl_conv_, x_model_23_Sigmoid_o, x_model_23_Sigmoid_oNumDims)
            if isdlarray(x_model_23_dfl_conv_)
                x_model_23_dfl_conv_ = stripdims(x_model_23_dfl_conv_);
            end
            if isdlarray(x_model_23_Sigmoid_o)
                x_model_23_Sigmoid_o = stripdims(x_model_23_Sigmoid_o);
            end
            x_model_23_dfl_conv_NumDims = 4;
            x_model_23_Sigmoid_oNumDims = numel(x_model_23_Sigmoid_oNumDims);
            x_model_23_dfl_conv_ = DLT_CustomLayers.ops.permuteInputVar(x_model_23_dfl_conv_, [4 3 1 2], 4);
            x_model_23_Sigmoid_o = DLT_CustomLayers.ops.permuteInputVar(x_model_23_Sigmoid_o, ['as-is'], 0);

            [output0, output0NumDims] = Reshape_To_ConcatGraph1035(this, x_model_23_dfl_conv_, x_model_23_Sigmoid_o, x_model_23_dfl_conv_NumDims, x_model_23_Sigmoid_oNumDims, false);
            output0 = DLT_CustomLayers.ops.permuteOutputVar(output0, ['as-is'], 3);

            output0 = dlarray(single(output0), repmat('U', 1, max(2, output0NumDims)));
        end

        function [output0] = forward(this, x_model_23_dfl_conv_, x_model_23_Sigmoid_o, x_model_23_Sigmoid_oNumDims)
            if isdlarray(x_model_23_dfl_conv_)
                x_model_23_dfl_conv_ = stripdims(x_model_23_dfl_conv_);
            end
            if isdlarray(x_model_23_Sigmoid_o)
                x_model_23_Sigmoid_o = stripdims(x_model_23_Sigmoid_o);
            end
            x_model_23_dfl_conv_NumDims = 4;
            x_model_23_Sigmoid_oNumDims = numel(x_model_23_Sigmoid_oNumDims);
            x_model_23_dfl_conv_ = DLT_CustomLayers.ops.permuteInputVar(x_model_23_dfl_conv_, [4 3 1 2], 4);
            x_model_23_Sigmoid_o = DLT_CustomLayers.ops.permuteInputVar(x_model_23_Sigmoid_o, ['as-is'], 0);

            [output0, output0NumDims] = Reshape_To_ConcatGraph1035(this, x_model_23_dfl_conv_, x_model_23_Sigmoid_o, x_model_23_dfl_conv_NumDims, x_model_23_Sigmoid_oNumDims, true);
            output0 = DLT_CustomLayers.ops.permuteOutputVar(output0, ['as-is'], 3);

            output0 = dlarray(single(output0), repmat('U', 1, max(2, output0NumDims)));
        end

        function [output0, output0NumDims1036] = Reshape_To_ConcatGraph1035(this, x_model_23_dfl_conv_, x_model_23_Sigmoid_o, x_model_23_dfl_conv_NumDims, x_model_23_Sigmoid_oNumDims, Training)

            % Execute the operators:
            % Reshape:
            [shape, x_model_23_dfl_ReshaNumDims] = DLT_CustomLayers.ops.prepareReshapeArgs(x_model_23_dfl_conv_, this.Vars.x_model_23_dfl_Const, x_model_23_dfl_conv_NumDims, 0);
            x_model_23_dfl_Resha = reshape(x_model_23_dfl_conv_, shape{:});

            % Slice:
            [Indices, x_model_23_Slice_outNumDims] = DLT_CustomLayers.ops.prepareSliceArgs(x_model_23_dfl_Resha, this.Vars.x_model_23_Constan_4, this.Vars.x_model_23_Mul_outpu, this.Vars.x_model_23_Constan_3, '', x_model_23_dfl_ReshaNumDims);
            x_model_23_Slice_out = x_model_23_dfl_Resha(Indices{:});

            % Slice:
            [Indices, x_model_23_Slice_1_oNumDims] = DLT_CustomLayers.ops.prepareSliceArgs(x_model_23_dfl_Resha, this.Vars.x_model_23_Mul_outpu, this.Vars.x_model_23_Mul_1_out, this.Vars.x_model_23_Constan_3, '', x_model_23_dfl_ReshaNumDims);
            x_model_23_Slice_1_o = x_model_23_dfl_Resha(Indices{:});

            % Sub:
            x_model_23_Sub_outpu = this.Vars.x_model_23_Constan_5 - x_model_23_Slice_out;
            x_model_23_Sub_outpuNumDims = max(this.NumDims.x_model_23_Constan_5, x_model_23_Slice_outNumDims);

            % Add:
            x_model_23_Add_1_out = this.Vars.x_model_23_Constant_ + x_model_23_Slice_1_o;
            x_model_23_Add_1_outNumDims = max(this.NumDims.x_model_23_Constant_, x_model_23_Slice_1_oNumDims);

            % Add:
            x_model_23_Add_2_out = x_model_23_Sub_outpu + x_model_23_Add_1_out;
            x_model_23_Add_2_outNumDims = max(x_model_23_Sub_outpuNumDims, x_model_23_Add_1_outNumDims);

            % Sub:
            x_model_23_Sub_1_out = x_model_23_Add_1_out - x_model_23_Sub_outpu;
            x_model_23_Sub_1_outNumDims = max(x_model_23_Add_1_outNumDims, x_model_23_Sub_outpuNumDims);

            % Div:
            x_model_23_Div_1_out = x_model_23_Add_2_out ./ this.Vars.x_model_23_Constan_1;
            x_model_23_Div_1_outNumDims = max(x_model_23_Add_2_outNumDims, this.NumDims.x_model_23_Constan_1);

            % Concat:
            [x_model_23_Concat_4_, x_model_23_Concat_4_NumDims] = DLT_CustomLayers.ops.onnxConcat(1, {x_model_23_Div_1_out, x_model_23_Sub_1_out}, [x_model_23_Div_1_outNumDims, x_model_23_Sub_1_outNumDims]);

            % Mul:
            x_model_23_Mul_2_out = x_model_23_Concat_4_ .* this.Vars.x_model_23_Constan_2;
            x_model_23_Mul_2_outNumDims = max(x_model_23_Concat_4_NumDims, this.NumDims.x_model_23_Constan_2);

            % Concat:
            [output0, output0NumDims] = DLT_CustomLayers.ops.onnxConcat(1, {x_model_23_Mul_2_out, x_model_23_Sigmoid_o}, [x_model_23_Mul_2_outNumDims, x_model_23_Sigmoid_oNumDims]);

            % Set graph output arguments
            output0NumDims1036 = output0NumDims;

        end

    end

end