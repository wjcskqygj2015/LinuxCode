export boost='
-lboost_date_time
-lboost_filesystem
-lboost_graph
-lboost_math_c99
-lboost_math_c99f
-lboost_math_c99l
-lboost_math_tr1
-lboost_math_tr1f
-lboost_math_tr1l
-lboost_prg_exec_monitor
-lboost_program_options
-lboost_regex
-lboost_serialization
-lboost_signals
-lboost_system
-lboost_unit_test_framework
-lboost_wave
-lboost_wserialization'

g++ -o $1 $2 $1.cpp $boost 

export boost=''

echo 'Finished'
