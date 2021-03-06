# Fused local position in NED.

uint64 timestamp			# time since system start (microseconds)

bool xy_valid				# true if x and y are valid
bool z_valid				# true if z is valid
bool v_xy_valid				# true if vy and vy are valid
bool v_z_valid				# true if vz is valid

## ========================== Local frame ==============================
# Position in local NED frame
float32 x				# North position in NED earth-fixed frame, (metres)
float32 y				# East position in NED earth-fixed frame, (metres)
float32 z				# Down position (negative altitude) in NED earth-fixed frame, (metres)

# Position reset delta
float32[2] delta_xy
uint8 xy_reset_counter

float32 delta_z
uint8 z_reset_counter

# Velocity in NED frame
float32 vx 				# North velocity in NED earth-fixed frame, (metres/sec)
float32 vy				# East velocity in NED earth-fixed frame, (metres/sec)
float32 vz				# Down velocity in NED earth-fixed frame, (metres/sec)
float32 z_deriv				# Down position time derivative in NED earth-fixed frame, (metres/sec)
# Velocity in Body frame
float32 vf 				# Forward velocity in Body frame, (metres/sec)
float32 vr				# Right velocity in Body frame, (metres/sec)
float32 vd				# Down velocity in Body frame, (metres/sec)

# Velocity reset delta
float32[2] delta_vxy
uint8 vxy_reset_counter

float32 delta_vz
uint8 vz_reset_counter

# Acceleration in NED frame
float32 ax        # North velocity derivative in NED earth-fixed frame, (metres/sec^2)
float32 ay        # East velocity derivative in NED earth-fixed frame, (metres/sec^2)
float32 az        # Down velocity derivative in NED earth-fixed frame, (metres/sec^2)
# Acceleration in Body frame
float32 af        # Forward velocity derivative in Body frame, (metres/sec^2)
float32 ar        # Right velocity derivative in Body frame, (metres/sec^2)
float32 ad        # Down velocity derivative in Body frame, (metres/sec^2)

float32 heading				# Euler yaw angle transforming the tangent plane relative to NED earth-fixed frame, -PI..+PI,  (radians)
float32 delta_heading
uint8 heading_reset_counter

## ========================== Global frame ==============================
# Position of reference point (local NED frame origin) in global (GPS / WGS84) frame
bool xy_global				# true if position (x, y) has a valid global reference (ref_lat, ref_lon)
bool z_global				# true if z has a valid global reference (ref_alt)
uint64 ref_timestamp			# Time when reference position was set since system start, (microseconds)
float64 ref_lat				# Reference point latitude, (degrees)
float64 ref_lon				# Reference point longitude, (degrees)
float32 ref_alt				# Reference altitude AMSL, (metres)

# Distance to surface
float32 dist_bottom			# Distance from from bottom surface to ground, (metres)
bool dist_bottom_valid			# true if distance to bottom surface is valid

float32 eph				# Standard deviation of horizontal position error, (metres)
float32 epv				# Standard deviation of vertical position error, (metres)
float32 evh				# Standard deviation of horizontal velocity error, (metres/sec)
float32 evv				# Standard deviation of horizontal velocity error, (metres/sec)

# estimator specified vehicle limits
float32 vxy_max				# maximum horizontal speed - set to 0 when limiting not required (meters/sec)
float32 vz_max				# maximum vertical speed - set to 0 when limiting not required (meters/sec)
float32 hagl_min			# minimum height above ground level - set to 0 when limiting not required (meters)
float32 hagl_max			# maximum height above ground level - set to 0 when limiting not required (meters)

# TOPICS vehicle_local_position vehicle_local_position_groundtruth
