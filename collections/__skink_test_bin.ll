; ModuleID = 'skink_program'
source_filename = "skink_program"

declare i32 @printf(i8*, ...)
declare i32 @sprintf(i8*, i8*, ...)
declare i32 @snprintf(i8*, i64, i8*, ...)
declare i32 @puts(i8*)
declare i64 @strlen(i8*)
declare i8* @strcpy(i8*, i8*)
declare i8* @strcat(i8*, i8*)
declare i32 @strcmp(i8*, i8*)
declare double @Skink_vec_dot(i8*, i8*)
declare double @Skink_vec_norm(i8*)
declare i32 @Skink_chan_len(i8*)
declare i8* @malloc(i64)
declare void @free(i8*)
declare void @exit(i32)
declare void @llvm.memcpy.p0i8.p0i8.i64(i8*, i8*, i64, i1)
declare void @llvm.memset.p0i8.i64(i8*, i8, i64, i1)
declare double @pow(double, double)
declare double @sin(double)
declare double @cos(double)
declare double @tan(double)
declare double @sqrt(double)

declare i8* @Skink_rc_alloc(i64)
declare i8* @Skink_rc_alloc_typed(i64, i8*)
declare i8* @Skink_rc_retain(i8*)
declare void @Skink_rc_release(i8*)
declare void @Skink_rc_release_ptr(i8*)
declare void @Skink_template_box_dtor(i8*)
declare void @Skink_array_dtor_sized(i8*, i64, i8*)
declare i64 @Skink_rc_count(i8*)
declare i8* @Skink_slice_ensure(i8*, i64)
declare i64 @Skink_slice_len(i8*)
declare i64 @Skink_slice_cap(i8*)
declare i8* @Skink_slice_data(i8*)
declare i8* @Skink_slice_base(i8*)
declare i8* @Skink_slice_hdr(i8*, i64, i64, i8*)
declare i8* @Skink_slice_sub(i8*, i64, i64, i64)
declare i8* @Skink_str_from_slice(i8*)
declare i64 @Skink_arr_count(i8*)
declare i64 @Skink_rc_capacity(i8*)
%hdr.slice = type { i8*, i64, i64, i8* }
declare i32 @Skink_str_hash(i8*)
declare void @Skink_panic(i8*)
declare void @Skink_bounds_check(i32, i32, i32)
declare i32 @setjmp(i8*) returns_twice
declare i32 @Skink_panic_push_handler(i8*)
declare void @Skink_panic_pop_handler()
declare i32 @Skink_panic_pending()
declare i8* @Skink_panic_recover()
declare void @Skink_panic_reraise()
declare i8* @Skink_chan_make(i32, i32)
declare void @Skink_chan_close(i8*)
declare void @Skink_chan_send(i8*, i8*)
declare i8* @Skink_chan_recv(i8*)
declare i32 @Skink_chan_select(i32, i8**, i32*, i8**, i8**, i32)
declare void @Skink_spawn(i8*, i8*, i8*)
declare i8* @Skink_future_make()
declare void @Skink_future_set(i8*, i8*)
declare i8* @Skink_future_get(i8*)
declare void @Skink_free(i8*)

%struct.str_Builder = type { i8*, i32, i32 }
declare i8* @Skink_raw_alloc(i64)
declare i8* @Skink_mem_realloc(i8*, i64)
declare i32 @Skink_mem_free(i8*)
declare i8* @Skink_raw_calloc(i64, i64)
declare i8* @memcpy(i8*, i8*, i32)
declare i8* @memset(i8*, i32, i32)
declare i8* @strstr(i8*, i8*)
declare i8* @strncpy(i8*, i8*, i32)
declare i8* @strchr(i8*, i32)
declare i32 @tolower(i32)
declare i32 @toupper(i32)
declare i8* @Skink_mem_alloc(i64)
declare double @strtod(i8*, i8*)
declare i32 @Skink_test_failnow(i8*)
declare i64 @Skink_rc_detect_cycles()
declare i64 @Skink_rc_report_cycles()
declare i64 @Skink_rc_live_objects()
declare i64 @Skink_rc_live_bytes()
declare i64 @Skink_rc_peak_bytes()
@testing.failed = global i1 false
@testing.testCount = global i32 0
@testing.passCount = global i32 0
@testing.failCount = global i32 0
%map_i8Ptr__i32 = type { i8**, i32*, i8*, i32, i32 }
@skink_argc = global i32 0
@skink_argv = global i8** null

@str.1 = private global [1 x i8] c"\00"
@str.2 = private global [1 x i8] c"\00"
@str.3 = private global [1 x i8] c"\00"
@str.4 = private global [1 x i8] c"\00"
@str.5 = private global [1 x i8] c"\00"
@str.6 = private global [1 x i8] c"\00"
@str.7 = private global [1 x i8] c"\00"
@str.8 = private global [1 x i8] c"\00"
@str.9 = private global [1 x i8] c"\00"
@str.10 = private global [1 x i8] c"\00"
@str.11 = private global [1 x i8] c"\00"
@str.12 = private global [1 x i8] c"\00"
@str.13 = private global [1 x i8] c"\00"
@str.14 = private global [1 x i8] c"\00"
@str.15 = private global [1 x i8] c"\00"
@str.16 = private global [1 x i8] c"\00"
@str.17 = private global [1 x i8] c"\00"
@str.18 = private global [1 x i8] c"\00"
@str.19 = private global [1 x i8] c"\00"
@str.20 = private global [1 x i8] c"\00"
@str.21 = private global [1 x i8] c"\00"
@str.22 = private global [1 x i8] c"\00"
@str.23 = private global [1 x i8] c"\00"
@str.24 = private global [1 x i8] c"\00"
@str.25 = private global [1 x i8] c"\00"
@str.26 = private global [1 x i8] c"\00"
@str.27 = private global [1 x i8] c"\00"
@str.28 = private global [1 x i8] c"\00"
@str.29 = private global [1 x i8] c"\00"
@str.30 = private global [1 x i8] c"\00"
@str.31 = private global [1 x i8] c"\00"
@str.32 = private global [1 x i8] c"\00"
@str.33 = private global [1 x i8] c"\00"
@str.34 = private global [1 x i8] c"\00"
@str.35 = private global [1 x i8] c"\00"
@str.36 = private global [1 x i8] c"\00"
@str.37 = private global [1 x i8] c"\00"
@str.38 = private global [1 x i8] c"\00"
@str.39 = private global [1 x i8] c"\00"
@str.40 = private global [1 x i8] c"\00"
@str.41 = private global [1 x i8] c"\00"
@str.42 = private global [1 x i8] c"\00"
@str.43 = private global [1 x i8] c"\00"
@str.44 = private global [1 x i8] c"\00"
@str.45 = private global [23 x i8] c"integer divide by zero\00"
@str.46 = private global [1 x i8] c"\00"
@str.47 = private global [1 x i8] c"\00"
@str.48 = private global [23 x i8] c"integer divide by zero\00"
@str.49 = private global [23 x i8] c"integer divide by zero\00"
@str.50 = private global [23 x i8] c"integer divide by zero\00"
@str.51 = private global [23 x i8] c"integer divide by zero\00"
@str.52 = private global [23 x i8] c"integer divide by zero\00"
@str.53 = private global [23 x i8] c"integer divide by zero\00"
@str.54 = private global [23 x i8] c"integer divide by zero\00"
@str.55 = private global [5 x i8] c"true\00"
@str.56 = private global [2 x i8] c"1\00"
@str.57 = private global [6 x i8] c"false\00"
@str.58 = private global [2 x i8] c"0\00"
@str.59 = private global [7 x i8] c"FAIL: \00"
@str.60 = private global [1 x i8] c"\00"
@str.61 = private global [1 x i8] c"\00"
@str.62 = private global [3 x i8] c"%s\00"
@str.63 = private global [15 x i8] c"FailNow called\00"
@str.64 = private global [20 x i8] c"AssertTrue failed: \00"
@str.65 = private global [1 x i8] c"\00"
@str.66 = private global [1 x i8] c"\00"
@str.67 = private global [21 x i8] c"AssertFalse failed: \00"
@str.68 = private global [1 x i8] c"\00"
@str.69 = private global [1 x i8] c"\00"
@str.70 = private global [37 x i8] c"AssertEqualString failed: expected \22\00"
@str.71 = private global [1 x i8] c"\00"
@str.72 = private global [1 x i8] c"\00"
@str.73 = private global [9 x i8] c"\22, got \22\00"
@str.74 = private global [1 x i8] c"\00"
@str.75 = private global [1 x i8] c"\00"
@str.76 = private global [1 x i8] c"\00"
@str.77 = private global [1 x i8] c"\00"
@str.78 = private global [5 x i8] c"\22 - \00"
@str.79 = private global [1 x i8] c"\00"
@str.80 = private global [1 x i8] c"\00"
@str.81 = private global [1 x i8] c"\00"
@str.82 = private global [1 x i8] c"\00"
@str.83 = private global [33 x i8] c"AssertEqualInt failed: expected \00"
@str.84 = private global [1 x i8] c"\00"
@str.85 = private global [1 x i8] c"\00"
@str.86 = private global [7 x i8] c", got \00"
@str.87 = private global [1 x i8] c"\00"
@str.88 = private global [1 x i8] c"\00"
@str.89 = private global [1 x i8] c"\00"
@str.90 = private global [1 x i8] c"\00"
@str.91 = private global [4 x i8] c" - \00"
@str.92 = private global [1 x i8] c"\00"
@str.93 = private global [1 x i8] c"\00"
@str.94 = private global [1 x i8] c"\00"
@str.95 = private global [1 x i8] c"\00"
@str.96 = private global [35 x i8] c"AssertEqualFloat failed: expected \00"
@str.97 = private global [1 x i8] c"\00"
@str.98 = private global [1 x i8] c"\00"
@str.99 = private global [7 x i8] c", got \00"
@str.100 = private global [1 x i8] c"\00"
@str.101 = private global [1 x i8] c"\00"
@str.102 = private global [1 x i8] c"\00"
@str.103 = private global [1 x i8] c"\00"
@str.104 = private global [4 x i8] c" - \00"
@str.105 = private global [1 x i8] c"\00"
@str.106 = private global [1 x i8] c"\00"
@str.107 = private global [1 x i8] c"\00"
@str.108 = private global [1 x i8] c"\00"
@str.109 = private global [26 x i8] c"AssertEqualBool failed - \00"
@str.110 = private global [1 x i8] c"\00"
@str.111 = private global [1 x i8] c"\00"
@str.112 = private global [53 x i8] c"AssertNotEqualString failed: values should differ - \00"
@str.113 = private global [1 x i8] c"\00"
@str.114 = private global [1 x i8] c"\00"
@str.115 = private global [50 x i8] c"AssertNotEqualInt failed: values should differ - \00"
@str.116 = private global [1 x i8] c"\00"
@str.117 = private global [1 x i8] c"\00"
@str.118 = private global [1 x i8] c"\00"
@str.119 = private global [1 x i8] c"\00"
@str.120 = private global [41 x i8] c"AssertNil failed: pointer is not null - \00"
@str.121 = private global [1 x i8] c"\00"
@str.122 = private global [1 x i8] c"\00"
@str.123 = private global [1 x i8] c"\00"
@str.124 = private global [1 x i8] c"\00"
@str.125 = private global [40 x i8] c"AssertNotNil failed: pointer is null - \00"
@str.126 = private global [1 x i8] c"\00"
@str.127 = private global [1 x i8] c"\00"
@str.128 = private global [25 x i8] c"AssertContains failed: \22\00"
@str.129 = private global [1 x i8] c"\00"
@str.130 = private global [1 x i8] c"\00"
@str.131 = private global [21 x i8] c"\22 does not contain \22\00"
@str.132 = private global [1 x i8] c"\00"
@str.133 = private global [1 x i8] c"\00"
@str.134 = private global [1 x i8] c"\00"
@str.135 = private global [1 x i8] c"\00"
@str.136 = private global [5 x i8] c"\22 - \00"
@str.137 = private global [1 x i8] c"\00"
@str.138 = private global [1 x i8] c"\00"
@str.139 = private global [1 x i8] c"\00"
@str.140 = private global [1 x i8] c"\00"
@str.141 = private global [28 x i8] c"AssertLen failed: expected \00"
@str.142 = private global [1 x i8] c"\00"
@str.143 = private global [1 x i8] c"\00"
@str.144 = private global [7 x i8] c", got \00"
@str.145 = private global [1 x i8] c"\00"
@str.146 = private global [1 x i8] c"\00"
@str.147 = private global [1 x i8] c"\00"
@str.148 = private global [1 x i8] c"\00"
@str.149 = private global [4 x i8] c" - \00"
@str.150 = private global [1 x i8] c"\00"
@str.151 = private global [1 x i8] c"\00"
@str.152 = private global [1 x i8] c"\00"
@str.153 = private global [1 x i8] c"\00"
@str.154 = private global [41 x i8] c"AssertNoError failed: unexpected error: \00"
@str.155 = private global [1 x i8] c"\00"
@str.156 = private global [1 x i8] c"\00"
@str.157 = private global [4 x i8] c" - \00"
@str.158 = private global [1 x i8] c"\00"
@str.159 = private global [1 x i8] c"\00"
@str.160 = private global [1 x i8] c"\00"
@str.161 = private global [1 x i8] c"\00"
@str.162 = private global [51 x i8] c"AssertError failed: expected error but got none - \00"
@str.163 = private global [1 x i8] c"\00"
@str.164 = private global [1 x i8] c"\00"
@str.165 = private global [6 x i8] c"apple\00"
@str.166 = private global [31 x i8] c"assignment to entry in nil map\00"
@str.167 = private global [7 x i8] c"banana\00"
@str.168 = private global [31 x i8] c"assignment to entry in nil map\00"
@str.169 = private global [7 x i8] c"cherry\00"
@str.170 = private global [31 x i8] c"assignment to entry in nil map\00"
@str.171 = private global [6 x i8] c"apple\00"
@str.172 = private global [9 x i8] c"Lookup: \00"
@str.173 = private global [3 x i8] c"%d\00"
@str.174 = private global [1 x i8] c"\00"
@str.175 = private global [1 x i8] c"\00"
@str.176 = private global [3 x i8] c"%s\00"
@str.177 = private global [6 x i8] c"apple\00"
@str.178 = private global [29 x i8] c"lookup('apple') should be 83\00"
@str.179 = private global [12 x i8] c"nonexistent\00"
@str.180 = private global [34 x i8] c"lookup('nonexistent') should be 0\00"
define i8* @libc.malloc(i32 %arg0) {
entry:
  %r1 = alloca i32
  store i32 0, i32* %r1
  %r5 = alloca i8*
  store i8* null, i8** %r5

  store i32 %arg0, i32* %r1
  %r2 = load i32, i32* %r1
  %r3 = sext i32 %r2 to i64

  %r4 = call i8* @Skink_raw_alloc(i64 %r3)
  store i8* %r4, i8** %r5
  call i8* @Skink_rc_retain(i8* %r4)

  %r6 = load i8*, i8** %r5
  call void @Skink_rc_release(i8* %r6)

  ret i8* %r4

}
define i8* @libc.realloc(i8* %arg0, i32 %arg1) {
entry:
  %r1 = alloca i8*
  store i8* null, i8** %r1
  %r2 = alloca i32
  store i32 0, i32* %r2
  %r7 = alloca i8*
  store i8* null, i8** %r7

  call i8* @Skink_rc_retain(i8* %arg0)

  store i8* %arg0, i8** %r1
  store i32 %arg1, i32* %r2
  %r3 = load i8*, i8** %r1
  %r4 = load i32, i32* %r2
  %r5 = sext i32 %r4 to i64

  %r6 = call i8* @Skink_mem_realloc(i8* %r3, i64 %r5)
  store i8* %r6, i8** %r7
  call i8* @Skink_rc_retain(i8* %r6)

  %r8 = load i8*, i8** %r7
  call void @Skink_rc_release(i8* %r8)

  %r9 = load i8*, i8** %r1
  call void @Skink_rc_release(i8* %r9)

  ret i8* %r6

}
define void @libc.free(i8* %arg0) {
entry:
  %r1 = alloca i8*
  store i8* null, i8** %r1

  call i8* @Skink_rc_retain(i8* %arg0)

  store i8* %arg0, i8** %r1
  %r2 = load i8*, i8** %r1
  %r3 = call i32 @Skink_mem_free(i8* %r2)
  %r4 = load i8*, i8** %r1
  call void @Skink_rc_release(i8* %r4)

  ret void

}
define i8* @libc.calloc(i32 %arg0, i32 %arg1) {
entry:
  %r1 = alloca i32
  store i32 0, i32* %r1
  %r2 = alloca i32
  store i32 0, i32* %r2
  %r8 = alloca i8*
  store i8* null, i8** %r8

  store i32 %arg0, i32* %r1
  store i32 %arg1, i32* %r2
  %r3 = load i32, i32* %r1
  %r4 = sext i32 %r3 to i64

  %r5 = load i32, i32* %r2
  %r6 = sext i32 %r5 to i64

  %r7 = call i8* @Skink_raw_calloc(i64 %r4, i64 %r6)
  store i8* %r7, i8** %r8
  call i8* @Skink_rc_retain(i8* %r7)

  %r9 = load i8*, i8** %r8
  call void @Skink_rc_release(i8* %r9)

  ret i8* %r7

}
define i8* @str.managedAlloc(i32 %arg0) {
entry:
  %r1 = alloca i32
  store i32 0, i32* %r1
  %r5 = alloca i8*
  store i8* null, i8** %r5

  store i32 %arg0, i32* %r1
  %r2 = load i32, i32* %r1
  %r3 = sext i32 %r2 to i64

  %r4 = call i8* @Skink_mem_alloc(i64 %r3)
  store i8* %r4, i8** %r5
  call i8* @Skink_rc_retain(i8* %r4)

  %r6 = load i8*, i8** %r5
  call void @Skink_rc_release(i8* %r6)

  ret i8* %r4

}
define void @str_Builder__dtor(i8* %raw) {
entry:
  %ptr = bitcast i8* %raw to %struct.str_Builder*
  %r1 = getelementptr inbounds %struct.str_Builder, %struct.str_Builder* %ptr, i32 0, i32 0
  %r2 = load i8*, i8** %r1
  call void @Skink_rc_release(i8* %r2)

  ret void
}

define %struct.str_Builder @str.NewBuilder(i32 %arg0) {
entry:
  %r1 = alloca i32
  store i32 0, i32* %r1
  %r4 = alloca %struct.str_Builder*
  store %struct.str_Builder* null, %struct.str_Builder** %r4
  %r9 = alloca i8*
  store i8* null, i8** %r9
  %r14 = alloca %struct.str_Builder*
  store %struct.str_Builder* null, %struct.str_Builder** %r14
  %r23 = alloca %struct.str_Builder
  store %struct.str_Builder zeroinitializer, %struct.str_Builder* %r23
  %r28 = alloca %struct.str_Builder
  store %struct.str_Builder zeroinitializer, %struct.str_Builder* %r28

  store i32 %arg0, i32* %r1
  %r2 = load i32, i32* %r1
  %r3 = icmp slt i32 %r2, 1
  br i1 %r3, label %L1, label %L3
L1:
  store i32 1, i32* %r1
  br label %L3
L3:
  %r5 = call i8* @Skink_rc_alloc_typed(i64 16, i8* bitcast (void (i8*)* @str_Builder__dtor to i8*))

  %r6 = bitcast i8* %r5 to %struct.str_Builder*
  %r7 = load i32, i32* %r1
  %r8 = call i8* @str.managedAlloc(i32 %r7)
  store i8* %r8, i8** %r9
  call i8* @Skink_rc_retain(i8* %r8)

  %r10 = getelementptr inbounds %struct.str_Builder, %struct.str_Builder* %r6, i32 0, i32 0
  store i8* %r8, i8** %r10
  %r11 = getelementptr inbounds %struct.str_Builder, %struct.str_Builder* %r6, i32 0, i32 1
  store i32 0, i32* %r11
  %r12 = load i32, i32* %r1
  %r13 = getelementptr inbounds %struct.str_Builder, %struct.str_Builder* %r6, i32 0, i32 2
  store i32 %r12, i32* %r13
  store %struct.str_Builder* %r6, %struct.str_Builder** %r14
  %r15 = bitcast %struct.str_Builder* %r6 to i8*

  call i8* @Skink_rc_retain(i8* %r15)

  store %struct.str_Builder* %r6, %struct.str_Builder** %r4
  %r16 = load %struct.str_Builder*, %struct.str_Builder** %r4
  %r17 = getelementptr inbounds %struct.str_Builder, %struct.str_Builder* %r16, i32 0, i32 0
  %r18 = load i8*, i8** %r17
  %r19 = trunc i32 0 to i8

  %r20 = getelementptr inbounds i8, i8* %r18, i32 0
  store i8 %r19, i8* %r20
  %r21 = load %struct.str_Builder*, %struct.str_Builder** %r4
  %r22 = load %struct.str_Builder, %struct.str_Builder* %r21
  store %struct.str_Builder %r22, %struct.str_Builder* %r23
  %r24 = getelementptr inbounds %struct.str_Builder, %struct.str_Builder* %r23, i32 0, i32 0
  %r25 = load i8*, i8** %r24
  call i8* @Skink_rc_retain(i8* %r25)

  store i8* %r25, i8** %r24
  %r26 = load %struct.str_Builder, %struct.str_Builder* %r23
  %r27 = bitcast %struct.str_Builder* %r21 to i8*

  call void @Skink_rc_release(i8* %r27)

  store %struct.str_Builder %r26, %struct.str_Builder* %r28
  %r29 = getelementptr inbounds %struct.str_Builder, %struct.str_Builder* %r28, i32 0, i32 0
  %r30 = load i8*, i8** %r29
  call i8* @Skink_rc_retain(i8* %r30)

  store i8* %r30, i8** %r29
  %r31 = load %struct.str_Builder, %struct.str_Builder* %r28
  %r32 = load i8*, i8** %r9
  call void @Skink_rc_release(i8* %r32)

  %r33 = load %struct.str_Builder*, %struct.str_Builder** %r14
  %r34 = bitcast %struct.str_Builder* %r33 to i8*

  call void @Skink_rc_release(i8* %r34)

  %r35 = load %struct.str_Builder*, %struct.str_Builder** %r4
  %r36 = bitcast %struct.str_Builder* %r35 to i8*

  call void @Skink_rc_release(i8* %r36)

  ret %struct.str_Builder %r31

}
define void @str.Write(%struct.str_Builder* %arg0, i8* %arg1) {
entry:
  %r1 = alloca %struct.str_Builder*
  store %struct.str_Builder* null, %struct.str_Builder** %r1
  %r2 = alloca i8*
  store i8* null, i8** %r2
  %r4 = alloca i32
  store i32 0, i32* %r4

  %r3 = bitcast %struct.str_Builder* %arg0 to i8*

  call i8* @Skink_rc_retain(i8* %r3)

  store %struct.str_Builder* %arg0, %struct.str_Builder** %r1
  call i8* @Skink_rc_retain(i8* %arg1)

  store i8* %arg1, i8** %r2
  %r5 = load i8*, i8** %r2
  %r6 = call i32 @str.Len(i8* %r5)
  store i32 %r6, i32* %r4
  %r7 = load %struct.str_Builder*, %struct.str_Builder** %r1
  %r8 = load i32, i32* %r4
  call void @str.ensure(%struct.str_Builder* %r7, i32 %r8)
  %r9 = load i32, i32* %r4
  %r10 = icmp sgt i32 %r9, 0
  br i1 %r10, label %L1, label %L3
L1:
  %r11 = load %struct.str_Builder*, %struct.str_Builder** %r1
  %r12 = getelementptr inbounds %struct.str_Builder, %struct.str_Builder* %r11, i32 0, i32 0
  %r13 = load i8*, i8** %r12
  %r14 = ptrtoint i8* %r13 to i64

  %r15 = load %struct.str_Builder*, %struct.str_Builder** %r1
  %r16 = getelementptr inbounds %struct.str_Builder, %struct.str_Builder* %r15, i32 0, i32 1
  %r17 = load i32, i32* %r16
  %r18 = sext i32 %r17 to i64

  %r19 = add i64 %r14, %r18
  %r20 = inttoptr i64 %r19 to i8*

  %r21 = load i8*, i8** %r2
  %r22 = load i32, i32* %r4
  %r23 = call i8* @memcpy(i8* %r20, i8* %r21, i32 %r22)
  br label %L3
L3:
  %r24 = load %struct.str_Builder*, %struct.str_Builder** %r1
  %r25 = getelementptr inbounds %struct.str_Builder, %struct.str_Builder* %r24, i32 0, i32 1
  %r26 = load i32, i32* %r25
  %r27 = load i32, i32* %r4
  %r28 = add i32 %r26, %r27
  %r29 = load %struct.str_Builder*, %struct.str_Builder** %r1
  %r30 = getelementptr inbounds %struct.str_Builder, %struct.str_Builder* %r29, i32 0, i32 1
  store i32 %r28, i32* %r30
  %r31 = load %struct.str_Builder*, %struct.str_Builder** %r1
  %r32 = getelementptr inbounds %struct.str_Builder, %struct.str_Builder* %r31, i32 0, i32 0
  %r33 = load i8*, i8** %r32
  %r34 = load %struct.str_Builder*, %struct.str_Builder** %r1
  %r35 = getelementptr inbounds %struct.str_Builder, %struct.str_Builder* %r34, i32 0, i32 1
  %r36 = load i32, i32* %r35
  %r37 = trunc i32 0 to i8

  %r38 = getelementptr inbounds i8, i8* %r33, i32 %r36
  store i8 %r37, i8* %r38
  %r39 = load %struct.str_Builder*, %struct.str_Builder** %r1
  %r40 = bitcast %struct.str_Builder* %r39 to i8*

  call void @Skink_rc_release(i8* %r40)

  %r41 = load i8*, i8** %r2
  call void @Skink_rc_release(i8* %r41)

  ret void

}
define void @str.WriteByte(%struct.str_Builder* %arg0, i32 %arg1) {
entry:
  %r1 = alloca %struct.str_Builder*
  store %struct.str_Builder* null, %struct.str_Builder** %r1
  %r2 = alloca i32
  store i32 0, i32* %r2

  %r3 = bitcast %struct.str_Builder* %arg0 to i8*

  call i8* @Skink_rc_retain(i8* %r3)

  store %struct.str_Builder* %arg0, %struct.str_Builder** %r1
  store i32 %arg1, i32* %r2
  %r4 = load %struct.str_Builder*, %struct.str_Builder** %r1
  call void @str.ensure(%struct.str_Builder* %r4, i32 1)
  %r5 = load i32, i32* %r2
  %r6 = load %struct.str_Builder*, %struct.str_Builder** %r1
  %r7 = getelementptr inbounds %struct.str_Builder, %struct.str_Builder* %r6, i32 0, i32 0
  %r8 = load i8*, i8** %r7
  %r9 = load %struct.str_Builder*, %struct.str_Builder** %r1
  %r10 = getelementptr inbounds %struct.str_Builder, %struct.str_Builder* %r9, i32 0, i32 1
  %r11 = load i32, i32* %r10
  %r12 = trunc i32 %r5 to i8

  %r13 = getelementptr inbounds i8, i8* %r8, i32 %r11
  store i8 %r12, i8* %r13
  %r14 = load %struct.str_Builder*, %struct.str_Builder** %r1
  %r15 = getelementptr inbounds %struct.str_Builder, %struct.str_Builder* %r14, i32 0, i32 1
  %r16 = load i32, i32* %r15
  %r17 = add i32 %r16, 1
  %r18 = load %struct.str_Builder*, %struct.str_Builder** %r1
  %r19 = getelementptr inbounds %struct.str_Builder, %struct.str_Builder* %r18, i32 0, i32 1
  store i32 %r17, i32* %r19
  %r20 = load %struct.str_Builder*, %struct.str_Builder** %r1
  %r21 = getelementptr inbounds %struct.str_Builder, %struct.str_Builder* %r20, i32 0, i32 0
  %r22 = load i8*, i8** %r21
  %r23 = load %struct.str_Builder*, %struct.str_Builder** %r1
  %r24 = getelementptr inbounds %struct.str_Builder, %struct.str_Builder* %r23, i32 0, i32 1
  %r25 = load i32, i32* %r24
  %r26 = trunc i32 0 to i8

  %r27 = getelementptr inbounds i8, i8* %r22, i32 %r25
  store i8 %r26, i8* %r27
  %r28 = load %struct.str_Builder*, %struct.str_Builder** %r1
  %r29 = bitcast %struct.str_Builder* %r28 to i8*

  call void @Skink_rc_release(i8* %r29)

  ret void

}
define i8* @str.String(%struct.str_Builder* %arg0) {
entry:
  %r1 = alloca %struct.str_Builder
  store %struct.str_Builder zeroinitializer, %struct.str_Builder* %r1
  %r3 = alloca %struct.str_Builder
  store %struct.str_Builder zeroinitializer, %struct.str_Builder* %r3
  %r7 = alloca i8*
  store i8* null, i8** %r7
  %r9 = alloca %struct.str_Builder
  store %struct.str_Builder zeroinitializer, %struct.str_Builder* %r9
  %r14 = alloca i8*
  store i8* null, i8** %r14
  %r16 = alloca %struct.str_Builder
  store %struct.str_Builder zeroinitializer, %struct.str_Builder* %r16
  %r22 = alloca %struct.str_Builder
  store %struct.str_Builder zeroinitializer, %struct.str_Builder* %r22
  %r26 = alloca %struct.str_Builder
  store %struct.str_Builder zeroinitializer, %struct.str_Builder* %r26
  %r32 = alloca %struct.str_Builder
  store %struct.str_Builder zeroinitializer, %struct.str_Builder* %r32

  %r2 = load %struct.str_Builder, %struct.str_Builder* %arg0
  store %struct.str_Builder %r2, %struct.str_Builder* %r3
  %r4 = getelementptr inbounds %struct.str_Builder, %struct.str_Builder* %r3, i32 0, i32 0
  %r5 = load i8*, i8** %r4
  call i8* @Skink_rc_retain(i8* %r5)

  store i8* %r5, i8** %r4
  %r6 = load %struct.str_Builder, %struct.str_Builder* %r3
  store %struct.str_Builder %r6, %struct.str_Builder* %r1
  %r8 = load %struct.str_Builder, %struct.str_Builder* %r1
  store %struct.str_Builder %r8, %struct.str_Builder* %r9
  %r10 = getelementptr inbounds %struct.str_Builder, %struct.str_Builder* %r9, i32 0, i32 1
  %r11 = load i32, i32* %r10
  %r12 = add i32 %r11, 1
  %r13 = call i8* @str.managedAlloc(i32 %r12)
  store i8* %r13, i8** %r14
  call i8* @Skink_rc_retain(i8* %r13)

  store i8* %r13, i8** %r7
  %r15 = load %struct.str_Builder, %struct.str_Builder* %r1
  store %struct.str_Builder %r15, %struct.str_Builder* %r16
  %r17 = getelementptr inbounds %struct.str_Builder, %struct.str_Builder* %r16, i32 0, i32 1
  %r18 = load i32, i32* %r17
  %r19 = icmp sgt i32 %r18, 0
  br i1 %r19, label %L1, label %L3
L1:
  %r20 = load i8*, i8** %r7
  %r21 = load %struct.str_Builder, %struct.str_Builder* %r1
  store %struct.str_Builder %r21, %struct.str_Builder* %r22
  %r23 = getelementptr inbounds %struct.str_Builder, %struct.str_Builder* %r22, i32 0, i32 0
  %r24 = load i8*, i8** %r23
  %r25 = load %struct.str_Builder, %struct.str_Builder* %r1
  store %struct.str_Builder %r25, %struct.str_Builder* %r26
  %r27 = getelementptr inbounds %struct.str_Builder, %struct.str_Builder* %r26, i32 0, i32 1
  %r28 = load i32, i32* %r27
  %r29 = call i8* @memcpy(i8* %r20, i8* %r24, i32 %r28)
  br label %L3
L3:
  %r30 = load i8*, i8** %r7
  %r31 = load %struct.str_Builder, %struct.str_Builder* %r1
  store %struct.str_Builder %r31, %struct.str_Builder* %r32
  %r33 = getelementptr inbounds %struct.str_Builder, %struct.str_Builder* %r32, i32 0, i32 1
  %r34 = load i32, i32* %r33
  %r35 = trunc i32 0 to i8

  %r36 = getelementptr inbounds i8, i8* %r30, i32 %r34
  store i8 %r35, i8* %r36
  %r37 = load i8*, i8** %r7
  call i8* @Skink_rc_retain(i8* %r37)

  %r38 = load i8*, i8** %r14
  call void @Skink_rc_release(i8* %r38)

  %r39 = load i8*, i8** %r7
  call void @Skink_rc_release(i8* %r39)

  %r40 = getelementptr inbounds %struct.str_Builder, %struct.str_Builder* %r1, i32 0, i32 0
  %r41 = load i8*, i8** %r40
  call void @Skink_rc_release(i8* %r41)

  ret i8* %r37

}
define i8* @str.BuilderValue(%struct.str_Builder* %arg0) {
entry:
  %r1 = alloca %struct.str_Builder
  store %struct.str_Builder zeroinitializer, %struct.str_Builder* %r1
  %r3 = alloca %struct.str_Builder
  store %struct.str_Builder zeroinitializer, %struct.str_Builder* %r3
  %r8 = alloca %struct.str_Builder
  store %struct.str_Builder zeroinitializer, %struct.str_Builder* %r8

  %r2 = load %struct.str_Builder, %struct.str_Builder* %arg0
  store %struct.str_Builder %r2, %struct.str_Builder* %r3
  %r4 = getelementptr inbounds %struct.str_Builder, %struct.str_Builder* %r3, i32 0, i32 0
  %r5 = load i8*, i8** %r4
  call i8* @Skink_rc_retain(i8* %r5)

  store i8* %r5, i8** %r4
  %r6 = load %struct.str_Builder, %struct.str_Builder* %r3
  store %struct.str_Builder %r6, %struct.str_Builder* %r1
  %r7 = load %struct.str_Builder, %struct.str_Builder* %r1
  store %struct.str_Builder %r7, %struct.str_Builder* %r8
  %r9 = getelementptr inbounds %struct.str_Builder, %struct.str_Builder* %r8, i32 0, i32 0
  %r10 = load i8*, i8** %r9
  call i8* @Skink_rc_retain(i8* %r10)

  %r11 = getelementptr inbounds %struct.str_Builder, %struct.str_Builder* %r1, i32 0, i32 0
  %r12 = load i8*, i8** %r11
  call void @Skink_rc_release(i8* %r12)

  ret i8* %r10

}
define i32 @str.LenBuilder(%struct.str_Builder* %arg0) {
entry:
  %r1 = alloca %struct.str_Builder
  store %struct.str_Builder zeroinitializer, %struct.str_Builder* %r1
  %r3 = alloca %struct.str_Builder
  store %struct.str_Builder zeroinitializer, %struct.str_Builder* %r3
  %r8 = alloca %struct.str_Builder
  store %struct.str_Builder zeroinitializer, %struct.str_Builder* %r8

  %r2 = load %struct.str_Builder, %struct.str_Builder* %arg0
  store %struct.str_Builder %r2, %struct.str_Builder* %r3
  %r4 = getelementptr inbounds %struct.str_Builder, %struct.str_Builder* %r3, i32 0, i32 0
  %r5 = load i8*, i8** %r4
  call i8* @Skink_rc_retain(i8* %r5)

  store i8* %r5, i8** %r4
  %r6 = load %struct.str_Builder, %struct.str_Builder* %r3
  store %struct.str_Builder %r6, %struct.str_Builder* %r1
  %r7 = load %struct.str_Builder, %struct.str_Builder* %r1
  store %struct.str_Builder %r7, %struct.str_Builder* %r8
  %r9 = getelementptr inbounds %struct.str_Builder, %struct.str_Builder* %r8, i32 0, i32 1
  %r10 = load i32, i32* %r9
  %r11 = getelementptr inbounds %struct.str_Builder, %struct.str_Builder* %r1, i32 0, i32 0
  %r12 = load i8*, i8** %r11
  call void @Skink_rc_release(i8* %r12)

  ret i32 %r10

}
define void @str.Reset(%struct.str_Builder* %arg0) {
entry:
  %r1 = alloca %struct.str_Builder*
  store %struct.str_Builder* null, %struct.str_Builder** %r1

  %r2 = bitcast %struct.str_Builder* %arg0 to i8*

  call i8* @Skink_rc_retain(i8* %r2)

  store %struct.str_Builder* %arg0, %struct.str_Builder** %r1
  %r3 = load %struct.str_Builder*, %struct.str_Builder** %r1
  %r4 = getelementptr inbounds %struct.str_Builder, %struct.str_Builder* %r3, i32 0, i32 1
  store i32 0, i32* %r4
  %r5 = load %struct.str_Builder*, %struct.str_Builder** %r1
  %r6 = getelementptr inbounds %struct.str_Builder, %struct.str_Builder* %r5, i32 0, i32 2
  %r7 = load i32, i32* %r6
  %r8 = icmp sgt i32 %r7, 0
  br i1 %r8, label %L1, label %L3
L1:
  %r9 = load %struct.str_Builder*, %struct.str_Builder** %r1
  %r10 = getelementptr inbounds %struct.str_Builder, %struct.str_Builder* %r9, i32 0, i32 0
  %r11 = load i8*, i8** %r10
  %r12 = trunc i32 0 to i8

  %r13 = getelementptr inbounds i8, i8* %r11, i32 0
  store i8 %r12, i8* %r13
  br label %L3
L3:
  %r14 = load %struct.str_Builder*, %struct.str_Builder** %r1
  %r15 = bitcast %struct.str_Builder* %r14 to i8*

  call void @Skink_rc_release(i8* %r15)

  ret void

}
define void @str.Free(%struct.str_Builder* %arg0) {
entry:
  %r1 = alloca %struct.str_Builder*
  store %struct.str_Builder* null, %struct.str_Builder** %r1

  %r2 = bitcast %struct.str_Builder* %arg0 to i8*

  call i8* @Skink_rc_retain(i8* %r2)

  store %struct.str_Builder* %arg0, %struct.str_Builder** %r1
  %r3 = load %struct.str_Builder*, %struct.str_Builder** %r1
  %r4 = getelementptr inbounds %struct.str_Builder, %struct.str_Builder* %r3, i32 0, i32 2
  %r5 = load i32, i32* %r4
  %r6 = icmp sgt i32 %r5, 0
  br i1 %r6, label %L1, label %L3
L1:
  %r7 = load %struct.str_Builder*, %struct.str_Builder** %r1
  %r8 = getelementptr inbounds %struct.str_Builder, %struct.str_Builder* %r7, i32 0, i32 0
  %r9 = load i8*, i8** %r8
  call void @libc.free(i8* %r9)
  %r10 = getelementptr inbounds [1 x i8], [1 x i8]* @str.1, i64 0, i64 0

  %r11 = load %struct.str_Builder*, %struct.str_Builder** %r1
  %r12 = getelementptr inbounds %struct.str_Builder, %struct.str_Builder* %r11, i32 0, i32 0
  call i8* @Skink_rc_retain(i8* %r10)

  %r13 = load i8*, i8** %r12
  call void @Skink_rc_release(i8* %r13)

  store i8* %r10, i8** %r12
  %r14 = load %struct.str_Builder*, %struct.str_Builder** %r1
  %r15 = getelementptr inbounds %struct.str_Builder, %struct.str_Builder* %r14, i32 0, i32 1
  store i32 0, i32* %r15
  %r16 = load %struct.str_Builder*, %struct.str_Builder** %r1
  %r17 = getelementptr inbounds %struct.str_Builder, %struct.str_Builder* %r16, i32 0, i32 2
  store i32 0, i32* %r17
  br label %L3
L3:
  %r18 = load %struct.str_Builder*, %struct.str_Builder** %r1
  %r19 = bitcast %struct.str_Builder* %r18 to i8*

  call void @Skink_rc_release(i8* %r19)

  ret void

}
define void @str.ensure(%struct.str_Builder* %arg0, i32 %arg1) {
entry:
  %r1 = alloca %struct.str_Builder*
  store %struct.str_Builder* null, %struct.str_Builder** %r1
  %r2 = alloca i32
  store i32 0, i32* %r2
  %r4 = alloca i32
  store i32 0, i32* %r4
  %r18 = alloca i32
  store i32 0, i32* %r18
  %r32 = alloca i8*
  store i8* null, i8** %r32

  %r3 = bitcast %struct.str_Builder* %arg0 to i8*

  call i8* @Skink_rc_retain(i8* %r3)

  store %struct.str_Builder* %arg0, %struct.str_Builder** %r1
  store i32 %arg1, i32* %r2
  %r5 = load %struct.str_Builder*, %struct.str_Builder** %r1
  %r6 = getelementptr inbounds %struct.str_Builder, %struct.str_Builder* %r5, i32 0, i32 1
  %r7 = load i32, i32* %r6
  %r8 = load i32, i32* %r2
  %r9 = add i32 %r7, %r8
  %r10 = add i32 %r9, 1
  store i32 %r10, i32* %r4
  %r11 = load i32, i32* %r4
  %r12 = load %struct.str_Builder*, %struct.str_Builder** %r1
  %r13 = getelementptr inbounds %struct.str_Builder, %struct.str_Builder* %r12, i32 0, i32 2
  %r14 = load i32, i32* %r13
  %r15 = icmp sle i32 %r11, %r14
  br i1 %r15, label %L1, label %L3
L1:
  %r16 = load %struct.str_Builder*, %struct.str_Builder** %r1
  %r17 = bitcast %struct.str_Builder* %r16 to i8*

  call void @Skink_rc_release(i8* %r17)

  ret void
L3:
  %r19 = load %struct.str_Builder*, %struct.str_Builder** %r1
  %r20 = getelementptr inbounds %struct.str_Builder, %struct.str_Builder* %r19, i32 0, i32 2
  %r21 = load i32, i32* %r20
  %r22 = mul i32 %r21, 2
  store i32 %r22, i32* %r18
  %r23 = load i32, i32* %r18
  %r24 = load i32, i32* %r4
  %r25 = icmp slt i32 %r23, %r24
  br i1 %r25, label %L4, label %L6
L4:
  %r26 = load i32, i32* %r4
  store i32 %r26, i32* %r18
  br label %L6
L6:
  %r27 = load %struct.str_Builder*, %struct.str_Builder** %r1
  %r28 = getelementptr inbounds %struct.str_Builder, %struct.str_Builder* %r27, i32 0, i32 0
  %r29 = load i8*, i8** %r28
  %r30 = load i32, i32* %r18
  %r31 = call i8* @libc.realloc(i8* %r29, i32 %r30)
  store i8* %r31, i8** %r32
  %r33 = load %struct.str_Builder*, %struct.str_Builder** %r1
  %r34 = getelementptr inbounds %struct.str_Builder, %struct.str_Builder* %r33, i32 0, i32 0
  call i8* @Skink_rc_retain(i8* %r31)

  %r35 = load i8*, i8** %r34
  call void @Skink_rc_release(i8* %r35)

  store i8* %r31, i8** %r34
  %r36 = load i32, i32* %r18
  %r37 = load %struct.str_Builder*, %struct.str_Builder** %r1
  %r38 = getelementptr inbounds %struct.str_Builder, %struct.str_Builder* %r37, i32 0, i32 2
  store i32 %r36, i32* %r38
  %r39 = load i8*, i8** %r32
  call void @Skink_rc_release(i8* %r39)

  %r40 = load %struct.str_Builder*, %struct.str_Builder** %r1
  %r41 = bitcast %struct.str_Builder* %r40 to i8*

  call void @Skink_rc_release(i8* %r41)

  ret void

}
define i32 @str.Len(i8* %arg0) {
entry:
  %r1 = alloca i8*
  store i8* null, i8** %r1

  call i8* @Skink_rc_retain(i8* %arg0)

  store i8* %arg0, i8** %r1
  %r2 = load i8*, i8** %r1
  %r3 = getelementptr inbounds [1 x i8], [1 x i8]* @str.2, i64 0, i64 0

  %r4 = icmp eq i8* %r2, null

  %r6 = getelementptr inbounds [1 x i8], [1 x i8]* @str.3, i64 0, i64 0

  %r5 = select i1 %r4, i8* %r6, i8* %r2

  %r7 = icmp eq i8* %r3, null

  %r9 = getelementptr inbounds [1 x i8], [1 x i8]* @str.4, i64 0, i64 0

  %r8 = select i1 %r7, i8* %r9, i8* %r3

  %r10 = call i32 @strcmp(i8* %r5, i8* %r8)

  %r11 = icmp eq i32 %r10, 0

  br i1 %r11, label %L1, label %L3
L1:
  %r12 = load i8*, i8** %r1
  call void @Skink_rc_release(i8* %r12)

  ret i32 0
L3:
  %r13 = load i8*, i8** %r1
  %r14 = call i32 @strlen(i8* %r13)
  %r15 = load i8*, i8** %r1
  call void @Skink_rc_release(i8* %r15)

  ret i32 %r14

}
define i32 @str.Compare(i8* %arg0, i8* %arg1) {
entry:
  %r1 = alloca i8*
  store i8* null, i8** %r1
  %r2 = alloca i8*
  store i8* null, i8** %r2

  call i8* @Skink_rc_retain(i8* %arg0)

  store i8* %arg0, i8** %r1
  call i8* @Skink_rc_retain(i8* %arg1)

  store i8* %arg1, i8** %r2
  %r3 = load i8*, i8** %r1
  %r4 = getelementptr inbounds [1 x i8], [1 x i8]* @str.5, i64 0, i64 0

  %r5 = icmp eq i8* %r3, null

  %r7 = getelementptr inbounds [1 x i8], [1 x i8]* @str.6, i64 0, i64 0

  %r6 = select i1 %r5, i8* %r7, i8* %r3

  %r8 = icmp eq i8* %r4, null

  %r10 = getelementptr inbounds [1 x i8], [1 x i8]* @str.7, i64 0, i64 0

  %r9 = select i1 %r8, i8* %r10, i8* %r4

  %r11 = call i32 @strcmp(i8* %r6, i8* %r9)

  %r12 = icmp eq i32 %r11, 0

  br i1 %r12, label %L1, label %L2
L1:
  %r13 = load i8*, i8** %r2
  %r14 = getelementptr inbounds [1 x i8], [1 x i8]* @str.8, i64 0, i64 0

  %r15 = icmp eq i8* %r13, null

  %r17 = getelementptr inbounds [1 x i8], [1 x i8]* @str.9, i64 0, i64 0

  %r16 = select i1 %r15, i8* %r17, i8* %r13

  %r18 = icmp eq i8* %r14, null

  %r20 = getelementptr inbounds [1 x i8], [1 x i8]* @str.10, i64 0, i64 0

  %r19 = select i1 %r18, i8* %r20, i8* %r14

  %r21 = call i32 @strcmp(i8* %r16, i8* %r19)

  %r22 = icmp eq i32 %r21, 0

  br label %L3
L3:
  br label %L4
L2:
  br label %L4
L4:
  %r23 = phi i1 [false, %L2], [%r22, %L3]
  br i1 %r23, label %L5, label %L7
L5:
  %r24 = load i8*, i8** %r1
  call void @Skink_rc_release(i8* %r24)

  %r25 = load i8*, i8** %r2
  call void @Skink_rc_release(i8* %r25)

  ret i32 0
L7:
  %r26 = load i8*, i8** %r1
  %r27 = getelementptr inbounds [1 x i8], [1 x i8]* @str.11, i64 0, i64 0

  %r28 = icmp eq i8* %r26, null

  %r30 = getelementptr inbounds [1 x i8], [1 x i8]* @str.12, i64 0, i64 0

  %r29 = select i1 %r28, i8* %r30, i8* %r26

  %r31 = icmp eq i8* %r27, null

  %r33 = getelementptr inbounds [1 x i8], [1 x i8]* @str.13, i64 0, i64 0

  %r32 = select i1 %r31, i8* %r33, i8* %r27

  %r34 = call i32 @strcmp(i8* %r29, i8* %r32)

  %r35 = icmp eq i32 %r34, 0

  br i1 %r35, label %L8, label %L10
L8:
  %r36 = sub i32 0, 1
  %r37 = load i8*, i8** %r1
  call void @Skink_rc_release(i8* %r37)

  %r38 = load i8*, i8** %r2
  call void @Skink_rc_release(i8* %r38)

  ret i32 %r36
L10:
  %r39 = load i8*, i8** %r2
  %r40 = getelementptr inbounds [1 x i8], [1 x i8]* @str.14, i64 0, i64 0

  %r41 = icmp eq i8* %r39, null

  %r43 = getelementptr inbounds [1 x i8], [1 x i8]* @str.15, i64 0, i64 0

  %r42 = select i1 %r41, i8* %r43, i8* %r39

  %r44 = icmp eq i8* %r40, null

  %r46 = getelementptr inbounds [1 x i8], [1 x i8]* @str.16, i64 0, i64 0

  %r45 = select i1 %r44, i8* %r46, i8* %r40

  %r47 = call i32 @strcmp(i8* %r42, i8* %r45)

  %r48 = icmp eq i32 %r47, 0

  br i1 %r48, label %L11, label %L13
L11:
  %r49 = load i8*, i8** %r1
  call void @Skink_rc_release(i8* %r49)

  %r50 = load i8*, i8** %r2
  call void @Skink_rc_release(i8* %r50)

  ret i32 1
L13:
  %r51 = load i8*, i8** %r1
  %r52 = load i8*, i8** %r2
  %r53 = call i32 @strcmp(i8* %r51, i8* %r52)
  %r54 = load i8*, i8** %r1
  call void @Skink_rc_release(i8* %r54)

  %r55 = load i8*, i8** %r2
  call void @Skink_rc_release(i8* %r55)

  ret i32 %r53

}
define i1 @str.Equal(i8* %arg0, i8* %arg1) {
entry:
  %r1 = alloca i8*
  store i8* null, i8** %r1
  %r2 = alloca i8*
  store i8* null, i8** %r2

  call i8* @Skink_rc_retain(i8* %arg0)

  store i8* %arg0, i8** %r1
  call i8* @Skink_rc_retain(i8* %arg1)

  store i8* %arg1, i8** %r2
  %r3 = load i8*, i8** %r1
  %r4 = getelementptr inbounds [1 x i8], [1 x i8]* @str.17, i64 0, i64 0

  %r5 = icmp eq i8* %r3, null

  %r7 = getelementptr inbounds [1 x i8], [1 x i8]* @str.18, i64 0, i64 0

  %r6 = select i1 %r5, i8* %r7, i8* %r3

  %r8 = icmp eq i8* %r4, null

  %r10 = getelementptr inbounds [1 x i8], [1 x i8]* @str.19, i64 0, i64 0

  %r9 = select i1 %r8, i8* %r10, i8* %r4

  %r11 = call i32 @strcmp(i8* %r6, i8* %r9)

  %r12 = icmp eq i32 %r11, 0

  br i1 %r12, label %L1, label %L2
L1:
  %r13 = load i8*, i8** %r2
  %r14 = getelementptr inbounds [1 x i8], [1 x i8]* @str.20, i64 0, i64 0

  %r15 = icmp eq i8* %r13, null

  %r17 = getelementptr inbounds [1 x i8], [1 x i8]* @str.21, i64 0, i64 0

  %r16 = select i1 %r15, i8* %r17, i8* %r13

  %r18 = icmp eq i8* %r14, null

  %r20 = getelementptr inbounds [1 x i8], [1 x i8]* @str.22, i64 0, i64 0

  %r19 = select i1 %r18, i8* %r20, i8* %r14

  %r21 = call i32 @strcmp(i8* %r16, i8* %r19)

  %r22 = icmp eq i32 %r21, 0

  br label %L3
L3:
  br label %L4
L2:
  br label %L4
L4:
  %r23 = phi i1 [false, %L2], [%r22, %L3]
  br i1 %r23, label %L5, label %L7
L5:
  %r24 = load i8*, i8** %r1
  call void @Skink_rc_release(i8* %r24)

  %r25 = load i8*, i8** %r2
  call void @Skink_rc_release(i8* %r25)

  ret i1 1
L7:
  %r26 = load i8*, i8** %r1
  %r27 = getelementptr inbounds [1 x i8], [1 x i8]* @str.23, i64 0, i64 0

  %r28 = icmp eq i8* %r26, null

  %r30 = getelementptr inbounds [1 x i8], [1 x i8]* @str.24, i64 0, i64 0

  %r29 = select i1 %r28, i8* %r30, i8* %r26

  %r31 = icmp eq i8* %r27, null

  %r33 = getelementptr inbounds [1 x i8], [1 x i8]* @str.25, i64 0, i64 0

  %r32 = select i1 %r31, i8* %r33, i8* %r27

  %r34 = call i32 @strcmp(i8* %r29, i8* %r32)

  %r35 = icmp eq i32 %r34, 0

  br i1 %r35, label %L8, label %L9
L8:
  br label %L11
L9:
  %r36 = load i8*, i8** %r2
  %r37 = getelementptr inbounds [1 x i8], [1 x i8]* @str.26, i64 0, i64 0

  %r38 = icmp eq i8* %r36, null

  %r40 = getelementptr inbounds [1 x i8], [1 x i8]* @str.27, i64 0, i64 0

  %r39 = select i1 %r38, i8* %r40, i8* %r36

  %r41 = icmp eq i8* %r37, null

  %r43 = getelementptr inbounds [1 x i8], [1 x i8]* @str.28, i64 0, i64 0

  %r42 = select i1 %r41, i8* %r43, i8* %r37

  %r44 = call i32 @strcmp(i8* %r39, i8* %r42)

  %r45 = icmp eq i32 %r44, 0

  br label %L10
L10:
  br label %L11
L11:
  %r46 = phi i1 [true, %L8], [%r45, %L10]
  br i1 %r46, label %L12, label %L14
L12:
  %r47 = load i8*, i8** %r1
  call void @Skink_rc_release(i8* %r47)

  %r48 = load i8*, i8** %r2
  call void @Skink_rc_release(i8* %r48)

  ret i1 0
L14:
  %r49 = load i8*, i8** %r1
  %r50 = load i8*, i8** %r2
  %r51 = call i32 @strcmp(i8* %r49, i8* %r50)
  %r52 = icmp eq i32 %r51, 0
  %r53 = load i8*, i8** %r1
  call void @Skink_rc_release(i8* %r53)

  %r54 = load i8*, i8** %r2
  call void @Skink_rc_release(i8* %r54)

  ret i1 %r52

}
define i1 @str.Contains(i8* %arg0, i8* %arg1) {
entry:
  %r1 = alloca i8*
  store i8* null, i8** %r1
  %r2 = alloca i8*
  store i8* null, i8** %r2

  call i8* @Skink_rc_retain(i8* %arg0)

  store i8* %arg0, i8** %r1
  call i8* @Skink_rc_retain(i8* %arg1)

  store i8* %arg1, i8** %r2
  %r3 = load i8*, i8** %r2
  %r4 = getelementptr inbounds [1 x i8], [1 x i8]* @str.29, i64 0, i64 0

  %r5 = icmp eq i8* %r3, null

  %r7 = getelementptr inbounds [1 x i8], [1 x i8]* @str.30, i64 0, i64 0

  %r6 = select i1 %r5, i8* %r7, i8* %r3

  %r8 = icmp eq i8* %r4, null

  %r10 = getelementptr inbounds [1 x i8], [1 x i8]* @str.31, i64 0, i64 0

  %r9 = select i1 %r8, i8* %r10, i8* %r4

  %r11 = call i32 @strcmp(i8* %r6, i8* %r9)

  %r12 = icmp eq i32 %r11, 0

  br i1 %r12, label %L1, label %L3
L1:
  %r13 = load i8*, i8** %r1
  call void @Skink_rc_release(i8* %r13)

  %r14 = load i8*, i8** %r2
  call void @Skink_rc_release(i8* %r14)

  ret i1 1
L3:
  %r15 = load i8*, i8** %r1
  %r16 = getelementptr inbounds [1 x i8], [1 x i8]* @str.32, i64 0, i64 0

  %r17 = icmp eq i8* %r15, null

  %r19 = getelementptr inbounds [1 x i8], [1 x i8]* @str.33, i64 0, i64 0

  %r18 = select i1 %r17, i8* %r19, i8* %r15

  %r20 = icmp eq i8* %r16, null

  %r22 = getelementptr inbounds [1 x i8], [1 x i8]* @str.34, i64 0, i64 0

  %r21 = select i1 %r20, i8* %r22, i8* %r16

  %r23 = call i32 @strcmp(i8* %r18, i8* %r21)

  %r24 = icmp eq i32 %r23, 0

  br i1 %r24, label %L4, label %L6
L4:
  %r25 = load i8*, i8** %r1
  call void @Skink_rc_release(i8* %r25)

  %r26 = load i8*, i8** %r2
  call void @Skink_rc_release(i8* %r26)

  ret i1 0
L6:
  %r27 = load i8*, i8** %r1
  %r28 = load i8*, i8** %r2
  %r29 = call i8* @strstr(i8* %r27, i8* %r28)
  %r30 = ptrtoint i8* %r29 to i32

  %r31 = icmp ne i32 %r30, 0
  %r32 = load i8*, i8** %r1
  call void @Skink_rc_release(i8* %r32)

  %r33 = load i8*, i8** %r2
  call void @Skink_rc_release(i8* %r33)

  ret i1 %r31

}
define i8* @str.Concat(i8* %arg0, i8* %arg1) {
entry:
  %r1 = alloca i8*
  store i8* null, i8** %r1
  %r2 = alloca i8*
  store i8* null, i8** %r2
  %r3 = alloca i32
  store i32 0, i32* %r3
  %r6 = alloca i32
  store i32 0, i32* %r6
  %r9 = alloca i8*
  store i8* null, i8** %r9
  %r15 = alloca i8*
  store i8* null, i8** %r15

  call i8* @Skink_rc_retain(i8* %arg0)

  store i8* %arg0, i8** %r1
  call i8* @Skink_rc_retain(i8* %arg1)

  store i8* %arg1, i8** %r2
  %r4 = load i8*, i8** %r1
  %r5 = call i32 @str.Len(i8* %r4)
  store i32 %r5, i32* %r3
  %r7 = load i8*, i8** %r2
  %r8 = call i32 @str.Len(i8* %r7)
  store i32 %r8, i32* %r6
  %r10 = load i32, i32* %r3
  %r11 = load i32, i32* %r6
  %r12 = add i32 %r10, %r11
  %r13 = add i32 %r12, 1
  %r14 = call i8* @str.managedAlloc(i32 %r13)
  store i8* %r14, i8** %r15
  call i8* @Skink_rc_retain(i8* %r14)

  store i8* %r14, i8** %r9
  %r16 = load i32, i32* %r3
  %r17 = icmp sgt i32 %r16, 0
  br i1 %r17, label %L1, label %L3
L1:
  %r18 = load i8*, i8** %r9
  %r19 = load i8*, i8** %r1
  %r20 = load i32, i32* %r3
  %r21 = call i8* @memcpy(i8* %r18, i8* %r19, i32 %r20)
  br label %L3
L3:
  %r22 = load i32, i32* %r6
  %r23 = icmp sgt i32 %r22, 0
  br i1 %r23, label %L4, label %L6
L4:
  %r24 = load i8*, i8** %r9
  %r25 = ptrtoint i8* %r24 to i64

  %r26 = load i32, i32* %r3
  %r27 = sext i32 %r26 to i64

  %r28 = add i64 %r25, %r27
  %r29 = inttoptr i64 %r28 to i8*

  %r30 = load i8*, i8** %r2
  %r31 = load i32, i32* %r6
  %r32 = call i8* @memcpy(i8* %r29, i8* %r30, i32 %r31)
  br label %L6
L6:
  %r33 = load i8*, i8** %r9
  %r34 = load i32, i32* %r3
  %r35 = load i32, i32* %r6
  %r36 = add i32 %r34, %r35
  %r37 = trunc i32 0 to i8

  %r38 = getelementptr inbounds i8, i8* %r33, i32 %r36
  store i8 %r37, i8* %r38
  %r39 = load i8*, i8** %r9
  call i8* @Skink_rc_retain(i8* %r39)

  %r40 = load i8*, i8** %r15
  call void @Skink_rc_release(i8* %r40)

  %r41 = load i8*, i8** %r9
  call void @Skink_rc_release(i8* %r41)

  %r42 = load i8*, i8** %r1
  call void @Skink_rc_release(i8* %r42)

  %r43 = load i8*, i8** %r2
  call void @Skink_rc_release(i8* %r43)

  ret i8* %r39

}
define i8* @str.Substr(i8* %arg0, i32 %arg1, i32 %arg2) {
entry:
  %r1 = alloca i8*
  store i8* null, i8** %r1
  %r2 = alloca i32
  store i32 0, i32* %r2
  %r3 = alloca i32
  store i32 0, i32* %r3
  %r4 = alloca i32
  store i32 0, i32* %r4
  %r23 = alloca i8*
  store i8* null, i8** %r23
  %r27 = alloca i8*
  store i8* null, i8** %r27

  call i8* @Skink_rc_retain(i8* %arg0)

  store i8* %arg0, i8** %r1
  store i32 %arg1, i32* %r2
  store i32 %arg2, i32* %r3
  %r5 = load i8*, i8** %r1
  %r6 = call i32 @str.Len(i8* %r5)
  store i32 %r6, i32* %r4
  %r7 = load i32, i32* %r2
  %r8 = icmp slt i32 %r7, 0
  br i1 %r8, label %L1, label %L3
L1:
  store i32 0, i32* %r2
  br label %L3
L3:
  %r9 = load i32, i32* %r2
  %r10 = load i32, i32* %r4
  %r11 = icmp sgt i32 %r9, %r10
  br i1 %r11, label %L4, label %L6
L4:
  %r12 = load i32, i32* %r4
  store i32 %r12, i32* %r2
  br label %L6
L6:
  %r13 = load i32, i32* %r3
  %r14 = icmp slt i32 %r13, 0
  br i1 %r14, label %L7, label %L9
L7:
  store i32 0, i32* %r3
  br label %L9
L9:
  %r15 = load i32, i32* %r2
  %r16 = load i32, i32* %r3
  %r17 = add i32 %r15, %r16
  %r18 = load i32, i32* %r4
  %r19 = icmp sgt i32 %r17, %r18
  br i1 %r19, label %L10, label %L12
L10:
  %r20 = load i32, i32* %r4
  %r21 = load i32, i32* %r2
  %r22 = sub i32 %r20, %r21
  store i32 %r22, i32* %r3
  br label %L12
L12:
  %r24 = load i32, i32* %r3
  %r25 = add i32 %r24, 1
  %r26 = call i8* @str.managedAlloc(i32 %r25)
  store i8* %r26, i8** %r27
  call i8* @Skink_rc_retain(i8* %r26)

  store i8* %r26, i8** %r23
  %r28 = load i32, i32* %r3
  %r29 = icmp sgt i32 %r28, 0
  br i1 %r29, label %L13, label %L15
L13:
  %r30 = load i8*, i8** %r23
  %r31 = load i8*, i8** %r1
  %r32 = ptrtoint i8* %r31 to i64

  %r33 = load i32, i32* %r2
  %r34 = sext i32 %r33 to i64

  %r35 = add i64 %r32, %r34
  %r36 = inttoptr i64 %r35 to i8*

  %r37 = load i32, i32* %r3
  %r38 = call i8* @memcpy(i8* %r30, i8* %r36, i32 %r37)
  br label %L15
L15:
  %r39 = load i8*, i8** %r23
  %r40 = load i32, i32* %r3
  %r41 = trunc i32 0 to i8

  %r42 = getelementptr inbounds i8, i8* %r39, i32 %r40
  store i8 %r41, i8* %r42
  %r43 = load i8*, i8** %r23
  call i8* @Skink_rc_retain(i8* %r43)

  %r44 = load i8*, i8** %r27
  call void @Skink_rc_release(i8* %r44)

  %r45 = load i8*, i8** %r23
  call void @Skink_rc_release(i8* %r45)

  %r46 = load i8*, i8** %r1
  call void @Skink_rc_release(i8* %r46)

  ret i8* %r43

}
define i8* @str.Trim(i8* %arg0) {
entry:
  %r1 = alloca i8*
  store i8* null, i8** %r1
  %r2 = alloca i32
  store i32 0, i32* %r2
  %r5 = alloca i32
  store i32 0, i32* %r5
  %r6 = alloca i32
  store i32 0, i32* %r6
  %r39 = alloca i8*
  store i8* null, i8** %r39

  call i8* @Skink_rc_retain(i8* %arg0)

  store i8* %arg0, i8** %r1
  %r3 = load i8*, i8** %r1
  %r4 = call i32 @str.Len(i8* %r3)
  store i32 %r4, i32* %r2
  store i32 0, i32* %r5
  %r7 = load i32, i32* %r2
  store i32 %r7, i32* %r6
  br label %L1
L1:
  %r8 = load i32, i32* %r5
  %r9 = load i32, i32* %r6
  %r10 = icmp slt i32 %r8, %r9
  br i1 %r10, label %L5, label %L6
L5:
  %r11 = load i8*, i8** %r1
  %r12 = load i32, i32* %r5
  %r13 = getelementptr inbounds i8, i8* %r11, i32 %r12

  %r14 = load i8, i8* %r13

  %r15 = zext i8 %r14 to i32

  %r16 = call i1 @str.isSpace(i32 %r15)
  br label %L7
L7:
  br label %L8
L6:
  br label %L8
L8:
  %r17 = phi i1 [false, %L6], [%r16, %L7]
  br i1 %r17, label %L2, label %L4
L2:
  %r18 = load i32, i32* %r5
  %r19 = add i32 %r18, 1
  store i32 %r19, i32* %r5
  br label %L3
L3:
  br label %L1
L4:
  br label %L9
L9:
  %r20 = load i32, i32* %r6
  %r21 = load i32, i32* %r5
  %r22 = icmp sgt i32 %r20, %r21
  br i1 %r22, label %L13, label %L14
L13:
  %r23 = load i8*, i8** %r1
  %r24 = load i32, i32* %r6
  %r25 = sub i32 %r24, 1
  %r26 = getelementptr inbounds i8, i8* %r23, i32 %r25

  %r27 = load i8, i8* %r26

  %r28 = zext i8 %r27 to i32

  %r29 = call i1 @str.isSpace(i32 %r28)
  br label %L15
L15:
  br label %L16
L14:
  br label %L16
L16:
  %r30 = phi i1 [false, %L14], [%r29, %L15]
  br i1 %r30, label %L10, label %L12
L10:
  %r31 = load i32, i32* %r6
  %r32 = sub i32 %r31, 1
  store i32 %r32, i32* %r6
  br label %L11
L11:
  br label %L9
L12:
  %r33 = load i8*, i8** %r1
  %r34 = load i32, i32* %r5
  %r35 = load i32, i32* %r6
  %r36 = load i32, i32* %r5
  %r37 = sub i32 %r35, %r36
  %r38 = call i8* @str.Substr(i8* %r33, i32 %r34, i32 %r37)
  store i8* %r38, i8** %r39
  call i8* @Skink_rc_retain(i8* %r38)

  %r40 = load i8*, i8** %r39
  call void @Skink_rc_release(i8* %r40)

  %r41 = load i8*, i8** %r1
  call void @Skink_rc_release(i8* %r41)

  ret i8* %r38

}
define i1 @str.isSpace(i32 %arg0) {
entry:
  %r1 = alloca i32
  store i32 0, i32* %r1

  store i32 %arg0, i32* %r1
  %r2 = load i32, i32* %r1
  %r3 = icmp eq i32 %r2, 32
  br i1 %r3, label %L1, label %L2
L1:
  br label %L4
L2:
  %r4 = load i32, i32* %r1
  %r5 = icmp eq i32 %r4, 9
  br label %L3
L3:
  br label %L4
L4:
  %r6 = phi i1 [true, %L1], [%r5, %L3]
  br i1 %r6, label %L5, label %L6
L5:
  br label %L8
L6:
  %r7 = load i32, i32* %r1
  %r8 = icmp eq i32 %r7, 10
  br label %L7
L7:
  br label %L8
L8:
  %r9 = phi i1 [true, %L5], [%r8, %L7]
  br i1 %r9, label %L9, label %L10
L9:
  br label %L12
L10:
  %r10 = load i32, i32* %r1
  %r11 = icmp eq i32 %r10, 13
  br label %L11
L11:
  br label %L12
L12:
  %r12 = phi i1 [true, %L9], [%r11, %L11]
  ret i1 %r12

}
define i1 @str.matchesAt(i8* %arg0, i32 %arg1, i8* %arg2) {
entry:
  %r1 = alloca i8*
  store i8* null, i8** %r1
  %r2 = alloca i32
  store i32 0, i32* %r2
  %r3 = alloca i8*
  store i8* null, i8** %r3
  %r4 = alloca i32
  store i32 0, i32* %r4
  %r18 = alloca i32
  store i32 0, i32* %r18

  call i8* @Skink_rc_retain(i8* %arg0)

  store i8* %arg0, i8** %r1
  store i32 %arg1, i32* %r2
  call i8* @Skink_rc_retain(i8* %arg2)

  store i8* %arg2, i8** %r3
  %r5 = load i8*, i8** %r3
  %r6 = call i32 @str.Len(i8* %r5)
  store i32 %r6, i32* %r4
  %r7 = load i32, i32* %r2
  %r8 = icmp slt i32 %r7, 0
  br i1 %r8, label %L1, label %L2
L1:
  br label %L4
L2:
  %r9 = load i32, i32* %r2
  %r10 = load i32, i32* %r4
  %r11 = add i32 %r9, %r10
  %r12 = load i8*, i8** %r1
  %r13 = call i32 @str.Len(i8* %r12)
  %r14 = icmp sgt i32 %r11, %r13
  br label %L3
L3:
  br label %L4
L4:
  %r15 = phi i1 [true, %L1], [%r14, %L3]
  br i1 %r15, label %L5, label %L7
L5:
  %r16 = load i8*, i8** %r1
  call void @Skink_rc_release(i8* %r16)

  %r17 = load i8*, i8** %r3
  call void @Skink_rc_release(i8* %r17)

  ret i1 0
L7:
  store i32 0, i32* %r18
  br label %L8
L8:
  %r19 = load i32, i32* %r18
  %r20 = load i32, i32* %r4
  %r21 = icmp slt i32 %r19, %r20
  br i1 %r21, label %L9, label %L11
L9:
  %r22 = load i8*, i8** %r1
  %r23 = load i32, i32* %r2
  %r24 = load i32, i32* %r18
  %r25 = add i32 %r23, %r24
  %r26 = getelementptr inbounds i8, i8* %r22, i32 %r25

  %r27 = load i8, i8* %r26

  %r28 = zext i8 %r27 to i32

  %r29 = load i8*, i8** %r3
  %r30 = load i32, i32* %r18
  %r31 = getelementptr inbounds i8, i8* %r29, i32 %r30

  %r32 = load i8, i8* %r31

  %r33 = zext i8 %r32 to i32

  %r34 = icmp ne i32 %r28, %r33
  br i1 %r34, label %L12, label %L14
L12:
  %r35 = load i8*, i8** %r1
  call void @Skink_rc_release(i8* %r35)

  %r36 = load i8*, i8** %r3
  call void @Skink_rc_release(i8* %r36)

  ret i1 0
L14:
  br label %L10
L10:
  %r37 = load i32, i32* %r18
  %r38 = add i32 %r37, 1
  store i32 %r38, i32* %r18
  br label %L8
L11:
  %r39 = load i8*, i8** %r1
  call void @Skink_rc_release(i8* %r39)

  %r40 = load i8*, i8** %r3
  call void @Skink_rc_release(i8* %r40)

  ret i1 1

}
define i1 @str.StartsWith(i8* %arg0, i8* %arg1) {
entry:
  %r1 = alloca i8*
  store i8* null, i8** %r1
  %r2 = alloca i8*
  store i8* null, i8** %r2

  call i8* @Skink_rc_retain(i8* %arg0)

  store i8* %arg0, i8** %r1
  call i8* @Skink_rc_retain(i8* %arg1)

  store i8* %arg1, i8** %r2
  %r3 = load i8*, i8** %r1
  %r4 = load i8*, i8** %r2
  %r5 = call i1 @str.matchesAt(i8* %r3, i32 0, i8* %r4)
  %r6 = load i8*, i8** %r1
  call void @Skink_rc_release(i8* %r6)

  %r7 = load i8*, i8** %r2
  call void @Skink_rc_release(i8* %r7)

  ret i1 %r5

}
define i1 @str.EndsWith(i8* %arg0, i8* %arg1) {
entry:
  %r1 = alloca i8*
  store i8* null, i8** %r1
  %r2 = alloca i8*
  store i8* null, i8** %r2
  %r3 = alloca i32
  store i32 0, i32* %r3
  %r6 = alloca i32
  store i32 0, i32* %r6

  call i8* @Skink_rc_retain(i8* %arg0)

  store i8* %arg0, i8** %r1
  call i8* @Skink_rc_retain(i8* %arg1)

  store i8* %arg1, i8** %r2
  %r4 = load i8*, i8** %r1
  %r5 = call i32 @str.Len(i8* %r4)
  store i32 %r5, i32* %r3
  %r7 = load i8*, i8** %r2
  %r8 = call i32 @str.Len(i8* %r7)
  store i32 %r8, i32* %r6
  %r9 = load i32, i32* %r6
  %r10 = load i32, i32* %r3
  %r11 = icmp sgt i32 %r9, %r10
  br i1 %r11, label %L1, label %L3
L1:
  %r12 = load i8*, i8** %r1
  call void @Skink_rc_release(i8* %r12)

  %r13 = load i8*, i8** %r2
  call void @Skink_rc_release(i8* %r13)

  ret i1 0
L3:
  %r14 = load i8*, i8** %r1
  %r15 = load i32, i32* %r3
  %r16 = load i32, i32* %r6
  %r17 = sub i32 %r15, %r16
  %r18 = load i8*, i8** %r2
  %r19 = call i1 @str.matchesAt(i8* %r14, i32 %r17, i8* %r18)
  %r20 = load i8*, i8** %r1
  call void @Skink_rc_release(i8* %r20)

  %r21 = load i8*, i8** %r2
  call void @Skink_rc_release(i8* %r21)

  ret i1 %r19

}
define i32 @str.IndexOf(i8* %arg0, i8* %arg1) {
entry:
  %r1 = alloca i8*
  store i8* null, i8** %r1
  %r2 = alloca i8*
  store i8* null, i8** %r2
  %r15 = alloca i8*
  store i8* null, i8** %r15

  call i8* @Skink_rc_retain(i8* %arg0)

  store i8* %arg0, i8** %r1
  call i8* @Skink_rc_retain(i8* %arg1)

  store i8* %arg1, i8** %r2
  %r3 = load i8*, i8** %r2
  %r4 = getelementptr inbounds [1 x i8], [1 x i8]* @str.35, i64 0, i64 0

  %r5 = icmp eq i8* %r3, null

  %r7 = getelementptr inbounds [1 x i8], [1 x i8]* @str.36, i64 0, i64 0

  %r6 = select i1 %r5, i8* %r7, i8* %r3

  %r8 = icmp eq i8* %r4, null

  %r10 = getelementptr inbounds [1 x i8], [1 x i8]* @str.37, i64 0, i64 0

  %r9 = select i1 %r8, i8* %r10, i8* %r4

  %r11 = call i32 @strcmp(i8* %r6, i8* %r9)

  %r12 = icmp eq i32 %r11, 0

  br i1 %r12, label %L1, label %L3
L1:
  %r13 = load i8*, i8** %r1
  call void @Skink_rc_release(i8* %r13)

  %r14 = load i8*, i8** %r2
  call void @Skink_rc_release(i8* %r14)

  ret i32 0
L3:
  %r16 = load i8*, i8** %r1
  %r17 = load i8*, i8** %r2
  %r18 = call i8* @strstr(i8* %r16, i8* %r17)
  call i8* @Skink_rc_retain(i8* %r18)

  store i8* %r18, i8** %r15
  %r19 = load i8*, i8** %r15
  %r20 = ptrtoint i8* %r19 to i32

  %r21 = icmp eq i32 %r20, 0
  br i1 %r21, label %L4, label %L6
L4:
  %r22 = sub i32 0, 1
  %r23 = load i8*, i8** %r15
  call void @Skink_rc_release(i8* %r23)

  %r24 = load i8*, i8** %r1
  call void @Skink_rc_release(i8* %r24)

  %r25 = load i8*, i8** %r2
  call void @Skink_rc_release(i8* %r25)

  ret i32 %r22
L6:
  %r26 = load i8*, i8** %r15
  %r27 = ptrtoint i8* %r26 to i64

  %r28 = load i8*, i8** %r1
  %r29 = ptrtoint i8* %r28 to i64

  %r30 = sub i64 %r27, %r29
  %r31 = trunc i64 %r30 to i32

  %r32 = load i8*, i8** %r15
  call void @Skink_rc_release(i8* %r32)

  %r33 = load i8*, i8** %r1
  call void @Skink_rc_release(i8* %r33)

  %r34 = load i8*, i8** %r2
  call void @Skink_rc_release(i8* %r34)

  ret i32 %r31

}
define i32 @str.LastIndexOf(i8* %arg0, i8* %arg1) {
entry:
  %r1 = alloca i8*
  store i8* null, i8** %r1
  %r2 = alloca i8*
  store i8* null, i8** %r2
  %r3 = alloca i32
  store i32 0, i32* %r3
  %r6 = alloca i32
  store i32 0, i32* %r6
  %r20 = alloca i32
  store i32 0, i32* %r20

  call i8* @Skink_rc_retain(i8* %arg0)

  store i8* %arg0, i8** %r1
  call i8* @Skink_rc_retain(i8* %arg1)

  store i8* %arg1, i8** %r2
  %r4 = load i8*, i8** %r1
  %r5 = call i32 @str.Len(i8* %r4)
  store i32 %r5, i32* %r3
  %r7 = load i8*, i8** %r2
  %r8 = call i32 @str.Len(i8* %r7)
  store i32 %r8, i32* %r6
  %r9 = load i32, i32* %r6
  %r10 = icmp eq i32 %r9, 0
  br i1 %r10, label %L1, label %L3
L1:
  %r11 = load i32, i32* %r3
  %r12 = load i8*, i8** %r1
  call void @Skink_rc_release(i8* %r12)

  %r13 = load i8*, i8** %r2
  call void @Skink_rc_release(i8* %r13)

  ret i32 %r11
L3:
  %r14 = load i32, i32* %r6
  %r15 = load i32, i32* %r3
  %r16 = icmp sgt i32 %r14, %r15
  br i1 %r16, label %L4, label %L6
L4:
  %r17 = sub i32 0, 1
  %r18 = load i8*, i8** %r1
  call void @Skink_rc_release(i8* %r18)

  %r19 = load i8*, i8** %r2
  call void @Skink_rc_release(i8* %r19)

  ret i32 %r17
L6:
  %r21 = load i32, i32* %r3
  %r22 = load i32, i32* %r6
  %r23 = sub i32 %r21, %r22
  store i32 %r23, i32* %r20
  br label %L7
L7:
  %r24 = load i32, i32* %r20
  %r25 = icmp sge i32 %r24, 0
  br i1 %r25, label %L8, label %L10
L8:
  %r26 = load i8*, i8** %r1
  %r27 = load i32, i32* %r20
  %r28 = load i8*, i8** %r2
  %r29 = call i1 @str.matchesAt(i8* %r26, i32 %r27, i8* %r28)
  br i1 %r29, label %L11, label %L13
L11:
  %r30 = load i32, i32* %r20
  %r31 = load i8*, i8** %r1
  call void @Skink_rc_release(i8* %r31)

  %r32 = load i8*, i8** %r2
  call void @Skink_rc_release(i8* %r32)

  ret i32 %r30
L13:
  %r33 = load i32, i32* %r20
  %r34 = sub i32 %r33, 1
  store i32 %r34, i32* %r20
  br label %L9
L9:
  br label %L7
L10:
  %r35 = sub i32 0, 1
  %r36 = load i8*, i8** %r1
  call void @Skink_rc_release(i8* %r36)

  %r37 = load i8*, i8** %r2
  call void @Skink_rc_release(i8* %r37)

  ret i32 %r35

}
define i8** @str.Split(i8* %arg0, i8* %arg1) {
entry:
  %r1 = alloca i8*
  store i8* null, i8** %r1
  %r2 = alloca i8*
  store i8* null, i8** %r2
  %r3 = alloca i8**
  store i8** null, i8*** %r3
  %r4 = alloca i32
  store i32 0, i32* %r4
  %r59 = alloca i64
  store i64 0, i64* %r59
  %r73 = alloca i8**
  store i8** null, i8*** %r73
  %r85 = alloca i32
  store i32 0, i32* %r85
  %r86 = alloca i32
  store i32 0, i32* %r86
  %r89 = alloca i32
  store i32 0, i32* %r89
  %r106 = alloca i8*
  store i8* null, i8** %r106
  %r155 = alloca i64
  store i64 0, i64* %r155
  %r169 = alloca i8**
  store i8** null, i8*** %r169
  %r189 = alloca i8*
  store i8* null, i8** %r189
  %r238 = alloca i64
  store i64 0, i64* %r238
  %r252 = alloca i8**
  store i8** null, i8*** %r252

  call i8* @Skink_rc_retain(i8* %arg0)

  store i8* %arg0, i8** %r1
  call i8* @Skink_rc_retain(i8* %arg1)

  store i8* %arg1, i8** %r2
  store i8** null, i8*** %r3
  %r5 = load i8*, i8** %r2
  %r6 = call i32 @str.Len(i8* %r5)
  store i32 %r6, i32* %r4
  %r7 = load i32, i32* %r4
  %r8 = icmp eq i32 %r7, 0
  br i1 %r8, label %L1, label %L3
L1:
  %r9 = load i8**, i8*** %r3
  %r10 = load i8*, i8** %r1
  call i8* @Skink_rc_retain(i8* %r10)

  %r11 = zext i32 8 to i64

  %r12 = bitcast i8** %r9 to i8*

  %r13 = icmp eq i8* %r12, null

  br i1 %r13, label %L4, label %L5
L4:
  %r14 = call i8* @Skink_rc_alloc_typed(i64 %r11, i8* bitcast (void (i8*)* @__array_dtor_i8Ptr to i8*))

  %r15 = getelementptr inbounds i8, i8* %r14, i64 -8

  %r16 = bitcast i8* %r15 to i64*

  store i64 1, i64* %r16

  %r17 = bitcast i8* %r14 to i8**

  store i8* %r10, i8** %r17
  %r18 = call i8* @Skink_slice_hdr(i8* %r14, i64 1, i64 1, i8* %r14)

  br label %L12
L5:
  %r19 = call i64 @Skink_slice_len(i8* %r12)

  %r20 = call i64 @Skink_slice_cap(i8* %r12)

  %r21 = call i8* @Skink_slice_data(i8* %r12)

  %r22 = call i8* @Skink_slice_base(i8* %r12)

  %r23 = add i64 %r19, 1

  %r24 = mul i64 %r23, %r11

  br label %L7
L7:
  %r25 = call i64 @Skink_rc_count(i8* %r12)

  %r26 = icmp eq i64 %r25, 1

  %r27 = icmp sge i64 %r20, 0

  %r28 = icmp ne i8* %r22, null

  %r29 = and i1 %r26, %r27

  %r30 = and i1 %r29, %r28

  br i1 %r30, label %L8, label %L11
L8:
  %r31 = call i64 @Skink_rc_count(i8* %r22)

  %r32 = icmp eq i64 %r31, 1

  %r33 = icmp sle i64 %r23, %r20

  %r34 = and i1 %r32, %r33

  br i1 %r34, label %L6, label %L13
L6:
  %r35 = bitcast i8* %r21 to i8**

  %r36 = getelementptr i8*, i8** %r35, i64 %r19

  store i8* %r10, i8** %r36
  %r37 = getelementptr inbounds i8, i8* %r22, i64 -8

  %r38 = bitcast i8* %r37 to i64*

  store i64 %r23, i64* %r38

  %r39 = bitcast i8* %r12 to %hdr.slice*

  %r40 = getelementptr %hdr.slice, %hdr.slice* %r39, i32 0, i32 1

  store i64 %r23, i64* %r40

  br label %L12
L13:
  br i1 %r32, label %L9, label %L11
L9:
  %r41 = call i8* @Skink_slice_ensure(i8* %r22, i64 %r24)

  %r42 = icmp ne i8* %r41, null

  br i1 %r42, label %L10, label %L11
L10:
  %r43 = bitcast i8* %r12 to %hdr.slice*

  %r44 = call i64 @Skink_rc_capacity(i8* %r41)

  %r45 = udiv i64 %r44, %r11

  %r46 = getelementptr %hdr.slice, %hdr.slice* %r43, i32 0, i32 0

  store i8* %r41, i8** %r46

  %r47 = getelementptr %hdr.slice, %hdr.slice* %r43, i32 0, i32 1

  store i64 %r23, i64* %r47

  %r48 = getelementptr %hdr.slice, %hdr.slice* %r43, i32 0, i32 2

  store i64 %r45, i64* %r48

  %r49 = getelementptr %hdr.slice, %hdr.slice* %r43, i32 0, i32 3

  store i8* %r41, i8** %r49

  %r50 = getelementptr inbounds i8, i8* %r41, i64 -8

  %r51 = bitcast i8* %r50 to i64*

  store i64 %r23, i64* %r51

  %r52 = bitcast i8* %r41 to i8**

  %r53 = getelementptr i8*, i8** %r52, i64 %r19

  store i8* %r10, i8** %r53
  br label %L12
L11:
  %r54 = call i8* @Skink_rc_alloc_typed(i64 %r24, i8* bitcast (void (i8*)* @__array_dtor_i8Ptr to i8*))

  %r55 = getelementptr inbounds i8, i8* %r54, i64 -8

  %r56 = bitcast i8* %r55 to i64*

  store i64 %r23, i64* %r56

  %r57 = bitcast i8* %r54 to i8**

  %r58 = bitcast i8* %r21 to i8**

  store i64 0, i64* %r59

  br label %L14
L14:
  %r60 = load i64, i64* %r59

  %r61 = icmp slt i64 %r60, %r19

  br i1 %r61, label %L15, label %L16
L15:
  %r62 = getelementptr i8*, i8** %r58, i64 %r60

  %r63 = load i8*, i8** %r62

  call i8* @Skink_rc_retain(i8* %r63)

  %r64 = getelementptr i8*, i8** %r57, i64 %r60

  store i8* %r63, i8** %r64
  %r65 = add i64 %r60, 1

  store i64 %r65, i64* %r59

  br label %L14
L16:
  %r66 = getelementptr i8*, i8** %r57, i64 %r19

  store i8* %r10, i8** %r66
  %r67 = call i8* @Skink_slice_hdr(i8* %r54, i64 %r23, i64 %r23, i8* %r54)

  br label %L12
L12:
  %r68 = phi i8* [%r18, %L4], [%r12, %L6], [%r12, %L10], [%r67, %L16]

  %r69 = bitcast i8* %r68 to i8**

  %r70 = bitcast i8** %r69 to i8*

  %r71 = bitcast i8** %r9 to i8*

  %r72 = icmp eq i8* %r70, %r71

  br i1 %r72, label %L17, label %L18
L17:
  call i8* @Skink_rc_retain(i8* %r70)

  br label %L18
L18:
  store i8** %r69, i8*** %r73
  %r74 = bitcast i8** %r69 to i8*

  call i8* @Skink_rc_retain(i8* %r74)

  %r75 = load i8**, i8*** %r3
  %r76 = bitcast i8** %r75 to i8*

  call void @Skink_rc_release(i8* %r76)

  store i8** %r69, i8*** %r3
  %r77 = load i8**, i8*** %r3
  %r78 = bitcast i8** %r77 to i8*

  call i8* @Skink_rc_retain(i8* %r78)

  %r79 = load i8**, i8*** %r73
  %r80 = bitcast i8** %r79 to i8*

  call void @Skink_rc_release(i8* %r80)

  %r81 = load i8**, i8*** %r3
  %r82 = bitcast i8** %r81 to i8*

  call void @Skink_rc_release(i8* %r82)

  %r83 = load i8*, i8** %r1
  call void @Skink_rc_release(i8* %r83)

  %r84 = load i8*, i8** %r2
  call void @Skink_rc_release(i8* %r84)

  ret i8** %r77
L3:
  store i32 0, i32* %r85
  %r87 = load i8*, i8** %r1
  %r88 = call i32 @str.Len(i8* %r87)
  store i32 %r88, i32* %r86
  store i32 0, i32* %r89
  br label %L19
L19:
  %r90 = load i32, i32* %r89
  %r91 = load i32, i32* %r86
  %r92 = load i32, i32* %r4
  %r93 = sub i32 %r91, %r92
  %r94 = icmp sle i32 %r90, %r93
  br i1 %r94, label %L20, label %L22
L20:
  %r95 = load i8*, i8** %r1
  %r96 = load i32, i32* %r89
  %r97 = load i8*, i8** %r2
  %r98 = call i1 @str.matchesAt(i8* %r95, i32 %r96, i8* %r97)
  br i1 %r98, label %L23, label %L24
L23:
  %r99 = load i8**, i8*** %r3
  %r100 = load i8*, i8** %r1
  %r101 = load i32, i32* %r85
  %r102 = load i32, i32* %r89
  %r103 = load i32, i32* %r85
  %r104 = sub i32 %r102, %r103
  %r105 = call i8* @str.Substr(i8* %r100, i32 %r101, i32 %r104)
  store i8* %r105, i8** %r106
  call i8* @Skink_rc_retain(i8* %r105)

  %r107 = zext i32 8 to i64

  %r108 = bitcast i8** %r99 to i8*

  %r109 = icmp eq i8* %r108, null

  br i1 %r109, label %L26, label %L27
L26:
  %r110 = call i8* @Skink_rc_alloc_typed(i64 %r107, i8* bitcast (void (i8*)* @__array_dtor_i8Ptr to i8*))

  %r111 = getelementptr inbounds i8, i8* %r110, i64 -8

  %r112 = bitcast i8* %r111 to i64*

  store i64 1, i64* %r112

  %r113 = bitcast i8* %r110 to i8**

  store i8* %r105, i8** %r113
  %r114 = call i8* @Skink_slice_hdr(i8* %r110, i64 1, i64 1, i8* %r110)

  br label %L34
L27:
  %r115 = call i64 @Skink_slice_len(i8* %r108)

  %r116 = call i64 @Skink_slice_cap(i8* %r108)

  %r117 = call i8* @Skink_slice_data(i8* %r108)

  %r118 = call i8* @Skink_slice_base(i8* %r108)

  %r119 = add i64 %r115, 1

  %r120 = mul i64 %r119, %r107

  br label %L29
L29:
  %r121 = call i64 @Skink_rc_count(i8* %r108)

  %r122 = icmp eq i64 %r121, 1

  %r123 = icmp sge i64 %r116, 0

  %r124 = icmp ne i8* %r118, null

  %r125 = and i1 %r122, %r123

  %r126 = and i1 %r125, %r124

  br i1 %r126, label %L30, label %L33
L30:
  %r127 = call i64 @Skink_rc_count(i8* %r118)

  %r128 = icmp eq i64 %r127, 1

  %r129 = icmp sle i64 %r119, %r116

  %r130 = and i1 %r128, %r129

  br i1 %r130, label %L28, label %L35
L28:
  %r131 = bitcast i8* %r117 to i8**

  %r132 = getelementptr i8*, i8** %r131, i64 %r115

  store i8* %r105, i8** %r132
  %r133 = getelementptr inbounds i8, i8* %r118, i64 -8

  %r134 = bitcast i8* %r133 to i64*

  store i64 %r119, i64* %r134

  %r135 = bitcast i8* %r108 to %hdr.slice*

  %r136 = getelementptr %hdr.slice, %hdr.slice* %r135, i32 0, i32 1

  store i64 %r119, i64* %r136

  br label %L34
L35:
  br i1 %r128, label %L31, label %L33
L31:
  %r137 = call i8* @Skink_slice_ensure(i8* %r118, i64 %r120)

  %r138 = icmp ne i8* %r137, null

  br i1 %r138, label %L32, label %L33
L32:
  %r139 = bitcast i8* %r108 to %hdr.slice*

  %r140 = call i64 @Skink_rc_capacity(i8* %r137)

  %r141 = udiv i64 %r140, %r107

  %r142 = getelementptr %hdr.slice, %hdr.slice* %r139, i32 0, i32 0

  store i8* %r137, i8** %r142

  %r143 = getelementptr %hdr.slice, %hdr.slice* %r139, i32 0, i32 1

  store i64 %r119, i64* %r143

  %r144 = getelementptr %hdr.slice, %hdr.slice* %r139, i32 0, i32 2

  store i64 %r141, i64* %r144

  %r145 = getelementptr %hdr.slice, %hdr.slice* %r139, i32 0, i32 3

  store i8* %r137, i8** %r145

  %r146 = getelementptr inbounds i8, i8* %r137, i64 -8

  %r147 = bitcast i8* %r146 to i64*

  store i64 %r119, i64* %r147

  %r148 = bitcast i8* %r137 to i8**

  %r149 = getelementptr i8*, i8** %r148, i64 %r115

  store i8* %r105, i8** %r149
  br label %L34
L33:
  %r150 = call i8* @Skink_rc_alloc_typed(i64 %r120, i8* bitcast (void (i8*)* @__array_dtor_i8Ptr to i8*))

  %r151 = getelementptr inbounds i8, i8* %r150, i64 -8

  %r152 = bitcast i8* %r151 to i64*

  store i64 %r119, i64* %r152

  %r153 = bitcast i8* %r150 to i8**

  %r154 = bitcast i8* %r117 to i8**

  store i64 0, i64* %r155

  br label %L36
L36:
  %r156 = load i64, i64* %r155

  %r157 = icmp slt i64 %r156, %r115

  br i1 %r157, label %L37, label %L38
L37:
  %r158 = getelementptr i8*, i8** %r154, i64 %r156

  %r159 = load i8*, i8** %r158

  call i8* @Skink_rc_retain(i8* %r159)

  %r160 = getelementptr i8*, i8** %r153, i64 %r156

  store i8* %r159, i8** %r160
  %r161 = add i64 %r156, 1

  store i64 %r161, i64* %r155

  br label %L36
L38:
  %r162 = getelementptr i8*, i8** %r153, i64 %r115

  store i8* %r105, i8** %r162
  %r163 = call i8* @Skink_slice_hdr(i8* %r150, i64 %r119, i64 %r119, i8* %r150)

  br label %L34
L34:
  %r164 = phi i8* [%r114, %L26], [%r108, %L28], [%r108, %L32], [%r163, %L38]

  %r165 = bitcast i8* %r164 to i8**

  %r166 = bitcast i8** %r165 to i8*

  %r167 = bitcast i8** %r99 to i8*

  %r168 = icmp eq i8* %r166, %r167

  br i1 %r168, label %L39, label %L40
L39:
  call i8* @Skink_rc_retain(i8* %r166)

  br label %L40
L40:
  store i8** %r165, i8*** %r169
  %r170 = bitcast i8** %r165 to i8*

  call i8* @Skink_rc_retain(i8* %r170)

  %r171 = load i8**, i8*** %r3
  %r172 = bitcast i8** %r171 to i8*

  call void @Skink_rc_release(i8* %r172)

  store i8** %r165, i8*** %r3
  %r173 = load i32, i32* %r89
  %r174 = load i32, i32* %r4
  %r175 = add i32 %r173, %r174
  store i32 %r175, i32* %r85
  %r176 = load i32, i32* %r85
  store i32 %r176, i32* %r89
  %r177 = load i8*, i8** %r106
  call void @Skink_rc_release(i8* %r177)

  %r178 = load i8**, i8*** %r169
  %r179 = bitcast i8** %r178 to i8*

  call void @Skink_rc_release(i8* %r179)

  br label %L25
L24:
  %r180 = load i32, i32* %r89
  %r181 = add i32 %r180, 1
  store i32 %r181, i32* %r89
  br label %L25
L25:
  br label %L21
L21:
  br label %L19
L22:
  %r182 = load i8**, i8*** %r3
  %r183 = load i8*, i8** %r1
  %r184 = load i32, i32* %r85
  %r185 = load i32, i32* %r86
  %r186 = load i32, i32* %r85
  %r187 = sub i32 %r185, %r186
  %r188 = call i8* @str.Substr(i8* %r183, i32 %r184, i32 %r187)
  store i8* %r188, i8** %r189
  call i8* @Skink_rc_retain(i8* %r188)

  %r190 = zext i32 8 to i64

  %r191 = bitcast i8** %r182 to i8*

  %r192 = icmp eq i8* %r191, null

  br i1 %r192, label %L41, label %L42
L41:
  %r193 = call i8* @Skink_rc_alloc_typed(i64 %r190, i8* bitcast (void (i8*)* @__array_dtor_i8Ptr to i8*))

  %r194 = getelementptr inbounds i8, i8* %r193, i64 -8

  %r195 = bitcast i8* %r194 to i64*

  store i64 1, i64* %r195

  %r196 = bitcast i8* %r193 to i8**

  store i8* %r188, i8** %r196
  %r197 = call i8* @Skink_slice_hdr(i8* %r193, i64 1, i64 1, i8* %r193)

  br label %L49
L42:
  %r198 = call i64 @Skink_slice_len(i8* %r191)

  %r199 = call i64 @Skink_slice_cap(i8* %r191)

  %r200 = call i8* @Skink_slice_data(i8* %r191)

  %r201 = call i8* @Skink_slice_base(i8* %r191)

  %r202 = add i64 %r198, 1

  %r203 = mul i64 %r202, %r190

  br label %L44
L44:
  %r204 = call i64 @Skink_rc_count(i8* %r191)

  %r205 = icmp eq i64 %r204, 1

  %r206 = icmp sge i64 %r199, 0

  %r207 = icmp ne i8* %r201, null

  %r208 = and i1 %r205, %r206

  %r209 = and i1 %r208, %r207

  br i1 %r209, label %L45, label %L48
L45:
  %r210 = call i64 @Skink_rc_count(i8* %r201)

  %r211 = icmp eq i64 %r210, 1

  %r212 = icmp sle i64 %r202, %r199

  %r213 = and i1 %r211, %r212

  br i1 %r213, label %L43, label %L50
L43:
  %r214 = bitcast i8* %r200 to i8**

  %r215 = getelementptr i8*, i8** %r214, i64 %r198

  store i8* %r188, i8** %r215
  %r216 = getelementptr inbounds i8, i8* %r201, i64 -8

  %r217 = bitcast i8* %r216 to i64*

  store i64 %r202, i64* %r217

  %r218 = bitcast i8* %r191 to %hdr.slice*

  %r219 = getelementptr %hdr.slice, %hdr.slice* %r218, i32 0, i32 1

  store i64 %r202, i64* %r219

  br label %L49
L50:
  br i1 %r211, label %L46, label %L48
L46:
  %r220 = call i8* @Skink_slice_ensure(i8* %r201, i64 %r203)

  %r221 = icmp ne i8* %r220, null

  br i1 %r221, label %L47, label %L48
L47:
  %r222 = bitcast i8* %r191 to %hdr.slice*

  %r223 = call i64 @Skink_rc_capacity(i8* %r220)

  %r224 = udiv i64 %r223, %r190

  %r225 = getelementptr %hdr.slice, %hdr.slice* %r222, i32 0, i32 0

  store i8* %r220, i8** %r225

  %r226 = getelementptr %hdr.slice, %hdr.slice* %r222, i32 0, i32 1

  store i64 %r202, i64* %r226

  %r227 = getelementptr %hdr.slice, %hdr.slice* %r222, i32 0, i32 2

  store i64 %r224, i64* %r227

  %r228 = getelementptr %hdr.slice, %hdr.slice* %r222, i32 0, i32 3

  store i8* %r220, i8** %r228

  %r229 = getelementptr inbounds i8, i8* %r220, i64 -8

  %r230 = bitcast i8* %r229 to i64*

  store i64 %r202, i64* %r230

  %r231 = bitcast i8* %r220 to i8**

  %r232 = getelementptr i8*, i8** %r231, i64 %r198

  store i8* %r188, i8** %r232
  br label %L49
L48:
  %r233 = call i8* @Skink_rc_alloc_typed(i64 %r203, i8* bitcast (void (i8*)* @__array_dtor_i8Ptr to i8*))

  %r234 = getelementptr inbounds i8, i8* %r233, i64 -8

  %r235 = bitcast i8* %r234 to i64*

  store i64 %r202, i64* %r235

  %r236 = bitcast i8* %r233 to i8**

  %r237 = bitcast i8* %r200 to i8**

  store i64 0, i64* %r238

  br label %L51
L51:
  %r239 = load i64, i64* %r238

  %r240 = icmp slt i64 %r239, %r198

  br i1 %r240, label %L52, label %L53
L52:
  %r241 = getelementptr i8*, i8** %r237, i64 %r239

  %r242 = load i8*, i8** %r241

  call i8* @Skink_rc_retain(i8* %r242)

  %r243 = getelementptr i8*, i8** %r236, i64 %r239

  store i8* %r242, i8** %r243
  %r244 = add i64 %r239, 1

  store i64 %r244, i64* %r238

  br label %L51
L53:
  %r245 = getelementptr i8*, i8** %r236, i64 %r198

  store i8* %r188, i8** %r245
  %r246 = call i8* @Skink_slice_hdr(i8* %r233, i64 %r202, i64 %r202, i8* %r233)

  br label %L49
L49:
  %r247 = phi i8* [%r197, %L41], [%r191, %L43], [%r191, %L47], [%r246, %L53]

  %r248 = bitcast i8* %r247 to i8**

  %r249 = bitcast i8** %r248 to i8*

  %r250 = bitcast i8** %r182 to i8*

  %r251 = icmp eq i8* %r249, %r250

  br i1 %r251, label %L54, label %L55
L54:
  call i8* @Skink_rc_retain(i8* %r249)

  br label %L55
L55:
  store i8** %r248, i8*** %r252
  %r253 = bitcast i8** %r248 to i8*

  call i8* @Skink_rc_retain(i8* %r253)

  %r254 = load i8**, i8*** %r3
  %r255 = bitcast i8** %r254 to i8*

  call void @Skink_rc_release(i8* %r255)

  store i8** %r248, i8*** %r3
  %r256 = load i8**, i8*** %r3
  %r257 = bitcast i8** %r256 to i8*

  call i8* @Skink_rc_retain(i8* %r257)

  %r258 = load i8**, i8*** %r3
  %r259 = bitcast i8** %r258 to i8*

  call void @Skink_rc_release(i8* %r259)

  %r260 = load i8*, i8** %r189
  call void @Skink_rc_release(i8* %r260)

  %r261 = load i8**, i8*** %r252
  %r262 = bitcast i8** %r261 to i8*

  call void @Skink_rc_release(i8* %r262)

  %r263 = load i8*, i8** %r1
  call void @Skink_rc_release(i8* %r263)

  %r264 = load i8*, i8** %r2
  call void @Skink_rc_release(i8* %r264)

  ret i8** %r256

}
define i8* @str.Join(i8** %arg0, i8* %arg1) {
entry:
  %r1 = alloca i8**
  store i8** null, i8*** %r1
  %r2 = alloca i8*
  store i8* null, i8** %r2
  %r4 = alloca i8*
  store i8* null, i8** %r4
  %r6 = alloca i32
  store i32 0, i32* %r6
  %r18 = alloca i8*
  store i8* null, i8** %r18
  %r34 = alloca i8*
  store i8* null, i8** %r34

  %r3 = bitcast i8** %arg0 to i8*

  call i8* @Skink_rc_retain(i8* %r3)

  store i8** %arg0, i8*** %r1
  call i8* @Skink_rc_retain(i8* %arg1)

  store i8* %arg1, i8** %r2
  %r5 = getelementptr inbounds [1 x i8], [1 x i8]* @str.38, i64 0, i64 0

  call i8* @Skink_rc_retain(i8* %r5)

  store i8* %r5, i8** %r4
  store i32 0, i32* %r6
  br label %L1
L1:
  %r7 = load i32, i32* %r6
  %r8 = load i8**, i8*** %r1
  %r9 = bitcast i8** %r8 to i8*

  %r10 = call i64 @Skink_slice_len(i8* %r9)

  %r11 = trunc i64 %r10 to i32

  %r12 = icmp slt i32 %r7, %r11
  br i1 %r12, label %L2, label %L3
L2:
  %r13 = load i32, i32* %r6
  %r14 = icmp sgt i32 %r13, 0
  br i1 %r14, label %L4, label %L6
L4:
  %r15 = load i8*, i8** %r4
  %r16 = load i8*, i8** %r2
  %r17 = call i8* @str.Concat(i8* %r15, i8* %r16)
  store i8* %r17, i8** %r18
  call i8* @Skink_rc_retain(i8* %r17)

  %r19 = load i8*, i8** %r4
  call void @Skink_rc_release(i8* %r19)

  store i8* %r17, i8** %r4
  %r20 = load i8*, i8** %r18
  call void @Skink_rc_release(i8* %r20)

  br label %L6
L6:
  %r21 = load i8*, i8** %r4
  %r22 = load i8**, i8*** %r1
  %r23 = load i32, i32* %r6
  %r24 = bitcast i8** %r22 to i8*

  %r25 = call i64 @Skink_slice_len(i8* %r24)

  %r26 = add i32 %r23, 1

  %r27 = trunc i64 %r25 to i32

  call void @Skink_bounds_check(i32 %r23, i32 %r26, i32 %r27)

  %r28 = bitcast i8** %r22 to i8*

  %r29 = call i8* @Skink_slice_data(i8* %r28)

  %r30 = bitcast i8* %r29 to i8**

  %r31 = getelementptr inbounds i8*, i8** %r30, i32 %r23
  %r32 = load i8*, i8** %r31
  %r33 = call i8* @str.Concat(i8* %r21, i8* %r32)
  store i8* %r33, i8** %r34
  call i8* @Skink_rc_retain(i8* %r33)

  %r35 = load i8*, i8** %r4
  call void @Skink_rc_release(i8* %r35)

  store i8* %r33, i8** %r4
  %r36 = load i32, i32* %r6
  %r37 = add i32 %r36, 1
  store i32 %r37, i32* %r6
  %r38 = load i8*, i8** %r34
  call void @Skink_rc_release(i8* %r38)

  br label %L1
L3:
  %r39 = load i8*, i8** %r4
  call i8* @Skink_rc_retain(i8* %r39)

  %r40 = load i8*, i8** %r4
  call void @Skink_rc_release(i8* %r40)

  %r41 = load i8**, i8*** %r1
  %r42 = bitcast i8** %r41 to i8*

  call void @Skink_rc_release(i8* %r42)

  %r43 = load i8*, i8** %r2
  call void @Skink_rc_release(i8* %r43)

  ret i8* %r39

}
define i8* @str.Replace(i8* %arg0, i8* %arg1, i8* %arg2) {
entry:
  %r1 = alloca i8*
  store i8* null, i8** %r1
  %r2 = alloca i8*
  store i8* null, i8** %r2
  %r3 = alloca i8*
  store i8* null, i8** %r3
  %r4 = alloca i32
  store i32 0, i32* %r4
  %r12 = alloca i8*
  store i8* null, i8** %r12
  %r17 = alloca i8*
  store i8* null, i8** %r17
  %r19 = alloca i32
  store i32 0, i32* %r19
  %r20 = alloca i32
  store i32 0, i32* %r20
  %r33 = alloca i8*
  store i8* null, i8** %r33
  %r43 = alloca i8*
  store i8* null, i8** %r43
  %r45 = alloca i8*
  store i8* null, i8** %r45

  call i8* @Skink_rc_retain(i8* %arg0)

  store i8* %arg0, i8** %r1
  call i8* @Skink_rc_retain(i8* %arg1)

  store i8* %arg1, i8** %r2
  call i8* @Skink_rc_retain(i8* %arg2)

  store i8* %arg2, i8** %r3
  %r5 = load i8*, i8** %r2
  %r6 = call i32 @str.Len(i8* %r5)
  store i32 %r6, i32* %r4
  %r7 = load i32, i32* %r4
  %r8 = icmp eq i32 %r7, 0
  br i1 %r8, label %L1, label %L3
L1:
  %r9 = load i8*, i8** %r1
  %r10 = getelementptr inbounds [1 x i8], [1 x i8]* @str.39, i64 0, i64 0

  %r11 = call i8* @str.Concat(i8* %r9, i8* %r10)
  store i8* %r11, i8** %r12
  call i8* @Skink_rc_retain(i8* %r11)

  %r13 = load i8*, i8** %r12
  call void @Skink_rc_release(i8* %r13)

  %r14 = load i8*, i8** %r1
  call void @Skink_rc_release(i8* %r14)

  %r15 = load i8*, i8** %r2
  call void @Skink_rc_release(i8* %r15)

  %r16 = load i8*, i8** %r3
  call void @Skink_rc_release(i8* %r16)

  ret i8* %r11
L3:
  %r18 = getelementptr inbounds [1 x i8], [1 x i8]* @str.40, i64 0, i64 0

  call i8* @Skink_rc_retain(i8* %r18)

  store i8* %r18, i8** %r17
  store i32 0, i32* %r19
  %r21 = load i8*, i8** %r1
  %r22 = call i32 @str.Len(i8* %r21)
  store i32 %r22, i32* %r20
  br label %L4
L4:
  %r23 = load i32, i32* %r19
  %r24 = load i32, i32* %r20
  %r25 = icmp slt i32 %r23, %r24
  br i1 %r25, label %L5, label %L7
L5:
  %r26 = load i8*, i8** %r1
  %r27 = load i32, i32* %r19
  %r28 = load i8*, i8** %r2
  %r29 = call i1 @str.matchesAt(i8* %r26, i32 %r27, i8* %r28)
  br i1 %r29, label %L8, label %L9
L8:
  %r30 = load i8*, i8** %r17
  %r31 = load i8*, i8** %r3
  %r32 = call i8* @str.Concat(i8* %r30, i8* %r31)
  store i8* %r32, i8** %r33
  call i8* @Skink_rc_retain(i8* %r32)

  %r34 = load i8*, i8** %r17
  call void @Skink_rc_release(i8* %r34)

  store i8* %r32, i8** %r17
  %r35 = load i32, i32* %r19
  %r36 = load i32, i32* %r4
  %r37 = add i32 %r35, %r36
  store i32 %r37, i32* %r19
  %r38 = load i8*, i8** %r33
  call void @Skink_rc_release(i8* %r38)

  br label %L10
L9:
  %r39 = load i8*, i8** %r17
  %r40 = load i8*, i8** %r1
  %r41 = load i32, i32* %r19
  %r42 = call i8* @str.Substr(i8* %r40, i32 %r41, i32 1)
  store i8* %r42, i8** %r43
  %r44 = call i8* @str.Concat(i8* %r39, i8* %r42)
  store i8* %r44, i8** %r45
  call i8* @Skink_rc_retain(i8* %r44)

  %r46 = load i8*, i8** %r17
  call void @Skink_rc_release(i8* %r46)

  store i8* %r44, i8** %r17
  %r47 = load i32, i32* %r19
  %r48 = add i32 %r47, 1
  store i32 %r48, i32* %r19
  %r49 = load i8*, i8** %r43
  call void @Skink_rc_release(i8* %r49)

  %r50 = load i8*, i8** %r45
  call void @Skink_rc_release(i8* %r50)

  br label %L10
L10:
  br label %L6
L6:
  br label %L4
L7:
  %r51 = load i8*, i8** %r17
  call i8* @Skink_rc_retain(i8* %r51)

  %r52 = load i8*, i8** %r17
  call void @Skink_rc_release(i8* %r52)

  %r53 = load i8*, i8** %r1
  call void @Skink_rc_release(i8* %r53)

  %r54 = load i8*, i8** %r2
  call void @Skink_rc_release(i8* %r54)

  %r55 = load i8*, i8** %r3
  call void @Skink_rc_release(i8* %r55)

  ret i8* %r51

}
define i8* @str.ToLower(i8* %arg0) {
entry:
  %r1 = alloca i8*
  store i8* null, i8** %r1
  %r2 = alloca i32
  store i32 0, i32* %r2
  %r5 = alloca i8*
  store i8* null, i8** %r5
  %r9 = alloca i8*
  store i8* null, i8** %r9
  %r10 = alloca i32
  store i32 0, i32* %r10

  call i8* @Skink_rc_retain(i8* %arg0)

  store i8* %arg0, i8** %r1
  %r3 = load i8*, i8** %r1
  %r4 = call i32 @str.Len(i8* %r3)
  store i32 %r4, i32* %r2
  %r6 = load i32, i32* %r2
  %r7 = add i32 %r6, 1
  %r8 = call i8* @str.managedAlloc(i32 %r7)
  store i8* %r8, i8** %r9
  call i8* @Skink_rc_retain(i8* %r8)

  store i8* %r8, i8** %r5
  store i32 0, i32* %r10
  br label %L1
L1:
  %r11 = load i32, i32* %r10
  %r12 = load i32, i32* %r2
  %r13 = icmp slt i32 %r11, %r12
  br i1 %r13, label %L2, label %L4
L2:
  %r14 = load i8*, i8** %r1
  %r15 = load i32, i32* %r10
  %r16 = getelementptr inbounds i8, i8* %r14, i32 %r15

  %r17 = load i8, i8* %r16

  %r18 = zext i8 %r17 to i32

  %r19 = call i32 @tolower(i32 %r18)
  %r20 = load i8*, i8** %r5
  %r21 = load i32, i32* %r10
  %r22 = trunc i32 %r19 to i8

  %r23 = getelementptr inbounds i8, i8* %r20, i32 %r21
  store i8 %r22, i8* %r23
  br label %L3
L3:
  %r24 = load i32, i32* %r10
  %r25 = add i32 %r24, 1
  store i32 %r25, i32* %r10
  br label %L1
L4:
  %r26 = load i8*, i8** %r5
  %r27 = load i32, i32* %r2
  %r28 = trunc i32 0 to i8

  %r29 = getelementptr inbounds i8, i8* %r26, i32 %r27
  store i8 %r28, i8* %r29
  %r30 = load i8*, i8** %r5
  call i8* @Skink_rc_retain(i8* %r30)

  %r31 = load i8*, i8** %r9
  call void @Skink_rc_release(i8* %r31)

  %r32 = load i8*, i8** %r5
  call void @Skink_rc_release(i8* %r32)

  %r33 = load i8*, i8** %r1
  call void @Skink_rc_release(i8* %r33)

  ret i8* %r30

}
define i8* @str.ToUpper(i8* %arg0) {
entry:
  %r1 = alloca i8*
  store i8* null, i8** %r1
  %r2 = alloca i32
  store i32 0, i32* %r2
  %r5 = alloca i8*
  store i8* null, i8** %r5
  %r9 = alloca i8*
  store i8* null, i8** %r9
  %r10 = alloca i32
  store i32 0, i32* %r10

  call i8* @Skink_rc_retain(i8* %arg0)

  store i8* %arg0, i8** %r1
  %r3 = load i8*, i8** %r1
  %r4 = call i32 @str.Len(i8* %r3)
  store i32 %r4, i32* %r2
  %r6 = load i32, i32* %r2
  %r7 = add i32 %r6, 1
  %r8 = call i8* @str.managedAlloc(i32 %r7)
  store i8* %r8, i8** %r9
  call i8* @Skink_rc_retain(i8* %r8)

  store i8* %r8, i8** %r5
  store i32 0, i32* %r10
  br label %L1
L1:
  %r11 = load i32, i32* %r10
  %r12 = load i32, i32* %r2
  %r13 = icmp slt i32 %r11, %r12
  br i1 %r13, label %L2, label %L4
L2:
  %r14 = load i8*, i8** %r1
  %r15 = load i32, i32* %r10
  %r16 = getelementptr inbounds i8, i8* %r14, i32 %r15

  %r17 = load i8, i8* %r16

  %r18 = zext i8 %r17 to i32

  %r19 = call i32 @toupper(i32 %r18)
  %r20 = load i8*, i8** %r5
  %r21 = load i32, i32* %r10
  %r22 = trunc i32 %r19 to i8

  %r23 = getelementptr inbounds i8, i8* %r20, i32 %r21
  store i8 %r22, i8* %r23
  br label %L3
L3:
  %r24 = load i32, i32* %r10
  %r25 = add i32 %r24, 1
  store i32 %r25, i32* %r10
  br label %L1
L4:
  %r26 = load i8*, i8** %r5
  %r27 = load i32, i32* %r2
  %r28 = trunc i32 0 to i8

  %r29 = getelementptr inbounds i8, i8* %r26, i32 %r27
  store i8 %r28, i8* %r29
  %r30 = load i8*, i8** %r5
  call i8* @Skink_rc_retain(i8* %r30)

  %r31 = load i8*, i8** %r9
  call void @Skink_rc_release(i8* %r31)

  %r32 = load i8*, i8** %r5
  call void @Skink_rc_release(i8* %r32)

  %r33 = load i8*, i8** %r1
  call void @Skink_rc_release(i8* %r33)

  ret i8* %r30

}
define i8* @str.Repeat(i8* %arg0, i32 %arg1) {
entry:
  %r1 = alloca i8*
  store i8* null, i8** %r1
  %r2 = alloca i32
  store i32 0, i32* %r2
  %r8 = alloca i8*
  store i8* null, i8** %r8
  %r11 = alloca i32
  store i32 0, i32* %r11
  %r19 = alloca i8*
  store i8* null, i8** %r19
  %r31 = alloca i8*
  store i8* null, i8** %r31
  %r34 = alloca i32
  store i32 0, i32* %r34
  %r38 = alloca i8*
  store i8* null, i8** %r38
  %r42 = alloca i8*
  store i8* null, i8** %r42
  %r43 = alloca i32
  store i32 0, i32* %r43
  %r47 = alloca i32
  store i32 0, i32* %r47

  call i8* @Skink_rc_retain(i8* %arg0)

  store i8* %arg0, i8** %r1
  store i32 %arg1, i32* %r2
  %r3 = load i32, i32* %r2
  %r4 = icmp sle i32 %r3, 0
  br i1 %r4, label %L1, label %L3
L1:
  %r5 = getelementptr inbounds [1 x i8], [1 x i8]* @str.41, i64 0, i64 0

  %r6 = getelementptr inbounds [1 x i8], [1 x i8]* @str.42, i64 0, i64 0

  %r7 = call i8* @str.Concat(i8* %r5, i8* %r6)
  store i8* %r7, i8** %r8
  call i8* @Skink_rc_retain(i8* %r7)

  %r9 = load i8*, i8** %r8
  call void @Skink_rc_release(i8* %r9)

  %r10 = load i8*, i8** %r1
  call void @Skink_rc_release(i8* %r10)

  ret i8* %r7
L3:
  %r12 = load i8*, i8** %r1
  %r13 = call i32 @str.Len(i8* %r12)
  store i32 %r13, i32* %r11
  %r14 = load i32, i32* %r11
  %r15 = icmp eq i32 %r14, 0
  br i1 %r15, label %L4, label %L6
L4:
  %r16 = getelementptr inbounds [1 x i8], [1 x i8]* @str.43, i64 0, i64 0

  %r17 = getelementptr inbounds [1 x i8], [1 x i8]* @str.44, i64 0, i64 0

  %r18 = call i8* @str.Concat(i8* %r16, i8* %r17)
  store i8* %r18, i8** %r19
  call i8* @Skink_rc_retain(i8* %r18)

  %r20 = load i8*, i8** %r19
  call void @Skink_rc_release(i8* %r20)

  %r21 = load i8*, i8** %r1
  call void @Skink_rc_release(i8* %r21)

  ret i8* %r18
L6:
  %r22 = load i32, i32* %r11
  %r23 = load i32, i32* %r2
  %r24 = icmp eq i32 %r23, 0

  br i1 %r24, label %L7, label %L8
L7:
  %r25 = getelementptr inbounds [23 x i8], [23 x i8]* @str.45, i64 0, i64 0

  call void @Skink_panic(i8* %r25)

  unreachable
  br label %L8
L8:
  %r26 = sdiv i32 2147483647, %r23
  %r27 = icmp sgt i32 %r22, %r26
  br i1 %r27, label %L9, label %L11
L9:
  %r28 = getelementptr inbounds [1 x i8], [1 x i8]* @str.46, i64 0, i64 0

  %r29 = getelementptr inbounds [1 x i8], [1 x i8]* @str.47, i64 0, i64 0

  %r30 = call i8* @str.Concat(i8* %r28, i8* %r29)
  store i8* %r30, i8** %r31
  call i8* @Skink_rc_retain(i8* %r30)

  %r32 = load i8*, i8** %r31
  call void @Skink_rc_release(i8* %r32)

  %r33 = load i8*, i8** %r1
  call void @Skink_rc_release(i8* %r33)

  ret i8* %r30
L11:
  %r35 = load i32, i32* %r11
  %r36 = load i32, i32* %r2
  %r37 = mul i32 %r35, %r36
  store i32 %r37, i32* %r34
  %r39 = load i32, i32* %r34
  %r40 = add i32 %r39, 1
  %r41 = call i8* @str.managedAlloc(i32 %r40)
  store i8* %r41, i8** %r42
  call i8* @Skink_rc_retain(i8* %r41)

  store i8* %r41, i8** %r38
  store i32 0, i32* %r43
  br label %L12
L12:
  %r44 = load i32, i32* %r43
  %r45 = load i32, i32* %r2
  %r46 = icmp slt i32 %r44, %r45
  br i1 %r46, label %L13, label %L15
L13:
  store i32 0, i32* %r47
  br label %L16
L16:
  %r48 = load i32, i32* %r47
  %r49 = load i32, i32* %r11
  %r50 = icmp slt i32 %r48, %r49
  br i1 %r50, label %L17, label %L19
L17:
  %r51 = load i8*, i8** %r1
  %r52 = load i32, i32* %r47
  %r53 = getelementptr inbounds i8, i8* %r51, i32 %r52

  %r54 = load i8, i8* %r53

  %r55 = zext i8 %r54 to i32

  %r56 = load i8*, i8** %r38
  %r57 = load i32, i32* %r43
  %r58 = load i32, i32* %r11
  %r59 = mul i32 %r57, %r58
  %r60 = load i32, i32* %r47
  %r61 = add i32 %r59, %r60
  %r62 = trunc i32 %r55 to i8

  %r63 = getelementptr inbounds i8, i8* %r56, i32 %r61
  store i8 %r62, i8* %r63
  br label %L18
L18:
  %r64 = load i32, i32* %r47
  %r65 = add i32 %r64, 1
  store i32 %r65, i32* %r47
  br label %L16
L19:
  br label %L14
L14:
  %r66 = load i32, i32* %r43
  %r67 = add i32 %r66, 1
  store i32 %r67, i32* %r43
  br label %L12
L15:
  %r68 = load i8*, i8** %r38
  %r69 = load i32, i32* %r34
  %r70 = trunc i32 0 to i8

  %r71 = getelementptr inbounds i8, i8* %r68, i32 %r69
  store i8 %r70, i8* %r71
  %r72 = load i8*, i8** %r38
  call i8* @Skink_rc_retain(i8* %r72)

  %r73 = load i8*, i8** %r42
  call void @Skink_rc_release(i8* %r73)

  %r74 = load i8*, i8** %r38
  call void @Skink_rc_release(i8* %r74)

  %r75 = load i8*, i8** %r1
  call void @Skink_rc_release(i8* %r75)

  ret i8* %r72

}
define { i32, i1 } @strconv.ParseInt(i8* %arg0) {
entry:
  %r1 = alloca i8*
  store i8* null, i8** %r1
  %r2 = alloca i32
  store i32 0, i32* %r2
  %r11 = alloca i32
  store i32 0, i32* %r11
  %r15 = alloca i32
  store i32 0, i32* %r15
  %r41 = alloca i1
  store i1 false, i1* %r41
  %r64 = alloca i64
  store i64 0, i64* %r64
  %r68 = alloca i32
  store i32 0, i32* %r68
  %r94 = alloca i64
  store i64 0, i64* %r94
  %r98 = alloca i64
  store i64 0, i64* %r98
  %r121 = alloca i64
  store i64 0, i64* %r121
  %r122 = alloca i64
  store i64 0, i64* %r122

  call i8* @Skink_rc_retain(i8* %arg0)

  store i8* %arg0, i8** %r1
  %r3 = load i8*, i8** %r1
  %r4 = call i32 @strlen(i8* %r3)
  store i32 %r4, i32* %r2
  %r6 = load i32, i32* %r2
  %r7 = icmp eq i32 %r6, 0
  br i1 %r7, label %L1, label %L3
L1:
  %r8 = insertvalue { i32, i1 } undef, i32 0, 0
  %r9 = insertvalue { i32, i1 } %r8, i1 0, 1
  %r10 = load i8*, i8** %r1
  call void @Skink_rc_release(i8* %r10)

  ret { i32, i1 } %r9
L3:
  store i32 0, i32* %r11
  br label %L4
L4:
  %r12 = load i32, i32* %r11
  %r13 = load i32, i32* %r2
  %r14 = icmp slt i32 %r12, %r13
  br i1 %r14, label %L5, label %L7
L5:
  %r16 = load i8*, i8** %r1
  %r17 = load i32, i32* %r11
  %r18 = getelementptr inbounds i8, i8* %r16, i32 %r17

  %r19 = load i8, i8* %r18

  %r20 = zext i8 %r19 to i32

  store i32 %r20, i32* %r15
  %r22 = load i32, i32* %r15
  %r23 = icmp eq i32 %r22, 32
  br i1 %r23, label %L8, label %L9
L8:
  br label %L11
L9:
  %r24 = load i32, i32* %r15
  %r25 = icmp eq i32 %r24, 9
  br label %L10
L10:
  br label %L11
L11:
  %r26 = phi i1 [true, %L8], [%r25, %L10]
  br i1 %r26, label %L12, label %L13
L12:
  br label %L15
L13:
  %r27 = load i32, i32* %r15
  %r28 = icmp eq i32 %r27, 10
  br label %L14
L14:
  br label %L15
L15:
  %r29 = phi i1 [true, %L12], [%r28, %L14]
  br i1 %r29, label %L16, label %L17
L16:
  br label %L19
L17:
  %r30 = load i32, i32* %r15
  %r31 = icmp eq i32 %r30, 13
  br label %L18
L18:
  br label %L19
L19:
  %r32 = phi i1 [true, %L16], [%r31, %L18]
  br i1 %r32, label %L20, label %L21
L20:
  %r33 = load i32, i32* %r11
  %r34 = add i32 %r33, 1
  store i32 %r34, i32* %r11
  br label %L22
L21:
  br label %L7
L22:
  br label %L6
L6:
  br label %L4
L7:
  %r35 = load i32, i32* %r11
  %r36 = load i32, i32* %r2
  %r37 = icmp sge i32 %r35, %r36
  br i1 %r37, label %L23, label %L25
L23:
  %r38 = insertvalue { i32, i1 } undef, i32 0, 0
  %r39 = insertvalue { i32, i1 } %r38, i1 0, 1
  %r40 = load i8*, i8** %r1
  call void @Skink_rc_release(i8* %r40)

  ret { i32, i1 } %r39
L25:
  store i1 false, i1* %r41
  %r42 = load i8*, i8** %r1
  %r43 = load i32, i32* %r11
  %r44 = getelementptr inbounds i8, i8* %r42, i32 %r43

  %r45 = load i8, i8* %r44

  %r46 = zext i8 %r45 to i32

  %r47 = icmp eq i32 %r46, 43
  br i1 %r47, label %L26, label %L27
L26:
  %r48 = load i32, i32* %r11
  %r49 = add i32 %r48, 1
  store i32 %r49, i32* %r11
  br label %L28
L27:
  %r50 = load i8*, i8** %r1
  %r51 = load i32, i32* %r11
  %r52 = getelementptr inbounds i8, i8* %r50, i32 %r51

  %r53 = load i8, i8* %r52

  %r54 = zext i8 %r53 to i32

  %r55 = icmp eq i32 %r54, 45
  br i1 %r55, label %L29, label %L31
L29:
  store i1 1, i1* %r41
  %r56 = load i32, i32* %r11
  %r57 = add i32 %r56, 1
  store i32 %r57, i32* %r11
  br label %L31
L31:
  br label %L28
L28:
  %r58 = load i32, i32* %r11
  %r59 = load i32, i32* %r2
  %r60 = icmp sge i32 %r58, %r59
  br i1 %r60, label %L32, label %L34
L32:
  %r61 = insertvalue { i32, i1 } undef, i32 0, 0
  %r62 = insertvalue { i32, i1 } %r61, i1 0, 1
  %r63 = load i8*, i8** %r1
  call void @Skink_rc_release(i8* %r63)

  ret { i32, i1 } %r62
L34:
  store i64 0, i64* %r64
  br label %L35
L35:
  %r65 = load i32, i32* %r11
  %r66 = load i32, i32* %r2
  %r67 = icmp slt i32 %r65, %r66
  br i1 %r67, label %L36, label %L38
L36:
  %r69 = load i8*, i8** %r1
  %r70 = load i32, i32* %r11
  %r71 = getelementptr inbounds i8, i8* %r69, i32 %r70

  %r72 = load i8, i8* %r71

  %r73 = zext i8 %r72 to i32

  store i32 %r73, i32* %r68
  %r75 = load i32, i32* %r68
  %r76 = icmp slt i32 %r75, 48
  br i1 %r76, label %L39, label %L40
L39:
  br label %L42
L40:
  %r77 = load i32, i32* %r68
  %r78 = icmp sgt i32 %r77, 57
  br label %L41
L41:
  br label %L42
L42:
  %r79 = phi i1 [true, %L39], [%r78, %L41]
  br i1 %r79, label %L43, label %L45
L43:
  %r80 = load i32, i32* %r68
  %r81 = icmp eq i32 %r80, 32
  br i1 %r81, label %L46, label %L47
L46:
  br label %L49
L47:
  %r82 = load i32, i32* %r68
  %r83 = icmp eq i32 %r82, 9
  br label %L48
L48:
  br label %L49
L49:
  %r84 = phi i1 [true, %L46], [%r83, %L48]
  br i1 %r84, label %L50, label %L51
L50:
  br label %L53
L51:
  %r85 = load i32, i32* %r68
  %r86 = icmp eq i32 %r85, 10
  br label %L52
L52:
  br label %L53
L53:
  %r87 = phi i1 [true, %L50], [%r86, %L52]
  br i1 %r87, label %L54, label %L55
L54:
  br label %L57
L55:
  %r88 = load i32, i32* %r68
  %r89 = icmp eq i32 %r88, 13
  br label %L56
L56:
  br label %L57
L57:
  %r90 = phi i1 [true, %L54], [%r89, %L56]
  br i1 %r90, label %L58, label %L60
L58:
  br label %L38
L60:
  %r91 = insertvalue { i32, i1 } undef, i32 0, 0
  %r92 = insertvalue { i32, i1 } %r91, i1 0, 1
  %r93 = load i8*, i8** %r1
  call void @Skink_rc_release(i8* %r93)

  ret { i32, i1 } %r92
L45:
  %r95 = load i32, i32* %r68
  %r96 = sub i32 %r95, 48
  %r97 = sext i32 %r96 to i64

  store i64 %r97, i64* %r94
  store i64 2147483647, i64* %r98
  %r99 = load i64, i64* %r64
  %r100 = load i64, i64* %r98
  %r101 = load i64, i64* %r94
  %r102 = sub i64 %r100, %r101
  %r103 = sext i32 10 to i64

  %r104 = icmp eq i64 %r103, 0

  br i1 %r104, label %L61, label %L62
L61:
  %r105 = getelementptr inbounds [23 x i8], [23 x i8]* @str.48, i64 0, i64 0

  call void @Skink_panic(i8* %r105)

  unreachable
  br label %L62
L62:
  %r106 = sdiv i64 %r102, %r103
  %r107 = icmp sgt i64 %r99, %r106
  br i1 %r107, label %L63, label %L65
L63:
  %r108 = insertvalue { i32, i1 } undef, i32 0, 0
  %r109 = insertvalue { i32, i1 } %r108, i1 0, 1
  %r110 = load i8*, i8** %r1
  call void @Skink_rc_release(i8* %r110)

  ret { i32, i1 } %r109
L65:
  %r111 = load i64, i64* %r64
  %r112 = sext i32 10 to i64

  %r113 = mul i64 %r111, %r112
  %r114 = load i64, i64* %r94
  %r115 = add i64 %r113, %r114
  store i64 %r115, i64* %r64
  %r116 = load i32, i32* %r11
  %r117 = add i32 %r116, 1
  store i32 %r117, i32* %r11
  br label %L37
L37:
  br label %L35
L38:
  %r118 = load i1, i1* %r41
  br i1 %r118, label %L66, label %L68
L66:
  %r119 = load i64, i64* %r64
  %r120 = sub i64 0, %r119
  store i64 %r120, i64* %r64
  br label %L68
L68:
  store i64 2147483647, i64* %r121
  %r123 = load i64, i64* %r121
  %r124 = sub i64 0, %r123
  %r125 = sub i64 %r124, 1
  store i64 %r125, i64* %r122
  %r126 = load i64, i64* %r64
  %r127 = load i64, i64* %r121
  %r128 = icmp sgt i64 %r126, %r127
  br i1 %r128, label %L69, label %L70
L69:
  br label %L72
L70:
  %r129 = load i64, i64* %r64
  %r130 = load i64, i64* %r122
  %r131 = icmp slt i64 %r129, %r130
  br label %L71
L71:
  br label %L72
L72:
  %r132 = phi i1 [true, %L69], [%r131, %L71]
  br i1 %r132, label %L73, label %L75
L73:
  %r133 = insertvalue { i32, i1 } undef, i32 0, 0
  %r134 = insertvalue { i32, i1 } %r133, i1 0, 1
  %r135 = load i8*, i8** %r1
  call void @Skink_rc_release(i8* %r135)

  ret { i32, i1 } %r134
L75:
  %r136 = load i64, i64* %r64
  %r137 = trunc i64 %r136 to i32

  %r138 = insertvalue { i32, i1 } undef, i32 %r137, 0
  %r139 = insertvalue { i32, i1 } %r138, i1 1, 1
  %r140 = load i8*, i8** %r1
  call void @Skink_rc_release(i8* %r140)

  ret { i32, i1 } %r139

}
define { i64, i1 } @strconv.ParseInt64(i8* %arg0) {
entry:
  %r1 = alloca i8*
  store i8* null, i8** %r1
  %r2 = alloca i32
  store i32 0, i32* %r2
  %r11 = alloca i32
  store i32 0, i32* %r11
  %r15 = alloca i32
  store i32 0, i32* %r15
  %r41 = alloca i1
  store i1 false, i1* %r41
  %r64 = alloca i64
  store i64 0, i64* %r64
  %r68 = alloca i32
  store i32 0, i32* %r68
  %r94 = alloca i64
  store i64 0, i64* %r94
  %r98 = alloca i64
  store i64 0, i64* %r98

  call i8* @Skink_rc_retain(i8* %arg0)

  store i8* %arg0, i8** %r1
  %r3 = load i8*, i8** %r1
  %r4 = call i32 @strlen(i8* %r3)
  store i32 %r4, i32* %r2
  %r6 = load i32, i32* %r2
  %r7 = icmp eq i32 %r6, 0
  br i1 %r7, label %L1, label %L3
L1:
  %r8 = insertvalue { i64, i1 } undef, i64 0, 0
  %r9 = insertvalue { i64, i1 } %r8, i1 0, 1
  %r10 = load i8*, i8** %r1
  call void @Skink_rc_release(i8* %r10)

  ret { i64, i1 } %r9
L3:
  store i32 0, i32* %r11
  br label %L4
L4:
  %r12 = load i32, i32* %r11
  %r13 = load i32, i32* %r2
  %r14 = icmp slt i32 %r12, %r13
  br i1 %r14, label %L5, label %L7
L5:
  %r16 = load i8*, i8** %r1
  %r17 = load i32, i32* %r11
  %r18 = getelementptr inbounds i8, i8* %r16, i32 %r17

  %r19 = load i8, i8* %r18

  %r20 = zext i8 %r19 to i32

  store i32 %r20, i32* %r15
  %r22 = load i32, i32* %r15
  %r23 = icmp eq i32 %r22, 32
  br i1 %r23, label %L8, label %L9
L8:
  br label %L11
L9:
  %r24 = load i32, i32* %r15
  %r25 = icmp eq i32 %r24, 9
  br label %L10
L10:
  br label %L11
L11:
  %r26 = phi i1 [true, %L8], [%r25, %L10]
  br i1 %r26, label %L12, label %L13
L12:
  br label %L15
L13:
  %r27 = load i32, i32* %r15
  %r28 = icmp eq i32 %r27, 10
  br label %L14
L14:
  br label %L15
L15:
  %r29 = phi i1 [true, %L12], [%r28, %L14]
  br i1 %r29, label %L16, label %L17
L16:
  br label %L19
L17:
  %r30 = load i32, i32* %r15
  %r31 = icmp eq i32 %r30, 13
  br label %L18
L18:
  br label %L19
L19:
  %r32 = phi i1 [true, %L16], [%r31, %L18]
  br i1 %r32, label %L20, label %L21
L20:
  %r33 = load i32, i32* %r11
  %r34 = add i32 %r33, 1
  store i32 %r34, i32* %r11
  br label %L22
L21:
  br label %L7
L22:
  br label %L6
L6:
  br label %L4
L7:
  %r35 = load i32, i32* %r11
  %r36 = load i32, i32* %r2
  %r37 = icmp sge i32 %r35, %r36
  br i1 %r37, label %L23, label %L25
L23:
  %r38 = insertvalue { i64, i1 } undef, i64 0, 0
  %r39 = insertvalue { i64, i1 } %r38, i1 0, 1
  %r40 = load i8*, i8** %r1
  call void @Skink_rc_release(i8* %r40)

  ret { i64, i1 } %r39
L25:
  store i1 false, i1* %r41
  %r42 = load i8*, i8** %r1
  %r43 = load i32, i32* %r11
  %r44 = getelementptr inbounds i8, i8* %r42, i32 %r43

  %r45 = load i8, i8* %r44

  %r46 = zext i8 %r45 to i32

  %r47 = icmp eq i32 %r46, 43
  br i1 %r47, label %L26, label %L27
L26:
  %r48 = load i32, i32* %r11
  %r49 = add i32 %r48, 1
  store i32 %r49, i32* %r11
  br label %L28
L27:
  %r50 = load i8*, i8** %r1
  %r51 = load i32, i32* %r11
  %r52 = getelementptr inbounds i8, i8* %r50, i32 %r51

  %r53 = load i8, i8* %r52

  %r54 = zext i8 %r53 to i32

  %r55 = icmp eq i32 %r54, 45
  br i1 %r55, label %L29, label %L31
L29:
  store i1 1, i1* %r41
  %r56 = load i32, i32* %r11
  %r57 = add i32 %r56, 1
  store i32 %r57, i32* %r11
  br label %L31
L31:
  br label %L28
L28:
  %r58 = load i32, i32* %r11
  %r59 = load i32, i32* %r2
  %r60 = icmp sge i32 %r58, %r59
  br i1 %r60, label %L32, label %L34
L32:
  %r61 = insertvalue { i64, i1 } undef, i64 0, 0
  %r62 = insertvalue { i64, i1 } %r61, i1 0, 1
  %r63 = load i8*, i8** %r1
  call void @Skink_rc_release(i8* %r63)

  ret { i64, i1 } %r62
L34:
  store i64 0, i64* %r64
  br label %L35
L35:
  %r65 = load i32, i32* %r11
  %r66 = load i32, i32* %r2
  %r67 = icmp slt i32 %r65, %r66
  br i1 %r67, label %L36, label %L38
L36:
  %r69 = load i8*, i8** %r1
  %r70 = load i32, i32* %r11
  %r71 = getelementptr inbounds i8, i8* %r69, i32 %r70

  %r72 = load i8, i8* %r71

  %r73 = zext i8 %r72 to i32

  store i32 %r73, i32* %r68
  %r75 = load i32, i32* %r68
  %r76 = icmp slt i32 %r75, 48
  br i1 %r76, label %L39, label %L40
L39:
  br label %L42
L40:
  %r77 = load i32, i32* %r68
  %r78 = icmp sgt i32 %r77, 57
  br label %L41
L41:
  br label %L42
L42:
  %r79 = phi i1 [true, %L39], [%r78, %L41]
  br i1 %r79, label %L43, label %L45
L43:
  %r80 = load i32, i32* %r68
  %r81 = icmp eq i32 %r80, 32
  br i1 %r81, label %L46, label %L47
L46:
  br label %L49
L47:
  %r82 = load i32, i32* %r68
  %r83 = icmp eq i32 %r82, 9
  br label %L48
L48:
  br label %L49
L49:
  %r84 = phi i1 [true, %L46], [%r83, %L48]
  br i1 %r84, label %L50, label %L51
L50:
  br label %L53
L51:
  %r85 = load i32, i32* %r68
  %r86 = icmp eq i32 %r85, 10
  br label %L52
L52:
  br label %L53
L53:
  %r87 = phi i1 [true, %L50], [%r86, %L52]
  br i1 %r87, label %L54, label %L55
L54:
  br label %L57
L55:
  %r88 = load i32, i32* %r68
  %r89 = icmp eq i32 %r88, 13
  br label %L56
L56:
  br label %L57
L57:
  %r90 = phi i1 [true, %L54], [%r89, %L56]
  br i1 %r90, label %L58, label %L60
L58:
  br label %L38
L60:
  %r91 = insertvalue { i64, i1 } undef, i64 0, 0
  %r92 = insertvalue { i64, i1 } %r91, i1 0, 1
  %r93 = load i8*, i8** %r1
  call void @Skink_rc_release(i8* %r93)

  ret { i64, i1 } %r92
L45:
  %r95 = load i32, i32* %r68
  %r96 = sub i32 %r95, 48
  %r97 = sext i32 %r96 to i64

  store i64 %r97, i64* %r94
  store i64 922337203685477580, i64* %r98
  %r99 = load i64, i64* %r64
  %r100 = load i64, i64* %r98
  %r101 = icmp sgt i64 %r99, %r100
  br i1 %r101, label %L61, label %L62
L61:
  br label %L64
L62:
  %r102 = load i64, i64* %r64
  %r103 = load i64, i64* %r98
  %r104 = icmp eq i64 %r102, %r103
  br i1 %r104, label %L65, label %L66
L65:
  %r105 = load i64, i64* %r94
  %r106 = icmp sgt i64 %r105, 7
  br label %L67
L67:
  br label %L68
L66:
  br label %L68
L68:
  %r107 = phi i1 [false, %L66], [%r106, %L67]
  br label %L63
L63:
  br label %L64
L64:
  %r108 = phi i1 [true, %L61], [%r107, %L63]
  br i1 %r108, label %L69, label %L71
L69:
  %r109 = insertvalue { i64, i1 } undef, i64 0, 0
  %r110 = insertvalue { i64, i1 } %r109, i1 0, 1
  %r111 = load i8*, i8** %r1
  call void @Skink_rc_release(i8* %r111)

  ret { i64, i1 } %r110
L71:
  %r112 = load i64, i64* %r64
  %r113 = sext i32 10 to i64

  %r114 = mul i64 %r112, %r113
  %r115 = load i64, i64* %r94
  %r116 = add i64 %r114, %r115
  store i64 %r116, i64* %r64
  %r117 = load i32, i32* %r11
  %r118 = add i32 %r117, 1
  store i32 %r118, i32* %r11
  br label %L37
L37:
  br label %L35
L38:
  %r119 = load i1, i1* %r41
  br i1 %r119, label %L72, label %L74
L72:
  %r120 = load i64, i64* %r64
  %r121 = sub i64 0, %r120
  store i64 %r121, i64* %r64
  br label %L74
L74:
  %r122 = load i64, i64* %r64
  %r123 = insertvalue { i64, i1 } undef, i64 %r122, 0
  %r124 = insertvalue { i64, i1 } %r123, i1 1, 1
  %r125 = load i8*, i8** %r1
  call void @Skink_rc_release(i8* %r125)

  ret { i64, i1 } %r124

}
define { double, i1 } @strconv.ParseFloat(i8* %arg0) {
entry:
  %r1 = alloca i8*
  store i8* null, i8** %r1
  %r2 = alloca i32
  store i32 0, i32* %r2
  %r11 = alloca i32
  store i32 0, i32* %r11
  %r15 = alloca i32
  store i32 0, i32* %r15
  %r62 = alloca i1
  store i1 false, i1* %r62
  %r66 = alloca i32
  store i32 0, i32* %r66
  %r95 = alloca i32
  store i32 0, i32* %r95
  %r152 = alloca i1
  store i1 false, i1* %r152
  %r156 = alloca i32
  store i32 0, i32* %r156
  %r178 = alloca i32
  store i32 0, i32* %r178

  call i8* @Skink_rc_retain(i8* %arg0)

  store i8* %arg0, i8** %r1
  %r3 = load i8*, i8** %r1
  %r4 = call i32 @strlen(i8* %r3)
  store i32 %r4, i32* %r2
  %r6 = load i32, i32* %r2
  %r7 = icmp eq i32 %r6, 0
  br i1 %r7, label %L1, label %L3
L1:
  %r8 = insertvalue { double, i1 } undef, double 0.0, 0
  %r9 = insertvalue { double, i1 } %r8, i1 0, 1
  %r10 = load i8*, i8** %r1
  call void @Skink_rc_release(i8* %r10)

  ret { double, i1 } %r9
L3:
  store i32 0, i32* %r11
  br label %L4
L4:
  %r12 = load i32, i32* %r11
  %r13 = load i32, i32* %r2
  %r14 = icmp slt i32 %r12, %r13
  br i1 %r14, label %L5, label %L7
L5:
  %r16 = load i8*, i8** %r1
  %r17 = load i32, i32* %r11
  %r18 = getelementptr inbounds i8, i8* %r16, i32 %r17

  %r19 = load i8, i8* %r18

  %r20 = zext i8 %r19 to i32

  store i32 %r20, i32* %r15
  %r22 = load i32, i32* %r15
  %r23 = icmp eq i32 %r22, 32
  br i1 %r23, label %L8, label %L9
L8:
  br label %L11
L9:
  %r24 = load i32, i32* %r15
  %r25 = icmp eq i32 %r24, 9
  br label %L10
L10:
  br label %L11
L11:
  %r26 = phi i1 [true, %L8], [%r25, %L10]
  br i1 %r26, label %L12, label %L13
L12:
  br label %L15
L13:
  %r27 = load i32, i32* %r15
  %r28 = icmp eq i32 %r27, 10
  br label %L14
L14:
  br label %L15
L15:
  %r29 = phi i1 [true, %L12], [%r28, %L14]
  br i1 %r29, label %L16, label %L17
L16:
  br label %L19
L17:
  %r30 = load i32, i32* %r15
  %r31 = icmp eq i32 %r30, 13
  br label %L18
L18:
  br label %L19
L19:
  %r32 = phi i1 [true, %L16], [%r31, %L18]
  br i1 %r32, label %L20, label %L21
L20:
  %r33 = load i32, i32* %r11
  %r34 = add i32 %r33, 1
  store i32 %r34, i32* %r11
  br label %L22
L21:
  br label %L7
L22:
  br label %L6
L6:
  br label %L4
L7:
  %r35 = load i32, i32* %r11
  %r36 = load i32, i32* %r2
  %r37 = icmp sge i32 %r35, %r36
  br i1 %r37, label %L23, label %L25
L23:
  %r38 = insertvalue { double, i1 } undef, double 0.0, 0
  %r39 = insertvalue { double, i1 } %r38, i1 0, 1
  %r40 = load i8*, i8** %r1
  call void @Skink_rc_release(i8* %r40)

  ret { double, i1 } %r39
L25:
  %r41 = load i8*, i8** %r1
  %r42 = load i32, i32* %r11
  %r43 = getelementptr inbounds i8, i8* %r41, i32 %r42

  %r44 = load i8, i8* %r43

  %r45 = zext i8 %r44 to i32

  %r46 = icmp eq i32 %r45, 43
  br i1 %r46, label %L26, label %L27
L26:
  br label %L29
L27:
  %r47 = load i8*, i8** %r1
  %r48 = load i32, i32* %r11
  %r49 = getelementptr inbounds i8, i8* %r47, i32 %r48

  %r50 = load i8, i8* %r49

  %r51 = zext i8 %r50 to i32

  %r52 = icmp eq i32 %r51, 45
  br label %L28
L28:
  br label %L29
L29:
  %r53 = phi i1 [true, %L26], [%r52, %L28]
  br i1 %r53, label %L30, label %L32
L30:
  %r54 = load i32, i32* %r11
  %r55 = add i32 %r54, 1
  store i32 %r55, i32* %r11
  br label %L32
L32:
  %r56 = load i32, i32* %r11
  %r57 = load i32, i32* %r2
  %r58 = icmp sge i32 %r56, %r57
  br i1 %r58, label %L33, label %L35
L33:
  %r59 = insertvalue { double, i1 } undef, double 0.0, 0
  %r60 = insertvalue { double, i1 } %r59, i1 0, 1
  %r61 = load i8*, i8** %r1
  call void @Skink_rc_release(i8* %r61)

  ret { double, i1 } %r60
L35:
  store i1 false, i1* %r62
  br label %L36
L36:
  %r63 = load i32, i32* %r11
  %r64 = load i32, i32* %r2
  %r65 = icmp slt i32 %r63, %r64
  br i1 %r65, label %L37, label %L39
L37:
  %r67 = load i8*, i8** %r1
  %r68 = load i32, i32* %r11
  %r69 = getelementptr inbounds i8, i8* %r67, i32 %r68

  %r70 = load i8, i8* %r69

  %r71 = zext i8 %r70 to i32

  store i32 %r71, i32* %r66
  %r73 = load i32, i32* %r66
  %r74 = icmp sge i32 %r73, 48
  br i1 %r74, label %L40, label %L41
L40:
  %r75 = load i32, i32* %r66
  %r76 = icmp sle i32 %r75, 57
  br label %L42
L42:
  br label %L43
L41:
  br label %L43
L43:
  %r77 = phi i1 [false, %L41], [%r76, %L42]
  br i1 %r77, label %L44, label %L45
L44:
  store i1 1, i1* %r62
  %r78 = load i32, i32* %r11
  %r79 = add i32 %r78, 1
  store i32 %r79, i32* %r11
  br label %L46
L45:
  br label %L39
L46:
  br label %L38
L38:
  br label %L36
L39:
  %r80 = load i32, i32* %r11
  %r81 = load i32, i32* %r2
  %r82 = icmp slt i32 %r80, %r81
  br i1 %r82, label %L47, label %L48
L47:
  %r83 = load i8*, i8** %r1
  %r84 = load i32, i32* %r11
  %r85 = getelementptr inbounds i8, i8* %r83, i32 %r84

  %r86 = load i8, i8* %r85

  %r87 = zext i8 %r86 to i32

  %r88 = icmp eq i32 %r87, 46
  br label %L49
L49:
  br label %L50
L48:
  br label %L50
L50:
  %r89 = phi i1 [false, %L48], [%r88, %L49]
  br i1 %r89, label %L51, label %L53
L51:
  %r90 = load i32, i32* %r11
  %r91 = add i32 %r90, 1
  store i32 %r91, i32* %r11
  br label %L54
L54:
  %r92 = load i32, i32* %r11
  %r93 = load i32, i32* %r2
  %r94 = icmp slt i32 %r92, %r93
  br i1 %r94, label %L55, label %L57
L55:
  %r96 = load i8*, i8** %r1
  %r97 = load i32, i32* %r11
  %r98 = getelementptr inbounds i8, i8* %r96, i32 %r97

  %r99 = load i8, i8* %r98

  %r100 = zext i8 %r99 to i32

  store i32 %r100, i32* %r95
  %r102 = load i32, i32* %r95
  %r103 = icmp sge i32 %r102, 48
  br i1 %r103, label %L58, label %L59
L58:
  %r104 = load i32, i32* %r95
  %r105 = icmp sle i32 %r104, 57
  br label %L60
L60:
  br label %L61
L59:
  br label %L61
L61:
  %r106 = phi i1 [false, %L59], [%r105, %L60]
  br i1 %r106, label %L62, label %L63
L62:
  store i1 1, i1* %r62
  %r107 = load i32, i32* %r11
  %r108 = add i32 %r107, 1
  store i32 %r108, i32* %r11
  br label %L64
L63:
  br label %L57
L64:
  br label %L56
L56:
  br label %L54
L57:
  br label %L53
L53:
  %r109 = load i1, i1* %r62
  %r110 = xor i1 %r109, 1
  br i1 %r110, label %L65, label %L67
L65:
  %r111 = insertvalue { double, i1 } undef, double 0.0, 0
  %r112 = insertvalue { double, i1 } %r111, i1 0, 1
  %r113 = load i8*, i8** %r1
  call void @Skink_rc_release(i8* %r113)

  ret { double, i1 } %r112
L67:
  %r114 = load i32, i32* %r11
  %r115 = load i32, i32* %r2
  %r116 = icmp slt i32 %r114, %r115
  br i1 %r116, label %L68, label %L69
L68:
  %r117 = load i8*, i8** %r1
  %r118 = load i32, i32* %r11
  %r119 = getelementptr inbounds i8, i8* %r117, i32 %r118

  %r120 = load i8, i8* %r119

  %r121 = zext i8 %r120 to i32

  %r122 = icmp eq i32 %r121, 101
  br i1 %r122, label %L72, label %L73
L72:
  br label %L75
L73:
  %r123 = load i8*, i8** %r1
  %r124 = load i32, i32* %r11
  %r125 = getelementptr inbounds i8, i8* %r123, i32 %r124

  %r126 = load i8, i8* %r125

  %r127 = zext i8 %r126 to i32

  %r128 = icmp eq i32 %r127, 69
  br label %L74
L74:
  br label %L75
L75:
  %r129 = phi i1 [true, %L72], [%r128, %L74]
  br label %L70
L70:
  br label %L71
L69:
  br label %L71
L71:
  %r130 = phi i1 [false, %L69], [%r129, %L70]
  br i1 %r130, label %L76, label %L78
L76:
  %r131 = load i32, i32* %r11
  %r132 = add i32 %r131, 1
  store i32 %r132, i32* %r11
  %r133 = load i32, i32* %r11
  %r134 = load i32, i32* %r2
  %r135 = icmp slt i32 %r133, %r134
  br i1 %r135, label %L79, label %L80
L79:
  %r136 = load i8*, i8** %r1
  %r137 = load i32, i32* %r11
  %r138 = getelementptr inbounds i8, i8* %r136, i32 %r137

  %r139 = load i8, i8* %r138

  %r140 = zext i8 %r139 to i32

  %r141 = icmp eq i32 %r140, 43
  br i1 %r141, label %L83, label %L84
L83:
  br label %L86
L84:
  %r142 = load i8*, i8** %r1
  %r143 = load i32, i32* %r11
  %r144 = getelementptr inbounds i8, i8* %r142, i32 %r143

  %r145 = load i8, i8* %r144

  %r146 = zext i8 %r145 to i32

  %r147 = icmp eq i32 %r146, 45
  br label %L85
L85:
  br label %L86
L86:
  %r148 = phi i1 [true, %L83], [%r147, %L85]
  br label %L81
L81:
  br label %L82
L80:
  br label %L82
L82:
  %r149 = phi i1 [false, %L80], [%r148, %L81]
  br i1 %r149, label %L87, label %L89
L87:
  %r150 = load i32, i32* %r11
  %r151 = add i32 %r150, 1
  store i32 %r151, i32* %r11
  br label %L89
L89:
  store i1 false, i1* %r152
  br label %L90
L90:
  %r153 = load i32, i32* %r11
  %r154 = load i32, i32* %r2
  %r155 = icmp slt i32 %r153, %r154
  br i1 %r155, label %L91, label %L93
L91:
  %r157 = load i8*, i8** %r1
  %r158 = load i32, i32* %r11
  %r159 = getelementptr inbounds i8, i8* %r157, i32 %r158

  %r160 = load i8, i8* %r159

  %r161 = zext i8 %r160 to i32

  store i32 %r161, i32* %r156
  %r163 = load i32, i32* %r156
  %r164 = icmp sge i32 %r163, 48
  br i1 %r164, label %L94, label %L95
L94:
  %r165 = load i32, i32* %r156
  %r166 = icmp sle i32 %r165, 57
  br label %L96
L96:
  br label %L97
L95:
  br label %L97
L97:
  %r167 = phi i1 [false, %L95], [%r166, %L96]
  br i1 %r167, label %L98, label %L99
L98:
  store i1 1, i1* %r152
  %r168 = load i32, i32* %r11
  %r169 = add i32 %r168, 1
  store i32 %r169, i32* %r11
  br label %L100
L99:
  br label %L93
L100:
  br label %L92
L92:
  br label %L90
L93:
  %r170 = load i1, i1* %r152
  %r171 = xor i1 %r170, 1
  br i1 %r171, label %L101, label %L103
L101:
  %r172 = insertvalue { double, i1 } undef, double 0.0, 0
  %r173 = insertvalue { double, i1 } %r172, i1 0, 1
  %r174 = load i8*, i8** %r1
  call void @Skink_rc_release(i8* %r174)

  ret { double, i1 } %r173
L103:
  br label %L78
L78:
  br label %L104
L104:
  %r175 = load i32, i32* %r11
  %r176 = load i32, i32* %r2
  %r177 = icmp slt i32 %r175, %r176
  br i1 %r177, label %L105, label %L107
L105:
  %r179 = load i8*, i8** %r1
  %r180 = load i32, i32* %r11
  %r181 = getelementptr inbounds i8, i8* %r179, i32 %r180

  %r182 = load i8, i8* %r181

  %r183 = zext i8 %r182 to i32

  store i32 %r183, i32* %r178
  %r185 = load i32, i32* %r178
  %r186 = icmp eq i32 %r185, 32
  br i1 %r186, label %L108, label %L109
L108:
  br label %L111
L109:
  %r187 = load i32, i32* %r178
  %r188 = icmp eq i32 %r187, 9
  br label %L110
L110:
  br label %L111
L111:
  %r189 = phi i1 [true, %L108], [%r188, %L110]
  br i1 %r189, label %L112, label %L113
L112:
  br label %L115
L113:
  %r190 = load i32, i32* %r178
  %r191 = icmp eq i32 %r190, 10
  br label %L114
L114:
  br label %L115
L115:
  %r192 = phi i1 [true, %L112], [%r191, %L114]
  br i1 %r192, label %L116, label %L117
L116:
  br label %L119
L117:
  %r193 = load i32, i32* %r178
  %r194 = icmp eq i32 %r193, 13
  br label %L118
L118:
  br label %L119
L119:
  %r195 = phi i1 [true, %L116], [%r194, %L118]
  br i1 %r195, label %L120, label %L121
L120:
  %r196 = load i32, i32* %r11
  %r197 = add i32 %r196, 1
  store i32 %r197, i32* %r11
  br label %L122
L121:
  %r198 = insertvalue { double, i1 } undef, double 0.0, 0
  %r199 = insertvalue { double, i1 } %r198, i1 0, 1
  %r200 = load i8*, i8** %r1
  call void @Skink_rc_release(i8* %r200)

  ret { double, i1 } %r199
L122:
  br label %L106
L106:
  br label %L104
L107:
  %r201 = load i8*, i8** %r1
  %r202 = call double @strtod(i8* %r201, i8* null)
  %r203 = insertvalue { double, i1 } undef, double %r202, 0
  %r204 = insertvalue { double, i1 } %r203, i1 1, 1
  %r205 = load i8*, i8** %r1
  call void @Skink_rc_release(i8* %r205)

  ret { double, i1 } %r204

}
define i8* @strconv.Itoa(i32 %arg0) {
entry:
  %r1 = alloca i32
  store i32 0, i32* %r1
  %r4 = alloca i8*
  store i8* null, i8** %r4
  %r6 = alloca i8*
  store i8* null, i8** %r6
  %r16 = alloca i1
  store i1 false, i1* %r16
  %r17 = alloca i64
  store i64 0, i64* %r17
  %r24 = alloca i64
  store i64 0, i64* %r24
  %r26 = alloca i32
  store i32 0, i32* %r26
  %r40 = alloca i8*
  store i8* null, i8** %r40
  %r44 = alloca i8*
  store i8* null, i8** %r44
  %r45 = alloca i32
  store i32 0, i32* %r45

  store i32 %arg0, i32* %r1
  %r2 = load i32, i32* %r1
  %r3 = icmp eq i32 %r2, 0
  br i1 %r3, label %L1, label %L3
L1:
  %r5 = call i8* @libc.malloc(i32 2)
  store i8* %r5, i8** %r6
  call i8* @Skink_rc_retain(i8* %r5)

  store i8* %r5, i8** %r4
  %r7 = load i8*, i8** %r4
  %r8 = trunc i32 48 to i8

  %r9 = getelementptr inbounds i8, i8* %r7, i32 0
  store i8 %r8, i8* %r9
  %r10 = load i8*, i8** %r4
  %r11 = trunc i32 0 to i8

  %r12 = getelementptr inbounds i8, i8* %r10, i32 1
  store i8 %r11, i8* %r12
  %r13 = load i8*, i8** %r4
  call i8* @Skink_rc_retain(i8* %r13)

  %r14 = load i8*, i8** %r6
  call void @Skink_rc_release(i8* %r14)

  %r15 = load i8*, i8** %r4
  call void @Skink_rc_release(i8* %r15)

  ret i8* %r13
L3:
  store i1 false, i1* %r16
  %r18 = load i32, i32* %r1
  %r19 = sext i32 %r18 to i64

  store i64 %r19, i64* %r17
  %r20 = load i32, i32* %r1
  %r21 = icmp slt i32 %r20, 0
  br i1 %r21, label %L4, label %L6
L4:
  store i1 1, i1* %r16
  %r22 = load i64, i64* %r17
  %r23 = sub i64 0, %r22
  store i64 %r23, i64* %r17
  br label %L6
L6:
  %r25 = load i64, i64* %r17
  store i64 %r25, i64* %r24
  store i32 0, i32* %r26
  br label %L7
L7:
  %r27 = load i64, i64* %r24
  %r28 = sext i32 0 to i64

  %r29 = icmp sgt i64 %r27, %r28
  br i1 %r29, label %L8, label %L10
L8:
  %r30 = load i32, i32* %r26
  %r31 = add i32 %r30, 1
  store i32 %r31, i32* %r26
  %r32 = load i64, i64* %r24
  %r33 = sext i32 10 to i64

  %r34 = icmp eq i64 %r33, 0

  br i1 %r34, label %L11, label %L12
L11:
  %r35 = getelementptr inbounds [23 x i8], [23 x i8]* @str.49, i64 0, i64 0

  call void @Skink_panic(i8* %r35)

  unreachable
  br label %L12
L12:
  %r36 = sdiv i64 %r32, %r33
  store i64 %r36, i64* %r24
  br label %L9
L9:
  br label %L7
L10:
  %r37 = load i1, i1* %r16
  br i1 %r37, label %L13, label %L15
L13:
  %r38 = load i32, i32* %r26
  %r39 = add i32 %r38, 1
  store i32 %r39, i32* %r26
  br label %L15
L15:
  %r41 = load i32, i32* %r26
  %r42 = add i32 %r41, 1
  %r43 = call i8* @libc.malloc(i32 %r42)
  store i8* %r43, i8** %r44
  call i8* @Skink_rc_retain(i8* %r43)

  store i8* %r43, i8** %r40
  %r46 = load i32, i32* %r26
  %r47 = sub i32 %r46, 1
  store i32 %r47, i32* %r45
  br label %L16
L16:
  %r48 = load i64, i64* %r17
  %r49 = sext i32 0 to i64

  %r50 = icmp sgt i64 %r48, %r49
  br i1 %r50, label %L17, label %L19
L17:
  %r51 = load i64, i64* %r17
  %r52 = sext i32 10 to i64

  %r53 = icmp eq i64 %r52, 0

  br i1 %r53, label %L20, label %L21
L20:
  %r54 = getelementptr inbounds [23 x i8], [23 x i8]* @str.50, i64 0, i64 0

  call void @Skink_panic(i8* %r54)

  unreachable
  br label %L21
L21:
  %r55 = srem i64 %r51, %r52
  %r56 = trunc i64 %r55 to i32

  %r57 = add i32 48, %r56
  %r58 = load i8*, i8** %r40
  %r59 = load i32, i32* %r45
  %r60 = trunc i32 %r57 to i8

  %r61 = getelementptr inbounds i8, i8* %r58, i32 %r59
  store i8 %r60, i8* %r61
  %r62 = load i64, i64* %r17
  %r63 = sext i32 10 to i64

  %r64 = icmp eq i64 %r63, 0

  br i1 %r64, label %L22, label %L23
L22:
  %r65 = getelementptr inbounds [23 x i8], [23 x i8]* @str.51, i64 0, i64 0

  call void @Skink_panic(i8* %r65)

  unreachable
  br label %L23
L23:
  %r66 = sdiv i64 %r62, %r63
  store i64 %r66, i64* %r17
  %r67 = load i32, i32* %r45
  %r68 = sub i32 %r67, 1
  store i32 %r68, i32* %r45
  br label %L18
L18:
  br label %L16
L19:
  %r69 = load i1, i1* %r16
  br i1 %r69, label %L24, label %L26
L24:
  %r70 = load i8*, i8** %r40
  %r71 = trunc i32 45 to i8

  %r72 = getelementptr inbounds i8, i8* %r70, i32 0
  store i8 %r71, i8* %r72
  br label %L26
L26:
  %r73 = load i8*, i8** %r40
  %r74 = load i32, i32* %r26
  %r75 = trunc i32 0 to i8

  %r76 = getelementptr inbounds i8, i8* %r73, i32 %r74
  store i8 %r75, i8* %r76
  %r77 = load i8*, i8** %r40
  call i8* @Skink_rc_retain(i8* %r77)

  %r78 = load i8*, i8** %r44
  call void @Skink_rc_release(i8* %r78)

  %r79 = load i8*, i8** %r40
  call void @Skink_rc_release(i8* %r79)

  ret i8* %r77

}
define i8* @strconv.Itoa64(i64 %arg0) {
entry:
  %r1 = alloca i64
  store i64 0, i64* %r1
  %r4 = alloca i8*
  store i8* null, i8** %r4
  %r6 = alloca i8*
  store i8* null, i8** %r6
  %r16 = alloca i1
  store i1 false, i1* %r16
  %r17 = alloca i64
  store i64 0, i64* %r17
  %r23 = alloca i64
  store i64 0, i64* %r23
  %r25 = alloca i32
  store i32 0, i32* %r25
  %r37 = alloca i8*
  store i8* null, i8** %r37
  %r41 = alloca i8*
  store i8* null, i8** %r41
  %r42 = alloca i32
  store i32 0, i32* %r42

  store i64 %arg0, i64* %r1
  %r2 = load i64, i64* %r1
  %r3 = icmp eq i64 %r2, 0
  br i1 %r3, label %L1, label %L3
L1:
  %r5 = call i8* @libc.malloc(i32 2)
  store i8* %r5, i8** %r6
  call i8* @Skink_rc_retain(i8* %r5)

  store i8* %r5, i8** %r4
  %r7 = load i8*, i8** %r4
  %r8 = trunc i32 48 to i8

  %r9 = getelementptr inbounds i8, i8* %r7, i32 0
  store i8 %r8, i8* %r9
  %r10 = load i8*, i8** %r4
  %r11 = trunc i32 0 to i8

  %r12 = getelementptr inbounds i8, i8* %r10, i32 1
  store i8 %r11, i8* %r12
  %r13 = load i8*, i8** %r4
  call i8* @Skink_rc_retain(i8* %r13)

  %r14 = load i8*, i8** %r6
  call void @Skink_rc_release(i8* %r14)

  %r15 = load i8*, i8** %r4
  call void @Skink_rc_release(i8* %r15)

  ret i8* %r13
L3:
  store i1 false, i1* %r16
  %r18 = load i64, i64* %r1
  store i64 %r18, i64* %r17
  %r19 = load i64, i64* %r1
  %r20 = icmp slt i64 %r19, 0
  br i1 %r20, label %L4, label %L6
L4:
  store i1 1, i1* %r16
  %r21 = load i64, i64* %r17
  %r22 = sub i64 0, %r21
  store i64 %r22, i64* %r17
  br label %L6
L6:
  %r24 = load i64, i64* %r17
  store i64 %r24, i64* %r23
  store i32 0, i32* %r25
  br label %L7
L7:
  %r26 = load i64, i64* %r23
  %r27 = icmp sgt i64 %r26, 0
  br i1 %r27, label %L8, label %L10
L8:
  %r28 = load i32, i32* %r25
  %r29 = add i32 %r28, 1
  store i32 %r29, i32* %r25
  %r30 = load i64, i64* %r23
  %r31 = icmp eq i64 10, 0

  br i1 %r31, label %L11, label %L12
L11:
  %r32 = getelementptr inbounds [23 x i8], [23 x i8]* @str.52, i64 0, i64 0

  call void @Skink_panic(i8* %r32)

  unreachable
  br label %L12
L12:
  %r33 = sdiv i64 %r30, 10
  store i64 %r33, i64* %r23
  br label %L9
L9:
  br label %L7
L10:
  %r34 = load i1, i1* %r16
  br i1 %r34, label %L13, label %L15
L13:
  %r35 = load i32, i32* %r25
  %r36 = add i32 %r35, 1
  store i32 %r36, i32* %r25
  br label %L15
L15:
  %r38 = load i32, i32* %r25
  %r39 = add i32 %r38, 1
  %r40 = call i8* @libc.malloc(i32 %r39)
  store i8* %r40, i8** %r41
  call i8* @Skink_rc_retain(i8* %r40)

  store i8* %r40, i8** %r37
  %r43 = load i32, i32* %r25
  %r44 = sub i32 %r43, 1
  store i32 %r44, i32* %r42
  br label %L16
L16:
  %r45 = load i64, i64* %r17
  %r46 = icmp sgt i64 %r45, 0
  br i1 %r46, label %L17, label %L19
L17:
  %r47 = load i64, i64* %r17
  %r48 = icmp eq i64 10, 0

  br i1 %r48, label %L20, label %L21
L20:
  %r49 = getelementptr inbounds [23 x i8], [23 x i8]* @str.53, i64 0, i64 0

  call void @Skink_panic(i8* %r49)

  unreachable
  br label %L21
L21:
  %r50 = srem i64 %r47, 10
  %r51 = trunc i64 %r50 to i32

  %r52 = add i32 48, %r51
  %r53 = load i8*, i8** %r37
  %r54 = load i32, i32* %r42
  %r55 = trunc i32 %r52 to i8

  %r56 = getelementptr inbounds i8, i8* %r53, i32 %r54
  store i8 %r55, i8* %r56
  %r57 = load i64, i64* %r17
  %r58 = icmp eq i64 10, 0

  br i1 %r58, label %L22, label %L23
L22:
  %r59 = getelementptr inbounds [23 x i8], [23 x i8]* @str.54, i64 0, i64 0

  call void @Skink_panic(i8* %r59)

  unreachable
  br label %L23
L23:
  %r60 = sdiv i64 %r57, 10
  store i64 %r60, i64* %r17
  %r61 = load i32, i32* %r42
  %r62 = sub i32 %r61, 1
  store i32 %r62, i32* %r42
  br label %L18
L18:
  br label %L16
L19:
  %r63 = load i1, i1* %r16
  br i1 %r63, label %L24, label %L26
L24:
  %r64 = load i8*, i8** %r37
  %r65 = trunc i32 45 to i8

  %r66 = getelementptr inbounds i8, i8* %r64, i32 0
  store i8 %r65, i8* %r66
  br label %L26
L26:
  %r67 = load i8*, i8** %r37
  %r68 = load i32, i32* %r25
  %r69 = trunc i32 0 to i8

  %r70 = getelementptr inbounds i8, i8* %r67, i32 %r68
  store i8 %r69, i8* %r70
  %r71 = load i8*, i8** %r37
  call i8* @Skink_rc_retain(i8* %r71)

  %r72 = load i8*, i8** %r41
  call void @Skink_rc_release(i8* %r72)

  %r73 = load i8*, i8** %r37
  call void @Skink_rc_release(i8* %r73)

  ret i8* %r71

}
define i8* @strconv.FormatFloat(double %arg0, i32 %arg1) {
entry:
  %r1 = alloca double
  store double 0.0, double* %r1
  %r2 = alloca i32
  store i32 0, i32* %r2
  %r3 = alloca i8*
  store i8* null, i8** %r3
  %r5 = alloca i8*
  store i8* null, i8** %r5
  %r6 = alloca i32
  store i32 0, i32* %r6
  %r17 = alloca i32
  store i32 0, i32* %r17
  %r20 = alloca i8*
  store i8* null, i8** %r20
  %r23 = alloca i8*
  store i8* null, i8** %r23
  %r24 = alloca i32
  store i32 0, i32* %r24
  %r49 = alloca double
  store double 0.0, double* %r49
  %r54 = alloca i32
  store i32 0, i32* %r54
  %r60 = alloca i32
  store i32 0, i32* %r60

  store double %arg0, double* %r1
  store i32 %arg1, i32* %r2
  %r4 = call i8* @libc.malloc(i32 64)
  store i8* %r4, i8** %r5
  call i8* @Skink_rc_retain(i8* %r4)

  store i8* %r4, i8** %r3
  store i32 0, i32* %r6
  %r7 = load double, double* %r1
  %r8 = fcmp olt double %r7, 0.0
  br i1 %r8, label %L1, label %L3
L1:
  %r9 = load i8*, i8** %r3
  %r10 = load i32, i32* %r6
  %r11 = trunc i32 45 to i8

  %r12 = getelementptr inbounds i8, i8* %r9, i32 %r10
  store i8 %r11, i8* %r12
  %r13 = load i32, i32* %r6
  %r14 = add i32 %r13, 1
  store i32 %r14, i32* %r6
  %r15 = load double, double* %r1
  %r16 = fneg double %r15
  store double %r16, double* %r1
  br label %L3
L3:
  %r18 = load double, double* %r1
  %r19 = fptosi double %r18 to i32

  store i32 %r19, i32* %r17
  %r21 = load i32, i32* %r17
  %r22 = call i8* @strconv.Itoa(i32 %r21)
  store i8* %r22, i8** %r23
  call i8* @Skink_rc_retain(i8* %r22)

  store i8* %r22, i8** %r20
  %r25 = load i8*, i8** %r20
  %r26 = call i32 @strlen(i8* %r25)
  store i32 %r26, i32* %r24
  %r28 = load i8*, i8** %r3
  %r29 = ptrtoint i8* %r28 to i64

  %r30 = load i32, i32* %r6
  %r31 = sext i32 %r30 to i64

  %r32 = add i64 %r29, %r31
  %r33 = inttoptr i64 %r32 to i8*

  %r34 = load i8*, i8** %r20
  %r35 = load i32, i32* %r24
  %r36 = call i8* @memcpy(i8* %r33, i8* %r34, i32 %r35)
  %r37 = load i32, i32* %r6
  %r38 = load i32, i32* %r24
  %r39 = add i32 %r37, %r38
  store i32 %r39, i32* %r6
  %r40 = load i8*, i8** %r20
  call void @libc.free(i8* %r40)
  %r41 = load i32, i32* %r2
  %r42 = icmp sgt i32 %r41, 0
  br i1 %r42, label %L4, label %L6
L4:
  %r43 = load i8*, i8** %r3
  %r44 = load i32, i32* %r6
  %r45 = trunc i32 46 to i8

  %r46 = getelementptr inbounds i8, i8* %r43, i32 %r44
  store i8 %r45, i8* %r46
  %r47 = load i32, i32* %r6
  %r48 = add i32 %r47, 1
  store i32 %r48, i32* %r6
  %r50 = load double, double* %r1
  %r51 = load i32, i32* %r17
  %r52 = sitofp i32 %r51 to double

  %r53 = fsub double %r50, %r52
  store double %r53, double* %r49
  store i32 0, i32* %r54
  br label %L7
L7:
  %r55 = load i32, i32* %r54
  %r56 = load i32, i32* %r2
  %r57 = icmp slt i32 %r55, %r56
  br i1 %r57, label %L8, label %L10
L8:
  %r58 = load double, double* %r49
  %r59 = fmul double %r58, 10.0
  store double %r59, double* %r49
  %r61 = load double, double* %r49
  %r62 = fptosi double %r61 to i32

  store i32 %r62, i32* %r60
  %r63 = load i32, i32* %r60
  %r64 = add i32 48, %r63
  %r65 = load i8*, i8** %r3
  %r66 = load i32, i32* %r6
  %r67 = trunc i32 %r64 to i8

  %r68 = getelementptr inbounds i8, i8* %r65, i32 %r66
  store i8 %r67, i8* %r68
  %r69 = load i32, i32* %r6
  %r70 = add i32 %r69, 1
  store i32 %r70, i32* %r6
  %r71 = load double, double* %r49
  %r72 = load i32, i32* %r60
  %r73 = sitofp i32 %r72 to double

  %r74 = fsub double %r71, %r73
  store double %r74, double* %r49
  br label %L9
L9:
  %r75 = load i32, i32* %r54
  %r76 = add i32 %r75, 1
  store i32 %r76, i32* %r54
  br label %L7
L10:
  br label %L6
L6:
  %r77 = load i8*, i8** %r3
  %r78 = load i32, i32* %r6
  %r79 = trunc i32 0 to i8

  %r80 = getelementptr inbounds i8, i8* %r77, i32 %r78
  store i8 %r79, i8* %r80
  %r81 = load i8*, i8** %r3
  call i8* @Skink_rc_retain(i8* %r81)

  %r82 = load i8*, i8** %r5
  call void @Skink_rc_release(i8* %r82)

  %r83 = load i8*, i8** %r3
  call void @Skink_rc_release(i8* %r83)

  %r84 = load i8*, i8** %r23
  call void @Skink_rc_release(i8* %r84)

  %r85 = load i8*, i8** %r20
  call void @Skink_rc_release(i8* %r85)

  ret i8* %r81

}
define { i1, i1 } @strconv.ParseBool(i8* %arg0) {
entry:
  %r1 = alloca i8*
  store i8* null, i8** %r1

  call i8* @Skink_rc_retain(i8* %arg0)

  store i8* %arg0, i8** %r1
  %r2 = load i8*, i8** %r1
  %r3 = getelementptr inbounds [5 x i8], [5 x i8]* @str.55, i64 0, i64 0

  %r4 = call i1 @strconv.strEq(i8* %r2, i8* %r3)
  br i1 %r4, label %L1, label %L2
L1:
  br label %L4
L2:
  %r5 = load i8*, i8** %r1
  %r6 = getelementptr inbounds [2 x i8], [2 x i8]* @str.56, i64 0, i64 0

  %r7 = call i1 @strconv.strEq(i8* %r5, i8* %r6)
  br label %L3
L3:
  br label %L4
L4:
  %r8 = phi i1 [true, %L1], [%r7, %L3]
  br i1 %r8, label %L5, label %L7
L5:
  %r9 = insertvalue { i1, i1 } undef, i1 1, 0
  %r10 = insertvalue { i1, i1 } %r9, i1 1, 1
  %r11 = load i8*, i8** %r1
  call void @Skink_rc_release(i8* %r11)

  ret { i1, i1 } %r10
L7:
  %r12 = load i8*, i8** %r1
  %r13 = getelementptr inbounds [6 x i8], [6 x i8]* @str.57, i64 0, i64 0

  %r14 = call i1 @strconv.strEq(i8* %r12, i8* %r13)
  br i1 %r14, label %L8, label %L9
L8:
  br label %L11
L9:
  %r15 = load i8*, i8** %r1
  %r16 = getelementptr inbounds [2 x i8], [2 x i8]* @str.58, i64 0, i64 0

  %r17 = call i1 @strconv.strEq(i8* %r15, i8* %r16)
  br label %L10
L10:
  br label %L11
L11:
  %r18 = phi i1 [true, %L8], [%r17, %L10]
  br i1 %r18, label %L12, label %L14
L12:
  %r19 = insertvalue { i1, i1 } undef, i1 0, 0
  %r20 = insertvalue { i1, i1 } %r19, i1 1, 1
  %r21 = load i8*, i8** %r1
  call void @Skink_rc_release(i8* %r21)

  ret { i1, i1 } %r20
L14:
  %r22 = insertvalue { i1, i1 } undef, i1 0, 0
  %r23 = insertvalue { i1, i1 } %r22, i1 0, 1
  %r24 = load i8*, i8** %r1
  call void @Skink_rc_release(i8* %r24)

  ret { i1, i1 } %r23

}
define i1 @strconv.strEq(i8* %arg0, i8* %arg1) {
entry:
  %r1 = alloca i8*
  store i8* null, i8** %r1
  %r2 = alloca i8*
  store i8* null, i8** %r2

  call i8* @Skink_rc_retain(i8* %arg0)

  store i8* %arg0, i8** %r1
  call i8* @Skink_rc_retain(i8* %arg1)

  store i8* %arg1, i8** %r2
  %r3 = load i8*, i8** %r1
  %r4 = load i8*, i8** %r2
  %r5 = call i32 @strcmp(i8* %r3, i8* %r4)
  %r6 = icmp eq i32 %r5, 0
  %r7 = load i8*, i8** %r1
  call void @Skink_rc_release(i8* %r7)

  %r8 = load i8*, i8** %r2
  call void @Skink_rc_release(i8* %r8)

  ret i1 %r6

}
define void @testing.Reset() {
entry:
  store i1 false, i1* @testing.failed
  ret void

}
define void @testing.Errorf(i8* %arg0) {
entry:
  %r1 = alloca i8*
  store i8* null, i8** %r1
  %r15 = alloca i8*
  store i8* null, i8** %r15

  call i8* @Skink_rc_retain(i8* %arg0)

  store i8* %arg0, i8** %r1
  %r2 = getelementptr inbounds [7 x i8], [7 x i8]* @str.59, i64 0, i64 0

  %r3 = load i8*, i8** %r1
  %r4 = icmp eq i8* %r2, null

  %r6 = getelementptr inbounds [1 x i8], [1 x i8]* @str.60, i64 0, i64 0

  %r5 = select i1 %r4, i8* %r6, i8* %r2

  %r7 = icmp eq i8* %r3, null

  %r9 = getelementptr inbounds [1 x i8], [1 x i8]* @str.61, i64 0, i64 0

  %r8 = select i1 %r7, i8* %r9, i8* %r3

  %r10 = call i64 @strlen(i8* %r5)
  %r11 = call i64 @strlen(i8* %r8)
  %r12 = add i64 %r10, %r11
  %r13 = add i64 %r12, 1
  %r14 = call i8* @Skink_rc_alloc(i64 %r13)
  call i8* @strcpy(i8* %r14, i8* %r5)
  call i8* @strcat(i8* %r14, i8* %r8)
  store i8* %r14, i8** %r15
  %r16 = getelementptr inbounds [3 x i8], [3 x i8]* @str.62, i64 0, i64 0

  call i32 (i8*, ...) @printf(i8* %r16, i8* %r14)
  store i1 1, i1* @testing.failed
  %r17 = load i32, i32* @testing.failCount
  %r18 = add i32 %r17, 1
  store i32 %r18, i32* @testing.failCount
  %r19 = load i8*, i8** %r15
  call void @Skink_rc_release(i8* %r19)

  %r20 = load i8*, i8** %r1
  call void @Skink_rc_release(i8* %r20)

  ret void

}
define i1 @testing.Failed() {
entry:
  %r1 = load i1, i1* @testing.failed
  ret i1 %r1

}
define void @testing.Helper() {
entry:
  ret void

}
define void @testing.Fail() {
entry:
  store i1 1, i1* @testing.failed
  %r1 = load i32, i32* @testing.failCount
  %r2 = add i32 %r1, 1
  store i32 %r2, i32* @testing.failCount
  ret void

}
define void @testing.FailNow() {
entry:
  store i1 1, i1* @testing.failed
  %r1 = load i32, i32* @testing.failCount
  %r2 = add i32 %r1, 1
  store i32 %r2, i32* @testing.failCount
  %r3 = getelementptr inbounds [15 x i8], [15 x i8]* @str.63, i64 0, i64 0

  %r4 = call i32 @Skink_test_failnow(i8* %r3)
  ret void

}
define void @testing.recordPass() {
entry:
  %r1 = load i32, i32* @testing.passCount
  %r2 = add i32 %r1, 1
  store i32 %r2, i32* @testing.passCount
  ret void

}
define void @testing.recordTest() {
entry:
  %r1 = load i32, i32* @testing.testCount
  %r2 = add i32 %r1, 1
  store i32 %r2, i32* @testing.testCount
  ret void

}
define void @testing.AssertTrue(i1 %arg0, i8* %arg1) {
entry:
  %r1 = alloca i1
  store i1 false, i1* %r1
  %r2 = alloca i8*
  store i8* null, i8** %r2
  %r18 = alloca i8*
  store i8* null, i8** %r18

  store i1 %arg0, i1* %r1
  call i8* @Skink_rc_retain(i8* %arg1)

  store i8* %arg1, i8** %r2
  call void @testing.recordTest()
  %r3 = load i1, i1* %r1
  %r4 = icmp eq i1 %r3, 0
  br i1 %r4, label %L1, label %L2
L1:
  %r5 = getelementptr inbounds [20 x i8], [20 x i8]* @str.64, i64 0, i64 0

  %r6 = load i8*, i8** %r2
  %r7 = icmp eq i8* %r5, null

  %r9 = getelementptr inbounds [1 x i8], [1 x i8]* @str.65, i64 0, i64 0

  %r8 = select i1 %r7, i8* %r9, i8* %r5

  %r10 = icmp eq i8* %r6, null

  %r12 = getelementptr inbounds [1 x i8], [1 x i8]* @str.66, i64 0, i64 0

  %r11 = select i1 %r10, i8* %r12, i8* %r6

  %r13 = call i64 @strlen(i8* %r8)
  %r14 = call i64 @strlen(i8* %r11)
  %r15 = add i64 %r13, %r14
  %r16 = add i64 %r15, 1
  %r17 = call i8* @Skink_rc_alloc(i64 %r16)
  call i8* @strcpy(i8* %r17, i8* %r8)
  call i8* @strcat(i8* %r17, i8* %r11)
  store i8* %r17, i8** %r18
  call void @testing.Errorf(i8* %r17)
  %r19 = load i8*, i8** %r18
  call void @Skink_rc_release(i8* %r19)

  br label %L3
L2:
  call void @testing.recordPass()
  br label %L3
L3:
  %r20 = load i8*, i8** %r2
  call void @Skink_rc_release(i8* %r20)

  ret void

}
define void @testing.AssertFalse(i1 %arg0, i8* %arg1) {
entry:
  %r1 = alloca i1
  store i1 false, i1* %r1
  %r2 = alloca i8*
  store i8* null, i8** %r2
  %r18 = alloca i8*
  store i8* null, i8** %r18

  store i1 %arg0, i1* %r1
  call i8* @Skink_rc_retain(i8* %arg1)

  store i8* %arg1, i8** %r2
  call void @testing.recordTest()
  %r3 = load i1, i1* %r1
  %r4 = icmp eq i1 %r3, 1
  br i1 %r4, label %L1, label %L2
L1:
  %r5 = getelementptr inbounds [21 x i8], [21 x i8]* @str.67, i64 0, i64 0

  %r6 = load i8*, i8** %r2
  %r7 = icmp eq i8* %r5, null

  %r9 = getelementptr inbounds [1 x i8], [1 x i8]* @str.68, i64 0, i64 0

  %r8 = select i1 %r7, i8* %r9, i8* %r5

  %r10 = icmp eq i8* %r6, null

  %r12 = getelementptr inbounds [1 x i8], [1 x i8]* @str.69, i64 0, i64 0

  %r11 = select i1 %r10, i8* %r12, i8* %r6

  %r13 = call i64 @strlen(i8* %r8)
  %r14 = call i64 @strlen(i8* %r11)
  %r15 = add i64 %r13, %r14
  %r16 = add i64 %r15, 1
  %r17 = call i8* @Skink_rc_alloc(i64 %r16)
  call i8* @strcpy(i8* %r17, i8* %r8)
  call i8* @strcat(i8* %r17, i8* %r11)
  store i8* %r17, i8** %r18
  call void @testing.Errorf(i8* %r17)
  %r19 = load i8*, i8** %r18
  call void @Skink_rc_release(i8* %r19)

  br label %L3
L2:
  call void @testing.recordPass()
  br label %L3
L3:
  %r20 = load i8*, i8** %r2
  call void @Skink_rc_release(i8* %r20)

  ret void

}
define void @testing.AssertEqualString(i8* %arg0, i8* %arg1, i8* %arg2) {
entry:
  %r1 = alloca i8*
  store i8* null, i8** %r1
  %r2 = alloca i8*
  store i8* null, i8** %r2
  %r3 = alloca i8*
  store i8* null, i8** %r3
  %r21 = alloca i8*
  store i8* null, i8** %r21
  %r34 = alloca i8*
  store i8* null, i8** %r34
  %r47 = alloca i8*
  store i8* null, i8** %r47
  %r60 = alloca i8*
  store i8* null, i8** %r60
  %r73 = alloca i8*
  store i8* null, i8** %r73

  call i8* @Skink_rc_retain(i8* %arg0)

  store i8* %arg0, i8** %r1
  call i8* @Skink_rc_retain(i8* %arg1)

  store i8* %arg1, i8** %r2
  call i8* @Skink_rc_retain(i8* %arg2)

  store i8* %arg2, i8** %r3
  call void @testing.recordTest()
  %r4 = load i8*, i8** %r1
  %r5 = load i8*, i8** %r2
  %r6 = call i1 @str.Equal(i8* %r4, i8* %r5)
  %r7 = icmp eq i1 %r6, 0
  br i1 %r7, label %L1, label %L2
L1:
  %r8 = getelementptr inbounds [37 x i8], [37 x i8]* @str.70, i64 0, i64 0

  %r9 = load i8*, i8** %r1
  %r10 = icmp eq i8* %r8, null

  %r12 = getelementptr inbounds [1 x i8], [1 x i8]* @str.71, i64 0, i64 0

  %r11 = select i1 %r10, i8* %r12, i8* %r8

  %r13 = icmp eq i8* %r9, null

  %r15 = getelementptr inbounds [1 x i8], [1 x i8]* @str.72, i64 0, i64 0

  %r14 = select i1 %r13, i8* %r15, i8* %r9

  %r16 = call i64 @strlen(i8* %r11)
  %r17 = call i64 @strlen(i8* %r14)
  %r18 = add i64 %r16, %r17
  %r19 = add i64 %r18, 1
  %r20 = call i8* @Skink_rc_alloc(i64 %r19)
  call i8* @strcpy(i8* %r20, i8* %r11)
  call i8* @strcat(i8* %r20, i8* %r14)
  store i8* %r20, i8** %r21
  %r22 = getelementptr inbounds [9 x i8], [9 x i8]* @str.73, i64 0, i64 0

  %r23 = icmp eq i8* %r20, null

  %r25 = getelementptr inbounds [1 x i8], [1 x i8]* @str.74, i64 0, i64 0

  %r24 = select i1 %r23, i8* %r25, i8* %r20

  %r26 = icmp eq i8* %r22, null

  %r28 = getelementptr inbounds [1 x i8], [1 x i8]* @str.75, i64 0, i64 0

  %r27 = select i1 %r26, i8* %r28, i8* %r22

  %r29 = call i64 @strlen(i8* %r24)
  %r30 = call i64 @strlen(i8* %r27)
  %r31 = add i64 %r29, %r30
  %r32 = add i64 %r31, 1
  %r33 = call i8* @Skink_rc_alloc(i64 %r32)
  call i8* @strcpy(i8* %r33, i8* %r24)
  call i8* @strcat(i8* %r33, i8* %r27)
  store i8* %r33, i8** %r34
  %r35 = load i8*, i8** %r2
  %r36 = icmp eq i8* %r33, null

  %r38 = getelementptr inbounds [1 x i8], [1 x i8]* @str.76, i64 0, i64 0

  %r37 = select i1 %r36, i8* %r38, i8* %r33

  %r39 = icmp eq i8* %r35, null

  %r41 = getelementptr inbounds [1 x i8], [1 x i8]* @str.77, i64 0, i64 0

  %r40 = select i1 %r39, i8* %r41, i8* %r35

  %r42 = call i64 @strlen(i8* %r37)
  %r43 = call i64 @strlen(i8* %r40)
  %r44 = add i64 %r42, %r43
  %r45 = add i64 %r44, 1
  %r46 = call i8* @Skink_rc_alloc(i64 %r45)
  call i8* @strcpy(i8* %r46, i8* %r37)
  call i8* @strcat(i8* %r46, i8* %r40)
  store i8* %r46, i8** %r47
  %r48 = getelementptr inbounds [5 x i8], [5 x i8]* @str.78, i64 0, i64 0

  %r49 = icmp eq i8* %r46, null

  %r51 = getelementptr inbounds [1 x i8], [1 x i8]* @str.79, i64 0, i64 0

  %r50 = select i1 %r49, i8* %r51, i8* %r46

  %r52 = icmp eq i8* %r48, null

  %r54 = getelementptr inbounds [1 x i8], [1 x i8]* @str.80, i64 0, i64 0

  %r53 = select i1 %r52, i8* %r54, i8* %r48

  %r55 = call i64 @strlen(i8* %r50)
  %r56 = call i64 @strlen(i8* %r53)
  %r57 = add i64 %r55, %r56
  %r58 = add i64 %r57, 1
  %r59 = call i8* @Skink_rc_alloc(i64 %r58)
  call i8* @strcpy(i8* %r59, i8* %r50)
  call i8* @strcat(i8* %r59, i8* %r53)
  store i8* %r59, i8** %r60
  %r61 = load i8*, i8** %r3
  %r62 = icmp eq i8* %r59, null

  %r64 = getelementptr inbounds [1 x i8], [1 x i8]* @str.81, i64 0, i64 0

  %r63 = select i1 %r62, i8* %r64, i8* %r59

  %r65 = icmp eq i8* %r61, null

  %r67 = getelementptr inbounds [1 x i8], [1 x i8]* @str.82, i64 0, i64 0

  %r66 = select i1 %r65, i8* %r67, i8* %r61

  %r68 = call i64 @strlen(i8* %r63)
  %r69 = call i64 @strlen(i8* %r66)
  %r70 = add i64 %r68, %r69
  %r71 = add i64 %r70, 1
  %r72 = call i8* @Skink_rc_alloc(i64 %r71)
  call i8* @strcpy(i8* %r72, i8* %r63)
  call i8* @strcat(i8* %r72, i8* %r66)
  store i8* %r72, i8** %r73
  call void @testing.Errorf(i8* %r72)
  %r74 = load i8*, i8** %r21
  call void @Skink_rc_release(i8* %r74)

  %r75 = load i8*, i8** %r34
  call void @Skink_rc_release(i8* %r75)

  %r76 = load i8*, i8** %r47
  call void @Skink_rc_release(i8* %r76)

  %r77 = load i8*, i8** %r60
  call void @Skink_rc_release(i8* %r77)

  %r78 = load i8*, i8** %r73
  call void @Skink_rc_release(i8* %r78)

  br label %L3
L2:
  call void @testing.recordPass()
  br label %L3
L3:
  %r79 = load i8*, i8** %r1
  call void @Skink_rc_release(i8* %r79)

  %r80 = load i8*, i8** %r2
  call void @Skink_rc_release(i8* %r80)

  %r81 = load i8*, i8** %r3
  call void @Skink_rc_release(i8* %r81)

  ret void

}
define void @testing.AssertEqualInt(i32 %arg0, i32 %arg1, i8* %arg2) {
entry:
  %r1 = alloca i32
  store i32 0, i32* %r1
  %r2 = alloca i32
  store i32 0, i32* %r2
  %r3 = alloca i8*
  store i8* null, i8** %r3
  %r10 = alloca i8*
  store i8* null, i8** %r10
  %r22 = alloca i8*
  store i8* null, i8** %r22
  %r35 = alloca i8*
  store i8* null, i8** %r35
  %r38 = alloca i8*
  store i8* null, i8** %r38
  %r50 = alloca i8*
  store i8* null, i8** %r50
  %r63 = alloca i8*
  store i8* null, i8** %r63
  %r76 = alloca i8*
  store i8* null, i8** %r76

  store i32 %arg0, i32* %r1
  store i32 %arg1, i32* %r2
  call i8* @Skink_rc_retain(i8* %arg2)

  store i8* %arg2, i8** %r3
  call void @testing.recordTest()
  %r4 = load i32, i32* %r1
  %r5 = load i32, i32* %r2
  %r6 = icmp ne i32 %r4, %r5
  br i1 %r6, label %L1, label %L2
L1:
  %r7 = getelementptr inbounds [33 x i8], [33 x i8]* @str.83, i64 0, i64 0

  %r8 = load i32, i32* %r1
  %r9 = call i8* @strconv.Itoa(i32 %r8)
  store i8* %r9, i8** %r10
  %r11 = icmp eq i8* %r7, null

  %r13 = getelementptr inbounds [1 x i8], [1 x i8]* @str.84, i64 0, i64 0

  %r12 = select i1 %r11, i8* %r13, i8* %r7

  %r14 = icmp eq i8* %r9, null

  %r16 = getelementptr inbounds [1 x i8], [1 x i8]* @str.85, i64 0, i64 0

  %r15 = select i1 %r14, i8* %r16, i8* %r9

  %r17 = call i64 @strlen(i8* %r12)
  %r18 = call i64 @strlen(i8* %r15)
  %r19 = add i64 %r17, %r18
  %r20 = add i64 %r19, 1
  %r21 = call i8* @Skink_rc_alloc(i64 %r20)
  call i8* @strcpy(i8* %r21, i8* %r12)
  call i8* @strcat(i8* %r21, i8* %r15)
  store i8* %r21, i8** %r22
  %r23 = getelementptr inbounds [7 x i8], [7 x i8]* @str.86, i64 0, i64 0

  %r24 = icmp eq i8* %r21, null

  %r26 = getelementptr inbounds [1 x i8], [1 x i8]* @str.87, i64 0, i64 0

  %r25 = select i1 %r24, i8* %r26, i8* %r21

  %r27 = icmp eq i8* %r23, null

  %r29 = getelementptr inbounds [1 x i8], [1 x i8]* @str.88, i64 0, i64 0

  %r28 = select i1 %r27, i8* %r29, i8* %r23

  %r30 = call i64 @strlen(i8* %r25)
  %r31 = call i64 @strlen(i8* %r28)
  %r32 = add i64 %r30, %r31
  %r33 = add i64 %r32, 1
  %r34 = call i8* @Skink_rc_alloc(i64 %r33)
  call i8* @strcpy(i8* %r34, i8* %r25)
  call i8* @strcat(i8* %r34, i8* %r28)
  store i8* %r34, i8** %r35
  %r36 = load i32, i32* %r2
  %r37 = call i8* @strconv.Itoa(i32 %r36)
  store i8* %r37, i8** %r38
  %r39 = icmp eq i8* %r34, null

  %r41 = getelementptr inbounds [1 x i8], [1 x i8]* @str.89, i64 0, i64 0

  %r40 = select i1 %r39, i8* %r41, i8* %r34

  %r42 = icmp eq i8* %r37, null

  %r44 = getelementptr inbounds [1 x i8], [1 x i8]* @str.90, i64 0, i64 0

  %r43 = select i1 %r42, i8* %r44, i8* %r37

  %r45 = call i64 @strlen(i8* %r40)
  %r46 = call i64 @strlen(i8* %r43)
  %r47 = add i64 %r45, %r46
  %r48 = add i64 %r47, 1
  %r49 = call i8* @Skink_rc_alloc(i64 %r48)
  call i8* @strcpy(i8* %r49, i8* %r40)
  call i8* @strcat(i8* %r49, i8* %r43)
  store i8* %r49, i8** %r50
  %r51 = getelementptr inbounds [4 x i8], [4 x i8]* @str.91, i64 0, i64 0

  %r52 = icmp eq i8* %r49, null

  %r54 = getelementptr inbounds [1 x i8], [1 x i8]* @str.92, i64 0, i64 0

  %r53 = select i1 %r52, i8* %r54, i8* %r49

  %r55 = icmp eq i8* %r51, null

  %r57 = getelementptr inbounds [1 x i8], [1 x i8]* @str.93, i64 0, i64 0

  %r56 = select i1 %r55, i8* %r57, i8* %r51

  %r58 = call i64 @strlen(i8* %r53)
  %r59 = call i64 @strlen(i8* %r56)
  %r60 = add i64 %r58, %r59
  %r61 = add i64 %r60, 1
  %r62 = call i8* @Skink_rc_alloc(i64 %r61)
  call i8* @strcpy(i8* %r62, i8* %r53)
  call i8* @strcat(i8* %r62, i8* %r56)
  store i8* %r62, i8** %r63
  %r64 = load i8*, i8** %r3
  %r65 = icmp eq i8* %r62, null

  %r67 = getelementptr inbounds [1 x i8], [1 x i8]* @str.94, i64 0, i64 0

  %r66 = select i1 %r65, i8* %r67, i8* %r62

  %r68 = icmp eq i8* %r64, null

  %r70 = getelementptr inbounds [1 x i8], [1 x i8]* @str.95, i64 0, i64 0

  %r69 = select i1 %r68, i8* %r70, i8* %r64

  %r71 = call i64 @strlen(i8* %r66)
  %r72 = call i64 @strlen(i8* %r69)
  %r73 = add i64 %r71, %r72
  %r74 = add i64 %r73, 1
  %r75 = call i8* @Skink_rc_alloc(i64 %r74)
  call i8* @strcpy(i8* %r75, i8* %r66)
  call i8* @strcat(i8* %r75, i8* %r69)
  store i8* %r75, i8** %r76
  call void @testing.Errorf(i8* %r75)
  %r77 = load i8*, i8** %r10
  call void @Skink_rc_release(i8* %r77)

  %r78 = load i8*, i8** %r22
  call void @Skink_rc_release(i8* %r78)

  %r79 = load i8*, i8** %r35
  call void @Skink_rc_release(i8* %r79)

  %r80 = load i8*, i8** %r38
  call void @Skink_rc_release(i8* %r80)

  %r81 = load i8*, i8** %r50
  call void @Skink_rc_release(i8* %r81)

  %r82 = load i8*, i8** %r63
  call void @Skink_rc_release(i8* %r82)

  %r83 = load i8*, i8** %r76
  call void @Skink_rc_release(i8* %r83)

  br label %L3
L2:
  call void @testing.recordPass()
  br label %L3
L3:
  %r84 = load i8*, i8** %r3
  call void @Skink_rc_release(i8* %r84)

  ret void

}
define void @testing.AssertEqualFloat(double %arg0, double %arg1, i8* %arg2) {
entry:
  %r1 = alloca double
  store double 0.0, double* %r1
  %r2 = alloca double
  store double 0.0, double* %r2
  %r3 = alloca i8*
  store i8* null, i8** %r3
  %r4 = alloca double
  store double 0.0, double* %r4
  %r12 = alloca double
  store double 0.0, double* %r12
  %r18 = alloca double
  store double 0.0, double* %r18
  %r29 = alloca i8*
  store i8* null, i8** %r29
  %r41 = alloca i8*
  store i8* null, i8** %r41
  %r54 = alloca i8*
  store i8* null, i8** %r54
  %r57 = alloca i8*
  store i8* null, i8** %r57
  %r69 = alloca i8*
  store i8* null, i8** %r69
  %r82 = alloca i8*
  store i8* null, i8** %r82
  %r95 = alloca i8*
  store i8* null, i8** %r95

  store double %arg0, double* %r1
  store double %arg1, double* %r2
  call i8* @Skink_rc_retain(i8* %arg2)

  store i8* %arg2, i8** %r3
  call void @testing.recordTest()
  %r5 = load double, double* %r1
  %r6 = load double, double* %r2
  %r7 = fsub double %r5, %r6
  store double %r7, double* %r4
  %r8 = load double, double* %r4
  %r9 = fcmp olt double %r8, 0.0
  br i1 %r9, label %L1, label %L3
L1:
  %r10 = load double, double* %r4
  %r11 = fneg double %r10
  store double %r11, double* %r4
  br label %L3
L3:
  %r13 = load double, double* %r1
  store double %r13, double* %r12
  %r14 = load double, double* %r12
  %r15 = fcmp olt double %r14, 0.0
  br i1 %r15, label %L4, label %L6
L4:
  %r16 = load double, double* %r12
  %r17 = fneg double %r16
  store double %r17, double* %r12
  br label %L6
L6:
  %r19 = load double, double* %r12
  %r20 = fmul double %r19, 0.0001
  store double %r20, double* %r18
  %r21 = load double, double* %r18
  %r22 = fcmp olt double %r21, 0.000000001
  br i1 %r22, label %L7, label %L9
L7:
  store double 0.000000001, double* %r18
  br label %L9
L9:
  %r23 = load double, double* %r4
  %r24 = load double, double* %r18
  %r25 = fcmp ogt double %r23, %r24
  br i1 %r25, label %L10, label %L11
L10:
  %r26 = getelementptr inbounds [35 x i8], [35 x i8]* @str.96, i64 0, i64 0

  %r27 = load double, double* %r1
  %r28 = call i8* @strconv.FormatFloat(double %r27, i32 6)
  store i8* %r28, i8** %r29
  %r30 = icmp eq i8* %r26, null

  %r32 = getelementptr inbounds [1 x i8], [1 x i8]* @str.97, i64 0, i64 0

  %r31 = select i1 %r30, i8* %r32, i8* %r26

  %r33 = icmp eq i8* %r28, null

  %r35 = getelementptr inbounds [1 x i8], [1 x i8]* @str.98, i64 0, i64 0

  %r34 = select i1 %r33, i8* %r35, i8* %r28

  %r36 = call i64 @strlen(i8* %r31)
  %r37 = call i64 @strlen(i8* %r34)
  %r38 = add i64 %r36, %r37
  %r39 = add i64 %r38, 1
  %r40 = call i8* @Skink_rc_alloc(i64 %r39)
  call i8* @strcpy(i8* %r40, i8* %r31)
  call i8* @strcat(i8* %r40, i8* %r34)
  store i8* %r40, i8** %r41
  %r42 = getelementptr inbounds [7 x i8], [7 x i8]* @str.99, i64 0, i64 0

  %r43 = icmp eq i8* %r40, null

  %r45 = getelementptr inbounds [1 x i8], [1 x i8]* @str.100, i64 0, i64 0

  %r44 = select i1 %r43, i8* %r45, i8* %r40

  %r46 = icmp eq i8* %r42, null

  %r48 = getelementptr inbounds [1 x i8], [1 x i8]* @str.101, i64 0, i64 0

  %r47 = select i1 %r46, i8* %r48, i8* %r42

  %r49 = call i64 @strlen(i8* %r44)
  %r50 = call i64 @strlen(i8* %r47)
  %r51 = add i64 %r49, %r50
  %r52 = add i64 %r51, 1
  %r53 = call i8* @Skink_rc_alloc(i64 %r52)
  call i8* @strcpy(i8* %r53, i8* %r44)
  call i8* @strcat(i8* %r53, i8* %r47)
  store i8* %r53, i8** %r54
  %r55 = load double, double* %r2
  %r56 = call i8* @strconv.FormatFloat(double %r55, i32 6)
  store i8* %r56, i8** %r57
  %r58 = icmp eq i8* %r53, null

  %r60 = getelementptr inbounds [1 x i8], [1 x i8]* @str.102, i64 0, i64 0

  %r59 = select i1 %r58, i8* %r60, i8* %r53

  %r61 = icmp eq i8* %r56, null

  %r63 = getelementptr inbounds [1 x i8], [1 x i8]* @str.103, i64 0, i64 0

  %r62 = select i1 %r61, i8* %r63, i8* %r56

  %r64 = call i64 @strlen(i8* %r59)
  %r65 = call i64 @strlen(i8* %r62)
  %r66 = add i64 %r64, %r65
  %r67 = add i64 %r66, 1
  %r68 = call i8* @Skink_rc_alloc(i64 %r67)
  call i8* @strcpy(i8* %r68, i8* %r59)
  call i8* @strcat(i8* %r68, i8* %r62)
  store i8* %r68, i8** %r69
  %r70 = getelementptr inbounds [4 x i8], [4 x i8]* @str.104, i64 0, i64 0

  %r71 = icmp eq i8* %r68, null

  %r73 = getelementptr inbounds [1 x i8], [1 x i8]* @str.105, i64 0, i64 0

  %r72 = select i1 %r71, i8* %r73, i8* %r68

  %r74 = icmp eq i8* %r70, null

  %r76 = getelementptr inbounds [1 x i8], [1 x i8]* @str.106, i64 0, i64 0

  %r75 = select i1 %r74, i8* %r76, i8* %r70

  %r77 = call i64 @strlen(i8* %r72)
  %r78 = call i64 @strlen(i8* %r75)
  %r79 = add i64 %r77, %r78
  %r80 = add i64 %r79, 1
  %r81 = call i8* @Skink_rc_alloc(i64 %r80)
  call i8* @strcpy(i8* %r81, i8* %r72)
  call i8* @strcat(i8* %r81, i8* %r75)
  store i8* %r81, i8** %r82
  %r83 = load i8*, i8** %r3
  %r84 = icmp eq i8* %r81, null

  %r86 = getelementptr inbounds [1 x i8], [1 x i8]* @str.107, i64 0, i64 0

  %r85 = select i1 %r84, i8* %r86, i8* %r81

  %r87 = icmp eq i8* %r83, null

  %r89 = getelementptr inbounds [1 x i8], [1 x i8]* @str.108, i64 0, i64 0

  %r88 = select i1 %r87, i8* %r89, i8* %r83

  %r90 = call i64 @strlen(i8* %r85)
  %r91 = call i64 @strlen(i8* %r88)
  %r92 = add i64 %r90, %r91
  %r93 = add i64 %r92, 1
  %r94 = call i8* @Skink_rc_alloc(i64 %r93)
  call i8* @strcpy(i8* %r94, i8* %r85)
  call i8* @strcat(i8* %r94, i8* %r88)
  store i8* %r94, i8** %r95
  call void @testing.Errorf(i8* %r94)
  %r96 = load i8*, i8** %r29
  call void @Skink_rc_release(i8* %r96)

  %r97 = load i8*, i8** %r41
  call void @Skink_rc_release(i8* %r97)

  %r98 = load i8*, i8** %r54
  call void @Skink_rc_release(i8* %r98)

  %r99 = load i8*, i8** %r57
  call void @Skink_rc_release(i8* %r99)

  %r100 = load i8*, i8** %r69
  call void @Skink_rc_release(i8* %r100)

  %r101 = load i8*, i8** %r82
  call void @Skink_rc_release(i8* %r101)

  %r102 = load i8*, i8** %r95
  call void @Skink_rc_release(i8* %r102)

  br label %L12
L11:
  call void @testing.recordPass()
  br label %L12
L12:
  %r103 = load i8*, i8** %r3
  call void @Skink_rc_release(i8* %r103)

  ret void

}
define void @testing.AssertEqualBool(i1 %arg0, i1 %arg1, i8* %arg2) {
entry:
  %r1 = alloca i1
  store i1 false, i1* %r1
  %r2 = alloca i1
  store i1 false, i1* %r2
  %r3 = alloca i8*
  store i8* null, i8** %r3
  %r20 = alloca i8*
  store i8* null, i8** %r20

  store i1 %arg0, i1* %r1
  store i1 %arg1, i1* %r2
  call i8* @Skink_rc_retain(i8* %arg2)

  store i8* %arg2, i8** %r3
  call void @testing.recordTest()
  %r4 = load i1, i1* %r1
  %r5 = load i1, i1* %r2
  %r6 = icmp ne i1 %r4, %r5
  br i1 %r6, label %L1, label %L2
L1:
  %r7 = getelementptr inbounds [26 x i8], [26 x i8]* @str.109, i64 0, i64 0

  %r8 = load i8*, i8** %r3
  %r9 = icmp eq i8* %r7, null

  %r11 = getelementptr inbounds [1 x i8], [1 x i8]* @str.110, i64 0, i64 0

  %r10 = select i1 %r9, i8* %r11, i8* %r7

  %r12 = icmp eq i8* %r8, null

  %r14 = getelementptr inbounds [1 x i8], [1 x i8]* @str.111, i64 0, i64 0

  %r13 = select i1 %r12, i8* %r14, i8* %r8

  %r15 = call i64 @strlen(i8* %r10)
  %r16 = call i64 @strlen(i8* %r13)
  %r17 = add i64 %r15, %r16
  %r18 = add i64 %r17, 1
  %r19 = call i8* @Skink_rc_alloc(i64 %r18)
  call i8* @strcpy(i8* %r19, i8* %r10)
  call i8* @strcat(i8* %r19, i8* %r13)
  store i8* %r19, i8** %r20
  call void @testing.Errorf(i8* %r19)
  %r21 = load i8*, i8** %r20
  call void @Skink_rc_release(i8* %r21)

  br label %L3
L2:
  call void @testing.recordPass()
  br label %L3
L3:
  %r22 = load i8*, i8** %r3
  call void @Skink_rc_release(i8* %r22)

  ret void

}
define void @testing.AssertNotEqualString(i8* %arg0, i8* %arg1, i8* %arg2) {
entry:
  %r1 = alloca i8*
  store i8* null, i8** %r1
  %r2 = alloca i8*
  store i8* null, i8** %r2
  %r3 = alloca i8*
  store i8* null, i8** %r3
  %r21 = alloca i8*
  store i8* null, i8** %r21

  call i8* @Skink_rc_retain(i8* %arg0)

  store i8* %arg0, i8** %r1
  call i8* @Skink_rc_retain(i8* %arg1)

  store i8* %arg1, i8** %r2
  call i8* @Skink_rc_retain(i8* %arg2)

  store i8* %arg2, i8** %r3
  call void @testing.recordTest()
  %r4 = load i8*, i8** %r1
  %r5 = load i8*, i8** %r2
  %r6 = call i1 @str.Equal(i8* %r4, i8* %r5)
  %r7 = icmp eq i1 %r6, 1
  br i1 %r7, label %L1, label %L2
L1:
  %r8 = getelementptr inbounds [53 x i8], [53 x i8]* @str.112, i64 0, i64 0

  %r9 = load i8*, i8** %r3
  %r10 = icmp eq i8* %r8, null

  %r12 = getelementptr inbounds [1 x i8], [1 x i8]* @str.113, i64 0, i64 0

  %r11 = select i1 %r10, i8* %r12, i8* %r8

  %r13 = icmp eq i8* %r9, null

  %r15 = getelementptr inbounds [1 x i8], [1 x i8]* @str.114, i64 0, i64 0

  %r14 = select i1 %r13, i8* %r15, i8* %r9

  %r16 = call i64 @strlen(i8* %r11)
  %r17 = call i64 @strlen(i8* %r14)
  %r18 = add i64 %r16, %r17
  %r19 = add i64 %r18, 1
  %r20 = call i8* @Skink_rc_alloc(i64 %r19)
  call i8* @strcpy(i8* %r20, i8* %r11)
  call i8* @strcat(i8* %r20, i8* %r14)
  store i8* %r20, i8** %r21
  call void @testing.Errorf(i8* %r20)
  %r22 = load i8*, i8** %r21
  call void @Skink_rc_release(i8* %r22)

  br label %L3
L2:
  call void @testing.recordPass()
  br label %L3
L3:
  %r23 = load i8*, i8** %r1
  call void @Skink_rc_release(i8* %r23)

  %r24 = load i8*, i8** %r2
  call void @Skink_rc_release(i8* %r24)

  %r25 = load i8*, i8** %r3
  call void @Skink_rc_release(i8* %r25)

  ret void

}
define void @testing.AssertNotEqualInt(i32 %arg0, i32 %arg1, i8* %arg2) {
entry:
  %r1 = alloca i32
  store i32 0, i32* %r1
  %r2 = alloca i32
  store i32 0, i32* %r2
  %r3 = alloca i8*
  store i8* null, i8** %r3
  %r20 = alloca i8*
  store i8* null, i8** %r20

  store i32 %arg0, i32* %r1
  store i32 %arg1, i32* %r2
  call i8* @Skink_rc_retain(i8* %arg2)

  store i8* %arg2, i8** %r3
  call void @testing.recordTest()
  %r4 = load i32, i32* %r1
  %r5 = load i32, i32* %r2
  %r6 = icmp eq i32 %r4, %r5
  br i1 %r6, label %L1, label %L2
L1:
  %r7 = getelementptr inbounds [50 x i8], [50 x i8]* @str.115, i64 0, i64 0

  %r8 = load i8*, i8** %r3
  %r9 = icmp eq i8* %r7, null

  %r11 = getelementptr inbounds [1 x i8], [1 x i8]* @str.116, i64 0, i64 0

  %r10 = select i1 %r9, i8* %r11, i8* %r7

  %r12 = icmp eq i8* %r8, null

  %r14 = getelementptr inbounds [1 x i8], [1 x i8]* @str.117, i64 0, i64 0

  %r13 = select i1 %r12, i8* %r14, i8* %r8

  %r15 = call i64 @strlen(i8* %r10)
  %r16 = call i64 @strlen(i8* %r13)
  %r17 = add i64 %r15, %r16
  %r18 = add i64 %r17, 1
  %r19 = call i8* @Skink_rc_alloc(i64 %r18)
  call i8* @strcpy(i8* %r19, i8* %r10)
  call i8* @strcat(i8* %r19, i8* %r13)
  store i8* %r19, i8** %r20
  call void @testing.Errorf(i8* %r19)
  %r21 = load i8*, i8** %r20
  call void @Skink_rc_release(i8* %r21)

  br label %L3
L2:
  call void @testing.recordPass()
  br label %L3
L3:
  %r22 = load i8*, i8** %r3
  call void @Skink_rc_release(i8* %r22)

  ret void

}
define void @testing.AssertNil(i8* %arg0, i8* %arg1) {
entry:
  %r1 = alloca i8*
  store i8* null, i8** %r1
  %r2 = alloca i8*
  store i8* null, i8** %r2
  %r25 = alloca i8*
  store i8* null, i8** %r25

  call i8* @Skink_rc_retain(i8* %arg0)

  store i8* %arg0, i8** %r1
  call i8* @Skink_rc_retain(i8* %arg1)

  store i8* %arg1, i8** %r2
  call void @testing.recordTest()
  %r3 = load i8*, i8** %r1
  %r4 = icmp eq i8* %r3, null

  %r6 = getelementptr inbounds [1 x i8], [1 x i8]* @str.118, i64 0, i64 0

  %r5 = select i1 %r4, i8* %r6, i8* %r3

  %r7 = icmp eq i8* null, null

  %r9 = getelementptr inbounds [1 x i8], [1 x i8]* @str.119, i64 0, i64 0

  %r8 = select i1 %r7, i8* %r9, i8* null

  %r10 = call i32 @strcmp(i8* %r5, i8* %r8)

  %r11 = icmp ne i32 %r10, 0

  br i1 %r11, label %L1, label %L2
L1:
  %r12 = getelementptr inbounds [41 x i8], [41 x i8]* @str.120, i64 0, i64 0

  %r13 = load i8*, i8** %r2
  %r14 = icmp eq i8* %r12, null

  %r16 = getelementptr inbounds [1 x i8], [1 x i8]* @str.121, i64 0, i64 0

  %r15 = select i1 %r14, i8* %r16, i8* %r12

  %r17 = icmp eq i8* %r13, null

  %r19 = getelementptr inbounds [1 x i8], [1 x i8]* @str.122, i64 0, i64 0

  %r18 = select i1 %r17, i8* %r19, i8* %r13

  %r20 = call i64 @strlen(i8* %r15)
  %r21 = call i64 @strlen(i8* %r18)
  %r22 = add i64 %r20, %r21
  %r23 = add i64 %r22, 1
  %r24 = call i8* @Skink_rc_alloc(i64 %r23)
  call i8* @strcpy(i8* %r24, i8* %r15)
  call i8* @strcat(i8* %r24, i8* %r18)
  store i8* %r24, i8** %r25
  call void @testing.Errorf(i8* %r24)
  %r26 = load i8*, i8** %r25
  call void @Skink_rc_release(i8* %r26)

  br label %L3
L2:
  call void @testing.recordPass()
  br label %L3
L3:
  %r27 = load i8*, i8** %r1
  call void @Skink_rc_release(i8* %r27)

  %r28 = load i8*, i8** %r2
  call void @Skink_rc_release(i8* %r28)

  ret void

}
define void @testing.AssertNotNil(i8* %arg0, i8* %arg1) {
entry:
  %r1 = alloca i8*
  store i8* null, i8** %r1
  %r2 = alloca i8*
  store i8* null, i8** %r2
  %r25 = alloca i8*
  store i8* null, i8** %r25

  call i8* @Skink_rc_retain(i8* %arg0)

  store i8* %arg0, i8** %r1
  call i8* @Skink_rc_retain(i8* %arg1)

  store i8* %arg1, i8** %r2
  call void @testing.recordTest()
  %r3 = load i8*, i8** %r1
  %r4 = icmp eq i8* %r3, null

  %r6 = getelementptr inbounds [1 x i8], [1 x i8]* @str.123, i64 0, i64 0

  %r5 = select i1 %r4, i8* %r6, i8* %r3

  %r7 = icmp eq i8* null, null

  %r9 = getelementptr inbounds [1 x i8], [1 x i8]* @str.124, i64 0, i64 0

  %r8 = select i1 %r7, i8* %r9, i8* null

  %r10 = call i32 @strcmp(i8* %r5, i8* %r8)

  %r11 = icmp eq i32 %r10, 0

  br i1 %r11, label %L1, label %L2
L1:
  %r12 = getelementptr inbounds [40 x i8], [40 x i8]* @str.125, i64 0, i64 0

  %r13 = load i8*, i8** %r2
  %r14 = icmp eq i8* %r12, null

  %r16 = getelementptr inbounds [1 x i8], [1 x i8]* @str.126, i64 0, i64 0

  %r15 = select i1 %r14, i8* %r16, i8* %r12

  %r17 = icmp eq i8* %r13, null

  %r19 = getelementptr inbounds [1 x i8], [1 x i8]* @str.127, i64 0, i64 0

  %r18 = select i1 %r17, i8* %r19, i8* %r13

  %r20 = call i64 @strlen(i8* %r15)
  %r21 = call i64 @strlen(i8* %r18)
  %r22 = add i64 %r20, %r21
  %r23 = add i64 %r22, 1
  %r24 = call i8* @Skink_rc_alloc(i64 %r23)
  call i8* @strcpy(i8* %r24, i8* %r15)
  call i8* @strcat(i8* %r24, i8* %r18)
  store i8* %r24, i8** %r25
  call void @testing.Errorf(i8* %r24)
  %r26 = load i8*, i8** %r25
  call void @Skink_rc_release(i8* %r26)

  br label %L3
L2:
  call void @testing.recordPass()
  br label %L3
L3:
  %r27 = load i8*, i8** %r1
  call void @Skink_rc_release(i8* %r27)

  %r28 = load i8*, i8** %r2
  call void @Skink_rc_release(i8* %r28)

  ret void

}
define void @testing.AssertContains(i8* %arg0, i8* %arg1, i8* %arg2) {
entry:
  %r1 = alloca i8*
  store i8* null, i8** %r1
  %r2 = alloca i8*
  store i8* null, i8** %r2
  %r3 = alloca i8*
  store i8* null, i8** %r3
  %r21 = alloca i8*
  store i8* null, i8** %r21
  %r34 = alloca i8*
  store i8* null, i8** %r34
  %r47 = alloca i8*
  store i8* null, i8** %r47
  %r60 = alloca i8*
  store i8* null, i8** %r60
  %r73 = alloca i8*
  store i8* null, i8** %r73

  call i8* @Skink_rc_retain(i8* %arg0)

  store i8* %arg0, i8** %r1
  call i8* @Skink_rc_retain(i8* %arg1)

  store i8* %arg1, i8** %r2
  call i8* @Skink_rc_retain(i8* %arg2)

  store i8* %arg2, i8** %r3
  call void @testing.recordTest()
  %r4 = load i8*, i8** %r1
  %r5 = load i8*, i8** %r2
  %r6 = call i1 @str.Contains(i8* %r4, i8* %r5)
  %r7 = icmp eq i1 %r6, 0
  br i1 %r7, label %L1, label %L2
L1:
  %r8 = getelementptr inbounds [25 x i8], [25 x i8]* @str.128, i64 0, i64 0

  %r9 = load i8*, i8** %r1
  %r10 = icmp eq i8* %r8, null

  %r12 = getelementptr inbounds [1 x i8], [1 x i8]* @str.129, i64 0, i64 0

  %r11 = select i1 %r10, i8* %r12, i8* %r8

  %r13 = icmp eq i8* %r9, null

  %r15 = getelementptr inbounds [1 x i8], [1 x i8]* @str.130, i64 0, i64 0

  %r14 = select i1 %r13, i8* %r15, i8* %r9

  %r16 = call i64 @strlen(i8* %r11)
  %r17 = call i64 @strlen(i8* %r14)
  %r18 = add i64 %r16, %r17
  %r19 = add i64 %r18, 1
  %r20 = call i8* @Skink_rc_alloc(i64 %r19)
  call i8* @strcpy(i8* %r20, i8* %r11)
  call i8* @strcat(i8* %r20, i8* %r14)
  store i8* %r20, i8** %r21
  %r22 = getelementptr inbounds [21 x i8], [21 x i8]* @str.131, i64 0, i64 0

  %r23 = icmp eq i8* %r20, null

  %r25 = getelementptr inbounds [1 x i8], [1 x i8]* @str.132, i64 0, i64 0

  %r24 = select i1 %r23, i8* %r25, i8* %r20

  %r26 = icmp eq i8* %r22, null

  %r28 = getelementptr inbounds [1 x i8], [1 x i8]* @str.133, i64 0, i64 0

  %r27 = select i1 %r26, i8* %r28, i8* %r22

  %r29 = call i64 @strlen(i8* %r24)
  %r30 = call i64 @strlen(i8* %r27)
  %r31 = add i64 %r29, %r30
  %r32 = add i64 %r31, 1
  %r33 = call i8* @Skink_rc_alloc(i64 %r32)
  call i8* @strcpy(i8* %r33, i8* %r24)
  call i8* @strcat(i8* %r33, i8* %r27)
  store i8* %r33, i8** %r34
  %r35 = load i8*, i8** %r2
  %r36 = icmp eq i8* %r33, null

  %r38 = getelementptr inbounds [1 x i8], [1 x i8]* @str.134, i64 0, i64 0

  %r37 = select i1 %r36, i8* %r38, i8* %r33

  %r39 = icmp eq i8* %r35, null

  %r41 = getelementptr inbounds [1 x i8], [1 x i8]* @str.135, i64 0, i64 0

  %r40 = select i1 %r39, i8* %r41, i8* %r35

  %r42 = call i64 @strlen(i8* %r37)
  %r43 = call i64 @strlen(i8* %r40)
  %r44 = add i64 %r42, %r43
  %r45 = add i64 %r44, 1
  %r46 = call i8* @Skink_rc_alloc(i64 %r45)
  call i8* @strcpy(i8* %r46, i8* %r37)
  call i8* @strcat(i8* %r46, i8* %r40)
  store i8* %r46, i8** %r47
  %r48 = getelementptr inbounds [5 x i8], [5 x i8]* @str.136, i64 0, i64 0

  %r49 = icmp eq i8* %r46, null

  %r51 = getelementptr inbounds [1 x i8], [1 x i8]* @str.137, i64 0, i64 0

  %r50 = select i1 %r49, i8* %r51, i8* %r46

  %r52 = icmp eq i8* %r48, null

  %r54 = getelementptr inbounds [1 x i8], [1 x i8]* @str.138, i64 0, i64 0

  %r53 = select i1 %r52, i8* %r54, i8* %r48

  %r55 = call i64 @strlen(i8* %r50)
  %r56 = call i64 @strlen(i8* %r53)
  %r57 = add i64 %r55, %r56
  %r58 = add i64 %r57, 1
  %r59 = call i8* @Skink_rc_alloc(i64 %r58)
  call i8* @strcpy(i8* %r59, i8* %r50)
  call i8* @strcat(i8* %r59, i8* %r53)
  store i8* %r59, i8** %r60
  %r61 = load i8*, i8** %r3
  %r62 = icmp eq i8* %r59, null

  %r64 = getelementptr inbounds [1 x i8], [1 x i8]* @str.139, i64 0, i64 0

  %r63 = select i1 %r62, i8* %r64, i8* %r59

  %r65 = icmp eq i8* %r61, null

  %r67 = getelementptr inbounds [1 x i8], [1 x i8]* @str.140, i64 0, i64 0

  %r66 = select i1 %r65, i8* %r67, i8* %r61

  %r68 = call i64 @strlen(i8* %r63)
  %r69 = call i64 @strlen(i8* %r66)
  %r70 = add i64 %r68, %r69
  %r71 = add i64 %r70, 1
  %r72 = call i8* @Skink_rc_alloc(i64 %r71)
  call i8* @strcpy(i8* %r72, i8* %r63)
  call i8* @strcat(i8* %r72, i8* %r66)
  store i8* %r72, i8** %r73
  call void @testing.Errorf(i8* %r72)
  %r74 = load i8*, i8** %r21
  call void @Skink_rc_release(i8* %r74)

  %r75 = load i8*, i8** %r34
  call void @Skink_rc_release(i8* %r75)

  %r76 = load i8*, i8** %r47
  call void @Skink_rc_release(i8* %r76)

  %r77 = load i8*, i8** %r60
  call void @Skink_rc_release(i8* %r77)

  %r78 = load i8*, i8** %r73
  call void @Skink_rc_release(i8* %r78)

  br label %L3
L2:
  call void @testing.recordPass()
  br label %L3
L3:
  %r79 = load i8*, i8** %r1
  call void @Skink_rc_release(i8* %r79)

  %r80 = load i8*, i8** %r2
  call void @Skink_rc_release(i8* %r80)

  %r81 = load i8*, i8** %r3
  call void @Skink_rc_release(i8* %r81)

  ret void

}
define void @testing.AssertLen(i8* %arg0, i32 %arg1, i8* %arg2) {
entry:
  %r1 = alloca i8*
  store i8* null, i8** %r1
  %r2 = alloca i32
  store i32 0, i32* %r2
  %r3 = alloca i8*
  store i8* null, i8** %r3
  %r4 = alloca i32
  store i32 0, i32* %r4
  %r13 = alloca i8*
  store i8* null, i8** %r13
  %r25 = alloca i8*
  store i8* null, i8** %r25
  %r38 = alloca i8*
  store i8* null, i8** %r38
  %r41 = alloca i8*
  store i8* null, i8** %r41
  %r53 = alloca i8*
  store i8* null, i8** %r53
  %r66 = alloca i8*
  store i8* null, i8** %r66
  %r79 = alloca i8*
  store i8* null, i8** %r79

  call i8* @Skink_rc_retain(i8* %arg0)

  store i8* %arg0, i8** %r1
  store i32 %arg1, i32* %r2
  call i8* @Skink_rc_retain(i8* %arg2)

  store i8* %arg2, i8** %r3
  call void @testing.recordTest()
  %r5 = load i8*, i8** %r1
  %r6 = call i32 @str.Len(i8* %r5)
  store i32 %r6, i32* %r4
  %r7 = load i32, i32* %r4
  %r8 = load i32, i32* %r2
  %r9 = icmp ne i32 %r7, %r8
  br i1 %r9, label %L1, label %L2
L1:
  %r10 = getelementptr inbounds [28 x i8], [28 x i8]* @str.141, i64 0, i64 0

  %r11 = load i32, i32* %r2
  %r12 = call i8* @strconv.Itoa(i32 %r11)
  store i8* %r12, i8** %r13
  %r14 = icmp eq i8* %r10, null

  %r16 = getelementptr inbounds [1 x i8], [1 x i8]* @str.142, i64 0, i64 0

  %r15 = select i1 %r14, i8* %r16, i8* %r10

  %r17 = icmp eq i8* %r12, null

  %r19 = getelementptr inbounds [1 x i8], [1 x i8]* @str.143, i64 0, i64 0

  %r18 = select i1 %r17, i8* %r19, i8* %r12

  %r20 = call i64 @strlen(i8* %r15)
  %r21 = call i64 @strlen(i8* %r18)
  %r22 = add i64 %r20, %r21
  %r23 = add i64 %r22, 1
  %r24 = call i8* @Skink_rc_alloc(i64 %r23)
  call i8* @strcpy(i8* %r24, i8* %r15)
  call i8* @strcat(i8* %r24, i8* %r18)
  store i8* %r24, i8** %r25
  %r26 = getelementptr inbounds [7 x i8], [7 x i8]* @str.144, i64 0, i64 0

  %r27 = icmp eq i8* %r24, null

  %r29 = getelementptr inbounds [1 x i8], [1 x i8]* @str.145, i64 0, i64 0

  %r28 = select i1 %r27, i8* %r29, i8* %r24

  %r30 = icmp eq i8* %r26, null

  %r32 = getelementptr inbounds [1 x i8], [1 x i8]* @str.146, i64 0, i64 0

  %r31 = select i1 %r30, i8* %r32, i8* %r26

  %r33 = call i64 @strlen(i8* %r28)
  %r34 = call i64 @strlen(i8* %r31)
  %r35 = add i64 %r33, %r34
  %r36 = add i64 %r35, 1
  %r37 = call i8* @Skink_rc_alloc(i64 %r36)
  call i8* @strcpy(i8* %r37, i8* %r28)
  call i8* @strcat(i8* %r37, i8* %r31)
  store i8* %r37, i8** %r38
  %r39 = load i32, i32* %r4
  %r40 = call i8* @strconv.Itoa(i32 %r39)
  store i8* %r40, i8** %r41
  %r42 = icmp eq i8* %r37, null

  %r44 = getelementptr inbounds [1 x i8], [1 x i8]* @str.147, i64 0, i64 0

  %r43 = select i1 %r42, i8* %r44, i8* %r37

  %r45 = icmp eq i8* %r40, null

  %r47 = getelementptr inbounds [1 x i8], [1 x i8]* @str.148, i64 0, i64 0

  %r46 = select i1 %r45, i8* %r47, i8* %r40

  %r48 = call i64 @strlen(i8* %r43)
  %r49 = call i64 @strlen(i8* %r46)
  %r50 = add i64 %r48, %r49
  %r51 = add i64 %r50, 1
  %r52 = call i8* @Skink_rc_alloc(i64 %r51)
  call i8* @strcpy(i8* %r52, i8* %r43)
  call i8* @strcat(i8* %r52, i8* %r46)
  store i8* %r52, i8** %r53
  %r54 = getelementptr inbounds [4 x i8], [4 x i8]* @str.149, i64 0, i64 0

  %r55 = icmp eq i8* %r52, null

  %r57 = getelementptr inbounds [1 x i8], [1 x i8]* @str.150, i64 0, i64 0

  %r56 = select i1 %r55, i8* %r57, i8* %r52

  %r58 = icmp eq i8* %r54, null

  %r60 = getelementptr inbounds [1 x i8], [1 x i8]* @str.151, i64 0, i64 0

  %r59 = select i1 %r58, i8* %r60, i8* %r54

  %r61 = call i64 @strlen(i8* %r56)
  %r62 = call i64 @strlen(i8* %r59)
  %r63 = add i64 %r61, %r62
  %r64 = add i64 %r63, 1
  %r65 = call i8* @Skink_rc_alloc(i64 %r64)
  call i8* @strcpy(i8* %r65, i8* %r56)
  call i8* @strcat(i8* %r65, i8* %r59)
  store i8* %r65, i8** %r66
  %r67 = load i8*, i8** %r3
  %r68 = icmp eq i8* %r65, null

  %r70 = getelementptr inbounds [1 x i8], [1 x i8]* @str.152, i64 0, i64 0

  %r69 = select i1 %r68, i8* %r70, i8* %r65

  %r71 = icmp eq i8* %r67, null

  %r73 = getelementptr inbounds [1 x i8], [1 x i8]* @str.153, i64 0, i64 0

  %r72 = select i1 %r71, i8* %r73, i8* %r67

  %r74 = call i64 @strlen(i8* %r69)
  %r75 = call i64 @strlen(i8* %r72)
  %r76 = add i64 %r74, %r75
  %r77 = add i64 %r76, 1
  %r78 = call i8* @Skink_rc_alloc(i64 %r77)
  call i8* @strcpy(i8* %r78, i8* %r69)
  call i8* @strcat(i8* %r78, i8* %r72)
  store i8* %r78, i8** %r79
  call void @testing.Errorf(i8* %r78)
  %r80 = load i8*, i8** %r13
  call void @Skink_rc_release(i8* %r80)

  %r81 = load i8*, i8** %r25
  call void @Skink_rc_release(i8* %r81)

  %r82 = load i8*, i8** %r38
  call void @Skink_rc_release(i8* %r82)

  %r83 = load i8*, i8** %r41
  call void @Skink_rc_release(i8* %r83)

  %r84 = load i8*, i8** %r53
  call void @Skink_rc_release(i8* %r84)

  %r85 = load i8*, i8** %r66
  call void @Skink_rc_release(i8* %r85)

  %r86 = load i8*, i8** %r79
  call void @Skink_rc_release(i8* %r86)

  br label %L3
L2:
  call void @testing.recordPass()
  br label %L3
L3:
  %r87 = load i8*, i8** %r1
  call void @Skink_rc_release(i8* %r87)

  %r88 = load i8*, i8** %r3
  call void @Skink_rc_release(i8* %r88)

  ret void

}
define void @testing.AssertNoError(i8* %arg0, i8* %arg1) {
entry:
  %r1 = alloca i8*
  store i8* null, i8** %r1
  %r2 = alloca i8*
  store i8* null, i8** %r2
  %r19 = alloca i8*
  store i8* null, i8** %r19
  %r32 = alloca i8*
  store i8* null, i8** %r32
  %r45 = alloca i8*
  store i8* null, i8** %r45

  call i8* @Skink_rc_retain(i8* %arg0)

  store i8* %arg0, i8** %r1
  call i8* @Skink_rc_retain(i8* %arg1)

  store i8* %arg1, i8** %r2
  call void @testing.recordTest()
  %r3 = load i8*, i8** %r1
  %r4 = call i32 @str.Len(i8* %r3)
  %r5 = icmp sgt i32 %r4, 0
  br i1 %r5, label %L1, label %L2
L1:
  %r6 = getelementptr inbounds [41 x i8], [41 x i8]* @str.154, i64 0, i64 0

  %r7 = load i8*, i8** %r1
  %r8 = icmp eq i8* %r6, null

  %r10 = getelementptr inbounds [1 x i8], [1 x i8]* @str.155, i64 0, i64 0

  %r9 = select i1 %r8, i8* %r10, i8* %r6

  %r11 = icmp eq i8* %r7, null

  %r13 = getelementptr inbounds [1 x i8], [1 x i8]* @str.156, i64 0, i64 0

  %r12 = select i1 %r11, i8* %r13, i8* %r7

  %r14 = call i64 @strlen(i8* %r9)
  %r15 = call i64 @strlen(i8* %r12)
  %r16 = add i64 %r14, %r15
  %r17 = add i64 %r16, 1
  %r18 = call i8* @Skink_rc_alloc(i64 %r17)
  call i8* @strcpy(i8* %r18, i8* %r9)
  call i8* @strcat(i8* %r18, i8* %r12)
  store i8* %r18, i8** %r19
  %r20 = getelementptr inbounds [4 x i8], [4 x i8]* @str.157, i64 0, i64 0

  %r21 = icmp eq i8* %r18, null

  %r23 = getelementptr inbounds [1 x i8], [1 x i8]* @str.158, i64 0, i64 0

  %r22 = select i1 %r21, i8* %r23, i8* %r18

  %r24 = icmp eq i8* %r20, null

  %r26 = getelementptr inbounds [1 x i8], [1 x i8]* @str.159, i64 0, i64 0

  %r25 = select i1 %r24, i8* %r26, i8* %r20

  %r27 = call i64 @strlen(i8* %r22)
  %r28 = call i64 @strlen(i8* %r25)
  %r29 = add i64 %r27, %r28
  %r30 = add i64 %r29, 1
  %r31 = call i8* @Skink_rc_alloc(i64 %r30)
  call i8* @strcpy(i8* %r31, i8* %r22)
  call i8* @strcat(i8* %r31, i8* %r25)
  store i8* %r31, i8** %r32
  %r33 = load i8*, i8** %r2
  %r34 = icmp eq i8* %r31, null

  %r36 = getelementptr inbounds [1 x i8], [1 x i8]* @str.160, i64 0, i64 0

  %r35 = select i1 %r34, i8* %r36, i8* %r31

  %r37 = icmp eq i8* %r33, null

  %r39 = getelementptr inbounds [1 x i8], [1 x i8]* @str.161, i64 0, i64 0

  %r38 = select i1 %r37, i8* %r39, i8* %r33

  %r40 = call i64 @strlen(i8* %r35)
  %r41 = call i64 @strlen(i8* %r38)
  %r42 = add i64 %r40, %r41
  %r43 = add i64 %r42, 1
  %r44 = call i8* @Skink_rc_alloc(i64 %r43)
  call i8* @strcpy(i8* %r44, i8* %r35)
  call i8* @strcat(i8* %r44, i8* %r38)
  store i8* %r44, i8** %r45
  call void @testing.Errorf(i8* %r44)
  %r46 = load i8*, i8** %r19
  call void @Skink_rc_release(i8* %r46)

  %r47 = load i8*, i8** %r32
  call void @Skink_rc_release(i8* %r47)

  %r48 = load i8*, i8** %r45
  call void @Skink_rc_release(i8* %r48)

  br label %L3
L2:
  call void @testing.recordPass()
  br label %L3
L3:
  %r49 = load i8*, i8** %r1
  call void @Skink_rc_release(i8* %r49)

  %r50 = load i8*, i8** %r2
  call void @Skink_rc_release(i8* %r50)

  ret void

}
define void @testing.AssertError(i8* %arg0, i8* %arg1) {
entry:
  %r1 = alloca i8*
  store i8* null, i8** %r1
  %r2 = alloca i8*
  store i8* null, i8** %r2
  %r19 = alloca i8*
  store i8* null, i8** %r19

  call i8* @Skink_rc_retain(i8* %arg0)

  store i8* %arg0, i8** %r1
  call i8* @Skink_rc_retain(i8* %arg1)

  store i8* %arg1, i8** %r2
  call void @testing.recordTest()
  %r3 = load i8*, i8** %r1
  %r4 = call i32 @str.Len(i8* %r3)
  %r5 = icmp eq i32 %r4, 0
  br i1 %r5, label %L1, label %L2
L1:
  %r6 = getelementptr inbounds [51 x i8], [51 x i8]* @str.162, i64 0, i64 0

  %r7 = load i8*, i8** %r2
  %r8 = icmp eq i8* %r6, null

  %r10 = getelementptr inbounds [1 x i8], [1 x i8]* @str.163, i64 0, i64 0

  %r9 = select i1 %r8, i8* %r10, i8* %r6

  %r11 = icmp eq i8* %r7, null

  %r13 = getelementptr inbounds [1 x i8], [1 x i8]* @str.164, i64 0, i64 0

  %r12 = select i1 %r11, i8* %r13, i8* %r7

  %r14 = call i64 @strlen(i8* %r9)
  %r15 = call i64 @strlen(i8* %r12)
  %r16 = add i64 %r14, %r15
  %r17 = add i64 %r16, 1
  %r18 = call i8* @Skink_rc_alloc(i64 %r17)
  call i8* @strcpy(i8* %r18, i8* %r9)
  call i8* @strcat(i8* %r18, i8* %r12)
  store i8* %r18, i8** %r19
  call void @testing.Errorf(i8* %r18)
  %r20 = load i8*, i8** %r19
  call void @Skink_rc_release(i8* %r20)

  br label %L3
L2:
  call void @testing.recordPass()
  br label %L3
L3:
  %r21 = load i8*, i8** %r1
  call void @Skink_rc_release(i8* %r21)

  %r22 = load i8*, i8** %r2
  call void @Skink_rc_release(i8* %r22)

  ret void

}
define i32 @testing.PassCount() {
entry:
  %r1 = load i32, i32* @testing.passCount
  ret i32 %r1

}
define i32 @testing.FailCount() {
entry:
  %r1 = load i32, i32* @testing.failCount
  ret i32 %r1

}
define i32 @testing.TestCount() {
entry:
  %r1 = load i32, i32* @testing.testCount
  ret i32 %r1

}
define i64 @testing.DetectCycles() {
entry:
  %r1 = call i64 @Skink_rc_detect_cycles()
  ret i64 %r1

}
define i64 @testing.ReportCycles() {
entry:
  %r1 = call i64 @Skink_rc_report_cycles()
  ret i64 %r1

}
define i64 @testing.LiveObjects() {
entry:
  %r1 = call i64 @Skink_rc_live_objects()
  ret i64 %r1

}
define i64 @testing.LiveBytes() {
entry:
  %r1 = call i64 @Skink_rc_live_bytes()
  ret i64 %r1

}
define i64 @testing.PeakBytes() {
entry:
  %r1 = call i64 @Skink_rc_peak_bytes()
  ret i64 %r1

}
define i32 @map_ops_0015.lookup_or_zero(%map_i8Ptr__i32* %arg0, i8* %arg1) {
entry:
  %r1 = alloca %map_i8Ptr__i32*
  store %map_i8Ptr__i32* null, %map_i8Ptr__i32** %r1
  %r2 = alloca i8*
  store i8* null, i8** %r2
  %r4 = alloca i32
  store i32 0, i32* %r4

  %r3 = bitcast %map_i8Ptr__i32* %arg0 to i8*

  call i8* @Skink_rc_retain(i8* %r3)

  store %map_i8Ptr__i32* %arg0, %map_i8Ptr__i32** %r1
  call i8* @Skink_rc_retain(i8* %arg1)

  store i8* %arg1, i8** %r2
  %r5 = load %map_i8Ptr__i32*, %map_i8Ptr__i32** %r1
  %r6 = load i8*, i8** %r2
  %r7 = alloca i32

  store i32 0, i32* %r7

  %r8 = icmp eq %map_i8Ptr__i32* %r5, null

  br i1 %r8, label %L1, label %L2
L2:
  %r9 = getelementptr inbounds %map_i8Ptr__i32, %map_i8Ptr__i32* %r5, i32 0, i32 0

  %r10 = load i8**, i8*** %r9

  %r11 = getelementptr inbounds %map_i8Ptr__i32, %map_i8Ptr__i32* %r5, i32 0, i32 1

  %r12 = load i32*, i32** %r11

  %r13 = getelementptr inbounds %map_i8Ptr__i32, %map_i8Ptr__i32* %r5, i32 0, i32 2

  %r14 = load i8*, i8** %r13

  %r15 = getelementptr inbounds %map_i8Ptr__i32, %map_i8Ptr__i32* %r5, i32 0, i32 3

  %r16 = load i32, i32* %r15

  %r17 = icmp eq i32 %r16, 0

  br i1 %r17, label %L3, label %L4
L4:

  %r18 = call i32 @Skink_str_hash(i8* %r6)

  %r19 = srem i32 %r18, %r16

  %r20 = icmp slt i32 %r19, 0

  %r21 = sub i32 0, %r19

  %r22 = select i1 %r20, i32 %r21, i32 %r19

  %r23 = alloca i32

  store i32 %r22, i32* %r23

  br label %L5
L5:

  %r24 = load i32, i32* %r23

  %r25 = getelementptr inbounds i8, i8* %r14, i32 %r24

  %r26 = load i8, i8* %r25

  %r27 = icmp eq i8 %r26, 0

  br i1 %r27, label %L3, label %L6
L6:

  %r28 = getelementptr inbounds i8*, i8** %r10, i32 %r24

  %r29 = load i8*, i8** %r28

  %r30 = call i32 @strcmp(i8* %r29, i8* %r6)

  %r31 = icmp eq i32 %r30, 0

  br i1 %r31, label %L7, label %L8
L7:

  %r32 = getelementptr inbounds i32, i32* %r12, i32 %r24

  %r33 = load i32, i32* %r32

  store i32 %r33, i32* %r7

  br label %L3
L8:

  %r34 = add i32 %r24, 1

  %r35 = srem i32 %r34, %r16

  store i32 %r35, i32* %r23

  br label %L5
L1:
  br label %L3
L3:

  %r36 = load i32, i32* %r7

  store i32 %r36, i32* %r4
  %r37 = load i32, i32* %r4
  %r38 = load %map_i8Ptr__i32*, %map_i8Ptr__i32** %r1
  %r39 = bitcast %map_i8Ptr__i32* %r38 to i8*

  call void @Skink_rc_release(i8* %r39)

  %r40 = load i8*, i8** %r2
  call void @Skink_rc_release(i8* %r40)

  ret i32 %r37

}
define i32 @map_ops_0015.build_and_lookup(i8* %arg0) {
entry:
  %r1 = alloca i8*
  store i8* null, i8** %r1
  %r2 = alloca %map_i8Ptr__i32*
  store %map_i8Ptr__i32* null, %map_i8Ptr__i32** %r2
  %r12 = alloca %map_i8Ptr__i32*
  store %map_i8Ptr__i32* null, %map_i8Ptr__i32** %r12

  call i8* @Skink_rc_retain(i8* %arg0)

  store i8* %arg0, i8** %r1
  %r3 = getelementptr %map_i8Ptr__i32, %map_i8Ptr__i32* null, i32 1

  %r4 = ptrtoint %map_i8Ptr__i32* %r3 to i64

  %r5 = call i8* @Skink_rc_alloc(i64 %r4)

  %r6 = bitcast i8* %r5 to %map_i8Ptr__i32*

  %r7 = getelementptr inbounds %map_i8Ptr__i32, %map_i8Ptr__i32* %r6, i32 0, i32 0

  store i8** null, i8*** %r7

  %r8 = getelementptr inbounds %map_i8Ptr__i32, %map_i8Ptr__i32* %r6, i32 0, i32 1

  store i32* null, i32** %r8

  %r9 = getelementptr inbounds %map_i8Ptr__i32, %map_i8Ptr__i32* %r6, i32 0, i32 2

  store i8* null, i8** %r9

  %r10 = getelementptr inbounds %map_i8Ptr__i32, %map_i8Ptr__i32* %r6, i32 0, i32 3

  store i32 0, i32* %r10

  %r11 = getelementptr inbounds %map_i8Ptr__i32, %map_i8Ptr__i32* %r6, i32 0, i32 4

  store i32 0, i32* %r11

  store %map_i8Ptr__i32* %r6, %map_i8Ptr__i32** %r12
  %r13 = bitcast %map_i8Ptr__i32* %r6 to i8*

  call i8* @Skink_rc_retain(i8* %r13)

  store %map_i8Ptr__i32* %r6, %map_i8Ptr__i32** %r2
  %r14 = load %map_i8Ptr__i32*, %map_i8Ptr__i32** %r2
  %r15 = getelementptr inbounds [6 x i8], [6 x i8]* @str.165, i64 0, i64 0

  %r16 = icmp eq %map_i8Ptr__i32* %r14, null

  br i1 %r16, label %L1, label %L2
L1:
  %r17 = getelementptr inbounds [31 x i8], [31 x i8]* @str.166, i64 0, i64 0

  call void @Skink_panic(i8* %r17)

  unreachable
  br label %L2
L2:
  %r18 = getelementptr inbounds %map_i8Ptr__i32, %map_i8Ptr__i32* %r14, i32 0, i32 0

  %r19 = load i8**, i8*** %r18

  %r20 = getelementptr inbounds %map_i8Ptr__i32, %map_i8Ptr__i32* %r14, i32 0, i32 1

  %r21 = load i32*, i32** %r20

  %r22 = getelementptr inbounds %map_i8Ptr__i32, %map_i8Ptr__i32* %r14, i32 0, i32 2

  %r23 = load i8*, i8** %r22

  %r24 = getelementptr inbounds %map_i8Ptr__i32, %map_i8Ptr__i32* %r14, i32 0, i32 3

  %r25 = load i32, i32* %r24

  %r26 = getelementptr inbounds %map_i8Ptr__i32, %map_i8Ptr__i32* %r14, i32 0, i32 4

  %r27 = load i32, i32* %r26

  %r28 = alloca i1

  store i1 0, i1* %r28

  %r29 = alloca i32

  store i32 0, i32* %r29

  %r30 = call i32 @Skink_str_hash(i8* %r15)

  %r31 = icmp eq i32 %r25, 0

  %r32 = select i1 %r31, i32 1, i32 %r25

  %r33 = srem i32 %r30, %r32

  %r34 = icmp slt i32 %r33, 0

  %r35 = sub i32 0, %r33

  %r36 = select i1 %r34, i32 %r35, i32 %r33

  br i1 %r31, label %L3, label %L4
L4:

  %r37 = alloca i32

  store i32 %r36, i32* %r37

  br label %L5
L5:

  %r38 = load i32, i32* %r37

  %r39 = getelementptr inbounds i8, i8* %r23, i32 %r38

  %r40 = load i8, i8* %r39

  %r41 = icmp eq i8 %r40, 0

  br i1 %r41, label %L3, label %L6
L6:

  %r42 = getelementptr inbounds i8*, i8** %r19, i32 %r38

  %r43 = load i8*, i8** %r42

  %r44 = call i32 @strcmp(i8* %r43, i8* %r15)

  %r45 = icmp eq i32 %r44, 0

  br i1 %r45, label %L7, label %L8
L7:

  store i1 1, i1* %r28

  store i32 %r38, i32* %r29

  br label %L3
L8:

  %r46 = add i32 %r38, 1

  %r47 = srem i32 %r46, %r25

  store i32 %r47, i32* %r37

  br label %L5
L3:

  %r48 = load i1, i1* %r28

  br i1 %r48, label %L9, label %L10
L9:

  %r49 = load i32, i32* %r29

  %r50 = getelementptr inbounds i32, i32* %r21, i32 %r49

  store i32 83, i32* %r50

  br label %L11
L10:

  %r51 = add i32 %r27, 1

  %r52 = mul i32 %r25, 3

  %r53 = sdiv i32 %r52, 4

  %r54 = icmp sgt i32 %r51, %r53

  br i1 %r54, label %L12, label %L13
L12:

  %r55 = mul i32 %r25, 2

  %r56 = icmp eq i32 %r55, 0

  %r57 = select i1 %r56, i32 8, i32 %r55

  %r58 = mul i32 %r57, 8

  %r59 = zext i32 %r58 to i64

  %r60 = call i8* @Skink_rc_alloc_typed(i64 %r59, i8* bitcast (void (i8*)* @__array_dtor_i8Ptr to i8*))

  %r61 = udiv i64 %r59, 8

  %r62 = getelementptr inbounds i8, i8* %r60, i64 -8

  %r63 = bitcast i8* %r62 to i64*

  store i64 %r61, i64* %r63

  %r64 = bitcast i8* %r60 to i8**

  %r65 = mul i32 %r57, 4

  %r66 = zext i32 %r65 to i64

  %r67 = call i8* @Skink_rc_alloc(i64 %r66)

  %r68 = udiv i64 %r66, 4

  %r69 = getelementptr inbounds i8, i8* %r67, i64 -8

  %r70 = bitcast i8* %r69 to i64*

  store i64 %r68, i64* %r70

  %r71 = bitcast i8* %r67 to i32*

  %r72 = zext i32 %r57 to i64

  %r73 = call i8* @Skink_rc_alloc(i64 %r72)

  %r74 = bitcast i8* %r73 to i8*

  call void @llvm.memset.p0i8.i64(i8* %r74, i8 0, i64 %r72, i1 false)

  %r75 = alloca i32

  store i32 0, i32* %r75

  br label %L14
L14:

  %r76 = load i32, i32* %r75

  %r77 = icmp slt i32 %r76, %r25

  br i1 %r77, label %L15, label %L18
L15:

  %r78 = getelementptr inbounds i8, i8* %r23, i32 %r76

  %r79 = load i8, i8* %r78

  %r80 = icmp eq i8 %r79, 0

  br i1 %r80, label %L16, label %L17
L17:

  %r81 = getelementptr inbounds i8*, i8** %r19, i32 %r76

  %r82 = load i8*, i8** %r81

  %r83 = getelementptr inbounds i32, i32* %r21, i32 %r76

  %r84 = load i32, i32* %r83

  %r85 = call i32 @Skink_str_hash(i8* %r82)

  %r86 = srem i32 %r85, %r57

  %r87 = icmp slt i32 %r86, 0

  %r88 = sub i32 0, %r86

  %r89 = select i1 %r87, i32 %r88, i32 %r86

  %r90 = alloca i32

  store i32 %r89, i32* %r90

  br label %L19
L19:

  %r91 = load i32, i32* %r90

  %r92 = getelementptr inbounds i8, i8* %r74, i32 %r91

  %r93 = load i8, i8* %r92

  %r94 = icmp eq i8 %r93, 0

  br i1 %r94, label %L21, label %L20
L20:

  %r95 = add i32 %r91, 1

  %r96 = srem i32 %r95, %r57

  store i32 %r96, i32* %r90

  br label %L19
L21:

  %r97 = load i32, i32* %r90

  %r98 = getelementptr inbounds i8*, i8** %r64, i32 %r97

  %r99 = bitcast i8* %r82 to i8*

  call i8* @Skink_rc_retain(i8* %r99)

  store i8* %r82, i8** %r98
  %r100 = getelementptr inbounds i32, i32* %r71, i32 %r97

  store i32 %r84, i32* %r100
  %r101 = getelementptr inbounds i8, i8* %r74, i32 %r97

  store i8 1, i8* %r101

  br label %L16
L16:

  %r102 = add i32 %r76, 1

  store i32 %r102, i32* %r75

  br label %L14
L18:

  %r103 = call i32 @Skink_str_hash(i8* %r15)

  %r104 = srem i32 %r103, %r57

  %r105 = icmp slt i32 %r104, 0

  %r106 = sub i32 0, %r104

  %r107 = select i1 %r105, i32 %r106, i32 %r104

  %r108 = alloca i32

  store i32 %r107, i32* %r108

  br label %L22
L22:

  %r109 = load i32, i32* %r108

  %r110 = getelementptr inbounds i8, i8* %r74, i32 %r109

  %r111 = load i8, i8* %r110

  %r112 = icmp eq i8 %r111, 0

  br i1 %r112, label %L24, label %L23
L23:

  %r113 = add i32 %r109, 1

  %r114 = srem i32 %r113, %r57

  store i32 %r114, i32* %r108

  br label %L22
L24:

  %r115 = load i32, i32* %r108

  %r116 = getelementptr inbounds i8*, i8** %r64, i32 %r115

  %r117 = bitcast i8* %r15 to i8*

  call i8* @Skink_rc_retain(i8* %r117)

  store i8* %r15, i8** %r116
  %r118 = getelementptr inbounds i32, i32* %r71, i32 %r115

  store i32 83, i32* %r118
  %r119 = getelementptr inbounds i8, i8* %r74, i32 %r115

  store i8 1, i8* %r119

  %r120 = getelementptr inbounds %map_i8Ptr__i32, %map_i8Ptr__i32* %r14, i32 0, i32 0

  store i8** %r64, i8*** %r120

  %r121 = getelementptr inbounds %map_i8Ptr__i32, %map_i8Ptr__i32* %r14, i32 0, i32 1

  store i32* %r71, i32** %r121

  %r122 = getelementptr inbounds %map_i8Ptr__i32, %map_i8Ptr__i32* %r14, i32 0, i32 2

  store i8* %r74, i8** %r122

  %r123 = getelementptr inbounds %map_i8Ptr__i32, %map_i8Ptr__i32* %r14, i32 0, i32 3

  store i32 %r57, i32* %r123

  %r124 = getelementptr inbounds %map_i8Ptr__i32, %map_i8Ptr__i32* %r14, i32 0, i32 4

  store i32 %r51, i32* %r124

  %r125 = bitcast i8** %r19 to i8*

  call void @Skink_rc_release(i8* %r125)

  %r126 = bitcast i32* %r21 to i8*

  call void @Skink_rc_release(i8* %r126)

  %r127 = bitcast i8* %r23 to i8*

  call void @Skink_rc_release(i8* %r127)

  br label %L11
L13:

  %r128 = alloca i32

  store i32 %r36, i32* %r128

  br label %L25
L25:

  %r129 = load i32, i32* %r128

  %r130 = getelementptr inbounds i8, i8* %r23, i32 %r129

  %r131 = load i8, i8* %r130

  %r132 = icmp eq i8 %r131, 0

  br i1 %r132, label %L27, label %L26
L26:

  %r133 = add i32 %r129, 1

  %r134 = srem i32 %r133, %r25

  store i32 %r134, i32* %r128

  br label %L25
L27:

  %r135 = load i32, i32* %r128

  %r136 = getelementptr inbounds i8*, i8** %r19, i32 %r135

  %r137 = bitcast i8* %r15 to i8*

  call i8* @Skink_rc_retain(i8* %r137)

  store i8* %r15, i8** %r136
  %r138 = getelementptr inbounds i32, i32* %r21, i32 %r135

  store i32 83, i32* %r138
  %r139 = getelementptr inbounds i8, i8* %r23, i32 %r135

  store i8 1, i8* %r139

  %r140 = getelementptr inbounds %map_i8Ptr__i32, %map_i8Ptr__i32* %r14, i32 0, i32 4

  store i32 %r51, i32* %r140

  br label %L11
L11:

  %r141 = load %map_i8Ptr__i32*, %map_i8Ptr__i32** %r2
  %r142 = getelementptr inbounds [7 x i8], [7 x i8]* @str.167, i64 0, i64 0

  %r143 = icmp eq %map_i8Ptr__i32* %r141, null

  br i1 %r143, label %L28, label %L29
L28:
  %r144 = getelementptr inbounds [31 x i8], [31 x i8]* @str.168, i64 0, i64 0

  call void @Skink_panic(i8* %r144)

  unreachable
  br label %L29
L29:
  %r145 = getelementptr inbounds %map_i8Ptr__i32, %map_i8Ptr__i32* %r141, i32 0, i32 0

  %r146 = load i8**, i8*** %r145

  %r147 = getelementptr inbounds %map_i8Ptr__i32, %map_i8Ptr__i32* %r141, i32 0, i32 1

  %r148 = load i32*, i32** %r147

  %r149 = getelementptr inbounds %map_i8Ptr__i32, %map_i8Ptr__i32* %r141, i32 0, i32 2

  %r150 = load i8*, i8** %r149

  %r151 = getelementptr inbounds %map_i8Ptr__i32, %map_i8Ptr__i32* %r141, i32 0, i32 3

  %r152 = load i32, i32* %r151

  %r153 = getelementptr inbounds %map_i8Ptr__i32, %map_i8Ptr__i32* %r141, i32 0, i32 4

  %r154 = load i32, i32* %r153

  %r155 = alloca i1

  store i1 0, i1* %r155

  %r156 = alloca i32

  store i32 0, i32* %r156

  %r157 = call i32 @Skink_str_hash(i8* %r142)

  %r158 = icmp eq i32 %r152, 0

  %r159 = select i1 %r158, i32 1, i32 %r152

  %r160 = srem i32 %r157, %r159

  %r161 = icmp slt i32 %r160, 0

  %r162 = sub i32 0, %r160

  %r163 = select i1 %r161, i32 %r162, i32 %r160

  br i1 %r158, label %L30, label %L31
L31:

  %r164 = alloca i32

  store i32 %r163, i32* %r164

  br label %L32
L32:

  %r165 = load i32, i32* %r164

  %r166 = getelementptr inbounds i8, i8* %r150, i32 %r165

  %r167 = load i8, i8* %r166

  %r168 = icmp eq i8 %r167, 0

  br i1 %r168, label %L30, label %L33
L33:

  %r169 = getelementptr inbounds i8*, i8** %r146, i32 %r165

  %r170 = load i8*, i8** %r169

  %r171 = call i32 @strcmp(i8* %r170, i8* %r142)

  %r172 = icmp eq i32 %r171, 0

  br i1 %r172, label %L34, label %L35
L34:

  store i1 1, i1* %r155

  store i32 %r165, i32* %r156

  br label %L30
L35:

  %r173 = add i32 %r165, 1

  %r174 = srem i32 %r173, %r152

  store i32 %r174, i32* %r164

  br label %L32
L30:

  %r175 = load i1, i1* %r155

  br i1 %r175, label %L36, label %L37
L36:

  %r176 = load i32, i32* %r156

  %r177 = getelementptr inbounds i32, i32* %r148, i32 %r176

  store i32 100, i32* %r177

  br label %L38
L37:

  %r178 = add i32 %r154, 1

  %r179 = mul i32 %r152, 3

  %r180 = sdiv i32 %r179, 4

  %r181 = icmp sgt i32 %r178, %r180

  br i1 %r181, label %L39, label %L40
L39:

  %r182 = mul i32 %r152, 2

  %r183 = icmp eq i32 %r182, 0

  %r184 = select i1 %r183, i32 8, i32 %r182

  %r185 = mul i32 %r184, 8

  %r186 = zext i32 %r185 to i64

  %r187 = call i8* @Skink_rc_alloc_typed(i64 %r186, i8* bitcast (void (i8*)* @__array_dtor_i8Ptr to i8*))

  %r188 = udiv i64 %r186, 8

  %r189 = getelementptr inbounds i8, i8* %r187, i64 -8

  %r190 = bitcast i8* %r189 to i64*

  store i64 %r188, i64* %r190

  %r191 = bitcast i8* %r187 to i8**

  %r192 = mul i32 %r184, 4

  %r193 = zext i32 %r192 to i64

  %r194 = call i8* @Skink_rc_alloc(i64 %r193)

  %r195 = udiv i64 %r193, 4

  %r196 = getelementptr inbounds i8, i8* %r194, i64 -8

  %r197 = bitcast i8* %r196 to i64*

  store i64 %r195, i64* %r197

  %r198 = bitcast i8* %r194 to i32*

  %r199 = zext i32 %r184 to i64

  %r200 = call i8* @Skink_rc_alloc(i64 %r199)

  %r201 = bitcast i8* %r200 to i8*

  call void @llvm.memset.p0i8.i64(i8* %r201, i8 0, i64 %r199, i1 false)

  %r202 = alloca i32

  store i32 0, i32* %r202

  br label %L41
L41:

  %r203 = load i32, i32* %r202

  %r204 = icmp slt i32 %r203, %r152

  br i1 %r204, label %L42, label %L45
L42:

  %r205 = getelementptr inbounds i8, i8* %r150, i32 %r203

  %r206 = load i8, i8* %r205

  %r207 = icmp eq i8 %r206, 0

  br i1 %r207, label %L43, label %L44
L44:

  %r208 = getelementptr inbounds i8*, i8** %r146, i32 %r203

  %r209 = load i8*, i8** %r208

  %r210 = getelementptr inbounds i32, i32* %r148, i32 %r203

  %r211 = load i32, i32* %r210

  %r212 = call i32 @Skink_str_hash(i8* %r209)

  %r213 = srem i32 %r212, %r184

  %r214 = icmp slt i32 %r213, 0

  %r215 = sub i32 0, %r213

  %r216 = select i1 %r214, i32 %r215, i32 %r213

  %r217 = alloca i32

  store i32 %r216, i32* %r217

  br label %L46
L46:

  %r218 = load i32, i32* %r217

  %r219 = getelementptr inbounds i8, i8* %r201, i32 %r218

  %r220 = load i8, i8* %r219

  %r221 = icmp eq i8 %r220, 0

  br i1 %r221, label %L48, label %L47
L47:

  %r222 = add i32 %r218, 1

  %r223 = srem i32 %r222, %r184

  store i32 %r223, i32* %r217

  br label %L46
L48:

  %r224 = load i32, i32* %r217

  %r225 = getelementptr inbounds i8*, i8** %r191, i32 %r224

  %r226 = bitcast i8* %r209 to i8*

  call i8* @Skink_rc_retain(i8* %r226)

  store i8* %r209, i8** %r225
  %r227 = getelementptr inbounds i32, i32* %r198, i32 %r224

  store i32 %r211, i32* %r227
  %r228 = getelementptr inbounds i8, i8* %r201, i32 %r224

  store i8 1, i8* %r228

  br label %L43
L43:

  %r229 = add i32 %r203, 1

  store i32 %r229, i32* %r202

  br label %L41
L45:

  %r230 = call i32 @Skink_str_hash(i8* %r142)

  %r231 = srem i32 %r230, %r184

  %r232 = icmp slt i32 %r231, 0

  %r233 = sub i32 0, %r231

  %r234 = select i1 %r232, i32 %r233, i32 %r231

  %r235 = alloca i32

  store i32 %r234, i32* %r235

  br label %L49
L49:

  %r236 = load i32, i32* %r235

  %r237 = getelementptr inbounds i8, i8* %r201, i32 %r236

  %r238 = load i8, i8* %r237

  %r239 = icmp eq i8 %r238, 0

  br i1 %r239, label %L51, label %L50
L50:

  %r240 = add i32 %r236, 1

  %r241 = srem i32 %r240, %r184

  store i32 %r241, i32* %r235

  br label %L49
L51:

  %r242 = load i32, i32* %r235

  %r243 = getelementptr inbounds i8*, i8** %r191, i32 %r242

  %r244 = bitcast i8* %r142 to i8*

  call i8* @Skink_rc_retain(i8* %r244)

  store i8* %r142, i8** %r243
  %r245 = getelementptr inbounds i32, i32* %r198, i32 %r242

  store i32 100, i32* %r245
  %r246 = getelementptr inbounds i8, i8* %r201, i32 %r242

  store i8 1, i8* %r246

  %r247 = getelementptr inbounds %map_i8Ptr__i32, %map_i8Ptr__i32* %r141, i32 0, i32 0

  store i8** %r191, i8*** %r247

  %r248 = getelementptr inbounds %map_i8Ptr__i32, %map_i8Ptr__i32* %r141, i32 0, i32 1

  store i32* %r198, i32** %r248

  %r249 = getelementptr inbounds %map_i8Ptr__i32, %map_i8Ptr__i32* %r141, i32 0, i32 2

  store i8* %r201, i8** %r249

  %r250 = getelementptr inbounds %map_i8Ptr__i32, %map_i8Ptr__i32* %r141, i32 0, i32 3

  store i32 %r184, i32* %r250

  %r251 = getelementptr inbounds %map_i8Ptr__i32, %map_i8Ptr__i32* %r141, i32 0, i32 4

  store i32 %r178, i32* %r251

  %r252 = bitcast i8** %r146 to i8*

  call void @Skink_rc_release(i8* %r252)

  %r253 = bitcast i32* %r148 to i8*

  call void @Skink_rc_release(i8* %r253)

  %r254 = bitcast i8* %r150 to i8*

  call void @Skink_rc_release(i8* %r254)

  br label %L38
L40:

  %r255 = alloca i32

  store i32 %r163, i32* %r255

  br label %L52
L52:

  %r256 = load i32, i32* %r255

  %r257 = getelementptr inbounds i8, i8* %r150, i32 %r256

  %r258 = load i8, i8* %r257

  %r259 = icmp eq i8 %r258, 0

  br i1 %r259, label %L54, label %L53
L53:

  %r260 = add i32 %r256, 1

  %r261 = srem i32 %r260, %r152

  store i32 %r261, i32* %r255

  br label %L52
L54:

  %r262 = load i32, i32* %r255

  %r263 = getelementptr inbounds i8*, i8** %r146, i32 %r262

  %r264 = bitcast i8* %r142 to i8*

  call i8* @Skink_rc_retain(i8* %r264)

  store i8* %r142, i8** %r263
  %r265 = getelementptr inbounds i32, i32* %r148, i32 %r262

  store i32 100, i32* %r265
  %r266 = getelementptr inbounds i8, i8* %r150, i32 %r262

  store i8 1, i8* %r266

  %r267 = getelementptr inbounds %map_i8Ptr__i32, %map_i8Ptr__i32* %r141, i32 0, i32 4

  store i32 %r178, i32* %r267

  br label %L38
L38:

  %r268 = load %map_i8Ptr__i32*, %map_i8Ptr__i32** %r2
  %r269 = getelementptr inbounds [7 x i8], [7 x i8]* @str.169, i64 0, i64 0

  %r270 = icmp eq %map_i8Ptr__i32* %r268, null

  br i1 %r270, label %L55, label %L56
L55:
  %r271 = getelementptr inbounds [31 x i8], [31 x i8]* @str.170, i64 0, i64 0

  call void @Skink_panic(i8* %r271)

  unreachable
  br label %L56
L56:
  %r272 = getelementptr inbounds %map_i8Ptr__i32, %map_i8Ptr__i32* %r268, i32 0, i32 0

  %r273 = load i8**, i8*** %r272

  %r274 = getelementptr inbounds %map_i8Ptr__i32, %map_i8Ptr__i32* %r268, i32 0, i32 1

  %r275 = load i32*, i32** %r274

  %r276 = getelementptr inbounds %map_i8Ptr__i32, %map_i8Ptr__i32* %r268, i32 0, i32 2

  %r277 = load i8*, i8** %r276

  %r278 = getelementptr inbounds %map_i8Ptr__i32, %map_i8Ptr__i32* %r268, i32 0, i32 3

  %r279 = load i32, i32* %r278

  %r280 = getelementptr inbounds %map_i8Ptr__i32, %map_i8Ptr__i32* %r268, i32 0, i32 4

  %r281 = load i32, i32* %r280

  %r282 = alloca i1

  store i1 0, i1* %r282

  %r283 = alloca i32

  store i32 0, i32* %r283

  %r284 = call i32 @Skink_str_hash(i8* %r269)

  %r285 = icmp eq i32 %r279, 0

  %r286 = select i1 %r285, i32 1, i32 %r279

  %r287 = srem i32 %r284, %r286

  %r288 = icmp slt i32 %r287, 0

  %r289 = sub i32 0, %r287

  %r290 = select i1 %r288, i32 %r289, i32 %r287

  br i1 %r285, label %L57, label %L58
L58:

  %r291 = alloca i32

  store i32 %r290, i32* %r291

  br label %L59
L59:

  %r292 = load i32, i32* %r291

  %r293 = getelementptr inbounds i8, i8* %r277, i32 %r292

  %r294 = load i8, i8* %r293

  %r295 = icmp eq i8 %r294, 0

  br i1 %r295, label %L57, label %L60
L60:

  %r296 = getelementptr inbounds i8*, i8** %r273, i32 %r292

  %r297 = load i8*, i8** %r296

  %r298 = call i32 @strcmp(i8* %r297, i8* %r269)

  %r299 = icmp eq i32 %r298, 0

  br i1 %r299, label %L61, label %L62
L61:

  store i1 1, i1* %r282

  store i32 %r292, i32* %r283

  br label %L57
L62:

  %r300 = add i32 %r292, 1

  %r301 = srem i32 %r300, %r279

  store i32 %r301, i32* %r291

  br label %L59
L57:

  %r302 = load i1, i1* %r282

  br i1 %r302, label %L63, label %L64
L63:

  %r303 = load i32, i32* %r283

  %r304 = getelementptr inbounds i32, i32* %r275, i32 %r303

  store i32 17, i32* %r304

  br label %L65
L64:

  %r305 = add i32 %r281, 1

  %r306 = mul i32 %r279, 3

  %r307 = sdiv i32 %r306, 4

  %r308 = icmp sgt i32 %r305, %r307

  br i1 %r308, label %L66, label %L67
L66:

  %r309 = mul i32 %r279, 2

  %r310 = icmp eq i32 %r309, 0

  %r311 = select i1 %r310, i32 8, i32 %r309

  %r312 = mul i32 %r311, 8

  %r313 = zext i32 %r312 to i64

  %r314 = call i8* @Skink_rc_alloc_typed(i64 %r313, i8* bitcast (void (i8*)* @__array_dtor_i8Ptr to i8*))

  %r315 = udiv i64 %r313, 8

  %r316 = getelementptr inbounds i8, i8* %r314, i64 -8

  %r317 = bitcast i8* %r316 to i64*

  store i64 %r315, i64* %r317

  %r318 = bitcast i8* %r314 to i8**

  %r319 = mul i32 %r311, 4

  %r320 = zext i32 %r319 to i64

  %r321 = call i8* @Skink_rc_alloc(i64 %r320)

  %r322 = udiv i64 %r320, 4

  %r323 = getelementptr inbounds i8, i8* %r321, i64 -8

  %r324 = bitcast i8* %r323 to i64*

  store i64 %r322, i64* %r324

  %r325 = bitcast i8* %r321 to i32*

  %r326 = zext i32 %r311 to i64

  %r327 = call i8* @Skink_rc_alloc(i64 %r326)

  %r328 = bitcast i8* %r327 to i8*

  call void @llvm.memset.p0i8.i64(i8* %r328, i8 0, i64 %r326, i1 false)

  %r329 = alloca i32

  store i32 0, i32* %r329

  br label %L68
L68:

  %r330 = load i32, i32* %r329

  %r331 = icmp slt i32 %r330, %r279

  br i1 %r331, label %L69, label %L72
L69:

  %r332 = getelementptr inbounds i8, i8* %r277, i32 %r330

  %r333 = load i8, i8* %r332

  %r334 = icmp eq i8 %r333, 0

  br i1 %r334, label %L70, label %L71
L71:

  %r335 = getelementptr inbounds i8*, i8** %r273, i32 %r330

  %r336 = load i8*, i8** %r335

  %r337 = getelementptr inbounds i32, i32* %r275, i32 %r330

  %r338 = load i32, i32* %r337

  %r339 = call i32 @Skink_str_hash(i8* %r336)

  %r340 = srem i32 %r339, %r311

  %r341 = icmp slt i32 %r340, 0

  %r342 = sub i32 0, %r340

  %r343 = select i1 %r341, i32 %r342, i32 %r340

  %r344 = alloca i32

  store i32 %r343, i32* %r344

  br label %L73
L73:

  %r345 = load i32, i32* %r344

  %r346 = getelementptr inbounds i8, i8* %r328, i32 %r345

  %r347 = load i8, i8* %r346

  %r348 = icmp eq i8 %r347, 0

  br i1 %r348, label %L75, label %L74
L74:

  %r349 = add i32 %r345, 1

  %r350 = srem i32 %r349, %r311

  store i32 %r350, i32* %r344

  br label %L73
L75:

  %r351 = load i32, i32* %r344

  %r352 = getelementptr inbounds i8*, i8** %r318, i32 %r351

  %r353 = bitcast i8* %r336 to i8*

  call i8* @Skink_rc_retain(i8* %r353)

  store i8* %r336, i8** %r352
  %r354 = getelementptr inbounds i32, i32* %r325, i32 %r351

  store i32 %r338, i32* %r354
  %r355 = getelementptr inbounds i8, i8* %r328, i32 %r351

  store i8 1, i8* %r355

  br label %L70
L70:

  %r356 = add i32 %r330, 1

  store i32 %r356, i32* %r329

  br label %L68
L72:

  %r357 = call i32 @Skink_str_hash(i8* %r269)

  %r358 = srem i32 %r357, %r311

  %r359 = icmp slt i32 %r358, 0

  %r360 = sub i32 0, %r358

  %r361 = select i1 %r359, i32 %r360, i32 %r358

  %r362 = alloca i32

  store i32 %r361, i32* %r362

  br label %L76
L76:

  %r363 = load i32, i32* %r362

  %r364 = getelementptr inbounds i8, i8* %r328, i32 %r363

  %r365 = load i8, i8* %r364

  %r366 = icmp eq i8 %r365, 0

  br i1 %r366, label %L78, label %L77
L77:

  %r367 = add i32 %r363, 1

  %r368 = srem i32 %r367, %r311

  store i32 %r368, i32* %r362

  br label %L76
L78:

  %r369 = load i32, i32* %r362

  %r370 = getelementptr inbounds i8*, i8** %r318, i32 %r369

  %r371 = bitcast i8* %r269 to i8*

  call i8* @Skink_rc_retain(i8* %r371)

  store i8* %r269, i8** %r370
  %r372 = getelementptr inbounds i32, i32* %r325, i32 %r369

  store i32 17, i32* %r372
  %r373 = getelementptr inbounds i8, i8* %r328, i32 %r369

  store i8 1, i8* %r373

  %r374 = getelementptr inbounds %map_i8Ptr__i32, %map_i8Ptr__i32* %r268, i32 0, i32 0

  store i8** %r318, i8*** %r374

  %r375 = getelementptr inbounds %map_i8Ptr__i32, %map_i8Ptr__i32* %r268, i32 0, i32 1

  store i32* %r325, i32** %r375

  %r376 = getelementptr inbounds %map_i8Ptr__i32, %map_i8Ptr__i32* %r268, i32 0, i32 2

  store i8* %r328, i8** %r376

  %r377 = getelementptr inbounds %map_i8Ptr__i32, %map_i8Ptr__i32* %r268, i32 0, i32 3

  store i32 %r311, i32* %r377

  %r378 = getelementptr inbounds %map_i8Ptr__i32, %map_i8Ptr__i32* %r268, i32 0, i32 4

  store i32 %r305, i32* %r378

  %r379 = bitcast i8** %r273 to i8*

  call void @Skink_rc_release(i8* %r379)

  %r380 = bitcast i32* %r275 to i8*

  call void @Skink_rc_release(i8* %r380)

  %r381 = bitcast i8* %r277 to i8*

  call void @Skink_rc_release(i8* %r381)

  br label %L65
L67:

  %r382 = alloca i32

  store i32 %r290, i32* %r382

  br label %L79
L79:

  %r383 = load i32, i32* %r382

  %r384 = getelementptr inbounds i8, i8* %r277, i32 %r383

  %r385 = load i8, i8* %r384

  %r386 = icmp eq i8 %r385, 0

  br i1 %r386, label %L81, label %L80
L80:

  %r387 = add i32 %r383, 1

  %r388 = srem i32 %r387, %r279

  store i32 %r388, i32* %r382

  br label %L79
L81:

  %r389 = load i32, i32* %r382

  %r390 = getelementptr inbounds i8*, i8** %r273, i32 %r389

  %r391 = bitcast i8* %r269 to i8*

  call i8* @Skink_rc_retain(i8* %r391)

  store i8* %r269, i8** %r390
  %r392 = getelementptr inbounds i32, i32* %r275, i32 %r389

  store i32 17, i32* %r392
  %r393 = getelementptr inbounds i8, i8* %r277, i32 %r389

  store i8 1, i8* %r393

  %r394 = getelementptr inbounds %map_i8Ptr__i32, %map_i8Ptr__i32* %r268, i32 0, i32 4

  store i32 %r305, i32* %r394

  br label %L65
L65:

  %r395 = load %map_i8Ptr__i32*, %map_i8Ptr__i32** %r2
  %r396 = load i8*, i8** %r1
  %r397 = call i32 @map_ops_0015.lookup_or_zero(%map_i8Ptr__i32* %r395, i8* %r396)
  %r398 = load %map_i8Ptr__i32*, %map_i8Ptr__i32** %r12
  %r399 = bitcast %map_i8Ptr__i32* %r398 to i8*

  call void @Skink_rc_release(i8* %r399)

  %r400 = load %map_i8Ptr__i32*, %map_i8Ptr__i32** %r2
  %r401 = bitcast %map_i8Ptr__i32* %r400 to i8*

  call void @Skink_rc_release(i8* %r401)

  %r402 = load i8*, i8** %r1
  call void @Skink_rc_release(i8* %r402)

  ret i32 %r397

}
define i32 @map_ops_0015.main() {
entry:
  %r1 = alloca i32
  store i32 0, i32* %r1
  %r6 = alloca [32 x i8]
  store [32 x i8] zeroinitializer, [32 x i8]* %r6
  %r21 = alloca i8*
  store i8* null, i8** %r21

  %r2 = getelementptr inbounds [6 x i8], [6 x i8]* @str.171, i64 0, i64 0

  %r3 = call i32 @map_ops_0015.build_and_lookup(i8* %r2)
  store i32 %r3, i32* %r1
  %r4 = getelementptr inbounds [9 x i8], [9 x i8]* @str.172, i64 0, i64 0

  %r5 = load i32, i32* %r1
  %r7 = getelementptr inbounds [32 x i8], [32 x i8]* %r6, i64 0, i64 0

  %r8 = getelementptr inbounds [3 x i8], [3 x i8]* @str.173, i64 0, i64 0

  %r9 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %r7, i64 32, i8* %r8, i32 %r5)

  %r10 = icmp eq i8* %r4, null

  %r12 = getelementptr inbounds [1 x i8], [1 x i8]* @str.174, i64 0, i64 0

  %r11 = select i1 %r10, i8* %r12, i8* %r4

  %r13 = icmp eq i8* %r7, null

  %r15 = getelementptr inbounds [1 x i8], [1 x i8]* @str.175, i64 0, i64 0

  %r14 = select i1 %r13, i8* %r15, i8* %r7

  %r16 = call i64 @strlen(i8* %r11)
  %r17 = call i64 @strlen(i8* %r14)
  %r18 = add i64 %r16, %r17
  %r19 = add i64 %r18, 1
  %r20 = call i8* @Skink_rc_alloc(i64 %r19)
  call i8* @strcpy(i8* %r20, i8* %r11)
  call i8* @strcat(i8* %r20, i8* %r14)
  store i8* %r20, i8** %r21
  %r22 = getelementptr inbounds [3 x i8], [3 x i8]* @str.176, i64 0, i64 0

  call i32 (i8*, ...) @printf(i8* %r22, i8* %r20)
  %r23 = load i8*, i8** %r21
  call void @Skink_rc_release(i8* %r23)

  ret i32 0

}
define void @map_ops_0015_test.TestLookupOrZero() {
entry:
  call void @testing.Reset()
  %r1 = getelementptr inbounds [6 x i8], [6 x i8]* @str.177, i64 0, i64 0

  %r2 = call i32 @map_ops_0015.build_and_lookup(i8* %r1)
  %r3 = icmp ne i32 %r2, 83
  br i1 %r3, label %L1, label %L3
L1:
  %r4 = getelementptr inbounds [29 x i8], [29 x i8]* @str.178, i64 0, i64 0

  call void @testing.Errorf(i8* %r4)
  br label %L3
L3:
  %r5 = getelementptr inbounds [12 x i8], [12 x i8]* @str.179, i64 0, i64 0

  %r6 = call i32 @map_ops_0015.build_and_lookup(i8* %r5)
  %r7 = icmp ne i32 %r6, 0
  br i1 %r7, label %L4, label %L6
L4:
  %r8 = getelementptr inbounds [34 x i8], [34 x i8]* @str.180, i64 0, i64 0

  call void @testing.Errorf(i8* %r8)
  br label %L6
L6:
  ret void

}
define i32 @_skink_main() {
entry:
  %r1 = alloca i1
  store i1 false, i1* %r1

  store i1 1, i1* %r1
  call void @testing.Reset()
  call void @map_ops_0015_test.TestLookupOrZero()
  %r2 = call i1 @testing.Failed()
  br i1 %r2, label %L1, label %L3
L1:
  store i1 false, i1* %r1
  br label %L3
L3:
  %r3 = load i1, i1* %r1
  br i1 %r3, label %L4, label %L6
L4:
  ret i32 0
L6:
  ret i32 1

}
define void @_skink_runtime_set_argc(i32 %argc) {

entry:

  store i32 %argc, i32* @skink_argc

  ret void

}

define void @_skink_runtime_set_argv(i8** %argv) {

entry:

  store i8** %argv, i8*** @skink_argv

  ret void

}

define i32 @_skink_runtime_get_argc() {

entry:

  %r = load i32, i32* @skink_argc

  ret i32 %r

}

define i8** @_skink_runtime_get_argv() {

entry:

  %r = load i8**, i8*** @skink_argv

  %n = load i32, i32* @skink_argc

  %n64 = sext i32 %n to i64

  %d = bitcast i8** %r to i8*

  %h = call i8* @Skink_slice_hdr(i8* %d, i64 %n64, i64 %n64, i8* null)

  %t = bitcast i8* %h to i8**

  ret i8** %t

}

define void @_skink_global_init() {

entry:

  store i1 false, i1* @testing.failed
  store i32 0, i32* @testing.testCount
  store i32 0, i32* @testing.passCount
  store i32 0, i32* @testing.failCount
  ret void

}

define i32 @main(i32 %argc, i8** %argv) {

entry:

  call void @_skink_runtime_set_argc(i32 %argc)

  call void @_skink_runtime_set_argv(i8** %argv)

  call void @_skink_global_init()

  %r = call i32 @_skink_main()

  ret i32 %r

}

define void @__array_dtor_i8Ptr(i8* %arr) {
entry:
  %cnt_ptr = getelementptr inbounds i8, i8* %arr, i64 -8
  %cnt_ptr.t = bitcast i8* %cnt_ptr to i64*
  %count = load i64, i64* %cnt_ptr.t
  %arr.t = bitcast i8* %arr to i8**
  %i = alloca i64
  store i64 0, i64* %i
  br label %loop.cond
loop.cond:
  %ci = load i64, i64* %i
  %cmp = icmp slt i64 %ci, %count
  br i1 %cmp, label %loop.body, label %loop.end
loop.body:
  %ep = getelementptr i8*, i8** %arr.t, i64 %ci
  %ev = load i8*, i8** %ep
  %ev.r = bitcast i8* %ev to i8*
  call void @Skink_rc_release(i8* %ev.r)
  %ni = add i64 %ci, 1
  store i64 %ni, i64* %i
  br label %loop.cond
loop.end:
  ret void
}

