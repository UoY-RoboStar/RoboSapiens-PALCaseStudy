classdef Reshape_To_ConcatLayer1012 < nnet.layer.Layer & nnet.layer.Formattable
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
            this_cg = DLT_CustomLayers.coder.Reshape_To_ConcatLayer1012(mlInstance);
        end
        function this_ml = matlabCodegenFromRedirected(cgInstance)
            this_ml = DLT_CustomLayers.Reshape_To_ConcatLayer1012(cgInstance.Name);
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
        function this = Reshape_To_ConcatLayer1012(mlInstance)
            this.Name = mlInstance.Name;
            this.NumInputs = 3;
            this.OutputNames = {'output0'};
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

        function [output0] = predict(this, x_model_23_dfl_conv___, x_model_23_Sigmoid_o__, x_model_23_Sigmoid_oNumDims__)
            if isdlarray(x_model_23_dfl_conv___)
                x_model_23_dfl_conv__ = stripdims(x_model_23_dfl_conv___);
            else
                x_model_23_dfl_conv__ = x_model_23_dfl_conv___;
            end
            if isdlarray(x_model_23_Sigmoid_o__)
                x_model_23_Sigmoid_o_ = stripdims(x_model_23_Sigmoid_o__);
            else
                x_model_23_Sigmoid_o_ = x_model_23_Sigmoid_o__;
            end
            x_model_23_dfl_conv_NumDims = 4;
            x_model_23_Sigmoid_oNumDims = numel(x_model_23_Sigmoid_oNumDims__);
            x_model_23_dfl_conv_ = DLT_CustomLayers.coder.ops.permuteInputVar(x_model_23_dfl_conv__, [4 3 1 2], 4);
            x_model_23_Sigmoid_o = DLT_CustomLayers.coder.ops.permuteInputVar(x_model_23_Sigmoid_o_, ['as-is'], 0);

            [output0__, output0NumDims__] = Reshape_To_ConcatGraph1035(this, x_model_23_dfl_conv_, x_model_23_Sigmoid_o, x_model_23_dfl_conv_NumDims, x_model_23_Sigmoid_oNumDims, false);
            output0_ = DLT_CustomLayers.coder.ops.permuteOutputVar(output0__, ['as-is'], 3);

            output0 = dlarray(single(output0_), repmat('U', 1, max(2, coder.const(output0NumDims__))));
        end

        function [output0, output0NumDims1036] = Reshape_To_ConcatGraph1035(this, x_model_23_dfl_conv_, x_model_23_Sigmoid_o, x_model_23_dfl_conv_NumDims, x_model_23_Sigmoid_oNumDims, Training)

            % Execute the operators:
            % Reshape:
            [shape1023, x_model_23_dfl_ReshaNumDims] = DLT_CustomLayers.coder.ops.prepareReshapeArgs(x_model_23_dfl_conv_, this.Vars.x_model_23_dfl_Const, coder.const(x_model_23_dfl_conv_NumDims), 0);
            x_model_23_dfl_Resha = reshape(x_model_23_dfl_conv_, shape1023{:});

            % Slice:
            [indices1024, x_model_23_Slice_outNumDims] = DLT_CustomLayers.coder.ops.prepareSliceArgs(x_model_23_dfl_Resha, this.Vars.x_model_23_Constan_4, this.Vars.x_model_23_Mul_outpu, this.Vars.x_model_23_Constan_3, '', coder.const(x_model_23_dfl_ReshaNumDims));
            x_model_23_Slice_out = x_model_23_dfl_Resha(indices1024{:});

            % Slice:
            [indices1025, x_model_23_Slice_1_oNumDims] = DLT_CustomLayers.coder.ops.prepareSliceArgs(x_model_23_dfl_Resha, this.Vars.x_model_23_Mul_outpu, this.Vars.x_model_23_Mul_1_out, this.Vars.x_model_23_Constan_3, '', coder.const(x_model_23_dfl_ReshaNumDims));
            x_model_23_Slice_1_o = x_model_23_dfl_Resha(indices1025{:});

            % Sub:
            x_model_23_Sub_outpu = this.Vars.x_model_23_Constan_5 - x_model_23_Slice_out;
            x_model_23_Sub_outpuNumDims = max(this.NumDims.x_model_23_Constan_5, coder.const(x_model_23_Slice_outNumDims));

            % Add:
            x_model_23_Add_1_out = this.Vars.x_model_23_Constant_ + x_model_23_Slice_1_o;
            x_model_23_Add_1_outNumDims = max(this.NumDims.x_model_23_Constant_, coder.const(x_model_23_Slice_1_oNumDims));

            % Add:
            x_model_23_Add_2_out = x_model_23_Sub_outpu + x_model_23_Add_1_out;
            x_model_23_Add_2_outNumDims = max(coder.const(x_model_23_Sub_outpuNumDims), coder.const(x_model_23_Add_1_outNumDims));

            % Sub:
            x_model_23_Sub_1_out = x_model_23_Add_1_out - x_model_23_Sub_outpu;
            x_model_23_Sub_1_outNumDims = max(coder.const(x_model_23_Add_1_outNumDims), coder.const(x_model_23_Sub_outpuNumDims));

            % Div:
            x_model_23_Div_1_out = x_model_23_Add_2_out ./ this.Vars.x_model_23_Constan_1;
            x_model_23_Div_1_outNumDims = max(coder.const(x_model_23_Add_2_outNumDims), this.NumDims.x_model_23_Constan_1);

            % Concat:
            [x_model_23_Concat_4_, x_model_23_Concat_4_NumDims] = DLT_CustomLayers.coder.ops.onnxConcat(1, {x_model_23_Div_1_out, x_model_23_Sub_1_out}, [coder.const(x_model_23_Div_1_outNumDims), coder.const(x_model_23_Sub_1_outNumDims)]);

            % Mul:
            x_model_23_Mul_2_out = x_model_23_Concat_4_ .* this.Vars.x_model_23_Constan_2;
            x_model_23_Mul_2_outNumDims = max(coder.const(x_model_23_Concat_4_NumDims), this.NumDims.x_model_23_Constan_2);

            % Concat:
            [output0, output0NumDims] = DLT_CustomLayers.coder.ops.onnxConcat(1, {x_model_23_Mul_2_out, x_model_23_Sigmoid_o}, [coder.const(x_model_23_Mul_2_outNumDims), coder.const(x_model_23_Sigmoid_oNumDims)]);

            % Set graph output arguments
            output0NumDims1036 = coder.const(output0NumDims);

        end

    end

end