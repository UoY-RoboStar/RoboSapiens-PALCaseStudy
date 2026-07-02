classdef Reshape_To_ReshapeLayer1013 < nnet.layer.Layer & nnet.layer.Formattable
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
            this_cg = DLT_CustomLayers.coder.Reshape_To_ReshapeLayer1013(mlInstance);
        end
        function this_ml = matlabCodegenFromRedirected(cgInstance)
            this_ml = DLT_CustomLayers.Reshape_To_ReshapeLayer1013(cgInstance.Name);
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
        function this = Reshape_To_ReshapeLayer1013(mlInstance)
            this.Name = mlInstance.Name;
            this.NumOutputs = 7;
            this.OutputNames = {'x_model_10_m_m_0__11', 'x_model_10_m_m_0__12', 'x_model_10_m_m_0_a_8', 'x_model_10_m_m_0__13', 'x_model_10_m_m_0__11NumDims', 'x_model_10_m_m_0__12NumDims', 'x_model_10_m_m_0__13NumDims'};
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

        function [x_model_10_m_m_0__11, x_model_10_m_m_0__12, x_model_10_m_m_0_a_8, x_model_10_m_m_0__13, x_model_10_m_m_0__11NumDims, x_model_10_m_m_0__12NumDims, x_model_10_m_m_0__13NumDims] = predict(this, x_model_10_m_m_0__18__)
            if isdlarray(x_model_10_m_m_0__18__)
                x_model_10_m_m_0__18_ = stripdims(x_model_10_m_m_0__18__);
            else
                x_model_10_m_m_0__18_ = x_model_10_m_m_0__18__;
            end
            x_model_10_m_m_0__18NumDims = 4;
            x_model_10_m_m_0__18 = DLT_CustomLayers.coder.ops.permuteInputVar(x_model_10_m_m_0__18_, [4 3 1 2], 4);

            [x_model_10_m_m_0__11__, x_model_10_m_m_0__12__, x_model_10_m_m_0_a_8__, x_model_10_m_m_0__13__, x_model_10_m_m_0__11NumDims__, x_model_10_m_m_0__12NumDims__, x_model_10_m_m_0_a_8NumDims__, x_model_10_m_m_0__13NumDims__] = Reshape_To_ReshapeGraph1037(this, x_model_10_m_m_0__18, x_model_10_m_m_0__18NumDims, false);
            x_model_10_m_m_0__11_ = DLT_CustomLayers.coder.ops.permuteOutputVar(x_model_10_m_m_0__11__, ['as-is'], 0);
            x_model_10_m_m_0__12_ = DLT_CustomLayers.coder.ops.permuteOutputVar(x_model_10_m_m_0__12__, ['as-is'], 0);
            x_model_10_m_m_0_a_8_ = DLT_CustomLayers.coder.ops.permuteOutputVar(x_model_10_m_m_0_a_8__, [3 4 2 1], 4);
            x_model_10_m_m_0__13_ = DLT_CustomLayers.coder.ops.permuteOutputVar(x_model_10_m_m_0__13__, ['as-is'], 0);

            x_model_10_m_m_0__11 = dlarray(single(x_model_10_m_m_0__11_), repmat('U', 1, max(2, coder.const(x_model_10_m_m_0__11NumDims__))));
            x_model_10_m_m_0__12 = dlarray(single(x_model_10_m_m_0__12_), repmat('U', 1, max(2, coder.const(x_model_10_m_m_0__12NumDims__))));
            x_model_10_m_m_0_a_8 = dlarray(single(x_model_10_m_m_0_a_8_), 'SSCB');
            x_model_10_m_m_0__13 = dlarray(single(x_model_10_m_m_0__13_), repmat('U', 1, max(2, coder.const(x_model_10_m_m_0__13NumDims__))));
            x_model_10_m_m_0__11NumDims = dlarray(ones(1,x_model_10_m_m_0__11NumDims__,'like',x_model_10_m_m_0__11), 'UU');
            x_model_10_m_m_0__12NumDims = dlarray(ones(1,x_model_10_m_m_0__12NumDims__,'like',x_model_10_m_m_0__11), 'UU');
            x_model_10_m_m_0__13NumDims = dlarray(ones(1,x_model_10_m_m_0__13NumDims__,'like',x_model_10_m_m_0__11), 'UU');
        end

        function [x_model_10_m_m_0__11, x_model_10_m_m_0__12, x_model_10_m_m_0_a_8, x_model_10_m_m_0__13, x_model_10_m_m_0__11NumDims1038, x_model_10_m_m_0__12NumDims1039, x_model_10_m_m_0_a_8NumDims1040, x_model_10_m_m_0__13NumDims1041] = Reshape_To_ReshapeGraph1037(this, x_model_10_m_m_0__18, x_model_10_m_m_0__18NumDims, Training)

            % Execute the operators:
            % Reshape:
            [shape1026, x_model_10_m_m_0_a_9NumDims] = DLT_CustomLayers.coder.ops.prepareReshapeArgs(x_model_10_m_m_0__18, this.Vars.x_model_10_m_m_0_a_3, coder.const(x_model_10_m_m_0__18NumDims), 0);
            x_model_10_m_m_0_a_9 = reshape(x_model_10_m_m_0__18, shape1026{:});

            % Split:
            [x_model_10_m_m_0__11, x_model_10_m_m_0__12, x_model_10_m_m_0__13, x_model_10_m_m_0__11NumDims, x_model_10_m_m_0__12NumDims, x_model_10_m_m_0__13NumDims] = DLT_CustomLayers.coder.ops.onnxSplit13(x_model_10_m_m_0_a_9, 2, this.Vars.onnx__Split_326, 3, coder.const(x_model_10_m_m_0_a_9NumDims));

            % Reshape:
            [shape1027, x_model_10_m_m_0_a_8NumDims] = DLT_CustomLayers.coder.ops.prepareReshapeArgs(x_model_10_m_m_0__13, this.Vars.x_model_10_m_m_0_a_2, coder.const(x_model_10_m_m_0__13NumDims), 0);
            x_model_10_m_m_0_a_8 = reshape(x_model_10_m_m_0__13, shape1027{:});

            % Set graph output arguments
            x_model_10_m_m_0__11NumDims1038 = coder.const(x_model_10_m_m_0__11NumDims);
            x_model_10_m_m_0__12NumDims1039 = coder.const(x_model_10_m_m_0__12NumDims);
            x_model_10_m_m_0_a_8NumDims1040 = coder.const(x_model_10_m_m_0_a_8NumDims);
            x_model_10_m_m_0__13NumDims1041 = coder.const(coder.const(x_model_10_m_m_0__13NumDims));

        end

    end

end