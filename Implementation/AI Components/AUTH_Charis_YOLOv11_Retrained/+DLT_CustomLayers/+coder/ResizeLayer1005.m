classdef ResizeLayer1005 < nnet.layer.Layer & nnet.layer.Formattable
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
            this_cg = DLT_CustomLayers.coder.ResizeLayer1005(mlInstance);
        end
        function this_ml = matlabCodegenFromRedirected(cgInstance)
            this_ml = DLT_CustomLayers.ResizeLayer1005(cgInstance.Name);
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
        function this = ResizeLayer1005(mlInstance)
            this.Name = mlInstance.Name;
            this.OutputNames = {'x_model_11_Resize_ou'};
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

        function [x_model_11_Resize_ou] = predict(this, x_model_10_cv2_act_M__)
            if isdlarray(x_model_10_cv2_act_M__)
                x_model_10_cv2_act_M_ = stripdims(x_model_10_cv2_act_M__);
            else
                x_model_10_cv2_act_M_ = x_model_10_cv2_act_M__;
            end
            x_model_10_cv2_act_MNumDims = 4;
            x_model_10_cv2_act_M = DLT_CustomLayers.coder.ops.permuteInputVar(x_model_10_cv2_act_M_, [4 3 1 2], 4);

            [x_model_11_Resize_ou__, x_model_11_Resize_ouNumDims__] = ResizeGraph1015(this, x_model_10_cv2_act_M, x_model_10_cv2_act_MNumDims, false);
            x_model_11_Resize_ou_ = DLT_CustomLayers.coder.ops.permuteOutputVar(x_model_11_Resize_ou__, [3 4 2 1], 4);

            x_model_11_Resize_ou = dlarray(single(x_model_11_Resize_ou_), 'SSCB');
        end

        function [x_model_11_Resize_ou, x_model_11_Resize_ouNumDims1016] = ResizeGraph1015(this, x_model_10_cv2_act_M, x_model_10_cv2_act_MNumDims, Training)

            % Execute the operators:
            % Resize:
            [DLTScales1000, DLTSizes1001, dataFormat1002, Method1003, GeometricTransformMode1004, NearestRoundingMode1005, x_model_11_Resize_ouNumDims] = DLT_CustomLayers.coder.ops.prepareResize11Args([], this.Vars.x_model_11_Constant_, [], "asymmetric", "nearest", "floor", coder.const(x_model_10_cv2_act_MNumDims));
            X1006 = dlarray(single(DLT_CustomLayers.coder.ops.extractIfDlarray(x_model_10_cv2_act_M)));
            if isempty(DLTScales1000)
                Y1007 = dlresize(X1006, 'OutputSize', DLTSizes1001(1:end-1), 'DataFormat', dataFormat1002, 'Method', Method1003, 'GeometricTransformMode', GeometricTransformMode1004, 'NearestRoundingMode', NearestRoundingMode1005);
            else
                Y1007 = dlresize(X1006, 'Scale', DLTScales1000(1:end-1), 'DataFormat', dataFormat1002, 'Method', Method1003, 'GeometricTransformMode', GeometricTransformMode1004, 'NearestRoundingMode', NearestRoundingMode1005);
            end
            x_model_11_Resize_ou = DLT_CustomLayers.coder.ops.extractIfDlarray(Y1007);

            % Set graph output arguments
            x_model_11_Resize_ouNumDims1016 = coder.const(x_model_11_Resize_ouNumDims);

        end

    end

end