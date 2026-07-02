classdef MatMul_To_MatMulLayer1000 < nnet.layer.Layer & nnet.layer.Formattable
    % A custom layer auto-generated while importing an ONNX network.

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
        % Specify the path to the class that will be used for codegen
        function name = matlabCodegenRedirect(~)
            name = 'DLT_CustomLayers.coder.MatMul_To_MatMulLayer1000';
        end
    end


    methods
        function this = MatMul_To_MatMulLayer1000(name)
            this.Name = name;
            this.OutputNames = {'dense_3'};
        end

        function [dense_3] = predict(this, input_1)
            if isdlarray(input_1)
                input_1 = stripdims(input_1);
            end
            input_1NumDims = 2;
            input_1 = DLT_CustomLayers.ops.permuteInputVar(input_1, ['as-is'], 2);

            [dense_3, dense_3NumDims] = MatMul_To_MatMulGraph1000(this, input_1, input_1NumDims, false);
            dense_3 = DLT_CustomLayers.ops.permuteOutputVar(dense_3, [2 1], 2);

            dense_3 = dlarray(single(dense_3), 'CB');
        end

        function [dense_3] = forward(this, input_1)
            if isdlarray(input_1)
                input_1 = stripdims(input_1);
            end
            input_1NumDims = 2;
            input_1 = DLT_CustomLayers.ops.permuteInputVar(input_1, ['as-is'], 2);

            [dense_3, dense_3NumDims] = MatMul_To_MatMulGraph1000(this, input_1, input_1NumDims, true);
            dense_3 = DLT_CustomLayers.ops.permuteOutputVar(dense_3, [2 1], 2);

            dense_3 = dlarray(single(dense_3), 'CB');
        end

        function [dense_3, dense_3NumDims1001] = MatMul_To_MatMulGraph1000(this, input_1, input_1NumDims, Training)

            % Execute the operators:
            % MatMul:
            [mlp_dense_MatMul_0, mlp_dense_MatMul_0NumDims] = DLT_CustomLayers.ops.onnxMatMul(input_1, this.mlp_dense_MatMul_Rea, input_1NumDims, this.NumDims.mlp_dense_MatMul_Rea);

            % Tanh:
            mlp_dense_Tanh_0 = tanh(mlp_dense_MatMul_0);
            mlp_dense_Tanh_0NumDims = mlp_dense_MatMul_0NumDims;

            % MatMul:
            [mlp_dense_1_MatMul_0, mlp_dense_1_MatMul_0NumDims] = DLT_CustomLayers.ops.onnxMatMul(mlp_dense_Tanh_0, this.mlp_dense_1_MatMul_R, mlp_dense_Tanh_0NumDims, this.NumDims.mlp_dense_1_MatMul_R);

            % Tanh:
            mlp_dense_1_Tanh_0 = tanh(mlp_dense_1_MatMul_0);
            mlp_dense_1_Tanh_0NumDims = mlp_dense_1_MatMul_0NumDims;

            % MatMul:
            [mlp_dense_2_MatMul_0, mlp_dense_2_MatMul_0NumDims] = DLT_CustomLayers.ops.onnxMatMul(mlp_dense_1_Tanh_0, this.mlp_dense_2_MatMul_R, mlp_dense_1_Tanh_0NumDims, this.NumDims.mlp_dense_2_MatMul_R);

            % Tanh:
            mlp_dense_2_Tanh_0 = tanh(mlp_dense_2_MatMul_0);
            mlp_dense_2_Tanh_0NumDims = mlp_dense_2_MatMul_0NumDims;

            % MatMul:
            [dense_3, dense_3NumDims] = DLT_CustomLayers.ops.onnxMatMul(mlp_dense_2_Tanh_0, this.mlp_dense_3_MatMul_R, mlp_dense_2_Tanh_0NumDims, this.NumDims.mlp_dense_3_MatMul_R);

            % Set graph output arguments
            dense_3NumDims1001 = dense_3NumDims;

        end

    end

end