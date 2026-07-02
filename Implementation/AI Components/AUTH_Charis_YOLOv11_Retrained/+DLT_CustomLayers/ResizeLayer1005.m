classdef ResizeLayer1005 < nnet.layer.Layer & nnet.layer.Formattable
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
            name = 'DLT_CustomLayers.coder.ResizeLayer1005';
        end
    end


    methods
        function this = ResizeLayer1005(name)
            this.Name = name;
            this.OutputNames = {'x_model_11_Resize_ou'};
        end

        function [x_model_11_Resize_ou] = predict(this, x_model_10_cv2_act_M)
            if isdlarray(x_model_10_cv2_act_M)
                x_model_10_cv2_act_M = stripdims(x_model_10_cv2_act_M);
            end
            x_model_10_cv2_act_MNumDims = 4;
            x_model_10_cv2_act_M = DLT_CustomLayers.ops.permuteInputVar(x_model_10_cv2_act_M, [4 3 1 2], 4);

            [x_model_11_Resize_ou, x_model_11_Resize_ouNumDims] = ResizeGraph1015(this, x_model_10_cv2_act_M, x_model_10_cv2_act_MNumDims, false);
            x_model_11_Resize_ou = DLT_CustomLayers.ops.permuteOutputVar(x_model_11_Resize_ou, [3 4 2 1], 4);

            x_model_11_Resize_ou = dlarray(single(x_model_11_Resize_ou), 'SSCB');
        end

        function [x_model_11_Resize_ou] = forward(this, x_model_10_cv2_act_M)
            if isdlarray(x_model_10_cv2_act_M)
                x_model_10_cv2_act_M = stripdims(x_model_10_cv2_act_M);
            end
            x_model_10_cv2_act_MNumDims = 4;
            x_model_10_cv2_act_M = DLT_CustomLayers.ops.permuteInputVar(x_model_10_cv2_act_M, [4 3 1 2], 4);

            [x_model_11_Resize_ou, x_model_11_Resize_ouNumDims] = ResizeGraph1015(this, x_model_10_cv2_act_M, x_model_10_cv2_act_MNumDims, true);
            x_model_11_Resize_ou = DLT_CustomLayers.ops.permuteOutputVar(x_model_11_Resize_ou, [3 4 2 1], 4);

            x_model_11_Resize_ou = dlarray(single(x_model_11_Resize_ou), 'SSCB');
        end

        function [x_model_11_Resize_ou, x_model_11_Resize_ouNumDims1016] = ResizeGraph1015(this, x_model_10_cv2_act_M, x_model_10_cv2_act_MNumDims, Training)

            % Execute the operators:
            % Resize:
            [DLTScales, DLTSizes, dataFormat, Method, GeometricTransformMode, NearestRoundingMode, x_model_11_Resize_ouNumDims] = DLT_CustomLayers.ops.prepareResize11Args(dlarray([]), this.Vars.x_model_11_Constant_, dlarray([]), "asymmetric", "nearest", "floor", x_model_10_cv2_act_MNumDims);
            if isempty(DLTScales)
                x_model_11_Resize_ou = dlresize(x_model_10_cv2_act_M, 'OutputSize', DLTSizes, 'DataFormat', dataFormat, 'Method', Method, 'GeometricTransformMode', GeometricTransformMode, 'NearestRoundingMode', NearestRoundingMode);
            else
                x_model_11_Resize_ou = dlresize(x_model_10_cv2_act_M, 'Scale', DLTScales, 'DataFormat', dataFormat, 'Method', Method, 'GeometricTransformMode', GeometricTransformMode, 'NearestRoundingMode', NearestRoundingMode);
            end

            % Set graph output arguments
            x_model_11_Resize_ouNumDims1016 = x_model_11_Resize_ouNumDims;

        end

    end

end