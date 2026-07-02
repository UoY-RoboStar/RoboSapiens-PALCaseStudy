classdef MatMul_To_MatMulLayer1000 < nnet.layer.Layer & nnet.layer.Formattable
    % A custom layer auto-generated while importing an ONNX network.
    %#codegen

    %#ok<*PROPLC>
    %#ok<*NBRAK>
    %#ok<*INUSL>
    %#ok<*VARARG>
    properties (Learnable)
        mlp_dense_MatMul_Rea
        mlp_dense_1_MatMul_R
        mlp_dense_2_MatMul_R
        mlp_dense_3_MatMul_R
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
            this_cg = DLT_CustomLayers.coder.MatMul_To_MatMulLayer1000(mlInstance);
        end
        function this_ml = matlabCodegenFromRedirected(cgInstance)
            this_ml = DLT_CustomLayers.MatMul_To_MatMulLayer1000(cgInstance.Name);
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
            this_ml.mlp_dense_MatMul_Rea = cgInstance.mlp_dense_MatMul_Rea;
            this_ml.mlp_dense_1_MatMul_R = cgInstance.mlp_dense_1_MatMul_R;
            this_ml.mlp_dense_2_MatMul_R = cgInstance.mlp_dense_2_MatMul_R;
            this_ml.mlp_dense_3_MatMul_R = cgInstance.mlp_dense_3_MatMul_R;
        end
    end

    methods
        function this = MatMul_To_MatMulLayer1000(mlInstance)
            this.Name = mlInstance.Name;
            this.OutputNames = {'dense_3'};
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
            this.mlp_dense_MatMul_Rea = mlInstance.mlp_dense_MatMul_Rea;
            this.mlp_dense_1_MatMul_R = mlInstance.mlp_dense_1_MatMul_R;
            this.mlp_dense_2_MatMul_R = mlInstance.mlp_dense_2_MatMul_R;
            this.mlp_dense_3_MatMul_R = mlInstance.mlp_dense_3_MatMul_R;
        end

        function [dense_3] = predict(this, input_1__)
            if isdlarray(input_1__)
                input_1_ = stripdims(input_1__);
            else
                input_1_ = input_1__;
            end
            input_1NumDims = 2;
            input_1 = DLT_CustomLayers.coder.ops.permuteInputVar(input_1_, ['as-is'], 2);

            [dense_3__, dense_3NumDims__] = MatMul_To_MatMulGraph1000(this, input_1, input_1NumDims, false);
            dense_3_ = DLT_CustomLayers.coder.ops.permuteOutputVar(dense_3__, [2 1], 2);

            dense_3 = dlarray(single(dense_3_), 'CB');
        end

        function [dense_3, dense_3NumDims1001] = MatMul_To_MatMulGraph1000(this, input_1, input_1NumDims, Training)

            % Execute the operators:
            % MatMul:
            [mlp_dense_MatMul_0, mlp_dense_MatMul_0NumDims] = DLT_CustomLayers.coder.ops.onnxMatMul(input_1, this.mlp_dense_MatMul_Rea, coder.const(input_1NumDims), this.NumDims.mlp_dense_MatMul_Rea);

            % Tanh:
            mlp_dense_Tanh_0 = tanh(mlp_dense_MatMul_0);
            mlp_dense_Tanh_0NumDims = coder.const(mlp_dense_MatMul_0NumDims);

            % MatMul:
            [mlp_dense_1_MatMul_0, mlp_dense_1_MatMul_0NumDims] = DLT_CustomLayers.coder.ops.onnxMatMul(mlp_dense_Tanh_0, this.mlp_dense_1_MatMul_R, coder.const(mlp_dense_Tanh_0NumDims), this.NumDims.mlp_dense_1_MatMul_R);

            % Tanh:
            mlp_dense_1_Tanh_0 = tanh(mlp_dense_1_MatMul_0);
            mlp_dense_1_Tanh_0NumDims = coder.const(mlp_dense_1_MatMul_0NumDims);

            % MatMul:
            [mlp_dense_2_MatMul_0, mlp_dense_2_MatMul_0NumDims] = DLT_CustomLayers.coder.ops.onnxMatMul(mlp_dense_1_Tanh_0, this.mlp_dense_2_MatMul_R, coder.const(mlp_dense_1_Tanh_0NumDims), this.NumDims.mlp_dense_2_MatMul_R);

            % Tanh:
            mlp_dense_2_Tanh_0 = tanh(mlp_dense_2_MatMul_0);
            mlp_dense_2_Tanh_0NumDims = coder.const(mlp_dense_2_MatMul_0NumDims);

            % MatMul:
            [dense_3, dense_3NumDims] = DLT_CustomLayers.coder.ops.onnxMatMul(mlp_dense_2_Tanh_0, this.mlp_dense_3_MatMul_R, coder.const(mlp_dense_2_Tanh_0NumDims), this.NumDims.mlp_dense_3_MatMul_R);

            % Set graph output arguments
            dense_3NumDims1001 = coder.const(dense_3NumDims);

        end

    end

end