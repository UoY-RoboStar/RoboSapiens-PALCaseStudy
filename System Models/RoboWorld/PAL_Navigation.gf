--# -path=.:../../../experiments/pal-presentation-traces/roboworld-validation/gf-rgl/src/abstract:../../../experiments/pal-presentation-traces/roboworld-validation/gf-rgl/src/english:../../../experiments/pal-presentation-traces/roboworld-validation/gf-rgl/src/common:../../../experiments/pal-presentation-traces/roboworld-validation/gf-rgl/src/api:../../../experiments/pal-presentation-traces/roboworld-validation/gf-rgl/src/prelude
abstract PAL_Navigation = RoboWorld ** {
  fun _av_A : A;
  fun _lv_A : A;
  fun _logical_A : A;
  fun _stationary_A : A;
  fun _cylindrical_A : A;
  fun _constant_A : A;
  fun _base_N : N;
  fun _roll_N : N;
  fun _pitch_N : N;
  fun _measurement_N : N;
  fun _period_N : N;
  fun _reading_N : N;
  fun _wall_N : N;
  fun _yaw_N : N;
  fun _radius_N : N;
  fun _box1_N : N;
  fun _box2_N : N;
  fun _cylinder1_N : N;
  fun _cylinder2_N : N;
  fun _south_wall_N : N;
  fun _west_wall_N : N;
  fun _north_wall_N : N;
  fun _east_wall_N : N;
  fun _mission_N : N;
  fun _target_N : N;
  fun _angle_N : N;
  fun _bearing_N : N;
  fun _rad_Unit : Unit;
}
