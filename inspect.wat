(component
  (type (;0;)
    (instance
      (type (;0;) u32)
      (export (;1;) "input-stream" (type (eq 0)))
      (type (;2;) (func (param "this" 1)))
      (export (;0;) "drop-input-stream" (func (type 2)))
      (type (;3;) u32)
      (export (;4;) "output-stream" (type (eq 3)))
      (type (;5;) (list u8))
      (type (;6;) (record))
      (export (;7;) "stream-error" (type (eq 6)))
      (type (;8;) (result u64 (error 7)))
      (type (;9;) (func (param "this" 4) (param "buf" 5) (result 8)))
      (export (;1;) "write" (func (type 9)))
      (export (;2;) "blocking-write" (func (type 9)))
      (type (;10;) (func (param "this" 4)))
      (export (;3;) "drop-output-stream" (func (type 10)))
    )
  )
  (import (interface "wasi:io/streams") (instance (;0;) (type 0)))
  (alias export 0 "output-stream" (type (;1;)))
  (type (;2;)
    (instance
      (type (;0;) u32)
      (export (;1;) "descriptor" (type (eq 0)))
      (type (;2;) u64)
      (export (;3;) "filesize" (type (eq 2)))
      (alias outer 1 1 (type (;4;)))
      (export (;5;) "output-stream" (type (eq 4)))
      (type (;6;) (enum "access" "would-block" "already" "bad-descriptor" "busy" "deadlock" "quota" "exist" "file-too-large" "illegal-byte-sequence" "in-progress" "interrupted" "invalid" "io" "is-directory" "loop" "too-many-links" "message-size" "name-too-long" "no-device" "no-entry" "no-lock" "insufficient-memory" "insufficient-space" "not-directory" "not-empty" "not-recoverable" "unsupported" "no-tty" "no-such-device" "overflow" "not-permitted" "pipe" "read-only" "invalid-seek" "text-file-busy" "cross-device"))
      (export (;7;) "error-code" (type (eq 6)))
      (type (;8;) (result 5 (error 7)))
      (type (;9;) (func (param "this" 1) (param "offset" 3) (result 8)))
      (export (;0;) "write-via-stream" (func (type 9)))
      (type (;10;) (func (param "this" 1) (result 8)))
      (export (;1;) "append-via-stream" (func (type 10)))
      (type (;11;) (enum "unknown" "block-device" "character-device" "directory" "fifo" "symbolic-link" "regular-file" "socket"))
      (export (;12;) "descriptor-type" (type (eq 11)))
      (type (;13;) (result 12 (error 7)))
      (type (;14;) (func (param "this" 1) (result 13)))
      (export (;2;) "get-type" (func (type 14)))
      (type (;15;) (func (param "this" 1)))
      (export (;3;) "drop-descriptor" (func (type 15)))
    )
  )
  (import (interface "wasi:filesystem/filesystem") (instance (;1;) (type 2)))
  (type (;3;)
    (instance
      (type (;0;) (tuple string string))
      (type (;1;) (list 0))
      (type (;2;) (func (result 1)))
      (export (;0;) "get-environment" (func (type 2)))
    )
  )
  (import (interface "wasi:cli-base/environment") (instance (;2;) (type 3)))
  (alias export 1 "descriptor" (type (;4;)))
  (type (;5;)
    (instance
      (alias outer 1 4 (type (;0;)))
      (export (;1;) "descriptor" (type (eq 0)))
      (type (;2;) (tuple 1 string))
      (type (;3;) (list 2))
      (type (;4;) (func (result 3)))
      (export (;0;) "get-directories" (func (type 4)))
    )
  )
  (import (interface "wasi:cli-base/preopens") (instance (;3;) (type 5)))
  (type (;6;)
    (instance
      (type (;0;) (result))
      (type (;1;) (func (param "status" 0)))
      (export (;0;) "exit" (func (type 1)))
    )
  )
  (import (interface "wasi:cli-base/exit") (instance (;4;) (type 6)))
  (alias export 0 "input-stream" (type (;7;)))
  (type (;8;)
    (instance
      (alias outer 1 7 (type (;0;)))
      (export (;1;) "input-stream" (type (eq 0)))
      (type (;2;) (func (result 1)))
      (export (;0;) "get-stdin" (func (type 2)))
    )
  )
  (import (interface "wasi:cli-base/stdin") (instance (;5;) (type 8)))
  (alias export 0 "output-stream" (type (;9;)))
  (type (;10;)
    (instance
      (alias outer 1 9 (type (;0;)))
      (export (;1;) "output-stream" (type (eq 0)))
      (type (;2;) (func (result 1)))
      (export (;0;) "get-stdout" (func (type 2)))
    )
  )
  (import (interface "wasi:cli-base/stdout") (instance (;6;) (type 10)))
  (alias export 0 "output-stream" (type (;11;)))
  (type (;12;)
    (instance
      (alias outer 1 11 (type (;0;)))
      (export (;1;) "output-stream" (type (eq 0)))
      (type (;2;) (func (result 1)))
      (export (;0;) "get-stderr" (func (type 2)))
    )
  )
  (import (interface "wasi:cli-base/stderr") (instance (;7;) (type 12)))
  (core module (;0;)
    (type $.rodata (;0;) (func (param i32)))
    (type $.data (;1;) (func (param i32) (result i64)))
    (type (;2;) (func (param i32 i32 i32)))
    (type (;3;) (func (param i32 i32)))
    (type (;4;) (func (param i32 i32 i32) (result i32)))
    (type (;5;) (func (param i32 i32) (result i32)))
    (type (;6;) (func (param i32 i32 i32 i32) (result i32)))
    (type (;7;) (func))
    (type (;8;) (func (result i32)))
    (type (;9;) (func (param i32 i32 i32 i32)))
    (type (;10;) (func (param i32) (result i32)))
    (type (;11;) (func (param i32 i32 i32 i32 i32)))
    (type (;12;) (func (param i32 i32 i32 i32 i32 i32 i32)))
    (type (;13;) (func (param i32 i32 i32 i32 i32 i32) (result i32)))
    (type (;14;) (func (param i32 i32 i32 i32 i32) (result i32)))
    (type (;15;) (func (param i64 i32 i32) (result i32)))
    (import "wasi_snapshot_preview1" "fd_write" (func $_ZN4wasi13lib_generated22wasi_snapshot_preview18fd_write17h1fddf6a5171ac8d1E (;0;) (type 6)))
    (import "wasi_snapshot_preview1" "environ_get" (func $__imported_wasi_snapshot_preview1_environ_get (;1;) (type 5)))
    (import "wasi_snapshot_preview1" "environ_sizes_get" (func $__imported_wasi_snapshot_preview1_environ_sizes_get (;2;) (type 5)))
    (import "wasi_snapshot_preview1" "proc_exit" (func $__imported_wasi_snapshot_preview1_proc_exit (;3;) (type $.rodata)))
    (func $__wasm_call_ctors (;4;) (type 7))
    (func $hello-world (;5;) (type 8) (result i32)
      (local i32)
      call $_ZN11wit_bindgen2rt14run_ctors_once17hb63d59390188247eE
      block ;; label = @1
        i32.const 13
        i32.const 1
        call $__rust_alloc
        local.tee 0
        br_if 0 (;@1;)
        i32.const 13
        i32.const 1
        call $_ZN5alloc5alloc18handle_alloc_error17h680df29e672ed57dE
        unreachable
      end
      i32.const 0
      i32.const 13
      i32.store offset=1051472
      i32.const 0
      local.get 0
      i32.store offset=1051468
      local.get 0
      i32.const 5
      i32.add
      i32.const 0
      i64.load offset=1048581 align=1
      i64.store align=1
      local.get 0
      i32.const 0
      i64.load offset=1048576 align=1
      i64.store align=1
      i32.const 1051468
    )
    (func $cabi_post_hello-world (;6;) (type $.rodata) (param i32)
      local.get 0
      i32.load
      local.get 0
      i32.const 4
      i32.add
      i32.load
      i32.const 1
      call $_ZN11wit_bindgen2rt7dealloc17he60526725ddab46dE
    )
    (func $__rust_alloc (;7;) (type 5) (param i32 i32) (result i32)
      (local i32)
      local.get 0
      local.get 1
      call $__rdl_alloc
      local.set 2
      local.get 2
      return
    )
    (func $__rust_dealloc (;8;) (type 2) (param i32 i32 i32)
      local.get 0
      local.get 1
      local.get 2
      call $__rdl_dealloc
      return
    )
    (func $__rust_realloc (;9;) (type 6) (param i32 i32 i32 i32) (result i32)
      (local i32)
      local.get 0
      local.get 1
      local.get 2
      local.get 3
      call $__rdl_realloc
      local.set 4
      local.get 4
      return
    )
    (func $__rust_alloc_error_handler (;10;) (type 3) (param i32 i32)
      local.get 0
      local.get 1
      call $__rg_oom
      return
    )
    (func $_ZN11wit_bindgen2rt14run_ctors_once17hb63d59390188247eE (;11;) (type 7)
      block ;; label = @1
        i32.const 0
        i32.load8_u offset=1051476
        br_if 0 (;@1;)
        call $__wasm_call_ctors
        i32.const 0
        i32.const 1
        i32.store8 offset=1051476
      end
    )
    (func $cabi_realloc (;12;) (type 6) (param i32 i32 i32 i32) (result i32)
      block ;; label = @1
        block ;; label = @2
          block ;; label = @3
            local.get 1
            br_if 0 (;@3;)
            local.get 3
            i32.eqz
            br_if 1 (;@2;)
            local.get 3
            local.get 2
            call $__rust_alloc
            local.tee 2
            br_if 1 (;@2;)
            br 2 (;@1;)
          end
          local.get 0
          local.get 1
          local.get 2
          local.get 3
          call $__rust_realloc
          local.tee 2
          i32.eqz
          br_if 1 (;@1;)
        end
        local.get 2
        return
      end
      unreachable
      unreachable
    )
    (func $_ZN11wit_bindgen2rt7dealloc17he60526725ddab46dE (;13;) (type 2) (param i32 i32 i32)
      block ;; label = @1
        local.get 1
        i32.eqz
        br_if 0 (;@1;)
        local.get 0
        local.get 1
        local.get 2
        call $__rust_dealloc
      end
    )
    (func $_ZN36_$LT$T$u20$as$u20$core..any..Any$GT$7type_id17h176cc91ce5e817f1E (;14;) (type $.data) (param i32) (result i64)
      i64.const -816388632080319500
    )
    (func $_ZN36_$LT$T$u20$as$u20$core..any..Any$GT$7type_id17hbcf83b65e788092eE (;15;) (type $.data) (param i32) (result i64)
      i64.const 6963515535637561570
    )
    (func $_ZN36_$LT$T$u20$as$u20$core..any..Any$GT$7type_id17hcff55bed44912628E (;16;) (type $.data) (param i32) (result i64)
      i64.const -8527728395957036344
    )
    (func $_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17had3a23ed2b0f9a78E (;17;) (type 5) (param i32 i32) (result i32)
      local.get 0
      i32.load
      local.get 1
      call $_ZN43_$LT$bool$u20$as$u20$core..fmt..Display$GT$3fmt17h3687ae6db1632d84E
    )
    (func $_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h553f113e10db4e4dE (;18;) (type 5) (param i32 i32) (result i32)
      local.get 0
      i32.load
      local.get 0
      i32.load offset=4
      local.get 1
      call $_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17hcd33a3726c86db1aE
    )
    (func $_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h9f91f4a02f7722e6E (;19;) (type 5) (param i32 i32) (result i32)
      local.get 0
      i32.load
      local.get 1
      call $_ZN70_$LT$core..panic..location..Location$u20$as$u20$core..fmt..Display$GT$3fmt17h9c3dd31b52e6f54eE
    )
    (func $_ZN4core3fmt5Write10write_char17haa46f9e30bca77f3E (;20;) (type 5) (param i32 i32) (result i32)
      (local i32 i32)
      global.get $__stack_pointer
      i32.const 16
      i32.sub
      local.tee 2
      global.set $__stack_pointer
      local.get 2
      i32.const 0
      i32.store offset=12
      block ;; label = @1
        block ;; label = @2
          local.get 1
          i32.const 128
          i32.lt_u
          br_if 0 (;@2;)
          block ;; label = @3
            local.get 1
            i32.const 2048
            i32.lt_u
            br_if 0 (;@3;)
            block ;; label = @4
              local.get 1
              i32.const 65536
              i32.lt_u
              br_if 0 (;@4;)
              local.get 2
              local.get 1
              i32.const 63
              i32.and
              i32.const 128
              i32.or
              i32.store8 offset=15
              local.get 2
              local.get 1
              i32.const 6
              i32.shr_u
              i32.const 63
              i32.and
              i32.const 128
              i32.or
              i32.store8 offset=14
              local.get 2
              local.get 1
              i32.const 12
              i32.shr_u
              i32.const 63
              i32.and
              i32.const 128
              i32.or
              i32.store8 offset=13
              local.get 2
              local.get 1
              i32.const 18
              i32.shr_u
              i32.const 7
              i32.and
              i32.const 240
              i32.or
              i32.store8 offset=12
              i32.const 4
              local.set 3
              br 3 (;@1;)
            end
            local.get 2
            local.get 1
            i32.const 63
            i32.and
            i32.const 128
            i32.or
            i32.store8 offset=14
            local.get 2
            local.get 1
            i32.const 12
            i32.shr_u
            i32.const 224
            i32.or
            i32.store8 offset=12
            local.get 2
            local.get 1
            i32.const 6
            i32.shr_u
            i32.const 63
            i32.and
            i32.const 128
            i32.or
            i32.store8 offset=13
            i32.const 3
            local.set 3
            br 2 (;@1;)
          end
          local.get 2
          local.get 1
          i32.const 63
          i32.and
          i32.const 128
          i32.or
          i32.store8 offset=13
          local.get 2
          local.get 1
          i32.const 6
          i32.shr_u
          i32.const 192
          i32.or
          i32.store8 offset=12
          i32.const 2
          local.set 3
          br 1 (;@1;)
        end
        local.get 2
        local.get 1
        i32.store8 offset=12
        i32.const 1
        local.set 3
      end
      block ;; label = @1
        local.get 0
        i32.load offset=8
        local.tee 1
        i32.load
        local.get 1
        i32.load offset=8
        local.tee 0
        i32.sub
        local.get 3
        i32.ge_u
        br_if 0 (;@1;)
        local.get 1
        local.get 0
        local.get 3
        call $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve21do_reserve_and_handle17h38d580c29fc2385cE
        local.get 1
        i32.load offset=8
        local.set 0
      end
      local.get 1
      i32.load offset=4
      local.get 0
      i32.add
      local.get 2
      i32.const 12
      i32.add
      local.get 3
      call $memcpy
      drop
      local.get 1
      local.get 0
      local.get 3
      i32.add
      i32.store offset=8
      local.get 2
      i32.const 16
      i32.add
      global.set $__stack_pointer
      i32.const 0
    )
    (func $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve21do_reserve_and_handle17h38d580c29fc2385cE (;21;) (type 2) (param i32 i32 i32)
      (local i32 i32)
      global.get $__stack_pointer
      i32.const 32
      i32.sub
      local.tee 3
      global.set $__stack_pointer
      block ;; label = @1
        block ;; label = @2
          local.get 1
          local.get 2
          i32.add
          local.tee 2
          local.get 1
          i32.lt_u
          br_if 0 (;@2;)
          local.get 0
          i32.load
          local.tee 1
          i32.const 1
          i32.shl
          local.tee 4
          local.get 2
          local.get 4
          local.get 2
          i32.gt_u
          select
          local.tee 2
          i32.const 8
          local.get 2
          i32.const 8
          i32.gt_u
          select
          local.tee 2
          i32.const -1
          i32.xor
          i32.const 31
          i32.shr_u
          local.set 4
          block ;; label = @3
            block ;; label = @4
              local.get 1
              i32.eqz
              br_if 0 (;@4;)
              local.get 3
              i32.const 1
              i32.store offset=24
              local.get 3
              local.get 1
              i32.store offset=20
              local.get 3
              local.get 0
              i32.const 4
              i32.add
              i32.load
              i32.store offset=16
              br 1 (;@3;)
            end
            local.get 3
            i32.const 0
            i32.store offset=24
          end
          local.get 3
          local.get 2
          local.get 4
          local.get 3
          i32.const 16
          i32.add
          call $_ZN5alloc7raw_vec11finish_grow17h28a077458d86de3bE
          local.get 3
          i32.load offset=4
          local.set 1
          block ;; label = @3
            local.get 3
            i32.load
            br_if 0 (;@3;)
            local.get 0
            local.get 2
            i32.store
            local.get 0
            local.get 1
            i32.store offset=4
            br 2 (;@1;)
          end
          local.get 3
          i32.const 8
          i32.add
          i32.load
          local.tee 0
          i32.const -2147483647
          i32.eq
          br_if 1 (;@1;)
          local.get 0
          i32.eqz
          br_if 0 (;@2;)
          local.get 1
          local.get 0
          call $_ZN5alloc5alloc18handle_alloc_error17h680df29e672ed57dE
          unreachable
        end
        call $_ZN5alloc7raw_vec17capacity_overflow17h38ac120e37f2568fE
        unreachable
      end
      local.get 3
      i32.const 32
      i32.add
      global.set $__stack_pointer
    )
    (func $_ZN4core3fmt5Write10write_char17hb36c4fc26ddebae1E (;22;) (type 5) (param i32 i32) (result i32)
      (local i32)
      global.get $__stack_pointer
      i32.const 16
      i32.sub
      local.tee 2
      global.set $__stack_pointer
      local.get 2
      i32.const 0
      i32.store offset=12
      block ;; label = @1
        block ;; label = @2
          local.get 1
          i32.const 128
          i32.lt_u
          br_if 0 (;@2;)
          block ;; label = @3
            local.get 1
            i32.const 2048
            i32.lt_u
            br_if 0 (;@3;)
            block ;; label = @4
              local.get 1
              i32.const 65536
              i32.lt_u
              br_if 0 (;@4;)
              local.get 2
              local.get 1
              i32.const 63
              i32.and
              i32.const 128
              i32.or
              i32.store8 offset=15
              local.get 2
              local.get 1
              i32.const 6
              i32.shr_u
              i32.const 63
              i32.and
              i32.const 128
              i32.or
              i32.store8 offset=14
              local.get 2
              local.get 1
              i32.const 12
              i32.shr_u
              i32.const 63
              i32.and
              i32.const 128
              i32.or
              i32.store8 offset=13
              local.get 2
              local.get 1
              i32.const 18
              i32.shr_u
              i32.const 7
              i32.and
              i32.const 240
              i32.or
              i32.store8 offset=12
              i32.const 4
              local.set 1
              br 3 (;@1;)
            end
            local.get 2
            local.get 1
            i32.const 63
            i32.and
            i32.const 128
            i32.or
            i32.store8 offset=14
            local.get 2
            local.get 1
            i32.const 12
            i32.shr_u
            i32.const 224
            i32.or
            i32.store8 offset=12
            local.get 2
            local.get 1
            i32.const 6
            i32.shr_u
            i32.const 63
            i32.and
            i32.const 128
            i32.or
            i32.store8 offset=13
            i32.const 3
            local.set 1
            br 2 (;@1;)
          end
          local.get 2
          local.get 1
          i32.const 63
          i32.and
          i32.const 128
          i32.or
          i32.store8 offset=13
          local.get 2
          local.get 1
          i32.const 6
          i32.shr_u
          i32.const 192
          i32.or
          i32.store8 offset=12
          i32.const 2
          local.set 1
          br 1 (;@1;)
        end
        local.get 2
        local.get 1
        i32.store8 offset=12
        i32.const 1
        local.set 1
      end
      local.get 0
      local.get 2
      i32.const 12
      i32.add
      local.get 1
      call $_ZN80_$LT$std..io..Write..write_fmt..Adapter$LT$T$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17h1468756d66c20292E
      local.set 1
      local.get 2
      i32.const 16
      i32.add
      global.set $__stack_pointer
      local.get 1
    )
    (func $_ZN80_$LT$std..io..Write..write_fmt..Adapter$LT$T$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17h1468756d66c20292E (;23;) (type 4) (param i32 i32 i32) (result i32)
      (local i32 i32 i64 i32)
      global.get $__stack_pointer
      i32.const 32
      i32.sub
      local.tee 3
      global.set $__stack_pointer
      i32.const 0
      local.set 4
      block ;; label = @1
        local.get 2
        i32.eqz
        br_if 0 (;@1;)
        i32.const 1049124
        i64.extend_i32_u
        i64.const 32
        i64.shl
        i64.const 2
        i64.or
        local.set 5
        loop ;; label = @2
          local.get 3
          local.get 2
          i32.store offset=12
          local.get 3
          local.get 1
          i32.store offset=8
          local.get 3
          i32.const 16
          i32.add
          i32.const 2
          local.get 3
          i32.const 8
          i32.add
          i32.const 1
          call $_ZN4wasi13lib_generated8fd_write17h26c52996b83e471dE
          block ;; label = @3
            block ;; label = @4
              block ;; label = @5
                block ;; label = @6
                  local.get 3
                  i32.load16_u offset=16
                  br_if 0 (;@6;)
                  local.get 3
                  i32.load offset=20
                  local.tee 6
                  i32.eqz
                  br_if 1 (;@5;)
                  local.get 2
                  local.get 6
                  i32.lt_u
                  br_if 2 (;@4;)
                  local.get 2
                  local.get 6
                  i32.sub
                  local.set 2
                  local.get 1
                  local.get 6
                  i32.add
                  local.set 1
                  br 3 (;@3;)
                end
                local.get 3
                local.get 3
                i32.load16_u offset=18
                i32.store16 offset=30
                local.get 3
                i32.const 30
                i32.add
                call $_ZN4wasi13lib_generated5Errno3raw17hac277b009e036094E
                local.tee 6
                i32.const 65535
                i32.and
                call $_ZN3std3sys4wasi17decode_error_kind17hf13b07452e633c92E
                i32.const 255
                i32.and
                i32.const 35
                i32.eq
                br_if 2 (;@3;)
                local.get 6
                i64.extend_i32_u
                i64.const 65535
                i64.and
                i64.const 32
                i64.shl
                local.set 5
              end
              local.get 5
              i64.const 255
              i64.and
              i64.const 4
              i64.eq
              br_if 3 (;@1;)
              block ;; label = @5
                local.get 0
                i32.load8_u
                i32.const 3
                i32.ne
                br_if 0 (;@5;)
                local.get 0
                i32.load offset=4
                local.tee 2
                i32.load
                local.get 2
                i32.load offset=4
                i32.load
                call_indirect (type $.rodata)
                block ;; label = @6
                  local.get 2
                  i32.load offset=4
                  local.tee 1
                  i32.const 4
                  i32.add
                  i32.load
                  local.tee 6
                  i32.eqz
                  br_if 0 (;@6;)
                  local.get 2
                  i32.load
                  local.get 6
                  local.get 1
                  i32.const 8
                  i32.add
                  i32.load
                  call $__rust_dealloc
                end
                local.get 2
                i32.const 12
                i32.const 4
                call $__rust_dealloc
              end
              local.get 0
              local.get 5
              i64.store align=4
              i32.const 1
              local.set 4
              br 3 (;@1;)
            end
            local.get 6
            local.get 2
            i32.const 1049080
            call $_ZN4core5slice5index26slice_start_index_len_fail17h4b6807d169d5a5ccE
            unreachable
          end
          local.get 2
          br_if 0 (;@2;)
        end
      end
      local.get 3
      i32.const 32
      i32.add
      global.set $__stack_pointer
      local.get 4
    )
    (func $_ZN4core3fmt5Write9write_fmt17hadcd24a979fa7d5dE (;24;) (type 5) (param i32 i32) (result i32)
      (local i32)
      global.get $__stack_pointer
      i32.const 32
      i32.sub
      local.tee 2
      global.set $__stack_pointer
      local.get 2
      local.get 0
      i32.store offset=4
      local.get 2
      i32.const 8
      i32.add
      i32.const 16
      i32.add
      local.get 1
      i32.const 16
      i32.add
      i64.load align=4
      i64.store
      local.get 2
      i32.const 8
      i32.add
      i32.const 8
      i32.add
      local.get 1
      i32.const 8
      i32.add
      i64.load align=4
      i64.store
      local.get 2
      local.get 1
      i64.load align=4
      i64.store offset=8
      local.get 2
      i32.const 4
      i32.add
      i32.const 1048616
      local.get 2
      i32.const 8
      i32.add
      call $_ZN4core3fmt5write17h7558535140974479E
      local.set 1
      local.get 2
      i32.const 32
      i32.add
      global.set $__stack_pointer
      local.get 1
    )
    (func $_ZN4core3fmt5Write9write_fmt17he26b07feb918eff5E (;25;) (type 5) (param i32 i32) (result i32)
      (local i32)
      global.get $__stack_pointer
      i32.const 32
      i32.sub
      local.tee 2
      global.set $__stack_pointer
      local.get 2
      local.get 0
      i32.store offset=4
      local.get 2
      i32.const 8
      i32.add
      i32.const 16
      i32.add
      local.get 1
      i32.const 16
      i32.add
      i64.load align=4
      i64.store
      local.get 2
      i32.const 8
      i32.add
      i32.const 8
      i32.add
      local.get 1
      i32.const 8
      i32.add
      i64.load align=4
      i64.store
      local.get 2
      local.get 1
      i64.load align=4
      i64.store offset=8
      local.get 2
      i32.const 4
      i32.add
      i32.const 1048640
      local.get 2
      i32.const 8
      i32.add
      call $_ZN4core3fmt5write17h7558535140974479E
      local.set 1
      local.get 2
      i32.const 32
      i32.add
      global.set $__stack_pointer
      local.get 1
    )
    (func $_ZN3std9panicking12default_hook17h516b5ae38093c678E (;26;) (type $.rodata) (param i32)
      (local i32 i32 i32 i64 i32)
      global.get $__stack_pointer
      i32.const 96
      i32.sub
      local.tee 1
      global.set $__stack_pointer
      i32.const 1
      local.set 2
      block ;; label = @1
        i32.const 0
        i32.load offset=1051536
        i32.const 1
        i32.gt_u
        br_if 0 (;@1;)
        call $_ZN3std5panic19get_backtrace_style17h1cc96ffe00155ad1E
        i32.const 255
        i32.and
        local.set 2
      end
      local.get 1
      local.get 2
      i32.store8 offset=19
      block ;; label = @1
        block ;; label = @2
          block ;; label = @3
            block ;; label = @4
              local.get 0
              call $_ZN4core5panic10panic_info9PanicInfo8location17h73a8e3c8110f5f4eE
              local.tee 2
              i32.eqz
              br_if 0 (;@4;)
              local.get 1
              local.get 2
              i32.store offset=20
              local.get 1
              i32.const 8
              i32.add
              local.get 0
              call $_ZN4core5panic10panic_info9PanicInfo7payload17h2c14f7d93cbd0d04E
              i32.const 12
              local.set 3
              local.get 1
              i32.load offset=8
              local.tee 2
              local.get 1
              i32.load offset=12
              i32.const 12
              i32.add
              i32.load
              call_indirect (type $.data)
              local.set 4
              block ;; label = @5
                block ;; label = @6
                  block ;; label = @7
                    block ;; label = @8
                      local.get 2
                      i32.eqz
                      br_if 0 (;@8;)
                      local.get 4
                      i64.const -8527728395957036344
                      i64.eq
                      br_if 1 (;@7;)
                    end
                    local.get 1
                    local.get 0
                    call $_ZN4core5panic10panic_info9PanicInfo7payload17h2c14f7d93cbd0d04E
                    i32.const 1049656
                    local.set 0
                    local.get 1
                    i32.load
                    local.tee 2
                    local.get 1
                    i32.load offset=4
                    i32.const 12
                    i32.add
                    i32.load
                    call_indirect (type $.data)
                    local.set 4
                    local.get 2
                    i32.eqz
                    br_if 2 (;@5;)
                    local.get 4
                    i64.const 6963515535637561570
                    i64.ne
                    br_if 2 (;@5;)
                    local.get 2
                    i32.const 8
                    i32.add
                    local.set 0
                    local.get 2
                    i32.const 4
                    i32.add
                    local.set 2
                    br 1 (;@6;)
                  end
                  local.get 2
                  i32.const 4
                  i32.add
                  local.set 0
                end
                local.get 0
                i32.load
                local.set 3
                local.get 2
                i32.load
                local.set 0
              end
              local.get 1
              local.get 3
              i32.store offset=28
              local.get 1
              local.get 0
              i32.store offset=24
              i32.const 9
              local.set 2
              i32.const 1049668
              local.set 3
              block ;; label = @5
                call $_ZN3std10sys_common11thread_info14current_thread17hd7027661b777c4d6E
                local.tee 0
                i32.eqz
                br_if 0 (;@5;)
                local.get 0
                i32.load offset=8
                local.tee 5
                i32.eqz
                br_if 0 (;@5;)
                local.get 0
                i32.const 12
                i32.add
                i32.load
                i32.const -1
                i32.add
                local.set 2
                local.get 5
                local.set 3
              end
              local.get 1
              local.get 2
              i32.store offset=36
              local.get 1
              local.get 3
              i32.store offset=32
              local.get 1
              local.get 1
              i32.const 19
              i32.add
              i32.store offset=52
              local.get 1
              local.get 1
              i32.const 20
              i32.add
              i32.store offset=48
              local.get 1
              local.get 1
              i32.const 24
              i32.add
              i32.store offset=44
              local.get 1
              local.get 1
              i32.const 32
              i32.add
              i32.store offset=40
              i32.const 0
              i32.load8_u offset=1051477
              i32.eqz
              br_if 2 (;@2;)
              i32.const 0
              i32.const 1
              i32.store8 offset=1051477
              block ;; label = @5
                i32.const 0
                i32.load8_u offset=1051520
                br_if 0 (;@5;)
                i32.const 0
                i32.const 1
                i32.store8 offset=1051520
                i32.const 0
                i32.const 0
                i32.store offset=1051524
                br 3 (;@2;)
              end
              i32.const 0
              i32.load offset=1051524
              local.set 2
              i32.const 0
              i32.const 0
              i32.store offset=1051524
              local.get 2
              i32.eqz
              br_if 2 (;@2;)
              local.get 2
              i32.load8_u offset=8
              local.set 3
              local.get 2
              i32.const 1
              i32.store8 offset=8
              local.get 1
              local.get 3
              i32.const 1
              i32.and
              local.tee 3
              i32.store8 offset=63
              local.get 3
              br_if 1 (;@3;)
              block ;; label = @5
                block ;; label = @6
                  block ;; label = @7
                    i32.const 0
                    i32.load offset=1051508
                    i32.const 2147483647
                    i32.and
                    i32.eqz
                    br_if 0 (;@7;)
                    call $_ZN3std9panicking11panic_count17is_zero_slow_path17he73cea3e605a507aE
                    local.set 3
                    local.get 1
                    i32.const 40
                    i32.add
                    local.get 2
                    i32.const 12
                    i32.add
                    i32.const 1049720
                    call $_ZN3std9panicking12default_hook28_$u7b$$u7b$closure$u7d$$u7d$17h623f4dc81025ab51E
                    local.get 3
                    br_if 1 (;@6;)
                    br 2 (;@5;)
                  end
                  local.get 1
                  i32.const 40
                  i32.add
                  local.get 2
                  i32.const 12
                  i32.add
                  i32.const 1049720
                  call $_ZN3std9panicking12default_hook28_$u7b$$u7b$closure$u7d$$u7d$17h623f4dc81025ab51E
                end
                i32.const 0
                i32.load offset=1051508
                i32.const 2147483647
                i32.and
                i32.eqz
                br_if 0 (;@5;)
                call $_ZN3std9panicking11panic_count17is_zero_slow_path17he73cea3e605a507aE
                br_if 0 (;@5;)
                local.get 2
                i32.const 1
                i32.store8 offset=9
              end
              i32.const 0
              i32.const 1
              i32.store8 offset=1051477
              local.get 2
              i32.const 0
              i32.store8 offset=8
              block ;; label = @5
                i32.const 0
                i32.load8_u offset=1051520
                br_if 0 (;@5;)
                i32.const 0
                local.get 2
                i32.store offset=1051524
                i32.const 0
                i32.const 1
                i32.store8 offset=1051520
                br 4 (;@1;)
              end
              i32.const 0
              i32.load offset=1051524
              local.set 3
              i32.const 0
              local.get 2
              i32.store offset=1051524
              local.get 3
              i32.eqz
              br_if 3 (;@1;)
              local.get 3
              local.get 3
              i32.load
              local.tee 2
              i32.const -1
              i32.add
              i32.store
              local.get 2
              i32.const 1
              i32.ne
              br_if 3 (;@1;)
              local.get 3
              call $_ZN5alloc4sync12Arc$LT$T$GT$9drop_slow17h00aeb5db7b908ba4E
              br 3 (;@1;)
            end
            i32.const 1048684
            i32.const 43
            i32.const 1049760
            call $_ZN4core9panicking5panic17h8fa39a92dcc1b069E
            unreachable
          end
          local.get 1
          i32.const 0
          i32.store offset=84
          local.get 1
          i32.const 1048664
          i32.store offset=80
          local.get 1
          i32.const 1
          i32.store offset=76
          local.get 1
          i32.const 1050444
          i32.store offset=72
          local.get 1
          i32.const 0
          i32.store offset=64
          local.get 1
          i32.const 63
          i32.add
          local.get 1
          i32.const 64
          i32.add
          call $_ZN4core9panicking13assert_failed17hd77b42a9e8961af9E
          unreachable
        end
        local.get 1
        i32.const 40
        i32.add
        local.get 1
        i32.const 88
        i32.add
        i32.const 1049680
        call $_ZN3std9panicking12default_hook28_$u7b$$u7b$closure$u7d$$u7d$17h623f4dc81025ab51E
      end
      block ;; label = @1
        local.get 0
        i32.eqz
        br_if 0 (;@1;)
        local.get 0
        local.get 0
        i32.load
        local.tee 2
        i32.const -1
        i32.add
        i32.store
        local.get 2
        i32.const 1
        i32.ne
        br_if 0 (;@1;)
        local.get 0
        call $_ZN5alloc4sync12Arc$LT$T$GT$9drop_slow17h780d223e8bf1e21cE
      end
      local.get 1
      i32.const 96
      i32.add
      global.set $__stack_pointer
    )
    (func $_ZN4core3ptr100drop_in_place$LT$$RF$mut$u20$std..io..Write..write_fmt..Adapter$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$17hde21ae438dab7501E (;27;) (type $.rodata) (param i32))
    (func $_ZN3std9panicking11panic_count17is_zero_slow_path17he73cea3e605a507aE (;28;) (type 8) (result i32)
      i32.const 0
      i32.load offset=1051536
      i32.eqz
    )
    (func $_ZN4core3ptr205drop_in_place$LT$$LT$alloc..boxed..Box$LT$dyn$u20$core..error..Error$u2b$core..marker..Send$u2b$core..marker..Sync$GT$$u20$as$u20$core..convert..From$LT$alloc..string..String$GT$$GT$..from..StringError$GT$17h6486a4eecfa8ec50E (;29;) (type $.rodata) (param i32)
      (local i32)
      block ;; label = @1
        local.get 0
        i32.load
        local.tee 1
        i32.eqz
        br_if 0 (;@1;)
        local.get 0
        i32.const 4
        i32.add
        i32.load
        local.get 1
        i32.const 1
        call $__rust_dealloc
      end
    )
    (func $_ZN5alloc4sync12Arc$LT$T$GT$9drop_slow17h780d223e8bf1e21cE (;30;) (type $.rodata) (param i32)
      (local i32)
      block ;; label = @1
        local.get 0
        i32.load offset=8
        local.tee 1
        i32.eqz
        br_if 0 (;@1;)
        local.get 1
        i32.const 0
        i32.store8
        local.get 0
        i32.const 12
        i32.add
        i32.load
        local.tee 1
        i32.eqz
        br_if 0 (;@1;)
        local.get 0
        i32.load offset=8
        local.get 1
        i32.const 1
        call $__rust_dealloc
      end
      block ;; label = @1
        local.get 0
        i32.const -1
        i32.eq
        br_if 0 (;@1;)
        local.get 0
        local.get 0
        i32.load offset=4
        local.tee 1
        i32.const -1
        i32.add
        i32.store offset=4
        local.get 1
        i32.const 1
        i32.ne
        br_if 0 (;@1;)
        local.get 0
        i32.const 32
        i32.const 8
        call $__rust_dealloc
      end
    )
    (func $_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h6743b4145838f5adE (;31;) (type $.rodata) (param i32)
      (local i32)
      block ;; label = @1
        local.get 0
        i32.const 4
        i32.add
        i32.load
        local.tee 1
        i32.eqz
        br_if 0 (;@1;)
        local.get 0
        i32.load
        local.tee 0
        i32.eqz
        br_if 0 (;@1;)
        local.get 1
        local.get 0
        i32.const 1
        call $__rust_dealloc
      end
    )
    (func $_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17h0ad9adc9a67d38b6E (;32;) (type $.rodata) (param i32)
      (local i32 i32 i32)
      block ;; label = @1
        local.get 0
        i32.load8_u
        i32.const 3
        i32.ne
        br_if 0 (;@1;)
        local.get 0
        i32.load offset=4
        local.tee 1
        i32.load
        local.get 1
        i32.load offset=4
        i32.load
        call_indirect (type $.rodata)
        block ;; label = @2
          local.get 1
          i32.load offset=4
          local.tee 2
          i32.const 4
          i32.add
          i32.load
          local.tee 3
          i32.eqz
          br_if 0 (;@2;)
          local.get 1
          i32.load
          local.get 3
          local.get 2
          i32.const 8
          i32.add
          i32.load
          call $__rust_dealloc
        end
        local.get 0
        i32.load offset=4
        i32.const 12
        i32.const 4
        call $__rust_dealloc
      end
    )
    (func $_ZN4core3ptr88drop_in_place$LT$std..io..Write..write_fmt..Adapter$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$17hf78d30d59fb86c0dE (;33;) (type $.rodata) (param i32)
      (local i32 i32 i32)
      block ;; label = @1
        local.get 0
        i32.load8_u
        i32.const 3
        i32.ne
        br_if 0 (;@1;)
        local.get 0
        i32.load offset=4
        local.tee 1
        i32.load
        local.get 1
        i32.load offset=4
        i32.load
        call_indirect (type $.rodata)
        block ;; label = @2
          local.get 1
          i32.load offset=4
          local.tee 2
          i32.const 4
          i32.add
          i32.load
          local.tee 3
          i32.eqz
          br_if 0 (;@2;)
          local.get 1
          i32.load
          local.get 3
          local.get 2
          i32.const 8
          i32.add
          i32.load
          call $__rust_dealloc
        end
        local.get 0
        i32.load offset=4
        i32.const 12
        i32.const 4
        call $__rust_dealloc
      end
    )
    (func $_ZN4core9panicking13assert_failed17hd77b42a9e8961af9E (;34;) (type 3) (param i32 i32)
      (local i32)
      global.get $__stack_pointer
      i32.const 32
      i32.sub
      local.tee 2
      global.set $__stack_pointer
      local.get 2
      i32.const 1048664
      i32.store offset=4
      local.get 2
      local.get 0
      i32.store
      local.get 2
      i32.const 8
      i32.add
      i32.const 16
      i32.add
      local.get 1
      i32.const 16
      i32.add
      i64.load align=4
      i64.store
      local.get 2
      i32.const 8
      i32.add
      i32.const 8
      i32.add
      local.get 1
      i32.const 8
      i32.add
      i64.load align=4
      i64.store
      local.get 2
      local.get 1
      i64.load align=4
      i64.store offset=8
      i32.const 0
      local.get 2
      i32.const 1048668
      local.get 2
      i32.const 4
      i32.add
      i32.const 1048668
      local.get 2
      i32.const 8
      i32.add
      i32.const 1050508
      call $_ZN4core9panicking19assert_failed_inner17hf30758b978d1cad1E
      unreachable
    )
    (func $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h488f14e19ec7ceafE (;35;) (type 5) (param i32 i32) (result i32)
      local.get 0
      i32.load
      local.get 1
      call $_ZN4core3fmt5Write10write_char17haa46f9e30bca77f3E
    )
    (func $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h97dcd5289d066230E (;36;) (type 5) (param i32 i32) (result i32)
      (local i32)
      global.get $__stack_pointer
      i32.const 16
      i32.sub
      local.tee 2
      global.set $__stack_pointer
      local.get 0
      i32.load
      local.set 0
      local.get 2
      i32.const 0
      i32.store offset=12
      block ;; label = @1
        block ;; label = @2
          local.get 1
          i32.const 128
          i32.lt_u
          br_if 0 (;@2;)
          block ;; label = @3
            local.get 1
            i32.const 2048
            i32.lt_u
            br_if 0 (;@3;)
            block ;; label = @4
              local.get 1
              i32.const 65536
              i32.lt_u
              br_if 0 (;@4;)
              local.get 2
              local.get 1
              i32.const 63
              i32.and
              i32.const 128
              i32.or
              i32.store8 offset=15
              local.get 2
              local.get 1
              i32.const 6
              i32.shr_u
              i32.const 63
              i32.and
              i32.const 128
              i32.or
              i32.store8 offset=14
              local.get 2
              local.get 1
              i32.const 12
              i32.shr_u
              i32.const 63
              i32.and
              i32.const 128
              i32.or
              i32.store8 offset=13
              local.get 2
              local.get 1
              i32.const 18
              i32.shr_u
              i32.const 7
              i32.and
              i32.const 240
              i32.or
              i32.store8 offset=12
              i32.const 4
              local.set 1
              br 3 (;@1;)
            end
            local.get 2
            local.get 1
            i32.const 63
            i32.and
            i32.const 128
            i32.or
            i32.store8 offset=14
            local.get 2
            local.get 1
            i32.const 12
            i32.shr_u
            i32.const 224
            i32.or
            i32.store8 offset=12
            local.get 2
            local.get 1
            i32.const 6
            i32.shr_u
            i32.const 63
            i32.and
            i32.const 128
            i32.or
            i32.store8 offset=13
            i32.const 3
            local.set 1
            br 2 (;@1;)
          end
          local.get 2
          local.get 1
          i32.const 63
          i32.and
          i32.const 128
          i32.or
          i32.store8 offset=13
          local.get 2
          local.get 1
          i32.const 6
          i32.shr_u
          i32.const 192
          i32.or
          i32.store8 offset=12
          i32.const 2
          local.set 1
          br 1 (;@1;)
        end
        local.get 2
        local.get 1
        i32.store8 offset=12
        i32.const 1
        local.set 1
      end
      local.get 0
      local.get 2
      i32.const 12
      i32.add
      local.get 1
      call $_ZN80_$LT$std..io..Write..write_fmt..Adapter$LT$T$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17h1468756d66c20292E
      local.set 1
      local.get 2
      i32.const 16
      i32.add
      global.set $__stack_pointer
      local.get 1
    )
    (func $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17hd9f4a6d08a482859E (;37;) (type 5) (param i32 i32) (result i32)
      (local i32 i32)
      global.get $__stack_pointer
      i32.const 16
      i32.sub
      local.tee 2
      global.set $__stack_pointer
      local.get 0
      i32.load
      local.set 0
      block ;; label = @1
        block ;; label = @2
          local.get 1
          i32.const 127
          i32.gt_u
          br_if 0 (;@2;)
          block ;; label = @3
            local.get 0
            i32.load offset=8
            local.tee 3
            local.get 0
            i32.load
            i32.ne
            br_if 0 (;@3;)
            local.get 0
            local.get 3
            call $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17h30578206c0db45c0E
            local.get 0
            i32.load offset=8
            local.set 3
          end
          local.get 0
          local.get 3
          i32.const 1
          i32.add
          i32.store offset=8
          local.get 0
          i32.load offset=4
          local.get 3
          i32.add
          local.get 1
          i32.store8
          br 1 (;@1;)
        end
        local.get 2
        i32.const 0
        i32.store offset=12
        block ;; label = @2
          block ;; label = @3
            local.get 1
            i32.const 2048
            i32.lt_u
            br_if 0 (;@3;)
            block ;; label = @4
              local.get 1
              i32.const 65536
              i32.lt_u
              br_if 0 (;@4;)
              local.get 2
              local.get 1
              i32.const 63
              i32.and
              i32.const 128
              i32.or
              i32.store8 offset=15
              local.get 2
              local.get 1
              i32.const 6
              i32.shr_u
              i32.const 63
              i32.and
              i32.const 128
              i32.or
              i32.store8 offset=14
              local.get 2
              local.get 1
              i32.const 12
              i32.shr_u
              i32.const 63
              i32.and
              i32.const 128
              i32.or
              i32.store8 offset=13
              local.get 2
              local.get 1
              i32.const 18
              i32.shr_u
              i32.const 7
              i32.and
              i32.const 240
              i32.or
              i32.store8 offset=12
              i32.const 4
              local.set 1
              br 2 (;@2;)
            end
            local.get 2
            local.get 1
            i32.const 63
            i32.and
            i32.const 128
            i32.or
            i32.store8 offset=14
            local.get 2
            local.get 1
            i32.const 12
            i32.shr_u
            i32.const 224
            i32.or
            i32.store8 offset=12
            local.get 2
            local.get 1
            i32.const 6
            i32.shr_u
            i32.const 63
            i32.and
            i32.const 128
            i32.or
            i32.store8 offset=13
            i32.const 3
            local.set 1
            br 1 (;@2;)
          end
          local.get 2
          local.get 1
          i32.const 63
          i32.and
          i32.const 128
          i32.or
          i32.store8 offset=13
          local.get 2
          local.get 1
          i32.const 6
          i32.shr_u
          i32.const 192
          i32.or
          i32.store8 offset=12
          i32.const 2
          local.set 1
        end
        block ;; label = @2
          local.get 0
          i32.load
          local.get 0
          i32.load offset=8
          local.tee 3
          i32.sub
          local.get 1
          i32.ge_u
          br_if 0 (;@2;)
          local.get 0
          local.get 3
          local.get 1
          call $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve21do_reserve_and_handle17h38d580c29fc2385cE
          local.get 0
          i32.load offset=8
          local.set 3
        end
        local.get 0
        i32.load offset=4
        local.get 3
        i32.add
        local.get 2
        i32.const 12
        i32.add
        local.get 1
        call $memcpy
        drop
        local.get 0
        local.get 3
        local.get 1
        i32.add
        i32.store offset=8
      end
      local.get 2
      i32.const 16
      i32.add
      global.set $__stack_pointer
      i32.const 0
    )
    (func $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17h30578206c0db45c0E (;38;) (type 3) (param i32 i32)
      (local i32 i32 i32)
      global.get $__stack_pointer
      i32.const 32
      i32.sub
      local.tee 2
      global.set $__stack_pointer
      block ;; label = @1
        block ;; label = @2
          local.get 1
          i32.const 1
          i32.add
          local.tee 1
          i32.eqz
          br_if 0 (;@2;)
          local.get 0
          i32.load
          local.tee 3
          i32.const 1
          i32.shl
          local.tee 4
          local.get 1
          local.get 4
          local.get 1
          i32.gt_u
          select
          local.tee 1
          i32.const 8
          local.get 1
          i32.const 8
          i32.gt_u
          select
          local.tee 1
          i32.const -1
          i32.xor
          i32.const 31
          i32.shr_u
          local.set 4
          block ;; label = @3
            block ;; label = @4
              local.get 3
              i32.eqz
              br_if 0 (;@4;)
              local.get 2
              i32.const 1
              i32.store offset=24
              local.get 2
              local.get 3
              i32.store offset=20
              local.get 2
              local.get 0
              i32.const 4
              i32.add
              i32.load
              i32.store offset=16
              br 1 (;@3;)
            end
            local.get 2
            i32.const 0
            i32.store offset=24
          end
          local.get 2
          local.get 1
          local.get 4
          local.get 2
          i32.const 16
          i32.add
          call $_ZN5alloc7raw_vec11finish_grow17h28a077458d86de3bE
          local.get 2
          i32.load offset=4
          local.set 3
          block ;; label = @3
            local.get 2
            i32.load
            br_if 0 (;@3;)
            local.get 0
            local.get 1
            i32.store
            local.get 0
            local.get 3
            i32.store offset=4
            br 2 (;@1;)
          end
          local.get 2
          i32.const 8
          i32.add
          i32.load
          local.tee 0
          i32.const -2147483647
          i32.eq
          br_if 1 (;@1;)
          local.get 0
          i32.eqz
          br_if 0 (;@2;)
          local.get 3
          local.get 0
          call $_ZN5alloc5alloc18handle_alloc_error17h680df29e672ed57dE
          unreachable
        end
        call $_ZN5alloc7raw_vec17capacity_overflow17h38ac120e37f2568fE
        unreachable
      end
      local.get 2
      i32.const 32
      i32.add
      global.set $__stack_pointer
    )
    (func $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_fmt17h19a1acee2e3fe47bE (;39;) (type 5) (param i32 i32) (result i32)
      (local i32)
      global.get $__stack_pointer
      i32.const 32
      i32.sub
      local.tee 2
      global.set $__stack_pointer
      local.get 2
      local.get 0
      i32.load
      i32.store offset=4
      local.get 2
      i32.const 8
      i32.add
      i32.const 16
      i32.add
      local.get 1
      i32.const 16
      i32.add
      i64.load align=4
      i64.store
      local.get 2
      i32.const 8
      i32.add
      i32.const 8
      i32.add
      local.get 1
      i32.const 8
      i32.add
      i64.load align=4
      i64.store
      local.get 2
      local.get 1
      i64.load align=4
      i64.store offset=8
      local.get 2
      i32.const 4
      i32.add
      i32.const 1048616
      local.get 2
      i32.const 8
      i32.add
      call $_ZN4core3fmt5write17h7558535140974479E
      local.set 1
      local.get 2
      i32.const 32
      i32.add
      global.set $__stack_pointer
      local.get 1
    )
    (func $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_fmt17h4ab582e0a50bf665E (;40;) (type 5) (param i32 i32) (result i32)
      (local i32)
      global.get $__stack_pointer
      i32.const 32
      i32.sub
      local.tee 2
      global.set $__stack_pointer
      local.get 2
      local.get 0
      i32.load
      i32.store offset=4
      local.get 2
      i32.const 8
      i32.add
      i32.const 16
      i32.add
      local.get 1
      i32.const 16
      i32.add
      i64.load align=4
      i64.store
      local.get 2
      i32.const 8
      i32.add
      i32.const 8
      i32.add
      local.get 1
      i32.const 8
      i32.add
      i64.load align=4
      i64.store
      local.get 2
      local.get 1
      i64.load align=4
      i64.store offset=8
      local.get 2
      i32.const 4
      i32.add
      i32.const 1048640
      local.get 2
      i32.const 8
      i32.add
      call $_ZN4core3fmt5write17h7558535140974479E
      local.set 1
      local.get 2
      i32.const 32
      i32.add
      global.set $__stack_pointer
      local.get 1
    )
    (func $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_fmt17ha2835ff278cbfecbE (;41;) (type 5) (param i32 i32) (result i32)
      (local i32)
      global.get $__stack_pointer
      i32.const 32
      i32.sub
      local.tee 2
      global.set $__stack_pointer
      local.get 2
      local.get 0
      i32.load
      i32.store offset=4
      local.get 2
      i32.const 8
      i32.add
      i32.const 16
      i32.add
      local.get 1
      i32.const 16
      i32.add
      i64.load align=4
      i64.store
      local.get 2
      i32.const 8
      i32.add
      i32.const 8
      i32.add
      local.get 1
      i32.const 8
      i32.add
      i64.load align=4
      i64.store
      local.get 2
      local.get 1
      i64.load align=4
      i64.store offset=8
      local.get 2
      i32.const 4
      i32.add
      i32.const 1048592
      local.get 2
      i32.const 8
      i32.add
      call $_ZN4core3fmt5write17h7558535140974479E
      local.set 1
      local.get 2
      i32.const 32
      i32.add
      global.set $__stack_pointer
      local.get 1
    )
    (func $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h303b0dcaf54ff4d5E (;42;) (type 4) (param i32 i32 i32) (result i32)
      (local i32)
      block ;; label = @1
        local.get 0
        i32.load
        local.tee 0
        i32.load
        local.get 0
        i32.load offset=8
        local.tee 3
        i32.sub
        local.get 2
        i32.ge_u
        br_if 0 (;@1;)
        local.get 0
        local.get 3
        local.get 2
        call $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve21do_reserve_and_handle17h38d580c29fc2385cE
        local.get 0
        i32.load offset=8
        local.set 3
      end
      local.get 0
      i32.load offset=4
      local.get 3
      i32.add
      local.get 1
      local.get 2
      call $memcpy
      drop
      local.get 0
      local.get 3
      local.get 2
      i32.add
      i32.store offset=8
      i32.const 0
    )
    (func $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h92bdbb051fdd6c01E (;43;) (type 4) (param i32 i32 i32) (result i32)
      (local i32)
      block ;; label = @1
        local.get 0
        i32.load
        i32.load offset=8
        local.tee 0
        i32.load
        local.get 0
        i32.load offset=8
        local.tee 3
        i32.sub
        local.get 2
        i32.ge_u
        br_if 0 (;@1;)
        local.get 0
        local.get 3
        local.get 2
        call $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve21do_reserve_and_handle17h38d580c29fc2385cE
        local.get 0
        i32.load offset=8
        local.set 3
      end
      local.get 0
      i32.load offset=4
      local.get 3
      i32.add
      local.get 1
      local.get 2
      call $memcpy
      drop
      local.get 0
      local.get 3
      local.get 2
      i32.add
      i32.store offset=8
      i32.const 0
    )
    (func $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17hd4e24d7828055adbE (;44;) (type 4) (param i32 i32 i32) (result i32)
      local.get 0
      i32.load
      local.get 1
      local.get 2
      call $_ZN80_$LT$std..io..Write..write_fmt..Adapter$LT$T$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17h1468756d66c20292E
    )
    (func $_ZN5alloc4sync12Arc$LT$T$GT$9drop_slow17h00aeb5db7b908ba4E (;45;) (type $.rodata) (param i32)
      (local i32)
      block ;; label = @1
        local.get 0
        i32.const 12
        i32.add
        i32.load
        local.tee 1
        i32.eqz
        br_if 0 (;@1;)
        local.get 0
        i32.const 16
        i32.add
        i32.load
        local.get 1
        i32.const 1
        call $__rust_dealloc
      end
      block ;; label = @1
        local.get 0
        i32.const -1
        i32.eq
        br_if 0 (;@1;)
        local.get 0
        local.get 0
        i32.load offset=4
        local.tee 1
        i32.const -1
        i32.add
        i32.store offset=4
        local.get 1
        i32.const 1
        i32.ne
        br_if 0 (;@1;)
        local.get 0
        i32.const 24
        i32.const 4
        call $__rust_dealloc
      end
    )
    (func $_ZN5alloc7raw_vec11finish_grow17h28a077458d86de3bE (;46;) (type 9) (param i32 i32 i32 i32)
      (local i32)
      block ;; label = @1
        block ;; label = @2
          local.get 2
          i32.eqz
          br_if 0 (;@2;)
          block ;; label = @3
            block ;; label = @4
              block ;; label = @5
                block ;; label = @6
                  block ;; label = @7
                    local.get 1
                    i32.const 0
                    i32.lt_s
                    br_if 0 (;@7;)
                    local.get 3
                    i32.load offset=8
                    i32.eqz
                    br_if 2 (;@5;)
                    local.get 3
                    i32.load offset=4
                    local.tee 4
                    br_if 1 (;@6;)
                    local.get 1
                    br_if 3 (;@4;)
                    local.get 2
                    local.set 3
                    br 4 (;@3;)
                  end
                  local.get 0
                  i32.const 8
                  i32.add
                  i32.const 0
                  i32.store
                  br 5 (;@1;)
                end
                local.get 3
                i32.load
                local.get 4
                local.get 2
                local.get 1
                call $__rust_realloc
                local.set 3
                br 2 (;@3;)
              end
              local.get 1
              br_if 0 (;@4;)
              local.get 2
              local.set 3
              br 1 (;@3;)
            end
            local.get 1
            local.get 2
            call $__rust_alloc
            local.set 3
          end
          block ;; label = @3
            local.get 3
            i32.eqz
            br_if 0 (;@3;)
            local.get 0
            local.get 3
            i32.store offset=4
            local.get 0
            i32.const 8
            i32.add
            local.get 1
            i32.store
            local.get 0
            i32.const 0
            i32.store
            return
          end
          local.get 0
          local.get 1
          i32.store offset=4
          local.get 0
          i32.const 8
          i32.add
          local.get 2
          i32.store
          br 1 (;@1;)
        end
        local.get 0
        local.get 1
        i32.store offset=4
        local.get 0
        i32.const 8
        i32.add
        i32.const 0
        i32.store
      end
      local.get 0
      i32.const 1
      i32.store
    )
    (func $_ZN3std6thread8ThreadId3new9exhausted17h786ca0572314fee8E (;47;) (type 7)
      (local i32)
      global.get $__stack_pointer
      i32.const 32
      i32.sub
      local.tee 0
      global.set $__stack_pointer
      local.get 0
      i32.const 20
      i32.add
      i32.const 1
      i32.store
      local.get 0
      i32.const 28
      i32.add
      i32.const 0
      i32.store
      local.get 0
      i32.const 1048892
      i32.store offset=16
      local.get 0
      i32.const 1048664
      i32.store offset=24
      local.get 0
      i32.const 0
      i32.store offset=8
      local.get 0
      i32.const 8
      i32.add
      i32.const 1048900
      call $_ZN4core9panicking9panic_fmt17hf4ce15c1b219b988E
      unreachable
    )
    (func $_ZN3std2io5Write9write_fmt17hba5fcb56a4c5cebaE (;48;) (type 2) (param i32 i32 i32)
      (local i32)
      global.get $__stack_pointer
      i32.const 48
      i32.sub
      local.tee 3
      global.set $__stack_pointer
      local.get 3
      i32.const 4
      i32.store8 offset=8
      local.get 3
      local.get 1
      i32.store offset=16
      local.get 3
      i32.const 24
      i32.add
      i32.const 16
      i32.add
      local.get 2
      i32.const 16
      i32.add
      i64.load align=4
      i64.store
      local.get 3
      i32.const 24
      i32.add
      i32.const 8
      i32.add
      local.get 2
      i32.const 8
      i32.add
      i64.load align=4
      i64.store
      local.get 3
      local.get 2
      i64.load align=4
      i64.store offset=24
      block ;; label = @1
        block ;; label = @2
          local.get 3
          i32.const 8
          i32.add
          i32.const 1049188
          local.get 3
          i32.const 24
          i32.add
          call $_ZN4core3fmt5write17h7558535140974479E
          i32.eqz
          br_if 0 (;@2;)
          block ;; label = @3
            local.get 3
            i32.load8_u offset=8
            i32.const 4
            i32.ne
            br_if 0 (;@3;)
            local.get 0
            i32.const 1049152
            i32.store offset=4
            local.get 0
            i32.const 2
            i32.store
            br 2 (;@1;)
          end
          local.get 0
          local.get 3
          i64.load offset=8
          i64.store align=4
          br 1 (;@1;)
        end
        local.get 0
        i32.const 4
        i32.store8
        local.get 3
        i32.load8_u offset=8
        i32.const 3
        i32.ne
        br_if 0 (;@1;)
        local.get 3
        i32.load offset=12
        local.tee 2
        i32.load
        local.get 2
        i32.load offset=4
        i32.load
        call_indirect (type $.rodata)
        block ;; label = @2
          local.get 2
          i32.load offset=4
          local.tee 0
          i32.const 4
          i32.add
          i32.load
          local.tee 1
          i32.eqz
          br_if 0 (;@2;)
          local.get 2
          i32.load
          local.get 1
          local.get 0
          i32.const 8
          i32.add
          i32.load
          call $__rust_dealloc
        end
        local.get 3
        i32.load offset=12
        i32.const 12
        i32.const 4
        call $__rust_dealloc
      end
      local.get 3
      i32.const 48
      i32.add
      global.set $__stack_pointer
    )
    (func $_ZN3std3sys4wasi14abort_internal17h761afe555b0460d5E (;49;) (type 7)
      call $abort
      unreachable
    )
    (func $_ZN3std10sys_common11thread_info14current_thread17hd7027661b777c4d6E (;50;) (type 8) (result i32)
      (local i32 i32 i32 i32 i32 i64 i64 i64)
      global.get $__stack_pointer
      i32.const 32
      i32.sub
      local.tee 0
      global.set $__stack_pointer
      block ;; label = @1
        block ;; label = @2
          block ;; label = @3
            block ;; label = @4
              i32.const 0
              i32.load offset=1051528
              br_if 0 (;@4;)
              i32.const 0
              i32.const -1
              i32.store offset=1051528
              block ;; label = @5
                i32.const 0
                i32.load offset=1051532
                local.tee 1
                br_if 0 (;@5;)
                local.get 0
                i32.const 16
                i32.add
                i32.const 24
                i32.const 8
                call $_ZN5alloc4sync32arcinner_layout_for_value_layout17h57586c4dc56ab55aE
                local.get 0
                i32.load offset=20
                local.set 2
                local.get 0
                i32.load offset=16
                local.set 3
                local.get 0
                i32.const 8
                i32.add
                i32.const 24
                i32.const 8
                call $_ZN5alloc4sync32arcinner_layout_for_value_layout17h57586c4dc56ab55aE
                local.get 0
                i32.load offset=12
                local.set 1
                block ;; label = @6
                  local.get 0
                  i32.load offset=8
                  local.tee 4
                  i32.eqz
                  br_if 0 (;@6;)
                  local.get 4
                  local.get 1
                  call $__rust_alloc
                  local.set 1
                end
                local.get 1
                i32.eqz
                br_if 3 (;@2;)
                local.get 1
                i64.const 4294967297
                i64.store align=4
                local.get 1
                i32.const 0
                i32.store offset=8
                i32.const 0
                i64.load offset=1051512
                local.set 5
                loop ;; label = @6
                  local.get 5
                  i64.const 1
                  i64.add
                  local.tee 6
                  i64.eqz
                  br_if 5 (;@1;)
                  i32.const 0
                  local.get 6
                  i32.const 0
                  i64.load offset=1051512
                  local.tee 7
                  local.get 7
                  local.get 5
                  i64.eq
                  local.tee 4
                  select
                  i64.store offset=1051512
                  local.get 7
                  local.set 5
                  local.get 4
                  i32.eqz
                  br_if 0 (;@6;)
                end
                local.get 1
                i32.const 0
                i32.store16 offset=20
                i32.const 0
                local.get 1
                i32.store offset=1051532
                local.get 1
                i32.const 16
                i32.add
                i32.const 0
                i32.store
                local.get 1
                i32.const 24
                i32.add
                local.get 6
                i64.store
              end
              local.get 1
              local.get 1
              i32.load
              local.tee 4
              i32.const 1
              i32.add
              i32.store
              local.get 4
              i32.const -1
              i32.gt_s
              br_if 1 (;@3;)
              unreachable
              unreachable
            end
            i32.const 1048940
            i32.const 16
            local.get 0
            i32.const 24
            i32.add
            i32.const 1048956
            i32.const 1049488
            call $_ZN4core6result13unwrap_failed17he6bfae7ea6f8795eE
            unreachable
          end
          i32.const 0
          i32.const 0
          i32.load offset=1051528
          i32.const 1
          i32.add
          i32.store offset=1051528
          local.get 0
          i32.const 32
          i32.add
          global.set $__stack_pointer
          local.get 1
          return
        end
        local.get 3
        local.get 2
        call $_ZN5alloc5alloc18handle_alloc_error17h680df29e672ed57dE
        unreachable
      end
      call $_ZN3std6thread8ThreadId3new9exhausted17h786ca0572314fee8E
      unreachable
    )
    (func $_ZN3std3env11current_dir17hb9d80cddcbfbdb2eE (;51;) (type $.rodata) (param i32)
      (local i32 i32 i32 i32 i32)
      global.get $__stack_pointer
      i32.const 16
      i32.sub
      local.tee 1
      global.set $__stack_pointer
      i32.const 512
      local.set 2
      block ;; label = @1
        block ;; label = @2
          block ;; label = @3
            block ;; label = @4
              i32.const 512
              i32.const 1
              call $__rust_alloc
              local.tee 3
              i32.eqz
              br_if 0 (;@4;)
              local.get 1
              local.get 3
              i32.store offset=4
              local.get 1
              i32.const 512
              i32.store
              local.get 3
              i32.const 512
              call $getcwd
              br_if 1 (;@3;)
              block ;; label = @5
                block ;; label = @6
                  block ;; label = @7
                    i32.const 0
                    i32.load offset=1052036
                    local.tee 2
                    i32.const 68
                    i32.ne
                    br_if 0 (;@7;)
                    i32.const 512
                    local.set 2
                    br 1 (;@6;)
                  end
                  local.get 0
                  i64.const 1
                  i64.store align=4
                  local.get 0
                  i32.const 8
                  i32.add
                  local.get 2
                  i32.store
                  i32.const 512
                  local.set 2
                  br 1 (;@5;)
                end
                loop ;; label = @6
                  local.get 1
                  local.get 2
                  i32.store offset=8
                  local.get 1
                  local.get 2
                  i32.const 1
                  call $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve21do_reserve_and_handle17h38d580c29fc2385cE
                  local.get 1
                  i32.load offset=4
                  local.tee 3
                  local.get 1
                  i32.load
                  local.tee 2
                  call $getcwd
                  br_if 3 (;@3;)
                  i32.const 0
                  i32.load offset=1052036
                  local.tee 4
                  i32.const 68
                  i32.eq
                  br_if 0 (;@6;)
                end
                local.get 0
                i64.const 1
                i64.store align=4
                local.get 0
                i32.const 8
                i32.add
                local.get 4
                i32.store
                local.get 2
                i32.eqz
                br_if 3 (;@2;)
              end
              local.get 3
              local.get 2
              i32.const 1
              call $__rust_dealloc
              br 2 (;@2;)
            end
            i32.const 512
            i32.const 1
            call $_ZN5alloc5alloc18handle_alloc_error17h680df29e672ed57dE
            unreachable
          end
          local.get 1
          local.get 3
          call $_ZN4core3ffi5c_str4CStr8from_ptr9strlen_rt17h0159b444b16e3465E
          local.tee 4
          i32.store offset=8
          block ;; label = @3
            local.get 2
            local.get 4
            i32.le_u
            br_if 0 (;@3;)
            block ;; label = @4
              block ;; label = @5
                local.get 4
                br_if 0 (;@5;)
                i32.const 1
                local.set 5
                local.get 3
                local.get 2
                i32.const 1
                call $__rust_dealloc
                br 1 (;@4;)
              end
              local.get 3
              local.get 2
              i32.const 1
              local.get 4
              call $__rust_realloc
              local.tee 5
              i32.eqz
              br_if 3 (;@1;)
            end
            local.get 1
            local.get 4
            i32.store
            local.get 1
            local.get 5
            i32.store offset=4
          end
          local.get 0
          local.get 1
          i64.load
          i64.store offset=4 align=4
          local.get 0
          i32.const 0
          i32.store
          local.get 0
          i32.const 12
          i32.add
          local.get 1
          i32.const 8
          i32.add
          i32.load
          i32.store
        end
        local.get 1
        i32.const 16
        i32.add
        global.set $__stack_pointer
        return
      end
      local.get 4
      i32.const 1
      call $_ZN5alloc5alloc18handle_alloc_error17h680df29e672ed57dE
      unreachable
    )
    (func $_ZN3std3env7_var_os17hcf2213876bb081deE (;52;) (type 2) (param i32 i32 i32)
      (local i32 i64 i32 i32)
      global.get $__stack_pointer
      i32.const 416
      i32.sub
      local.tee 3
      global.set $__stack_pointer
      block ;; label = @1
        block ;; label = @2
          local.get 2
          i32.const 383
          i32.gt_u
          br_if 0 (;@2;)
          local.get 3
          i32.const 16
          i32.add
          local.get 1
          local.get 2
          call $memcpy
          drop
          local.get 3
          i32.const 16
          i32.add
          local.get 2
          i32.add
          i32.const 0
          i32.store8
          local.get 3
          i32.const 400
          i32.add
          local.get 3
          i32.const 16
          i32.add
          local.get 2
          i32.const 1
          i32.add
          call $_ZN4core3ffi5c_str4CStr19from_bytes_with_nul17h3bcfbfec0c9c291cE
          block ;; label = @3
            local.get 3
            i32.load offset=400
            br_if 0 (;@3;)
            i32.const 4
            local.set 2
            local.get 3
            i32.load offset=404
            call $getenv
            local.set 1
            local.get 3
            i32.const 4
            i32.store8 offset=8
            local.get 3
            local.get 1
            i32.store offset=12
            br 2 (;@1;)
          end
          local.get 3
          i32.const 0
          i64.load offset=1049312
          local.tee 4
          i64.store offset=8
          local.get 4
          i32.wrap_i64
          local.set 2
          br 1 (;@1;)
        end
        local.get 3
        i32.const 8
        i32.add
        local.get 1
        local.get 2
        call $_ZN3std3sys6common14small_c_string24run_with_cstr_allocating17h827ae54031d1a1a7E
        local.get 3
        i32.load8_u offset=8
        local.set 2
      end
      block ;; label = @1
        block ;; label = @2
          local.get 2
          i32.const 255
          i32.and
          i32.const 4
          i32.eq
          br_if 0 (;@2;)
          block ;; label = @3
            local.get 3
            i32.load8_u offset=8
            i32.const 3
            i32.ne
            br_if 0 (;@3;)
            local.get 3
            i32.load offset=12
            local.tee 2
            i32.load
            local.get 2
            i32.load offset=4
            i32.load
            call_indirect (type $.rodata)
            block ;; label = @4
              local.get 2
              i32.load offset=4
              local.tee 1
              i32.const 4
              i32.add
              i32.load
              local.tee 5
              i32.eqz
              br_if 0 (;@4;)
              local.get 2
              i32.load
              local.get 5
              local.get 1
              i32.const 8
              i32.add
              i32.load
              call $__rust_dealloc
            end
            local.get 2
            i32.const 12
            i32.const 4
            call $__rust_dealloc
          end
          local.get 0
          i32.const 0
          i32.store offset=4
          br 1 (;@1;)
        end
        block ;; label = @2
          local.get 3
          i32.load offset=12
          local.tee 1
          i32.eqz
          br_if 0 (;@2;)
          block ;; label = @3
            block ;; label = @4
              block ;; label = @5
                block ;; label = @6
                  local.get 1
                  call $_ZN4core3ffi5c_str4CStr8from_ptr9strlen_rt17h0159b444b16e3465E
                  local.tee 2
                  br_if 0 (;@6;)
                  i32.const 1
                  local.set 5
                  br 1 (;@5;)
                end
                local.get 2
                i32.const -1
                i32.gt_s
                local.tee 6
                i32.eqz
                br_if 1 (;@4;)
                local.get 2
                local.get 6
                call $__rust_alloc
                local.tee 5
                i32.eqz
                br_if 2 (;@3;)
              end
              local.get 5
              local.get 1
              local.get 2
              call $memcpy
              local.set 1
              local.get 0
              local.get 2
              i32.store offset=8
              local.get 0
              local.get 1
              i32.store offset=4
              local.get 0
              local.get 2
              i32.store
              br 3 (;@1;)
            end
            call $_ZN5alloc7raw_vec17capacity_overflow17h38ac120e37f2568fE
            unreachable
          end
          local.get 2
          local.get 6
          call $_ZN5alloc5alloc18handle_alloc_error17h680df29e672ed57dE
          unreachable
        end
        local.get 0
        i32.const 0
        i32.store offset=4
      end
      local.get 3
      i32.const 416
      i32.add
      global.set $__stack_pointer
    )
    (func $_ZN3std3sys6common14small_c_string24run_with_cstr_allocating17h827ae54031d1a1a7E (;53;) (type 2) (param i32 i32 i32)
      (local i32 i32)
      global.get $__stack_pointer
      i32.const 16
      i32.sub
      local.tee 3
      global.set $__stack_pointer
      local.get 3
      local.get 1
      local.get 2
      call $_ZN72_$LT$$RF$str$u20$as$u20$alloc..ffi..c_str..CString..new..SpecNewImpl$GT$13spec_new_impl17h340d4b599af20849E
      block ;; label = @1
        block ;; label = @2
          local.get 3
          i32.load offset=8
          local.tee 2
          br_if 0 (;@2;)
          local.get 3
          i32.load offset=4
          local.set 2
          local.get 3
          i32.load
          local.tee 1
          call $getenv
          local.set 4
          local.get 0
          i32.const 4
          i32.store8
          local.get 0
          local.get 4
          i32.store offset=4
          local.get 1
          i32.const 0
          i32.store8
          local.get 2
          i32.eqz
          br_if 1 (;@1;)
          local.get 1
          local.get 2
          i32.const 1
          call $__rust_dealloc
          br 1 (;@1;)
        end
        local.get 0
        i32.const 0
        i64.load offset=1049312
        i64.store align=4
        local.get 3
        i32.load offset=4
        local.tee 0
        i32.eqz
        br_if 0 (;@1;)
        local.get 2
        local.get 0
        i32.const 1
        call $__rust_dealloc
      end
      local.get 3
      i32.const 16
      i32.add
      global.set $__stack_pointer
    )
    (func $_ZN3std3sys4wasi17decode_error_kind17hf13b07452e633c92E (;54;) (type 10) (param i32) (result i32)
      (local i32)
      i32.const 40
      local.set 1
      block ;; label = @1
        local.get 0
        i32.const 65535
        i32.gt_u
        br_if 0 (;@1;)
        i32.const 2
        local.set 1
        i32.const 1050560
        call $_ZN4wasi13lib_generated5Errno3raw17hac277b009e036094E
        i32.const 65535
        i32.and
        local.get 0
        i32.eq
        br_if 0 (;@1;)
        i32.const 3
        local.set 1
        i32.const 1050562
        call $_ZN4wasi13lib_generated5Errno3raw17hac277b009e036094E
        i32.const 65535
        i32.and
        local.get 0
        i32.eq
        br_if 0 (;@1;)
        i32.const 1
        local.set 1
        i32.const 1050564
        call $_ZN4wasi13lib_generated5Errno3raw17hac277b009e036094E
        i32.const 65535
        i32.and
        local.get 0
        i32.eq
        br_if 0 (;@1;)
        i32.const 1050566
        call $_ZN4wasi13lib_generated5Errno3raw17hac277b009e036094E
        i32.const 65535
        i32.and
        local.get 0
        i32.eq
        br_if 0 (;@1;)
        i32.const 11
        local.set 1
        i32.const 1050568
        call $_ZN4wasi13lib_generated5Errno3raw17hac277b009e036094E
        i32.const 65535
        i32.and
        local.get 0
        i32.eq
        br_if 0 (;@1;)
        i32.const 7
        local.set 1
        i32.const 1050570
        call $_ZN4wasi13lib_generated5Errno3raw17hac277b009e036094E
        i32.const 65535
        i32.and
        local.get 0
        i32.eq
        br_if 0 (;@1;)
        i32.const 6
        local.set 1
        i32.const 1050572
        call $_ZN4wasi13lib_generated5Errno3raw17hac277b009e036094E
        i32.const 65535
        i32.and
        local.get 0
        i32.eq
        br_if 0 (;@1;)
        i32.const 9
        local.set 1
        i32.const 1050574
        call $_ZN4wasi13lib_generated5Errno3raw17hac277b009e036094E
        i32.const 65535
        i32.and
        local.get 0
        i32.eq
        br_if 0 (;@1;)
        i32.const 8
        local.set 1
        i32.const 1050576
        call $_ZN4wasi13lib_generated5Errno3raw17hac277b009e036094E
        i32.const 65535
        i32.and
        local.get 0
        i32.eq
        br_if 0 (;@1;)
        i32.const 0
        local.set 1
        i32.const 1050578
        call $_ZN4wasi13lib_generated5Errno3raw17hac277b009e036094E
        i32.const 65535
        i32.and
        local.get 0
        i32.eq
        br_if 0 (;@1;)
        i32.const 35
        local.set 1
        i32.const 1050580
        call $_ZN4wasi13lib_generated5Errno3raw17hac277b009e036094E
        i32.const 65535
        i32.and
        local.get 0
        i32.eq
        br_if 0 (;@1;)
        i32.const 20
        local.set 1
        i32.const 1050582
        call $_ZN4wasi13lib_generated5Errno3raw17hac277b009e036094E
        i32.const 65535
        i32.and
        local.get 0
        i32.eq
        br_if 0 (;@1;)
        i32.const 22
        local.set 1
        i32.const 1050584
        call $_ZN4wasi13lib_generated5Errno3raw17hac277b009e036094E
        i32.const 65535
        i32.and
        local.get 0
        i32.eq
        br_if 0 (;@1;)
        i32.const 12
        local.set 1
        i32.const 1050586
        call $_ZN4wasi13lib_generated5Errno3raw17hac277b009e036094E
        i32.const 65535
        i32.and
        local.get 0
        i32.eq
        br_if 0 (;@1;)
        i32.const 13
        local.set 1
        i32.const 1050588
        call $_ZN4wasi13lib_generated5Errno3raw17hac277b009e036094E
        i32.const 65535
        i32.and
        local.get 0
        i32.eq
        br_if 0 (;@1;)
        i32.const 36
        local.set 1
        i32.const 1050590
        call $_ZN4wasi13lib_generated5Errno3raw17hac277b009e036094E
        i32.const 65535
        i32.and
        local.get 0
        i32.eq
        br_if 0 (;@1;)
        i32.const 38
        i32.const 40
        i32.const 1050592
        call $_ZN4wasi13lib_generated5Errno3raw17hac277b009e036094E
        i32.const 65535
        i32.and
        local.get 0
        i32.eq
        select
        local.set 1
      end
      local.get 1
    )
    (func $_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$5write17h31125b29efb4f619E (;55;) (type 9) (param i32 i32 i32 i32)
      (local i32)
      block ;; label = @1
        local.get 1
        i32.load
        local.get 1
        i32.load offset=8
        local.tee 4
        i32.sub
        local.get 3
        i32.ge_u
        br_if 0 (;@1;)
        local.get 1
        local.get 4
        local.get 3
        call $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve21do_reserve_and_handle17h38d580c29fc2385cE
        local.get 1
        i32.load offset=8
        local.set 4
      end
      local.get 1
      i32.load offset=4
      local.get 4
      i32.add
      local.get 2
      local.get 3
      call $memcpy
      drop
      local.get 0
      local.get 3
      i32.store offset=4
      local.get 1
      local.get 4
      local.get 3
      i32.add
      i32.store offset=8
      local.get 0
      i32.const 4
      i32.store8
    )
    (func $_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$14write_vectored17he20320b606539ce1E (;56;) (type 9) (param i32 i32 i32 i32)
      (local i32 i32 i32 i32)
      block ;; label = @1
        block ;; label = @2
          local.get 3
          br_if 0 (;@2;)
          i32.const 0
          local.set 4
          br 1 (;@1;)
        end
        local.get 3
        i32.const -1
        i32.add
        i32.const 536870911
        i32.and
        local.tee 5
        i32.const 1
        i32.add
        local.tee 4
        i32.const 7
        i32.and
        local.set 6
        block ;; label = @2
          block ;; label = @3
            local.get 5
            i32.const 7
            i32.ge_u
            br_if 0 (;@3;)
            i32.const 0
            local.set 4
            local.get 2
            local.set 5
            br 1 (;@2;)
          end
          local.get 2
          i32.const 60
          i32.add
          local.set 5
          local.get 4
          i32.const 1073741816
          i32.and
          local.set 7
          i32.const 0
          local.set 4
          loop ;; label = @3
            local.get 5
            i32.load
            local.get 5
            i32.const -8
            i32.add
            i32.load
            local.get 5
            i32.const -16
            i32.add
            i32.load
            local.get 5
            i32.const -24
            i32.add
            i32.load
            local.get 5
            i32.const -32
            i32.add
            i32.load
            local.get 5
            i32.const -40
            i32.add
            i32.load
            local.get 5
            i32.const -48
            i32.add
            i32.load
            local.get 5
            i32.const -56
            i32.add
            i32.load
            local.get 4
            i32.add
            i32.add
            i32.add
            i32.add
            i32.add
            i32.add
            i32.add
            i32.add
            local.set 4
            local.get 5
            i32.const 64
            i32.add
            local.set 5
            local.get 7
            i32.const -8
            i32.add
            local.tee 7
            br_if 0 (;@3;)
          end
          local.get 5
          i32.const -60
          i32.add
          local.set 5
        end
        block ;; label = @2
          local.get 6
          i32.eqz
          br_if 0 (;@2;)
          local.get 5
          i32.const 4
          i32.add
          local.set 5
          loop ;; label = @3
            local.get 5
            i32.load
            local.get 4
            i32.add
            local.set 4
            local.get 5
            i32.const 8
            i32.add
            local.set 5
            local.get 6
            i32.const -1
            i32.add
            local.tee 6
            br_if 0 (;@3;)
          end
        end
        block ;; label = @2
          local.get 1
          i32.load
          local.get 1
          i32.load offset=8
          local.tee 5
          i32.sub
          local.get 4
          i32.ge_u
          br_if 0 (;@2;)
          local.get 1
          local.get 5
          local.get 4
          call $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve21do_reserve_and_handle17h38d580c29fc2385cE
        end
        local.get 3
        i32.eqz
        br_if 0 (;@1;)
        local.get 2
        local.get 3
        i32.const 3
        i32.shl
        i32.add
        local.set 3
        local.get 1
        i32.load offset=8
        local.set 5
        loop ;; label = @2
          local.get 2
          i32.load
          local.set 7
          block ;; label = @3
            local.get 1
            i32.load
            local.get 5
            i32.sub
            local.get 2
            i32.const 4
            i32.add
            i32.load
            local.tee 6
            i32.ge_u
            br_if 0 (;@3;)
            local.get 1
            local.get 5
            local.get 6
            call $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve21do_reserve_and_handle17h38d580c29fc2385cE
            local.get 1
            i32.load offset=8
            local.set 5
          end
          local.get 1
          i32.load offset=4
          local.get 5
          i32.add
          local.get 7
          local.get 6
          call $memcpy
          drop
          local.get 1
          local.get 5
          local.get 6
          i32.add
          local.tee 5
          i32.store offset=8
          local.get 2
          i32.const 8
          i32.add
          local.tee 2
          local.get 3
          i32.ne
          br_if 0 (;@2;)
        end
      end
      local.get 0
      i32.const 4
      i32.store8
      local.get 0
      local.get 4
      i32.store offset=4
    )
    (func $_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$17is_write_vectored17hc7b9f7c56ce6f0ceE (;57;) (type 10) (param i32) (result i32)
      i32.const 1
    )
    (func $_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17h30621f068535731eE (;58;) (type 9) (param i32 i32 i32 i32)
      (local i32)
      block ;; label = @1
        local.get 1
        i32.load
        local.get 1
        i32.load offset=8
        local.tee 4
        i32.sub
        local.get 3
        i32.ge_u
        br_if 0 (;@1;)
        local.get 1
        local.get 4
        local.get 3
        call $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve21do_reserve_and_handle17h38d580c29fc2385cE
        local.get 1
        i32.load offset=8
        local.set 4
      end
      local.get 1
      i32.load offset=4
      local.get 4
      i32.add
      local.get 2
      local.get 3
      call $memcpy
      drop
      local.get 0
      i32.const 4
      i32.store8
      local.get 1
      local.get 4
      local.get 3
      i32.add
      i32.store offset=8
    )
    (func $_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$5flush17h63afd92b838412a5E (;59;) (type 3) (param i32 i32)
      local.get 0
      i32.const 4
      i32.store8
    )
    (func $_ZN3std2io5Write18write_all_vectored17h4a3f8eead6bfe2c3E (;60;) (type 9) (param i32 i32 i32 i32)
      (local i32 i32 i32 i32 i32 i32 i32 i64 i32)
      global.get $__stack_pointer
      i32.const 32
      i32.sub
      local.tee 4
      global.set $__stack_pointer
      block ;; label = @1
        block ;; label = @2
          block ;; label = @3
            block ;; label = @4
              local.get 3
              i32.eqz
              br_if 0 (;@4;)
              local.get 2
              i32.const 4
              i32.add
              local.set 5
              local.get 3
              i32.const 3
              i32.shl
              local.set 6
              local.get 3
              i32.const -1
              i32.add
              i32.const 536870911
              i32.and
              i32.const 1
              i32.add
              local.set 7
              i32.const 0
              local.set 8
              block ;; label = @5
                loop ;; label = @6
                  local.get 5
                  i32.load
                  br_if 1 (;@5;)
                  local.get 5
                  i32.const 8
                  i32.add
                  local.set 5
                  local.get 8
                  i32.const 1
                  i32.add
                  local.set 8
                  local.get 6
                  i32.const -8
                  i32.add
                  local.tee 6
                  br_if 0 (;@6;)
                end
                local.get 7
                local.set 8
              end
              block ;; label = @5
                local.get 8
                local.get 3
                i32.le_u
                br_if 0 (;@5;)
                local.get 8
                local.get 3
                i32.const 1049000
                call $_ZN4core5slice5index26slice_start_index_len_fail17h4b6807d169d5a5ccE
                unreachable
              end
              local.get 3
              local.get 8
              i32.sub
              local.tee 9
              i32.eqz
              br_if 0 (;@4;)
              local.get 2
              local.get 8
              i32.const 3
              i32.shl
              i32.add
              local.set 10
              i32.const 1049124
              i64.extend_i32_u
              i64.const 32
              i64.shl
              i64.const 2
              i64.or
              local.set 11
              loop ;; label = @5
                local.get 4
                i32.const 8
                i32.add
                i32.const 2
                local.get 10
                local.get 9
                call $_ZN4wasi13lib_generated8fd_write17h26c52996b83e471dE
                block ;; label = @6
                  block ;; label = @7
                    block ;; label = @8
                      block ;; label = @9
                        local.get 4
                        i32.load16_u offset=8
                        br_if 0 (;@9;)
                        local.get 4
                        i32.load offset=12
                        local.tee 7
                        i32.eqz
                        br_if 1 (;@8;)
                        local.get 10
                        i32.const 4
                        i32.add
                        local.set 5
                        local.get 9
                        i32.const 3
                        i32.shl
                        local.set 2
                        local.get 9
                        i32.const -1
                        i32.add
                        i32.const 536870911
                        i32.and
                        i32.const 1
                        i32.add
                        local.set 12
                        i32.const 0
                        local.set 8
                        i32.const 0
                        local.set 6
                        block ;; label = @10
                          loop ;; label = @11
                            local.get 5
                            i32.load
                            local.get 6
                            i32.add
                            local.tee 3
                            local.get 7
                            i32.gt_u
                            br_if 1 (;@10;)
                            local.get 5
                            i32.const 8
                            i32.add
                            local.set 5
                            local.get 8
                            i32.const 1
                            i32.add
                            local.set 8
                            local.get 3
                            local.set 6
                            local.get 2
                            i32.const -8
                            i32.add
                            local.tee 2
                            br_if 0 (;@11;)
                          end
                          local.get 3
                          local.set 6
                          local.get 12
                          local.set 8
                        end
                        local.get 9
                        local.get 8
                        i32.lt_u
                        br_if 7 (;@2;)
                        local.get 9
                        local.get 8
                        i32.sub
                        local.set 3
                        local.get 10
                        local.get 8
                        i32.const 3
                        i32.shl
                        local.tee 2
                        i32.add
                        local.set 5
                        local.get 9
                        local.get 8
                        i32.ne
                        br_if 2 (;@7;)
                        local.get 5
                        local.set 10
                        local.get 3
                        local.set 9
                        local.get 7
                        local.get 6
                        i32.eq
                        br_if 3 (;@6;)
                        local.get 4
                        i32.const 20
                        i32.add
                        i32.const 1
                        i32.store
                        local.get 4
                        i32.const 28
                        i32.add
                        i32.const 0
                        i32.store
                        local.get 4
                        i32.const 1049056
                        i32.store offset=16
                        local.get 4
                        i32.const 1048664
                        i32.store offset=24
                        local.get 4
                        i32.const 0
                        i32.store offset=8
                        local.get 4
                        i32.const 8
                        i32.add
                        i32.const 1049064
                        call $_ZN4core9panicking9panic_fmt17hf4ce15c1b219b988E
                        unreachable
                      end
                      local.get 4
                      local.get 4
                      i32.load16_u offset=10
                      i32.store16 offset=6
                      local.get 4
                      i32.const 6
                      i32.add
                      call $_ZN4wasi13lib_generated5Errno3raw17hac277b009e036094E
                      local.tee 5
                      i32.const 65535
                      i32.and
                      call $_ZN3std3sys4wasi17decode_error_kind17hf13b07452e633c92E
                      i32.const 255
                      i32.and
                      i32.const 35
                      i32.eq
                      br_if 2 (;@6;)
                      local.get 5
                      i64.extend_i32_u
                      i64.const 65535
                      i64.and
                      i64.const 32
                      i64.shl
                      local.set 11
                    end
                    local.get 0
                    local.get 11
                    i64.store align=4
                    br 4 (;@3;)
                  end
                  local.get 10
                  local.get 2
                  i32.add
                  local.tee 2
                  i32.load offset=4
                  local.tee 9
                  local.get 7
                  local.get 6
                  i32.sub
                  local.tee 8
                  i32.lt_u
                  br_if 5 (;@1;)
                  local.get 2
                  i32.const 4
                  i32.add
                  local.get 9
                  local.get 8
                  i32.sub
                  i32.store
                  local.get 5
                  local.get 5
                  i32.load
                  local.get 8
                  i32.add
                  i32.store
                  local.get 5
                  local.set 10
                  local.get 3
                  local.set 9
                end
                local.get 9
                br_if 0 (;@5;)
              end
            end
            local.get 0
            i32.const 4
            i32.store8
          end
          local.get 4
          i32.const 32
          i32.add
          global.set $__stack_pointer
          return
        end
        local.get 8
        local.get 9
        i32.const 1049000
        call $_ZN4core5slice5index26slice_start_index_len_fail17h4b6807d169d5a5ccE
        unreachable
      end
      local.get 4
      i32.const 20
      i32.add
      i32.const 1
      i32.store
      local.get 4
      i32.const 28
      i32.add
      i32.const 0
      i32.store
      local.get 4
      i32.const 1050356
      i32.store offset=16
      local.get 4
      i32.const 1048664
      i32.store offset=24
      local.get 4
      i32.const 0
      i32.store offset=8
      local.get 4
      i32.const 8
      i32.add
      i32.const 1050396
      call $_ZN4core9panicking9panic_fmt17hf4ce15c1b219b988E
      unreachable
    )
    (func $_ZN3std2io5Write9write_all17h544eaae0cf5cf6cdE (;61;) (type 9) (param i32 i32 i32 i32)
      (local i32 i64 i32)
      global.get $__stack_pointer
      i32.const 32
      i32.sub
      local.tee 4
      global.set $__stack_pointer
      block ;; label = @1
        block ;; label = @2
          local.get 3
          i32.eqz
          br_if 0 (;@2;)
          i32.const 1049124
          i64.extend_i32_u
          i64.const 32
          i64.shl
          i64.const 2
          i64.or
          local.set 5
          loop ;; label = @3
            local.get 4
            local.get 3
            i32.store offset=12
            local.get 4
            local.get 2
            i32.store offset=8
            local.get 4
            i32.const 16
            i32.add
            i32.const 2
            local.get 4
            i32.const 8
            i32.add
            i32.const 1
            call $_ZN4wasi13lib_generated8fd_write17h26c52996b83e471dE
            block ;; label = @4
              block ;; label = @5
                block ;; label = @6
                  block ;; label = @7
                    local.get 4
                    i32.load16_u offset=16
                    br_if 0 (;@7;)
                    local.get 4
                    i32.load offset=20
                    local.tee 6
                    i32.eqz
                    br_if 1 (;@6;)
                    local.get 3
                    local.get 6
                    i32.lt_u
                    br_if 2 (;@5;)
                    local.get 3
                    local.get 6
                    i32.sub
                    local.set 3
                    local.get 2
                    local.get 6
                    i32.add
                    local.set 2
                    br 3 (;@4;)
                  end
                  local.get 4
                  local.get 4
                  i32.load16_u offset=18
                  i32.store16 offset=30
                  local.get 4
                  i32.const 30
                  i32.add
                  call $_ZN4wasi13lib_generated5Errno3raw17hac277b009e036094E
                  local.tee 6
                  i32.const 65535
                  i32.and
                  call $_ZN3std3sys4wasi17decode_error_kind17hf13b07452e633c92E
                  i32.const 255
                  i32.and
                  i32.const 35
                  i32.eq
                  br_if 2 (;@4;)
                  local.get 6
                  i64.extend_i32_u
                  i64.const 65535
                  i64.and
                  i64.const 32
                  i64.shl
                  local.set 5
                end
                local.get 0
                local.get 5
                i64.store align=4
                br 4 (;@1;)
              end
              local.get 6
              local.get 3
              i32.const 1049080
              call $_ZN4core5slice5index26slice_start_index_len_fail17h4b6807d169d5a5ccE
              unreachable
            end
            local.get 3
            br_if 0 (;@3;)
          end
        end
        local.get 0
        i32.const 4
        i32.store8
      end
      local.get 4
      i32.const 32
      i32.add
      global.set $__stack_pointer
    )
    (func $_ZN3std2io5Write18write_all_vectored17h7d2f89f47ec58282E (;62;) (type 9) (param i32 i32 i32 i32)
      (local i32 i32 i32 i32 i32 i32 i32 i32 i32)
      global.get $__stack_pointer
      i32.const 32
      i32.sub
      local.tee 4
      global.set $__stack_pointer
      block ;; label = @1
        block ;; label = @2
          block ;; label = @3
            block ;; label = @4
              local.get 3
              i32.eqz
              br_if 0 (;@4;)
              local.get 2
              i32.const 4
              i32.add
              local.set 5
              local.get 3
              i32.const 3
              i32.shl
              local.set 6
              local.get 3
              i32.const -1
              i32.add
              i32.const 536870911
              i32.and
              i32.const 1
              i32.add
              local.set 7
              i32.const 0
              local.set 8
              block ;; label = @5
                loop ;; label = @6
                  local.get 5
                  i32.load
                  br_if 1 (;@5;)
                  local.get 5
                  i32.const 8
                  i32.add
                  local.set 5
                  local.get 8
                  i32.const 1
                  i32.add
                  local.set 8
                  local.get 6
                  i32.const -8
                  i32.add
                  local.tee 6
                  br_if 0 (;@6;)
                end
                local.get 7
                local.set 8
              end
              block ;; label = @5
                local.get 8
                local.get 3
                i32.le_u
                br_if 0 (;@5;)
                local.get 8
                local.get 3
                i32.const 1049000
                call $_ZN4core5slice5index26slice_start_index_len_fail17h4b6807d169d5a5ccE
                unreachable
              end
              local.get 3
              local.get 8
              i32.sub
              local.tee 9
              i32.eqz
              br_if 0 (;@4;)
              local.get 2
              local.get 8
              i32.const 3
              i32.shl
              i32.add
              local.set 10
              loop ;; label = @5
                local.get 9
                i32.const -1
                i32.add
                i32.const 536870911
                i32.and
                local.tee 6
                i32.const 1
                i32.add
                local.tee 11
                i32.const 7
                i32.and
                local.set 8
                i32.const 0
                local.set 3
                local.get 10
                local.set 5
                block ;; label = @6
                  local.get 6
                  i32.const 7
                  i32.lt_u
                  br_if 0 (;@6;)
                  local.get 10
                  i32.const 60
                  i32.add
                  local.set 5
                  local.get 11
                  i32.const 1073741816
                  i32.and
                  local.set 6
                  i32.const 0
                  local.set 3
                  loop ;; label = @7
                    local.get 5
                    i32.load
                    local.get 5
                    i32.const -8
                    i32.add
                    i32.load
                    local.get 5
                    i32.const -16
                    i32.add
                    i32.load
                    local.get 5
                    i32.const -24
                    i32.add
                    i32.load
                    local.get 5
                    i32.const -32
                    i32.add
                    i32.load
                    local.get 5
                    i32.const -40
                    i32.add
                    i32.load
                    local.get 5
                    i32.const -48
                    i32.add
                    i32.load
                    local.get 5
                    i32.const -56
                    i32.add
                    i32.load
                    local.get 3
                    i32.add
                    i32.add
                    i32.add
                    i32.add
                    i32.add
                    i32.add
                    i32.add
                    i32.add
                    local.set 3
                    local.get 5
                    i32.const 64
                    i32.add
                    local.set 5
                    local.get 6
                    i32.const -8
                    i32.add
                    local.tee 6
                    br_if 0 (;@7;)
                  end
                  local.get 5
                  i32.const -60
                  i32.add
                  local.set 5
                end
                block ;; label = @6
                  local.get 8
                  i32.eqz
                  br_if 0 (;@6;)
                  local.get 5
                  i32.const 4
                  i32.add
                  local.set 5
                  loop ;; label = @7
                    local.get 5
                    i32.load
                    local.get 3
                    i32.add
                    local.set 3
                    local.get 5
                    i32.const 8
                    i32.add
                    local.set 5
                    local.get 8
                    i32.const -1
                    i32.add
                    local.tee 8
                    br_if 0 (;@7;)
                  end
                end
                local.get 9
                i32.const 3
                i32.shl
                local.set 12
                block ;; label = @6
                  local.get 1
                  i32.load
                  local.get 1
                  i32.load offset=8
                  local.tee 5
                  i32.sub
                  local.get 3
                  i32.ge_u
                  br_if 0 (;@6;)
                  local.get 1
                  local.get 5
                  local.get 3
                  call $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve21do_reserve_and_handle17h38d580c29fc2385cE
                  local.get 1
                  i32.load offset=8
                  local.set 5
                end
                local.get 10
                local.get 12
                i32.add
                local.set 7
                local.get 10
                local.set 8
                loop ;; label = @6
                  local.get 8
                  i32.load
                  local.set 2
                  block ;; label = @7
                    local.get 1
                    i32.load
                    local.get 5
                    i32.sub
                    local.get 8
                    i32.const 4
                    i32.add
                    i32.load
                    local.tee 6
                    i32.ge_u
                    br_if 0 (;@7;)
                    local.get 1
                    local.get 5
                    local.get 6
                    call $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve21do_reserve_and_handle17h38d580c29fc2385cE
                    local.get 1
                    i32.load offset=8
                    local.set 5
                  end
                  local.get 1
                  i32.load offset=4
                  local.get 5
                  i32.add
                  local.get 2
                  local.get 6
                  call $memcpy
                  drop
                  local.get 1
                  local.get 5
                  local.get 6
                  i32.add
                  local.tee 5
                  i32.store offset=8
                  local.get 8
                  i32.const 8
                  i32.add
                  local.tee 8
                  local.get 7
                  i32.ne
                  br_if 0 (;@6;)
                end
                block ;; label = @6
                  local.get 3
                  br_if 0 (;@6;)
                  local.get 0
                  i32.const 1049124
                  i64.extend_i32_u
                  i64.const 32
                  i64.shl
                  i64.const 2
                  i64.or
                  i64.store align=4
                  br 3 (;@3;)
                end
                local.get 10
                i32.const 4
                i32.add
                local.set 5
                i32.const 0
                local.set 8
                i32.const 0
                local.set 6
                block ;; label = @6
                  loop ;; label = @7
                    local.get 5
                    i32.load
                    local.get 6
                    i32.add
                    local.tee 2
                    local.get 3
                    i32.gt_u
                    br_if 1 (;@6;)
                    local.get 5
                    i32.const 8
                    i32.add
                    local.set 5
                    local.get 8
                    i32.const 1
                    i32.add
                    local.set 8
                    local.get 2
                    local.set 6
                    local.get 12
                    i32.const -8
                    i32.add
                    local.tee 12
                    br_if 0 (;@7;)
                  end
                  local.get 2
                  local.set 6
                  local.get 11
                  local.set 8
                end
                local.get 9
                local.get 8
                i32.lt_u
                br_if 3 (;@2;)
                local.get 10
                local.get 8
                i32.const 3
                i32.shl
                local.tee 2
                i32.add
                local.set 5
                block ;; label = @6
                  block ;; label = @7
                    local.get 9
                    local.get 8
                    i32.ne
                    br_if 0 (;@7;)
                    local.get 3
                    local.get 6
                    i32.eq
                    br_if 1 (;@6;)
                    local.get 4
                    i32.const 20
                    i32.add
                    i32.const 1
                    i32.store
                    local.get 4
                    i32.const 28
                    i32.add
                    i32.const 0
                    i32.store
                    local.get 4
                    i32.const 1049056
                    i32.store offset=16
                    local.get 4
                    i32.const 1048664
                    i32.store offset=24
                    local.get 4
                    i32.const 0
                    i32.store offset=8
                    local.get 4
                    i32.const 8
                    i32.add
                    i32.const 1049064
                    call $_ZN4core9panicking9panic_fmt17hf4ce15c1b219b988E
                    unreachable
                  end
                  local.get 10
                  local.get 2
                  i32.add
                  local.tee 2
                  i32.load offset=4
                  local.tee 7
                  local.get 3
                  local.get 6
                  i32.sub
                  local.tee 6
                  i32.lt_u
                  br_if 5 (;@1;)
                  local.get 2
                  i32.const 4
                  i32.add
                  local.get 7
                  local.get 6
                  i32.sub
                  i32.store
                  local.get 5
                  local.get 5
                  i32.load
                  local.get 6
                  i32.add
                  i32.store
                end
                local.get 5
                local.set 10
                local.get 9
                local.get 8
                i32.sub
                local.tee 9
                br_if 0 (;@5;)
              end
            end
            local.get 0
            i32.const 4
            i32.store8
          end
          local.get 4
          i32.const 32
          i32.add
          global.set $__stack_pointer
          return
        end
        local.get 8
        local.get 9
        i32.const 1049000
        call $_ZN4core5slice5index26slice_start_index_len_fail17h4b6807d169d5a5ccE
        unreachable
      end
      local.get 4
      i32.const 20
      i32.add
      i32.const 1
      i32.store
      local.get 4
      i32.const 28
      i32.add
      i32.const 0
      i32.store
      local.get 4
      i32.const 1050356
      i32.store offset=16
      local.get 4
      i32.const 1048664
      i32.store offset=24
      local.get 4
      i32.const 0
      i32.store offset=8
      local.get 4
      i32.const 8
      i32.add
      i32.const 1050396
      call $_ZN4core9panicking9panic_fmt17hf4ce15c1b219b988E
      unreachable
    )
    (func $_ZN3std2io5Write9write_fmt17h80e619ee06f416f6E (;63;) (type 2) (param i32 i32 i32)
      (local i32)
      global.get $__stack_pointer
      i32.const 48
      i32.sub
      local.tee 3
      global.set $__stack_pointer
      local.get 3
      i32.const 4
      i32.store8 offset=8
      local.get 3
      local.get 1
      i32.store offset=16
      local.get 3
      i32.const 24
      i32.add
      i32.const 16
      i32.add
      local.get 2
      i32.const 16
      i32.add
      i64.load align=4
      i64.store
      local.get 3
      i32.const 24
      i32.add
      i32.const 8
      i32.add
      local.get 2
      i32.const 8
      i32.add
      i64.load align=4
      i64.store
      local.get 3
      local.get 2
      i64.load align=4
      i64.store offset=24
      block ;; label = @1
        block ;; label = @2
          local.get 3
          i32.const 8
          i32.add
          i32.const 1049164
          local.get 3
          i32.const 24
          i32.add
          call $_ZN4core3fmt5write17h7558535140974479E
          i32.eqz
          br_if 0 (;@2;)
          block ;; label = @3
            local.get 3
            i32.load8_u offset=8
            i32.const 4
            i32.ne
            br_if 0 (;@3;)
            local.get 0
            i32.const 1049152
            i32.store offset=4
            local.get 0
            i32.const 2
            i32.store
            br 2 (;@1;)
          end
          local.get 0
          local.get 3
          i64.load offset=8
          i64.store align=4
          br 1 (;@1;)
        end
        local.get 0
        i32.const 4
        i32.store8
        local.get 3
        i32.load8_u offset=8
        i32.const 3
        i32.ne
        br_if 0 (;@1;)
        local.get 3
        i32.load offset=12
        local.tee 2
        i32.load
        local.get 2
        i32.load offset=4
        i32.load
        call_indirect (type $.rodata)
        block ;; label = @2
          local.get 2
          i32.load offset=4
          local.tee 0
          i32.const 4
          i32.add
          i32.load
          local.tee 1
          i32.eqz
          br_if 0 (;@2;)
          local.get 2
          i32.load
          local.get 1
          local.get 0
          i32.const 8
          i32.add
          i32.load
          call $__rust_dealloc
        end
        local.get 3
        i32.load offset=12
        i32.const 12
        i32.const 4
        call $__rust_dealloc
      end
      local.get 3
      i32.const 48
      i32.add
      global.set $__stack_pointer
    )
    (func $_ZN80_$LT$std..io..Write..write_fmt..Adapter$LT$T$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17hc76d2b6fa3488422E (;64;) (type 4) (param i32 i32 i32) (result i32)
      (local i32)
      block ;; label = @1
        local.get 0
        i32.load offset=8
        local.tee 0
        i32.load
        local.get 0
        i32.load offset=8
        local.tee 3
        i32.sub
        local.get 2
        i32.ge_u
        br_if 0 (;@1;)
        local.get 0
        local.get 3
        local.get 2
        call $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve21do_reserve_and_handle17h38d580c29fc2385cE
        local.get 0
        i32.load offset=8
        local.set 3
      end
      local.get 0
      i32.load offset=4
      local.get 3
      i32.add
      local.get 1
      local.get 2
      call $memcpy
      drop
      local.get 0
      local.get 3
      local.get 2
      i32.add
      i32.store offset=8
      i32.const 0
    )
    (func $_ZN3std5panic19get_backtrace_style17h1cc96ffe00155ad1E (;65;) (type 8) (result i32)
      (local i32 i32 i32 i32)
      global.get $__stack_pointer
      i32.const 16
      i32.sub
      local.tee 0
      global.set $__stack_pointer
      i32.const 0
      local.set 1
      block ;; label = @1
        block ;; label = @2
          block ;; label = @3
            block ;; label = @4
              block ;; label = @5
                i32.const 0
                i32.load offset=1051480
                br_table 3 (;@2;) 4 (;@1;) 1 (;@4;) 2 (;@3;) 0 (;@5;)
              end
              i32.const 1048727
              i32.const 40
              i32.const 1049236
              call $_ZN4core9panicking5panic17h8fa39a92dcc1b069E
              unreachable
            end
            i32.const 1
            local.set 1
            br 2 (;@1;)
          end
          i32.const 2
          local.set 1
          br 1 (;@1;)
        end
        local.get 0
        i32.const 1048916
        i32.const 14
        call $_ZN3std3env7_var_os17hcf2213876bb081deE
        block ;; label = @2
          block ;; label = @3
            local.get 0
            i32.load offset=4
            local.tee 1
            i32.eqz
            br_if 0 (;@3;)
            i32.const 0
            local.set 2
            local.get 0
            i32.load
            local.set 3
            block ;; label = @4
              block ;; label = @5
                block ;; label = @6
                  local.get 0
                  i32.load offset=8
                  i32.const -1
                  i32.add
                  br_table 0 (;@6;) 2 (;@4;) 2 (;@4;) 1 (;@5;) 2 (;@4;)
                end
                i32.const -2
                i32.const 0
                local.get 1
                i32.load8_u
                i32.const 48
                i32.eq
                select
                local.set 2
                br 1 (;@4;)
              end
              local.get 1
              i32.load align=1
              i32.const 1819047270
              i32.eq
              local.set 2
            end
            block ;; label = @4
              local.get 3
              i32.eqz
              br_if 0 (;@4;)
              local.get 1
              local.get 3
              i32.const 1
              call $__rust_dealloc
            end
            i32.const 1
            local.set 3
            i32.const 0
            local.set 1
            block ;; label = @4
              local.get 2
              i32.const 3
              i32.and
              br_table 2 (;@2;) 0 (;@4;) 1 (;@3;) 2 (;@2;)
            end
            i32.const 2
            local.set 3
            i32.const 1
            local.set 1
            br 1 (;@2;)
          end
          i32.const 3
          local.set 3
          i32.const 2
          local.set 1
        end
        i32.const 0
        local.get 3
        i32.store offset=1051480
      end
      local.get 0
      i32.const 16
      i32.add
      global.set $__stack_pointer
      local.get 1
    )
    (func $_ZN3std7process5abort17hced5683ecdf4a442E (;66;) (type 7)
      call $_ZN3std3sys4wasi14abort_internal17h761afe555b0460d5E
      unreachable
    )
    (func $_ZN3std10sys_common9backtrace5print17hfed6eeff6e740e7cE (;67;) (type 9) (param i32 i32 i32 i32)
      (local i32 i32 i32)
      global.get $__stack_pointer
      i32.const 48
      i32.sub
      local.tee 4
      global.set $__stack_pointer
      i32.const 0
      i32.load8_u offset=1051484
      local.set 5
      i32.const 1
      local.set 6
      i32.const 0
      i32.const 1
      i32.store8 offset=1051484
      local.get 4
      local.get 5
      i32.store8 offset=32
      block ;; label = @1
        local.get 5
        br_if 0 (;@1;)
        block ;; label = @2
          i32.const 0
          i32.load offset=1051508
          i32.const 2147483647
          i32.and
          i32.eqz
          br_if 0 (;@2;)
          call $_ZN3std9panicking11panic_count17is_zero_slow_path17he73cea3e605a507aE
          local.set 6
        end
        local.get 2
        i32.const 36
        i32.add
        i32.load
        local.set 5
        local.get 4
        i32.const 20
        i32.add
        i32.const 1
        i32.store
        local.get 4
        i32.const 28
        i32.add
        i32.const 1
        i32.store
        local.get 4
        i32.const 1048932
        i32.store offset=16
        local.get 4
        i32.const 0
        i32.store offset=8
        local.get 4
        i32.const 1
        i32.store offset=36
        local.get 4
        local.get 3
        i32.store8 offset=47
        local.get 4
        local.get 4
        i32.const 32
        i32.add
        i32.store offset=24
        local.get 4
        local.get 4
        i32.const 47
        i32.add
        i32.store offset=32
        local.get 0
        local.get 1
        local.get 4
        i32.const 8
        i32.add
        local.get 5
        call_indirect (type 2)
        block ;; label = @2
          local.get 6
          i32.eqz
          br_if 0 (;@2;)
          i32.const 0
          i32.load offset=1051508
          i32.const 2147483647
          i32.and
          i32.eqz
          br_if 0 (;@2;)
          call $_ZN3std9panicking11panic_count17is_zero_slow_path17he73cea3e605a507aE
          br_if 0 (;@2;)
          i32.const 0
          i32.const 1
          i32.store8 offset=1051485
        end
        i32.const 0
        i32.const 0
        i32.store8 offset=1051484
        local.get 4
        i32.const 48
        i32.add
        global.set $__stack_pointer
        return
      end
      local.get 4
      i32.const 0
      i32.store offset=28
      local.get 4
      i32.const 1048664
      i32.store offset=24
      local.get 4
      i32.const 1
      i32.store offset=20
      local.get 4
      i32.const 1050444
      i32.store offset=16
      local.get 4
      i32.const 0
      i32.store offset=8
      local.get 4
      i32.const 32
      i32.add
      local.get 4
      i32.const 8
      i32.add
      call $_ZN4core9panicking13assert_failed17hd77b42a9e8961af9E
      unreachable
    )
    (func $_ZN91_$LT$std..sys_common..backtrace.._print..DisplayBacktrace$u20$as$u20$core..fmt..Display$GT$3fmt17h6e8846cac7369070E (;68;) (type 5) (param i32 i32) (result i32)
      (local i32 i32 i32 i32 i32)
      global.get $__stack_pointer
      i32.const 32
      i32.sub
      local.tee 2
      global.set $__stack_pointer
      local.get 0
      i32.load8_u
      local.set 3
      local.get 2
      i32.const 8
      i32.add
      call $_ZN3std3env11current_dir17hb9d80cddcbfbdb2eE
      block ;; label = @1
        block ;; label = @2
          local.get 2
          i32.load offset=8
          br_if 0 (;@2;)
          local.get 2
          i32.const 16
          i32.add
          i32.load
          local.set 0
          local.get 2
          i32.load offset=12
          local.set 4
          br 1 (;@1;)
        end
        i32.const 0
        local.set 0
        block ;; label = @2
          local.get 2
          i32.load8_u offset=12
          i32.const 3
          i32.ne
          br_if 0 (;@2;)
          local.get 2
          i32.const 8
          i32.add
          i32.const 8
          i32.add
          i32.load
          local.tee 5
          i32.load
          local.get 5
          i32.load offset=4
          i32.load
          call_indirect (type $.rodata)
          block ;; label = @3
            local.get 5
            i32.load offset=4
            local.tee 4
            i32.const 4
            i32.add
            i32.load
            local.tee 6
            i32.eqz
            br_if 0 (;@3;)
            local.get 5
            i32.load
            local.get 6
            local.get 4
            i32.const 8
            i32.add
            i32.load
            call $__rust_dealloc
          end
          local.get 5
          i32.const 12
          i32.const 4
          call $__rust_dealloc
        end
      end
      i32.const 1
      local.set 5
      local.get 2
      i32.const 20
      i32.add
      i32.const 1
      i32.store
      local.get 2
      i32.const 28
      i32.add
      i32.const 0
      i32.store
      local.get 2
      i32.const 1049340
      i32.store offset=16
      local.get 2
      i32.const 1048664
      i32.store offset=24
      local.get 2
      i32.const 0
      i32.store offset=8
      block ;; label = @1
        block ;; label = @2
          block ;; label = @3
            block ;; label = @4
              local.get 1
              local.get 2
              i32.const 8
              i32.add
              call $_ZN4core3fmt9Formatter9write_fmt17hdae39eebc223cfffE
              br_if 0 (;@4;)
              local.get 3
              i32.const 255
              i32.and
              br_if 1 (;@3;)
              local.get 2
              i32.const 20
              i32.add
              i32.const 1
              i32.store
              local.get 2
              i32.const 28
              i32.add
              i32.const 0
              i32.store
              local.get 2
              i32.const 1049436
              i32.store offset=16
              local.get 2
              i32.const 1048664
              i32.store offset=24
              local.get 2
              i32.const 0
              i32.store offset=8
              local.get 1
              local.get 2
              i32.const 8
              i32.add
              call $_ZN4core3fmt9Formatter9write_fmt17hdae39eebc223cfffE
              i32.eqz
              br_if 1 (;@3;)
            end
            local.get 0
            i32.eqz
            br_if 2 (;@1;)
            local.get 4
            i32.eqz
            br_if 2 (;@1;)
            br 1 (;@2;)
          end
          i32.const 0
          local.set 5
          local.get 0
          i32.eqz
          br_if 1 (;@1;)
          local.get 4
          i32.eqz
          br_if 1 (;@1;)
        end
        local.get 0
        local.get 4
        i32.const 1
        call $__rust_dealloc
      end
      local.get 2
      i32.const 32
      i32.add
      global.set $__stack_pointer
      local.get 5
    )
    (func $_ZN3std10sys_common9backtrace26__rust_end_short_backtrace17h426b71926848cb31E (;69;) (type $.rodata) (param i32)
      local.get 0
      call $_ZN3std9panicking19begin_panic_handler28_$u7b$$u7b$closure$u7d$$u7d$17h749586aa4ef76f6fE
      unreachable
    )
    (func $_ZN3std9panicking19begin_panic_handler28_$u7b$$u7b$closure$u7d$$u7d$17h749586aa4ef76f6fE (;70;) (type $.rodata) (param i32)
      (local i32 i32 i32)
      global.get $__stack_pointer
      i32.const 16
      i32.sub
      local.tee 1
      global.set $__stack_pointer
      local.get 0
      i32.load
      local.tee 2
      i32.const 20
      i32.add
      i32.load
      local.set 3
      block ;; label = @1
        block ;; label = @2
          block ;; label = @3
            block ;; label = @4
              local.get 2
              i32.const 12
              i32.add
              i32.load
              br_table 0 (;@4;) 1 (;@3;) 3 (;@1;)
            end
            local.get 3
            br_if 2 (;@1;)
            i32.const 1048664
            local.set 2
            i32.const 0
            local.set 3
            br 1 (;@2;)
          end
          local.get 3
          br_if 1 (;@1;)
          local.get 2
          i32.load offset=8
          local.tee 2
          i32.load offset=4
          local.set 3
          local.get 2
          i32.load
          local.set 2
        end
        local.get 1
        local.get 3
        i32.store offset=4
        local.get 1
        local.get 2
        i32.store
        local.get 1
        i32.const 1050008
        local.get 0
        i32.load offset=4
        local.tee 2
        call $_ZN4core5panic10panic_info9PanicInfo7message17hbfef73d098d3c2a5E
        local.get 0
        i32.load offset=8
        local.get 2
        call $_ZN4core5panic10panic_info9PanicInfo10can_unwind17h23da1c404642e99aE
        call $_ZN3std9panicking20rust_panic_with_hook17h1c67ce6bc4eb31b7E
        unreachable
      end
      local.get 1
      i32.const 0
      i32.store offset=4
      local.get 1
      local.get 2
      i32.store offset=12
      local.get 1
      i32.const 1049988
      local.get 0
      i32.load offset=4
      local.tee 2
      call $_ZN4core5panic10panic_info9PanicInfo7message17hbfef73d098d3c2a5E
      local.get 0
      i32.load offset=8
      local.get 2
      call $_ZN4core5panic10panic_info9PanicInfo10can_unwind17h23da1c404642e99aE
      call $_ZN3std9panicking20rust_panic_with_hook17h1c67ce6bc4eb31b7E
      unreachable
    )
    (func $_ZN3std5alloc24default_alloc_error_hook17h1faf522cf81e449fE (;71;) (type 3) (param i32 i32)
      (local i32 i32 i32)
      global.get $__stack_pointer
      i32.const 64
      i32.sub
      local.tee 2
      global.set $__stack_pointer
      block ;; label = @1
        i32.const 0
        i32.load8_u offset=1051464
        br_if 0 (;@1;)
        local.get 2
        i32.const 2
        i32.store offset=4
        local.get 2
        local.get 0
        i32.store offset=12
        local.get 2
        local.get 2
        i32.const 12
        i32.add
        i32.store
        local.get 2
        i32.const 4
        i32.store8 offset=16
        local.get 2
        local.get 2
        i32.const 56
        i32.add
        i32.store offset=24
        local.get 2
        i32.const 1
        i32.store offset=52
        local.get 2
        i32.const 2
        i32.store offset=44
        local.get 2
        i32.const 1049612
        i32.store offset=40
        local.get 2
        i32.const 0
        i32.store offset=32
        local.get 2
        local.get 2
        i32.store offset=48
        local.get 2
        i32.const 16
        i32.add
        i32.const 1049188
        local.get 2
        i32.const 32
        i32.add
        call $_ZN4core3fmt5write17h7558535140974479E
        local.set 0
        local.get 2
        i32.load8_u offset=16
        local.set 3
        block ;; label = @2
          block ;; label = @3
            local.get 0
            i32.eqz
            br_if 0 (;@3;)
            local.get 3
            i32.const 255
            i32.and
            i32.const 4
            i32.eq
            br_if 1 (;@2;)
            local.get 2
            i32.load8_u offset=16
            i32.const 3
            i32.ne
            br_if 1 (;@2;)
            local.get 2
            i32.load offset=20
            local.tee 0
            i32.load
            local.get 0
            i32.load offset=4
            i32.load
            call_indirect (type $.rodata)
            block ;; label = @4
              local.get 0
              i32.load offset=4
              local.tee 3
              i32.const 4
              i32.add
              i32.load
              local.tee 4
              i32.eqz
              br_if 0 (;@4;)
              local.get 0
              i32.load
              local.get 4
              local.get 3
              i32.const 8
              i32.add
              i32.load
              call $__rust_dealloc
            end
            local.get 0
            i32.const 12
            i32.const 4
            call $__rust_dealloc
            br 1 (;@2;)
          end
          local.get 3
          i32.const 255
          i32.and
          i32.const 3
          i32.ne
          br_if 0 (;@2;)
          local.get 2
          i32.load offset=20
          local.tee 0
          i32.load
          local.get 0
          i32.load offset=4
          i32.load
          call_indirect (type $.rodata)
          block ;; label = @3
            local.get 0
            i32.load offset=4
            local.tee 3
            i32.const 4
            i32.add
            i32.load
            local.tee 4
            i32.eqz
            br_if 0 (;@3;)
            local.get 0
            i32.load
            local.get 4
            local.get 3
            i32.const 8
            i32.add
            i32.load
            call $__rust_dealloc
          end
          local.get 2
          i32.load offset=20
          i32.const 12
          i32.const 4
          call $__rust_dealloc
        end
        local.get 2
        i32.const 64
        i32.add
        global.set $__stack_pointer
        return
      end
      local.get 2
      i32.const 44
      i32.add
      i32.const 2
      i32.store
      local.get 2
      i32.const 52
      i32.add
      i32.const 1
      i32.store
      local.get 2
      i32.const 1049540
      i32.store offset=40
      local.get 2
      i32.const 0
      i32.store offset=32
      local.get 2
      i32.const 2
      i32.store offset=20
      local.get 2
      local.get 0
      i32.store
      local.get 2
      local.get 2
      i32.const 16
      i32.add
      i32.store offset=48
      local.get 2
      local.get 2
      i32.store offset=16
      local.get 2
      i32.const 32
      i32.add
      i32.const 1049580
      call $_ZN4core9panicking9panic_fmt17hf4ce15c1b219b988E
      unreachable
    )
    (func $__rdl_alloc (;72;) (type 5) (param i32 i32) (result i32)
      block ;; label = @1
        block ;; label = @2
          local.get 1
          i32.const 8
          i32.gt_u
          br_if 0 (;@2;)
          local.get 1
          local.get 0
          i32.le_u
          br_if 1 (;@1;)
        end
        local.get 1
        local.get 0
        call $aligned_alloc
        return
      end
      local.get 0
      call $malloc
    )
    (func $__rdl_dealloc (;73;) (type 2) (param i32 i32 i32)
      local.get 0
      call $free
    )
    (func $__rdl_realloc (;74;) (type 6) (param i32 i32 i32 i32) (result i32)
      block ;; label = @1
        block ;; label = @2
          local.get 2
          i32.const 8
          i32.gt_u
          br_if 0 (;@2;)
          local.get 2
          local.get 3
          i32.le_u
          br_if 1 (;@1;)
        end
        block ;; label = @2
          local.get 2
          local.get 3
          call $aligned_alloc
          local.tee 2
          br_if 0 (;@2;)
          i32.const 0
          return
        end
        local.get 2
        local.get 0
        local.get 1
        local.get 3
        local.get 1
        local.get 3
        i32.lt_u
        select
        call $memcpy
        local.set 3
        local.get 0
        call $free
        local.get 3
        return
      end
      local.get 0
      local.get 3
      call $realloc
    )
    (func $_ZN3std9panicking12default_hook28_$u7b$$u7b$closure$u7d$$u7d$17h623f4dc81025ab51E (;75;) (type 2) (param i32 i32 i32)
      (local i32 i32 i32 i32 i32)
      global.get $__stack_pointer
      i32.const 64
      i32.sub
      local.tee 3
      global.set $__stack_pointer
      local.get 3
      i32.const 16
      i32.add
      i32.const 12
      i32.add
      i32.const 4
      i32.store
      local.get 3
      i32.const 16
      i32.add
      i32.const 20
      i32.add
      i32.const 3
      i32.store
      local.get 3
      i32.const 40
      i32.add
      i32.const 20
      i32.add
      i32.const 3
      i32.store
      local.get 3
      i32.const 40
      i32.add
      i32.const 12
      i32.add
      i32.const 4
      i32.store
      local.get 3
      i32.const 1049804
      i32.store offset=24
      local.get 3
      i32.const 0
      i32.store offset=16
      local.get 3
      i32.const 4
      i32.store offset=44
      local.get 3
      local.get 0
      i32.load offset=8
      i32.store offset=56
      local.get 3
      local.get 0
      i32.load offset=4
      i32.store offset=48
      local.get 3
      local.get 0
      i32.load
      i32.store offset=40
      local.get 3
      local.get 3
      i32.const 40
      i32.add
      i32.store offset=32
      local.get 3
      i32.const 8
      i32.add
      local.get 1
      local.get 3
      i32.const 16
      i32.add
      local.get 2
      i32.load offset=36
      local.tee 4
      call_indirect (type 2)
      block ;; label = @1
        local.get 3
        i32.load8_u offset=8
        i32.const 3
        i32.ne
        br_if 0 (;@1;)
        local.get 3
        i32.load offset=12
        local.tee 5
        i32.load
        local.get 5
        i32.load offset=4
        i32.load
        call_indirect (type $.rodata)
        block ;; label = @2
          local.get 5
          i32.load offset=4
          local.tee 6
          i32.const 4
          i32.add
          i32.load
          local.tee 7
          i32.eqz
          br_if 0 (;@2;)
          local.get 5
          i32.load
          local.get 7
          local.get 6
          i32.const 8
          i32.add
          i32.load
          call $__rust_dealloc
        end
        local.get 5
        i32.const 12
        i32.const 4
        call $__rust_dealloc
      end
      block ;; label = @1
        local.get 0
        i32.load offset=12
        i32.load8_u
        local.tee 0
        i32.const 3
        i32.eq
        br_if 0 (;@1;)
        block ;; label = @2
          block ;; label = @3
            block ;; label = @4
              local.get 0
              br_table 0 (;@4;) 1 (;@3;) 2 (;@2;) 0 (;@4;)
            end
            local.get 3
            i32.const 40
            i32.add
            local.get 1
            local.get 2
            i32.const 0
            call $_ZN3std10sys_common9backtrace5print17hfed6eeff6e740e7cE
            local.get 3
            i32.load8_u offset=40
            i32.const 3
            i32.ne
            br_if 2 (;@1;)
            local.get 3
            i32.load offset=44
            local.tee 0
            i32.load
            local.get 0
            i32.load offset=4
            i32.load
            call_indirect (type $.rodata)
            block ;; label = @4
              local.get 0
              i32.load offset=4
              local.tee 1
              i32.const 4
              i32.add
              i32.load
              local.tee 2
              i32.eqz
              br_if 0 (;@4;)
              local.get 0
              i32.load
              local.get 2
              local.get 1
              i32.const 8
              i32.add
              i32.load
              call $__rust_dealloc
            end
            local.get 0
            i32.const 12
            i32.const 4
            call $__rust_dealloc
            br 2 (;@1;)
          end
          local.get 3
          i32.const 40
          i32.add
          local.get 1
          local.get 2
          i32.const 1
          call $_ZN3std10sys_common9backtrace5print17hfed6eeff6e740e7cE
          local.get 3
          i32.load8_u offset=40
          i32.const 3
          i32.ne
          br_if 1 (;@1;)
          local.get 3
          i32.load offset=44
          local.tee 0
          i32.load
          local.get 0
          i32.load offset=4
          i32.load
          call_indirect (type $.rodata)
          block ;; label = @3
            local.get 0
            i32.load offset=4
            local.tee 1
            i32.const 4
            i32.add
            i32.load
            local.tee 2
            i32.eqz
            br_if 0 (;@3;)
            local.get 0
            i32.load
            local.get 2
            local.get 1
            i32.const 8
            i32.add
            i32.load
            call $__rust_dealloc
          end
          local.get 0
          i32.const 12
          i32.const 4
          call $__rust_dealloc
          br 1 (;@1;)
        end
        i32.const 0
        i32.load8_u offset=1051452
        local.set 0
        i32.const 0
        i32.const 0
        i32.store8 offset=1051452
        local.get 0
        i32.eqz
        br_if 0 (;@1;)
        local.get 3
        i32.const 52
        i32.add
        i32.const 1
        i32.store
        local.get 3
        i32.const 60
        i32.add
        i32.const 0
        i32.store
        local.get 3
        i32.const 1049916
        i32.store offset=48
        local.get 3
        i32.const 1048664
        i32.store offset=56
        local.get 3
        i32.const 0
        i32.store offset=40
        local.get 3
        i32.const 16
        i32.add
        local.get 1
        local.get 3
        i32.const 40
        i32.add
        local.get 4
        call_indirect (type 2)
        local.get 3
        i32.load8_u offset=16
        i32.const 3
        i32.ne
        br_if 0 (;@1;)
        local.get 3
        i32.load offset=20
        local.tee 0
        i32.load
        local.get 0
        i32.load offset=4
        i32.load
        call_indirect (type $.rodata)
        block ;; label = @2
          local.get 0
          i32.load offset=4
          local.tee 1
          i32.const 4
          i32.add
          i32.load
          local.tee 2
          i32.eqz
          br_if 0 (;@2;)
          local.get 0
          i32.load
          local.get 2
          local.get 1
          i32.const 8
          i32.add
          i32.load
          call $__rust_dealloc
        end
        local.get 0
        i32.const 12
        i32.const 4
        call $__rust_dealloc
      end
      local.get 3
      i32.const 64
      i32.add
      global.set $__stack_pointer
    )
    (func $rust_begin_unwind (;76;) (type $.rodata) (param i32)
      (local i32 i32 i32)
      global.get $__stack_pointer
      i32.const 16
      i32.sub
      local.tee 1
      global.set $__stack_pointer
      block ;; label = @1
        block ;; label = @2
          local.get 0
          call $_ZN4core5panic10panic_info9PanicInfo8location17h73a8e3c8110f5f4eE
          local.tee 2
          i32.eqz
          br_if 0 (;@2;)
          local.get 0
          call $_ZN4core5panic10panic_info9PanicInfo7message17hbfef73d098d3c2a5E
          local.tee 3
          i32.eqz
          br_if 1 (;@1;)
          local.get 1
          local.get 2
          i32.store offset=8
          local.get 1
          local.get 0
          i32.store offset=4
          local.get 1
          local.get 3
          i32.store
          local.get 1
          call $_ZN3std10sys_common9backtrace26__rust_end_short_backtrace17h426b71926848cb31E
          unreachable
        end
        i32.const 1048684
        i32.const 43
        i32.const 1049940
        call $_ZN4core9panicking5panic17h8fa39a92dcc1b069E
        unreachable
      end
      i32.const 1048684
      i32.const 43
      i32.const 1049924
      call $_ZN4core9panicking5panic17h8fa39a92dcc1b069E
      unreachable
    )
    (func $_ZN90_$LT$std..panicking..begin_panic_handler..PanicPayload$u20$as$u20$core..panic..BoxMeUp$GT$8take_box17h0fa45657b266d809E (;77;) (type 3) (param i32 i32)
      (local i32 i32 i32 i64)
      global.get $__stack_pointer
      i32.const 48
      i32.sub
      local.tee 2
      global.set $__stack_pointer
      block ;; label = @1
        local.get 1
        i32.load offset=4
        br_if 0 (;@1;)
        local.get 1
        i32.load offset=12
        local.set 3
        local.get 2
        i32.const 8
        i32.add
        i32.const 8
        i32.add
        local.tee 4
        i32.const 0
        i32.store
        local.get 2
        i64.const 4294967296
        i64.store offset=8
        local.get 2
        local.get 2
        i32.const 8
        i32.add
        i32.store offset=20
        local.get 2
        i32.const 24
        i32.add
        i32.const 16
        i32.add
        local.get 3
        i32.const 16
        i32.add
        i64.load align=4
        i64.store
        local.get 2
        i32.const 24
        i32.add
        i32.const 8
        i32.add
        local.get 3
        i32.const 8
        i32.add
        i64.load align=4
        i64.store
        local.get 2
        local.get 3
        i64.load align=4
        i64.store offset=24
        local.get 2
        i32.const 20
        i32.add
        i32.const 1048592
        local.get 2
        i32.const 24
        i32.add
        call $_ZN4core3fmt5write17h7558535140974479E
        drop
        local.get 1
        i32.const 8
        i32.add
        local.get 4
        i32.load
        i32.store
        local.get 1
        local.get 2
        i64.load offset=8
        i64.store align=4
      end
      local.get 1
      i64.load align=4
      local.set 5
      local.get 1
      i64.const 4294967296
      i64.store align=4
      local.get 2
      i32.const 24
      i32.add
      i32.const 8
      i32.add
      local.tee 3
      local.get 1
      i32.const 8
      i32.add
      local.tee 1
      i32.load
      i32.store
      local.get 1
      i32.const 0
      i32.store
      local.get 2
      local.get 5
      i64.store offset=24
      block ;; label = @1
        i32.const 12
        i32.const 4
        call $__rust_alloc
        local.tee 1
        br_if 0 (;@1;)
        i32.const 12
        i32.const 4
        call $_ZN5alloc5alloc18handle_alloc_error17h680df29e672ed57dE
        unreachable
      end
      local.get 1
      local.get 2
      i64.load offset=24
      i64.store align=4
      local.get 1
      i32.const 8
      i32.add
      local.get 3
      i32.load
      i32.store
      local.get 0
      i32.const 1049956
      i32.store offset=4
      local.get 0
      local.get 1
      i32.store
      local.get 2
      i32.const 48
      i32.add
      global.set $__stack_pointer
    )
    (func $_ZN90_$LT$std..panicking..begin_panic_handler..PanicPayload$u20$as$u20$core..panic..BoxMeUp$GT$3get17h9ce6f22ca87c10fcE (;78;) (type 3) (param i32 i32)
      (local i32 i32 i32)
      global.get $__stack_pointer
      i32.const 48
      i32.sub
      local.tee 2
      global.set $__stack_pointer
      block ;; label = @1
        local.get 1
        i32.load offset=4
        br_if 0 (;@1;)
        local.get 1
        i32.load offset=12
        local.set 3
        local.get 2
        i32.const 8
        i32.add
        i32.const 8
        i32.add
        local.tee 4
        i32.const 0
        i32.store
        local.get 2
        i64.const 4294967296
        i64.store offset=8
        local.get 2
        local.get 2
        i32.const 8
        i32.add
        i32.store offset=20
        local.get 2
        i32.const 24
        i32.add
        i32.const 16
        i32.add
        local.get 3
        i32.const 16
        i32.add
        i64.load align=4
        i64.store
        local.get 2
        i32.const 24
        i32.add
        i32.const 8
        i32.add
        local.get 3
        i32.const 8
        i32.add
        i64.load align=4
        i64.store
        local.get 2
        local.get 3
        i64.load align=4
        i64.store offset=24
        local.get 2
        i32.const 20
        i32.add
        i32.const 1048592
        local.get 2
        i32.const 24
        i32.add
        call $_ZN4core3fmt5write17h7558535140974479E
        drop
        local.get 1
        i32.const 8
        i32.add
        local.get 4
        i32.load
        i32.store
        local.get 1
        local.get 2
        i64.load offset=8
        i64.store align=4
      end
      local.get 0
      i32.const 1049956
      i32.store offset=4
      local.get 0
      local.get 1
      i32.store
      local.get 2
      i32.const 48
      i32.add
      global.set $__stack_pointer
    )
    (func $_ZN93_$LT$std..panicking..begin_panic_handler..StrPanicPayload$u20$as$u20$core..panic..BoxMeUp$GT$8take_box17h61beb27f3cc94c1dE (;79;) (type 3) (param i32 i32)
      (local i32 i32)
      local.get 1
      i32.load offset=4
      local.set 2
      local.get 1
      i32.load
      local.set 3
      block ;; label = @1
        i32.const 8
        i32.const 4
        call $__rust_alloc
        local.tee 1
        br_if 0 (;@1;)
        i32.const 8
        i32.const 4
        call $_ZN5alloc5alloc18handle_alloc_error17h680df29e672ed57dE
        unreachable
      end
      local.get 1
      local.get 2
      i32.store offset=4
      local.get 1
      local.get 3
      i32.store
      local.get 0
      i32.const 1049972
      i32.store offset=4
      local.get 0
      local.get 1
      i32.store
    )
    (func $_ZN93_$LT$std..panicking..begin_panic_handler..StrPanicPayload$u20$as$u20$core..panic..BoxMeUp$GT$3get17h4b420efd9f0fe8bdE (;80;) (type 3) (param i32 i32)
      local.get 0
      i32.const 1049972
      i32.store offset=4
      local.get 0
      local.get 1
      i32.store
    )
    (func $_ZN3std9panicking20rust_panic_with_hook17h1c67ce6bc4eb31b7E (;81;) (type 11) (param i32 i32 i32 i32 i32)
      (local i32 i32)
      global.get $__stack_pointer
      i32.const 112
      i32.sub
      local.tee 5
      global.set $__stack_pointer
      i32.const 0
      i32.const 0
      i32.load offset=1051508
      local.tee 6
      i32.const 1
      i32.add
      i32.store offset=1051508
      block ;; label = @1
        block ;; label = @2
          block ;; label = @3
            block ;; label = @4
              block ;; label = @5
                block ;; label = @6
                  block ;; label = @7
                    block ;; label = @8
                      local.get 6
                      i32.const -1
                      i32.gt_s
                      br_if 0 (;@8;)
                      local.get 6
                      i32.const 2147483647
                      i32.and
                      i32.const 2
                      i32.gt_u
                      br_if 2 (;@6;)
                      local.get 5
                      local.get 4
                      i32.store8 offset=64
                      local.get 5
                      local.get 3
                      i32.store offset=60
                      local.get 5
                      local.get 2
                      i32.store offset=56
                      local.get 5
                      i32.const 1050088
                      i32.store offset=52
                      local.get 5
                      i32.const 1048664
                      i32.store offset=48
                      local.get 5
                      i32.const 5
                      i32.store offset=76
                      local.get 5
                      local.get 5
                      i32.const 48
                      i32.add
                      i32.store offset=72
                      local.get 5
                      i32.const 4
                      i32.store8 offset=16
                      local.get 5
                      local.get 5
                      i32.const 104
                      i32.add
                      i32.store offset=24
                      local.get 5
                      i32.const 1
                      i32.store offset=100
                      local.get 5
                      i32.const 2
                      i32.store offset=92
                      local.get 5
                      i32.const 1050156
                      i32.store offset=88
                      local.get 5
                      i32.const 0
                      i32.store offset=80
                      local.get 5
                      local.get 5
                      i32.const 72
                      i32.add
                      i32.store offset=96
                      local.get 5
                      i32.const 16
                      i32.add
                      i32.const 1049188
                      local.get 5
                      i32.const 80
                      i32.add
                      call $_ZN4core3fmt5write17h7558535140974479E
                      local.set 6
                      local.get 5
                      i32.load8_u offset=16
                      local.set 4
                      local.get 6
                      i32.eqz
                      br_if 1 (;@7;)
                      local.get 4
                      i32.const 255
                      i32.and
                      i32.const 4
                      i32.eq
                      br_if 7 (;@1;)
                      local.get 5
                      i32.load8_u offset=16
                      i32.const 3
                      i32.ne
                      br_if 7 (;@1;)
                      local.get 5
                      i32.load offset=20
                      local.tee 5
                      i32.load
                      local.get 5
                      i32.load offset=4
                      i32.load
                      call_indirect (type $.rodata)
                      block ;; label = @9
                        local.get 5
                        i32.load offset=4
                        local.tee 6
                        i32.const 4
                        i32.add
                        i32.load
                        local.tee 4
                        i32.eqz
                        br_if 0 (;@9;)
                        local.get 5
                        i32.load
                        local.get 4
                        local.get 6
                        i32.const 8
                        i32.add
                        i32.load
                        call $__rust_dealloc
                      end
                      local.get 5
                      i32.const 12
                      i32.const 4
                      call $__rust_dealloc
                      call $_ZN3std3sys4wasi14abort_internal17h761afe555b0460d5E
                      unreachable
                    end
                    i32.const 0
                    i32.const 0
                    i32.load offset=1051536
                    i32.const 1
                    i32.add
                    local.tee 6
                    i32.store offset=1051536
                    local.get 6
                    i32.const 2
                    i32.gt_u
                    br_if 1 (;@6;)
                    local.get 5
                    local.get 4
                    i32.store8 offset=32
                    local.get 5
                    local.get 3
                    i32.store offset=28
                    local.get 5
                    local.get 2
                    i32.store offset=24
                    local.get 5
                    i32.const 1050088
                    i32.store offset=20
                    local.get 5
                    i32.const 1048664
                    i32.store offset=16
                    i32.const 0
                    i32.load offset=1051492
                    local.tee 3
                    i32.const -1
                    i32.le_s
                    br_if 4 (;@3;)
                    i32.const 0
                    local.get 3
                    i32.const 1
                    i32.add
                    i32.store offset=1051492
                    i32.const 0
                    i32.load offset=1051500
                    local.set 3
                    local.get 5
                    i32.const 8
                    i32.add
                    local.get 0
                    local.get 1
                    i32.load offset=16
                    call_indirect (type 3)
                    local.get 5
                    local.get 5
                    i64.load offset=8
                    i64.store offset=16
                    local.get 3
                    br_if 2 (;@5;)
                    local.get 5
                    i32.const 16
                    i32.add
                    call $_ZN3std9panicking12default_hook17h516b5ae38093c678E
                    br 3 (;@4;)
                  end
                  local.get 4
                  i32.const 255
                  i32.and
                  i32.const 3
                  i32.ne
                  br_if 5 (;@1;)
                  local.get 5
                  i32.load offset=20
                  local.tee 6
                  i32.load
                  local.get 6
                  i32.load offset=4
                  i32.load
                  call_indirect (type $.rodata)
                  block ;; label = @7
                    local.get 6
                    i32.load offset=4
                    local.tee 4
                    i32.const 4
                    i32.add
                    i32.load
                    local.tee 3
                    i32.eqz
                    br_if 0 (;@7;)
                    local.get 6
                    i32.load
                    local.get 3
                    local.get 4
                    i32.const 8
                    i32.add
                    i32.load
                    call $__rust_dealloc
                  end
                  local.get 5
                  i32.load offset=20
                  i32.const 12
                  i32.const 4
                  call $__rust_dealloc
                  call $_ZN3std3sys4wasi14abort_internal17h761afe555b0460d5E
                  unreachable
                end
                local.get 5
                i32.const 4
                i32.store8 offset=48
                local.get 5
                local.get 5
                i32.const 104
                i32.add
                i32.store offset=56
                local.get 5
                i32.const 0
                i32.store offset=100
                local.get 5
                i32.const 1048664
                i32.store offset=96
                local.get 5
                i32.const 1
                i32.store offset=92
                local.get 5
                i32.const 1050080
                i32.store offset=88
                local.get 5
                i32.const 0
                i32.store offset=80
                local.get 5
                i32.const 48
                i32.add
                i32.const 1049188
                local.get 5
                i32.const 80
                i32.add
                call $_ZN4core3fmt5write17h7558535140974479E
                local.set 6
                local.get 5
                i32.load8_u offset=48
                local.set 4
                block ;; label = @6
                  local.get 6
                  i32.eqz
                  br_if 0 (;@6;)
                  local.get 4
                  i32.const 255
                  i32.and
                  i32.const 4
                  i32.eq
                  br_if 5 (;@1;)
                  local.get 5
                  i32.load8_u offset=48
                  i32.const 3
                  i32.ne
                  br_if 5 (;@1;)
                  local.get 5
                  i32.load offset=52
                  local.tee 5
                  i32.load
                  local.get 5
                  i32.load offset=4
                  i32.load
                  call_indirect (type $.rodata)
                  block ;; label = @7
                    local.get 5
                    i32.load offset=4
                    local.tee 6
                    i32.const 4
                    i32.add
                    i32.load
                    local.tee 4
                    i32.eqz
                    br_if 0 (;@7;)
                    local.get 5
                    i32.load
                    local.get 4
                    local.get 6
                    i32.const 8
                    i32.add
                    i32.load
                    call $__rust_dealloc
                  end
                  local.get 5
                  i32.const 12
                  i32.const 4
                  call $__rust_dealloc
                  call $_ZN3std3sys4wasi14abort_internal17h761afe555b0460d5E
                  unreachable
                end
                local.get 4
                i32.const 255
                i32.and
                i32.const 3
                i32.ne
                br_if 4 (;@1;)
                local.get 5
                i32.load offset=52
                local.tee 6
                i32.load
                local.get 6
                i32.load offset=4
                i32.load
                call_indirect (type $.rodata)
                block ;; label = @6
                  local.get 6
                  i32.load offset=4
                  local.tee 4
                  i32.const 4
                  i32.add
                  i32.load
                  local.tee 3
                  i32.eqz
                  br_if 0 (;@6;)
                  local.get 6
                  i32.load
                  local.get 3
                  local.get 4
                  i32.const 8
                  i32.add
                  i32.load
                  call $__rust_dealloc
                end
                local.get 5
                i32.load offset=52
                i32.const 12
                i32.const 4
                call $__rust_dealloc
                br 4 (;@1;)
              end
              i32.const 0
              i32.load offset=1051500
              local.get 5
              i32.const 16
              i32.add
              i32.const 0
              i32.load offset=1051504
              i32.load offset=20
              call_indirect (type 3)
            end
            i32.const 0
            i32.const 0
            i32.load offset=1051492
            i32.const -1
            i32.add
            i32.store offset=1051492
            block ;; label = @4
              local.get 6
              i32.const 1
              i32.gt_u
              br_if 0 (;@4;)
              local.get 4
              br_if 2 (;@2;)
            end
            block ;; label = @4
              local.get 4
              i32.eqz
              br_if 0 (;@4;)
              local.get 5
              i32.const 4
              i32.store8 offset=48
              local.get 5
              local.get 5
              i32.const 104
              i32.add
              i32.store offset=56
              local.get 5
              i32.const 0
              i32.store offset=100
              local.get 5
              i32.const 1048664
              i32.store offset=96
              local.get 5
              i32.const 1
              i32.store offset=92
              local.get 5
              i32.const 1050272
              i32.store offset=88
              local.get 5
              i32.const 0
              i32.store offset=80
              local.get 5
              i32.const 48
              i32.add
              i32.const 1049188
              local.get 5
              i32.const 80
              i32.add
              call $_ZN4core3fmt5write17h7558535140974479E
              local.set 6
              local.get 5
              i32.load8_u offset=48
              local.set 4
              block ;; label = @5
                local.get 6
                i32.eqz
                br_if 0 (;@5;)
                local.get 4
                i32.const 255
                i32.and
                i32.const 4
                i32.eq
                br_if 4 (;@1;)
                local.get 5
                i32.load8_u offset=48
                i32.const 3
                i32.ne
                br_if 4 (;@1;)
                local.get 5
                i32.load offset=52
                local.tee 5
                i32.load
                local.get 5
                i32.load offset=4
                i32.load
                call_indirect (type $.rodata)
                block ;; label = @6
                  local.get 5
                  i32.load offset=4
                  local.tee 6
                  i32.const 4
                  i32.add
                  i32.load
                  local.tee 4
                  i32.eqz
                  br_if 0 (;@6;)
                  local.get 5
                  i32.load
                  local.get 4
                  local.get 6
                  i32.const 8
                  i32.add
                  i32.load
                  call $__rust_dealloc
                end
                local.get 5
                i32.const 12
                i32.const 4
                call $__rust_dealloc
                call $_ZN3std3sys4wasi14abort_internal17h761afe555b0460d5E
                unreachable
              end
              local.get 4
              i32.const 255
              i32.and
              i32.const 3
              i32.ne
              br_if 3 (;@1;)
              local.get 5
              i32.load offset=52
              local.tee 6
              i32.load
              local.get 6
              i32.load offset=4
              i32.load
              call_indirect (type $.rodata)
              block ;; label = @5
                local.get 6
                i32.load offset=4
                local.tee 4
                i32.const 4
                i32.add
                i32.load
                local.tee 3
                i32.eqz
                br_if 0 (;@5;)
                local.get 6
                i32.load
                local.get 3
                local.get 4
                i32.const 8
                i32.add
                i32.load
                call $__rust_dealloc
              end
              local.get 5
              i32.load offset=52
              i32.const 12
              i32.const 4
              call $__rust_dealloc
              call $_ZN3std3sys4wasi14abort_internal17h761afe555b0460d5E
              unreachable
            end
            local.get 5
            i32.const 4
            i32.store8 offset=48
            local.get 5
            local.get 5
            i32.const 104
            i32.add
            i32.store offset=56
            local.get 5
            i32.const 0
            i32.store offset=100
            local.get 5
            i32.const 1048664
            i32.store offset=96
            local.get 5
            i32.const 1
            i32.store offset=92
            local.get 5
            i32.const 1050220
            i32.store offset=88
            local.get 5
            i32.const 0
            i32.store offset=80
            local.get 5
            i32.const 48
            i32.add
            i32.const 1049188
            local.get 5
            i32.const 80
            i32.add
            call $_ZN4core3fmt5write17h7558535140974479E
            local.set 6
            local.get 5
            i32.load8_u offset=48
            local.set 4
            block ;; label = @4
              local.get 6
              i32.eqz
              br_if 0 (;@4;)
              local.get 4
              i32.const 255
              i32.and
              i32.const 4
              i32.eq
              br_if 3 (;@1;)
              local.get 5
              i32.load8_u offset=48
              i32.const 3
              i32.ne
              br_if 3 (;@1;)
              local.get 5
              i32.load offset=52
              local.tee 5
              i32.load
              local.get 5
              i32.load offset=4
              i32.load
              call_indirect (type $.rodata)
              block ;; label = @5
                local.get 5
                i32.load offset=4
                local.tee 6
                i32.const 4
                i32.add
                i32.load
                local.tee 4
                i32.eqz
                br_if 0 (;@5;)
                local.get 5
                i32.load
                local.get 4
                local.get 6
                i32.const 8
                i32.add
                i32.load
                call $__rust_dealloc
              end
              local.get 5
              i32.const 12
              i32.const 4
              call $__rust_dealloc
              call $_ZN3std3sys4wasi14abort_internal17h761afe555b0460d5E
              unreachable
            end
            local.get 4
            i32.const 255
            i32.and
            i32.const 3
            i32.ne
            br_if 2 (;@1;)
            local.get 5
            i32.load offset=52
            local.tee 6
            i32.load
            local.get 6
            i32.load offset=4
            i32.load
            call_indirect (type $.rodata)
            block ;; label = @4
              local.get 6
              i32.load offset=4
              local.tee 4
              i32.const 4
              i32.add
              i32.load
              local.tee 3
              i32.eqz
              br_if 0 (;@4;)
              local.get 6
              i32.load
              local.get 3
              local.get 4
              i32.const 8
              i32.add
              i32.load
              call $__rust_dealloc
            end
            local.get 5
            i32.load offset=52
            i32.const 12
            i32.const 4
            call $__rust_dealloc
            call $_ZN3std3sys4wasi14abort_internal17h761afe555b0460d5E
            unreachable
          end
          local.get 5
          i32.const 48
          i32.add
          i32.const 12
          i32.add
          i32.const 2
          i32.store
          local.get 5
          i32.const 48
          i32.add
          i32.const 20
          i32.add
          i32.const 1
          i32.store
          local.get 5
          i32.const 80
          i32.add
          i32.const 12
          i32.add
          i32.const 1
          i32.store
          local.get 5
          i32.const 80
          i32.add
          i32.const 20
          i32.add
          i32.const 0
          i32.store
          local.get 5
          i32.const 1048792
          i32.store offset=56
          local.get 5
          i32.const 0
          i32.store offset=48
          local.get 5
          i32.const 6
          i32.store offset=76
          local.get 5
          i32.const 1050552
          i32.store offset=88
          local.get 5
          i32.const 1048664
          i32.store offset=96
          local.get 5
          i32.const 0
          i32.store offset=80
          local.get 5
          local.get 5
          i32.const 72
          i32.add
          i32.store offset=64
          local.get 5
          local.get 5
          i32.const 80
          i32.add
          i32.store offset=72
          local.get 5
          i32.const 40
          i32.add
          local.get 5
          i32.const 104
          i32.add
          local.get 5
          i32.const 48
          i32.add
          call $_ZN3std2io5Write9write_fmt17hba5fcb56a4c5cebaE
          local.get 5
          i32.const 40
          i32.add
          call $_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17h0ad9adc9a67d38b6E
          call $_ZN3std3sys4wasi14abort_internal17h761afe555b0460d5E
          unreachable
        end
        local.get 0
        local.get 1
        call $rust_panic
        unreachable
      end
      call $_ZN3std3sys4wasi14abort_internal17h761afe555b0460d5E
      unreachable
    )
    (func $rust_panic (;82;) (type 3) (param i32 i32)
      (local i32)
      global.get $__stack_pointer
      i32.const 96
      i32.sub
      local.tee 2
      global.set $__stack_pointer
      local.get 2
      local.get 1
      i32.store offset=4
      local.get 2
      local.get 0
      i32.store
      local.get 2
      local.get 2
      call $__rust_start_panic
      i32.store offset=12
      local.get 2
      i32.const 24
      i32.add
      i32.const 12
      i32.add
      i32.const 2
      i32.store
      local.get 2
      i32.const 24
      i32.add
      i32.const 20
      i32.add
      i32.const 1
      i32.store
      local.get 2
      i32.const 56
      i32.add
      i32.const 12
      i32.add
      i32.const 1
      i32.store
      local.get 2
      i32.const 56
      i32.add
      i32.const 20
      i32.add
      i32.const 1
      i32.store
      local.get 2
      i32.const 1048792
      i32.store offset=32
      local.get 2
      i32.const 0
      i32.store offset=24
      local.get 2
      i32.const 6
      i32.store offset=52
      local.get 2
      i32.const 1050312
      i32.store offset=64
      local.get 2
      i32.const 0
      i32.store offset=56
      local.get 2
      i32.const 2
      i32.store offset=84
      local.get 2
      local.get 2
      i32.const 48
      i32.add
      i32.store offset=40
      local.get 2
      local.get 2
      i32.const 56
      i32.add
      i32.store offset=48
      local.get 2
      local.get 2
      i32.const 80
      i32.add
      i32.store offset=72
      local.get 2
      local.get 2
      i32.const 12
      i32.add
      i32.store offset=80
      local.get 2
      i32.const 16
      i32.add
      local.get 2
      i32.const 88
      i32.add
      local.get 2
      i32.const 24
      i32.add
      call $_ZN3std2io5Write9write_fmt17hba5fcb56a4c5cebaE
      local.get 2
      i32.const 16
      i32.add
      call $_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17h0ad9adc9a67d38b6E
      call $_ZN3std3sys4wasi14abort_internal17h761afe555b0460d5E
      unreachable
    )
    (func $_ZN64_$LT$std..sys..wasi..stdio..Stderr$u20$as$u20$std..io..Write$GT$5write17he47e049b369162fdE (;83;) (type 9) (param i32 i32 i32 i32)
      (local i32)
      global.get $__stack_pointer
      i32.const 32
      i32.sub
      local.tee 4
      global.set $__stack_pointer
      local.get 4
      local.get 3
      i32.store offset=12
      local.get 4
      local.get 2
      i32.store offset=8
      local.get 4
      i32.const 16
      i32.add
      i32.const 2
      local.get 4
      i32.const 8
      i32.add
      i32.const 1
      call $_ZN4wasi13lib_generated8fd_write17h26c52996b83e471dE
      block ;; label = @1
        block ;; label = @2
          local.get 4
          i32.load16_u offset=16
          br_if 0 (;@2;)
          local.get 0
          local.get 4
          i32.load offset=20
          i32.store offset=4
          local.get 0
          i32.const 4
          i32.store8
          br 1 (;@1;)
        end
        local.get 4
        local.get 4
        i32.load16_u offset=18
        i32.store16 offset=30
        local.get 0
        local.get 4
        i32.const 30
        i32.add
        call $_ZN4wasi13lib_generated5Errno3raw17hac277b009e036094E
        i64.extend_i32_u
        i64.const 65535
        i64.and
        i64.const 32
        i64.shl
        i64.store align=4
      end
      local.get 4
      i32.const 32
      i32.add
      global.set $__stack_pointer
    )
    (func $_ZN64_$LT$std..sys..wasi..stdio..Stderr$u20$as$u20$std..io..Write$GT$14write_vectored17h7464986e1d313f43E (;84;) (type 9) (param i32 i32 i32 i32)
      (local i32)
      global.get $__stack_pointer
      i32.const 16
      i32.sub
      local.tee 4
      global.set $__stack_pointer
      local.get 4
      i32.const 2
      local.get 2
      local.get 3
      call $_ZN4wasi13lib_generated8fd_write17h26c52996b83e471dE
      block ;; label = @1
        block ;; label = @2
          local.get 4
          i32.load16_u
          br_if 0 (;@2;)
          local.get 0
          local.get 4
          i32.load offset=4
          i32.store offset=4
          local.get 0
          i32.const 4
          i32.store8
          br 1 (;@1;)
        end
        local.get 4
        local.get 4
        i32.load16_u offset=2
        i32.store16 offset=14
        local.get 0
        local.get 4
        i32.const 14
        i32.add
        call $_ZN4wasi13lib_generated5Errno3raw17hac277b009e036094E
        i64.extend_i32_u
        i64.const 65535
        i64.and
        i64.const 32
        i64.shl
        i64.store align=4
      end
      local.get 4
      i32.const 16
      i32.add
      global.set $__stack_pointer
    )
    (func $_ZN64_$LT$std..sys..wasi..stdio..Stderr$u20$as$u20$std..io..Write$GT$17is_write_vectored17h3220da0d279580c7E (;85;) (type 10) (param i32) (result i32)
      i32.const 1
    )
    (func $_ZN64_$LT$std..sys..wasi..stdio..Stderr$u20$as$u20$std..io..Write$GT$5flush17hb4fd558eb40a0fc2E (;86;) (type 3) (param i32 i32)
      local.get 0
      i32.const 4
      i32.store8
    )
    (func $_ZN3std5alloc8rust_oom17hbef86726bc88af5bE (;87;) (type 3) (param i32 i32)
      (local i32)
      local.get 0
      local.get 1
      i32.const 0
      i32.load offset=1051488
      local.tee 2
      i32.const 7
      local.get 2
      select
      call_indirect (type 3)
      call $_ZN3std7process5abort17hced5683ecdf4a442E
      unreachable
    )
    (func $__rg_oom (;88;) (type 3) (param i32 i32)
      local.get 0
      local.get 1
      call $_ZN3std5alloc8rust_oom17hbef86726bc88af5bE
      unreachable
    )
    (func $__rust_start_panic (;89;) (type 10) (param i32) (result i32)
      unreachable
      unreachable
    )
    (func $_ZN4wasi13lib_generated5Errno3raw17hac277b009e036094E (;90;) (type 10) (param i32) (result i32)
      local.get 0
      i32.load16_u
    )
    (func $_ZN4wasi13lib_generated8fd_write17h26c52996b83e471dE (;91;) (type 9) (param i32 i32 i32 i32)
      (local i32)
      global.get $__stack_pointer
      i32.const 16
      i32.sub
      local.tee 4
      global.set $__stack_pointer
      block ;; label = @1
        block ;; label = @2
          local.get 1
          local.get 2
          local.get 3
          local.get 4
          i32.const 12
          i32.add
          call $_ZN4wasi13lib_generated22wasi_snapshot_preview18fd_write17h1fddf6a5171ac8d1E
          local.tee 3
          br_if 0 (;@2;)
          local.get 0
          local.get 4
          i32.load offset=12
          i32.store offset=4
          i32.const 0
          local.set 3
          br 1 (;@1;)
        end
        local.get 0
        local.get 3
        i32.store16 offset=2
        i32.const 1
        local.set 3
      end
      local.get 0
      local.get 3
      i32.store16
      local.get 4
      i32.const 16
      i32.add
      global.set $__stack_pointer
    )
    (func $malloc (;92;) (type 10) (param i32) (result i32)
      local.get 0
      call $dlmalloc
    )
    (func $dlmalloc (;93;) (type 10) (param i32) (result i32)
      (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
      global.get $__stack_pointer
      i32.const 16
      i32.sub
      local.tee 1
      global.set $__stack_pointer
      block ;; label = @1
        i32.const 0
        i32.load offset=1051564
        local.tee 2
        br_if 0 (;@1;)
        block ;; label = @2
          block ;; label = @3
            i32.const 0
            i32.load offset=1052012
            local.tee 3
            i32.eqz
            br_if 0 (;@3;)
            i32.const 0
            i32.load offset=1052016
            local.set 4
            br 1 (;@2;)
          end
          i32.const 0
          i64.const -1
          i64.store offset=1052024 align=4
          i32.const 0
          i64.const 281474976776192
          i64.store offset=1052016 align=4
          i32.const 0
          local.get 1
          i32.const 8
          i32.add
          i32.const -16
          i32.and
          i32.const 1431655768
          i32.xor
          local.tee 3
          i32.store offset=1052012
          i32.const 0
          i32.const 0
          i32.store offset=1052032
          i32.const 0
          i32.const 0
          i32.store offset=1051984
          i32.const 65536
          local.set 4
        end
        i32.const 0
        local.set 2
        i32.const 1114112
        i32.const 1052048
        local.get 4
        i32.add
        i32.const -1
        i32.add
        i32.const 0
        local.get 4
        i32.sub
        i32.and
        i32.const 1114112
        select
        i32.const 1052048
        i32.sub
        local.tee 5
        i32.const 89
        i32.lt_u
        br_if 0 (;@1;)
        i32.const 0
        local.set 4
        i32.const 0
        local.get 5
        i32.store offset=1051992
        i32.const 0
        i32.const 1052048
        i32.store offset=1051988
        i32.const 0
        i32.const 1052048
        i32.store offset=1051556
        i32.const 0
        local.get 3
        i32.store offset=1051576
        i32.const 0
        i32.const -1
        i32.store offset=1051572
        loop ;; label = @2
          local.get 4
          i32.const 1051600
          i32.add
          local.get 4
          i32.const 1051588
          i32.add
          local.tee 3
          i32.store
          local.get 3
          local.get 4
          i32.const 1051580
          i32.add
          local.tee 6
          i32.store
          local.get 4
          i32.const 1051592
          i32.add
          local.get 6
          i32.store
          local.get 4
          i32.const 1051608
          i32.add
          local.get 4
          i32.const 1051596
          i32.add
          local.tee 6
          i32.store
          local.get 6
          local.get 3
          i32.store
          local.get 4
          i32.const 1051616
          i32.add
          local.get 4
          i32.const 1051604
          i32.add
          local.tee 3
          i32.store
          local.get 3
          local.get 6
          i32.store
          local.get 4
          i32.const 1051612
          i32.add
          local.get 3
          i32.store
          local.get 4
          i32.const 32
          i32.add
          local.tee 4
          i32.const 256
          i32.ne
          br_if 0 (;@2;)
        end
        i32.const 1052048
        i32.const -8
        i32.const 1052048
        i32.sub
        i32.const 15
        i32.and
        i32.const 0
        i32.const 1052048
        i32.const 8
        i32.add
        i32.const 15
        i32.and
        select
        local.tee 4
        i32.add
        local.tee 2
        i32.const 4
        i32.add
        local.get 5
        i32.const -56
        i32.add
        local.tee 3
        local.get 4
        i32.sub
        local.tee 4
        i32.const 1
        i32.or
        i32.store
        i32.const 0
        i32.const 0
        i32.load offset=1052028
        i32.store offset=1051568
        i32.const 0
        local.get 4
        i32.store offset=1051552
        i32.const 0
        local.get 2
        i32.store offset=1051564
        i32.const 1052048
        local.get 3
        i32.add
        i32.const 56
        i32.store offset=4
      end
      block ;; label = @1
        block ;; label = @2
          block ;; label = @3
            block ;; label = @4
              block ;; label = @5
                block ;; label = @6
                  block ;; label = @7
                    block ;; label = @8
                      block ;; label = @9
                        block ;; label = @10
                          block ;; label = @11
                            block ;; label = @12
                              local.get 0
                              i32.const 236
                              i32.gt_u
                              br_if 0 (;@12;)
                              block ;; label = @13
                                i32.const 0
                                i32.load offset=1051540
                                local.tee 7
                                i32.const 16
                                local.get 0
                                i32.const 19
                                i32.add
                                i32.const -16
                                i32.and
                                local.get 0
                                i32.const 11
                                i32.lt_u
                                select
                                local.tee 5
                                i32.const 3
                                i32.shr_u
                                local.tee 3
                                i32.shr_u
                                local.tee 4
                                i32.const 3
                                i32.and
                                i32.eqz
                                br_if 0 (;@13;)
                                block ;; label = @14
                                  block ;; label = @15
                                    local.get 4
                                    i32.const 1
                                    i32.and
                                    local.get 3
                                    i32.or
                                    i32.const 1
                                    i32.xor
                                    local.tee 6
                                    i32.const 3
                                    i32.shl
                                    local.tee 3
                                    i32.const 1051580
                                    i32.add
                                    local.tee 4
                                    local.get 3
                                    i32.const 1051588
                                    i32.add
                                    i32.load
                                    local.tee 3
                                    i32.load offset=8
                                    local.tee 5
                                    i32.ne
                                    br_if 0 (;@15;)
                                    i32.const 0
                                    local.get 7
                                    i32.const -2
                                    local.get 6
                                    i32.rotl
                                    i32.and
                                    i32.store offset=1051540
                                    br 1 (;@14;)
                                  end
                                  local.get 4
                                  local.get 5
                                  i32.store offset=8
                                  local.get 5
                                  local.get 4
                                  i32.store offset=12
                                end
                                local.get 3
                                i32.const 8
                                i32.add
                                local.set 4
                                local.get 3
                                local.get 6
                                i32.const 3
                                i32.shl
                                local.tee 6
                                i32.const 3
                                i32.or
                                i32.store offset=4
                                local.get 3
                                local.get 6
                                i32.add
                                local.tee 3
                                local.get 3
                                i32.load offset=4
                                i32.const 1
                                i32.or
                                i32.store offset=4
                                br 12 (;@1;)
                              end
                              local.get 5
                              i32.const 0
                              i32.load offset=1051548
                              local.tee 8
                              i32.le_u
                              br_if 1 (;@11;)
                              block ;; label = @13
                                local.get 4
                                i32.eqz
                                br_if 0 (;@13;)
                                block ;; label = @14
                                  block ;; label = @15
                                    local.get 4
                                    local.get 3
                                    i32.shl
                                    i32.const 2
                                    local.get 3
                                    i32.shl
                                    local.tee 4
                                    i32.const 0
                                    local.get 4
                                    i32.sub
                                    i32.or
                                    i32.and
                                    local.tee 4
                                    i32.const 0
                                    local.get 4
                                    i32.sub
                                    i32.and
                                    i32.const -1
                                    i32.add
                                    local.tee 4
                                    local.get 4
                                    i32.const 12
                                    i32.shr_u
                                    i32.const 16
                                    i32.and
                                    local.tee 4
                                    i32.shr_u
                                    local.tee 3
                                    i32.const 5
                                    i32.shr_u
                                    i32.const 8
                                    i32.and
                                    local.tee 6
                                    local.get 4
                                    i32.or
                                    local.get 3
                                    local.get 6
                                    i32.shr_u
                                    local.tee 4
                                    i32.const 2
                                    i32.shr_u
                                    i32.const 4
                                    i32.and
                                    local.tee 3
                                    i32.or
                                    local.get 4
                                    local.get 3
                                    i32.shr_u
                                    local.tee 4
                                    i32.const 1
                                    i32.shr_u
                                    i32.const 2
                                    i32.and
                                    local.tee 3
                                    i32.or
                                    local.get 4
                                    local.get 3
                                    i32.shr_u
                                    local.tee 4
                                    i32.const 1
                                    i32.shr_u
                                    i32.const 1
                                    i32.and
                                    local.tee 3
                                    i32.or
                                    local.get 4
                                    local.get 3
                                    i32.shr_u
                                    i32.add
                                    local.tee 3
                                    i32.const 3
                                    i32.shl
                                    local.tee 4
                                    i32.const 1051580
                                    i32.add
                                    local.tee 6
                                    local.get 4
                                    i32.const 1051588
                                    i32.add
                                    i32.load
                                    local.tee 4
                                    i32.load offset=8
                                    local.tee 0
                                    i32.ne
                                    br_if 0 (;@15;)
                                    i32.const 0
                                    local.get 7
                                    i32.const -2
                                    local.get 3
                                    i32.rotl
                                    i32.and
                                    local.tee 7
                                    i32.store offset=1051540
                                    br 1 (;@14;)
                                  end
                                  local.get 6
                                  local.get 0
                                  i32.store offset=8
                                  local.get 0
                                  local.get 6
                                  i32.store offset=12
                                end
                                local.get 4
                                local.get 5
                                i32.const 3
                                i32.or
                                i32.store offset=4
                                local.get 4
                                local.get 3
                                i32.const 3
                                i32.shl
                                local.tee 3
                                i32.add
                                local.get 3
                                local.get 5
                                i32.sub
                                local.tee 6
                                i32.store
                                local.get 4
                                local.get 5
                                i32.add
                                local.tee 0
                                local.get 6
                                i32.const 1
                                i32.or
                                i32.store offset=4
                                block ;; label = @14
                                  local.get 8
                                  i32.eqz
                                  br_if 0 (;@14;)
                                  local.get 8
                                  i32.const -8
                                  i32.and
                                  i32.const 1051580
                                  i32.add
                                  local.set 5
                                  i32.const 0
                                  i32.load offset=1051560
                                  local.set 3
                                  block ;; label = @15
                                    block ;; label = @16
                                      local.get 7
                                      i32.const 1
                                      local.get 8
                                      i32.const 3
                                      i32.shr_u
                                      i32.shl
                                      local.tee 9
                                      i32.and
                                      br_if 0 (;@16;)
                                      i32.const 0
                                      local.get 7
                                      local.get 9
                                      i32.or
                                      i32.store offset=1051540
                                      local.get 5
                                      local.set 9
                                      br 1 (;@15;)
                                    end
                                    local.get 5
                                    i32.load offset=8
                                    local.set 9
                                  end
                                  local.get 9
                                  local.get 3
                                  i32.store offset=12
                                  local.get 5
                                  local.get 3
                                  i32.store offset=8
                                  local.get 3
                                  local.get 5
                                  i32.store offset=12
                                  local.get 3
                                  local.get 9
                                  i32.store offset=8
                                end
                                local.get 4
                                i32.const 8
                                i32.add
                                local.set 4
                                i32.const 0
                                local.get 0
                                i32.store offset=1051560
                                i32.const 0
                                local.get 6
                                i32.store offset=1051548
                                br 12 (;@1;)
                              end
                              i32.const 0
                              i32.load offset=1051544
                              local.tee 10
                              i32.eqz
                              br_if 1 (;@11;)
                              local.get 10
                              i32.const 0
                              local.get 10
                              i32.sub
                              i32.and
                              i32.const -1
                              i32.add
                              local.tee 4
                              local.get 4
                              i32.const 12
                              i32.shr_u
                              i32.const 16
                              i32.and
                              local.tee 4
                              i32.shr_u
                              local.tee 3
                              i32.const 5
                              i32.shr_u
                              i32.const 8
                              i32.and
                              local.tee 6
                              local.get 4
                              i32.or
                              local.get 3
                              local.get 6
                              i32.shr_u
                              local.tee 4
                              i32.const 2
                              i32.shr_u
                              i32.const 4
                              i32.and
                              local.tee 3
                              i32.or
                              local.get 4
                              local.get 3
                              i32.shr_u
                              local.tee 4
                              i32.const 1
                              i32.shr_u
                              i32.const 2
                              i32.and
                              local.tee 3
                              i32.or
                              local.get 4
                              local.get 3
                              i32.shr_u
                              local.tee 4
                              i32.const 1
                              i32.shr_u
                              i32.const 1
                              i32.and
                              local.tee 3
                              i32.or
                              local.get 4
                              local.get 3
                              i32.shr_u
                              i32.add
                              i32.const 2
                              i32.shl
                              i32.const 1051844
                              i32.add
                              i32.load
                              local.tee 0
                              i32.load offset=4
                              i32.const -8
                              i32.and
                              local.get 5
                              i32.sub
                              local.set 3
                              local.get 0
                              local.set 6
                              block ;; label = @13
                                loop ;; label = @14
                                  block ;; label = @15
                                    local.get 6
                                    i32.load offset=16
                                    local.tee 4
                                    br_if 0 (;@15;)
                                    local.get 6
                                    i32.const 20
                                    i32.add
                                    i32.load
                                    local.tee 4
                                    i32.eqz
                                    br_if 2 (;@13;)
                                  end
                                  local.get 4
                                  i32.load offset=4
                                  i32.const -8
                                  i32.and
                                  local.get 5
                                  i32.sub
                                  local.tee 6
                                  local.get 3
                                  local.get 6
                                  local.get 3
                                  i32.lt_u
                                  local.tee 6
                                  select
                                  local.set 3
                                  local.get 4
                                  local.get 0
                                  local.get 6
                                  select
                                  local.set 0
                                  local.get 4
                                  local.set 6
                                  br 0 (;@14;)
                                end
                              end
                              local.get 0
                              i32.load offset=24
                              local.set 11
                              block ;; label = @13
                                local.get 0
                                i32.load offset=12
                                local.tee 9
                                local.get 0
                                i32.eq
                                br_if 0 (;@13;)
                                local.get 0
                                i32.load offset=8
                                local.tee 4
                                i32.const 0
                                i32.load offset=1051556
                                i32.lt_u
                                drop
                                local.get 9
                                local.get 4
                                i32.store offset=8
                                local.get 4
                                local.get 9
                                i32.store offset=12
                                br 11 (;@2;)
                              end
                              block ;; label = @13
                                local.get 0
                                i32.const 20
                                i32.add
                                local.tee 6
                                i32.load
                                local.tee 4
                                br_if 0 (;@13;)
                                local.get 0
                                i32.load offset=16
                                local.tee 4
                                i32.eqz
                                br_if 3 (;@10;)
                                local.get 0
                                i32.const 16
                                i32.add
                                local.set 6
                              end
                              loop ;; label = @13
                                local.get 6
                                local.set 2
                                local.get 4
                                local.tee 9
                                i32.const 20
                                i32.add
                                local.tee 6
                                i32.load
                                local.tee 4
                                br_if 0 (;@13;)
                                local.get 9
                                i32.const 16
                                i32.add
                                local.set 6
                                local.get 9
                                i32.load offset=16
                                local.tee 4
                                br_if 0 (;@13;)
                              end
                              local.get 2
                              i32.const 0
                              i32.store
                              br 10 (;@2;)
                            end
                            i32.const -1
                            local.set 5
                            local.get 0
                            i32.const -65
                            i32.gt_u
                            br_if 0 (;@11;)
                            local.get 0
                            i32.const 19
                            i32.add
                            local.tee 4
                            i32.const -16
                            i32.and
                            local.set 5
                            i32.const 0
                            i32.load offset=1051544
                            local.tee 10
                            i32.eqz
                            br_if 0 (;@11;)
                            i32.const 0
                            local.set 8
                            block ;; label = @12
                              local.get 5
                              i32.const 256
                              i32.lt_u
                              br_if 0 (;@12;)
                              i32.const 31
                              local.set 8
                              local.get 5
                              i32.const 16777215
                              i32.gt_u
                              br_if 0 (;@12;)
                              local.get 4
                              i32.const 8
                              i32.shr_u
                              local.tee 4
                              local.get 4
                              i32.const 1048320
                              i32.add
                              i32.const 16
                              i32.shr_u
                              i32.const 8
                              i32.and
                              local.tee 4
                              i32.shl
                              local.tee 3
                              local.get 3
                              i32.const 520192
                              i32.add
                              i32.const 16
                              i32.shr_u
                              i32.const 4
                              i32.and
                              local.tee 3
                              i32.shl
                              local.tee 6
                              local.get 6
                              i32.const 245760
                              i32.add
                              i32.const 16
                              i32.shr_u
                              i32.const 2
                              i32.and
                              local.tee 6
                              i32.shl
                              i32.const 15
                              i32.shr_u
                              local.get 4
                              local.get 3
                              i32.or
                              local.get 6
                              i32.or
                              i32.sub
                              local.tee 4
                              i32.const 1
                              i32.shl
                              local.get 5
                              local.get 4
                              i32.const 21
                              i32.add
                              i32.shr_u
                              i32.const 1
                              i32.and
                              i32.or
                              i32.const 28
                              i32.add
                              local.set 8
                            end
                            i32.const 0
                            local.get 5
                            i32.sub
                            local.set 3
                            block ;; label = @12
                              block ;; label = @13
                                block ;; label = @14
                                  block ;; label = @15
                                    local.get 8
                                    i32.const 2
                                    i32.shl
                                    i32.const 1051844
                                    i32.add
                                    i32.load
                                    local.tee 6
                                    br_if 0 (;@15;)
                                    i32.const 0
                                    local.set 4
                                    i32.const 0
                                    local.set 9
                                    br 1 (;@14;)
                                  end
                                  i32.const 0
                                  local.set 4
                                  local.get 5
                                  i32.const 0
                                  i32.const 25
                                  local.get 8
                                  i32.const 1
                                  i32.shr_u
                                  i32.sub
                                  local.get 8
                                  i32.const 31
                                  i32.eq
                                  select
                                  i32.shl
                                  local.set 0
                                  i32.const 0
                                  local.set 9
                                  loop ;; label = @15
                                    block ;; label = @16
                                      local.get 6
                                      i32.load offset=4
                                      i32.const -8
                                      i32.and
                                      local.get 5
                                      i32.sub
                                      local.tee 7
                                      local.get 3
                                      i32.ge_u
                                      br_if 0 (;@16;)
                                      local.get 7
                                      local.set 3
                                      local.get 6
                                      local.set 9
                                      local.get 7
                                      br_if 0 (;@16;)
                                      i32.const 0
                                      local.set 3
                                      local.get 6
                                      local.set 9
                                      local.get 6
                                      local.set 4
                                      br 3 (;@13;)
                                    end
                                    local.get 4
                                    local.get 6
                                    i32.const 20
                                    i32.add
                                    i32.load
                                    local.tee 7
                                    local.get 7
                                    local.get 6
                                    local.get 0
                                    i32.const 29
                                    i32.shr_u
                                    i32.const 4
                                    i32.and
                                    i32.add
                                    i32.const 16
                                    i32.add
                                    i32.load
                                    local.tee 6
                                    i32.eq
                                    select
                                    local.get 4
                                    local.get 7
                                    select
                                    local.set 4
                                    local.get 0
                                    i32.const 1
                                    i32.shl
                                    local.set 0
                                    local.get 6
                                    br_if 0 (;@15;)
                                  end
                                end
                                block ;; label = @14
                                  local.get 4
                                  local.get 9
                                  i32.or
                                  br_if 0 (;@14;)
                                  i32.const 0
                                  local.set 9
                                  i32.const 2
                                  local.get 8
                                  i32.shl
                                  local.tee 4
                                  i32.const 0
                                  local.get 4
                                  i32.sub
                                  i32.or
                                  local.get 10
                                  i32.and
                                  local.tee 4
                                  i32.eqz
                                  br_if 3 (;@11;)
                                  local.get 4
                                  i32.const 0
                                  local.get 4
                                  i32.sub
                                  i32.and
                                  i32.const -1
                                  i32.add
                                  local.tee 4
                                  local.get 4
                                  i32.const 12
                                  i32.shr_u
                                  i32.const 16
                                  i32.and
                                  local.tee 4
                                  i32.shr_u
                                  local.tee 6
                                  i32.const 5
                                  i32.shr_u
                                  i32.const 8
                                  i32.and
                                  local.tee 0
                                  local.get 4
                                  i32.or
                                  local.get 6
                                  local.get 0
                                  i32.shr_u
                                  local.tee 4
                                  i32.const 2
                                  i32.shr_u
                                  i32.const 4
                                  i32.and
                                  local.tee 6
                                  i32.or
                                  local.get 4
                                  local.get 6
                                  i32.shr_u
                                  local.tee 4
                                  i32.const 1
                                  i32.shr_u
                                  i32.const 2
                                  i32.and
                                  local.tee 6
                                  i32.or
                                  local.get 4
                                  local.get 6
                                  i32.shr_u
                                  local.tee 4
                                  i32.const 1
                                  i32.shr_u
                                  i32.const 1
                                  i32.and
                                  local.tee 6
                                  i32.or
                                  local.get 4
                                  local.get 6
                                  i32.shr_u
                                  i32.add
                                  i32.const 2
                                  i32.shl
                                  i32.const 1051844
                                  i32.add
                                  i32.load
                                  local.set 4
                                end
                                local.get 4
                                i32.eqz
                                br_if 1 (;@12;)
                              end
                              loop ;; label = @13
                                local.get 4
                                i32.load offset=4
                                i32.const -8
                                i32.and
                                local.get 5
                                i32.sub
                                local.tee 7
                                local.get 3
                                i32.lt_u
                                local.set 0
                                block ;; label = @14
                                  local.get 4
                                  i32.load offset=16
                                  local.tee 6
                                  br_if 0 (;@14;)
                                  local.get 4
                                  i32.const 20
                                  i32.add
                                  i32.load
                                  local.set 6
                                end
                                local.get 7
                                local.get 3
                                local.get 0
                                select
                                local.set 3
                                local.get 4
                                local.get 9
                                local.get 0
                                select
                                local.set 9
                                local.get 6
                                local.set 4
                                local.get 6
                                br_if 0 (;@13;)
                              end
                            end
                            local.get 9
                            i32.eqz
                            br_if 0 (;@11;)
                            local.get 3
                            i32.const 0
                            i32.load offset=1051548
                            local.get 5
                            i32.sub
                            i32.ge_u
                            br_if 0 (;@11;)
                            local.get 9
                            i32.load offset=24
                            local.set 2
                            block ;; label = @12
                              local.get 9
                              i32.load offset=12
                              local.tee 0
                              local.get 9
                              i32.eq
                              br_if 0 (;@12;)
                              local.get 9
                              i32.load offset=8
                              local.tee 4
                              i32.const 0
                              i32.load offset=1051556
                              i32.lt_u
                              drop
                              local.get 0
                              local.get 4
                              i32.store offset=8
                              local.get 4
                              local.get 0
                              i32.store offset=12
                              br 9 (;@3;)
                            end
                            block ;; label = @12
                              local.get 9
                              i32.const 20
                              i32.add
                              local.tee 6
                              i32.load
                              local.tee 4
                              br_if 0 (;@12;)
                              local.get 9
                              i32.load offset=16
                              local.tee 4
                              i32.eqz
                              br_if 3 (;@9;)
                              local.get 9
                              i32.const 16
                              i32.add
                              local.set 6
                            end
                            loop ;; label = @12
                              local.get 6
                              local.set 7
                              local.get 4
                              local.tee 0
                              i32.const 20
                              i32.add
                              local.tee 6
                              i32.load
                              local.tee 4
                              br_if 0 (;@12;)
                              local.get 0
                              i32.const 16
                              i32.add
                              local.set 6
                              local.get 0
                              i32.load offset=16
                              local.tee 4
                              br_if 0 (;@12;)
                            end
                            local.get 7
                            i32.const 0
                            i32.store
                            br 8 (;@3;)
                          end
                          block ;; label = @11
                            i32.const 0
                            i32.load offset=1051548
                            local.tee 4
                            local.get 5
                            i32.lt_u
                            br_if 0 (;@11;)
                            i32.const 0
                            i32.load offset=1051560
                            local.set 3
                            block ;; label = @12
                              block ;; label = @13
                                local.get 4
                                local.get 5
                                i32.sub
                                local.tee 6
                                i32.const 16
                                i32.lt_u
                                br_if 0 (;@13;)
                                local.get 3
                                local.get 5
                                i32.add
                                local.tee 0
                                local.get 6
                                i32.const 1
                                i32.or
                                i32.store offset=4
                                i32.const 0
                                local.get 6
                                i32.store offset=1051548
                                i32.const 0
                                local.get 0
                                i32.store offset=1051560
                                local.get 3
                                local.get 4
                                i32.add
                                local.get 6
                                i32.store
                                local.get 3
                                local.get 5
                                i32.const 3
                                i32.or
                                i32.store offset=4
                                br 1 (;@12;)
                              end
                              local.get 3
                              local.get 4
                              i32.const 3
                              i32.or
                              i32.store offset=4
                              local.get 3
                              local.get 4
                              i32.add
                              local.tee 4
                              local.get 4
                              i32.load offset=4
                              i32.const 1
                              i32.or
                              i32.store offset=4
                              i32.const 0
                              i32.const 0
                              i32.store offset=1051560
                              i32.const 0
                              i32.const 0
                              i32.store offset=1051548
                            end
                            local.get 3
                            i32.const 8
                            i32.add
                            local.set 4
                            br 10 (;@1;)
                          end
                          block ;; label = @11
                            i32.const 0
                            i32.load offset=1051552
                            local.tee 6
                            local.get 5
                            i32.le_u
                            br_if 0 (;@11;)
                            local.get 2
                            local.get 5
                            i32.add
                            local.tee 4
                            local.get 6
                            local.get 5
                            i32.sub
                            local.tee 3
                            i32.const 1
                            i32.or
                            i32.store offset=4
                            i32.const 0
                            local.get 4
                            i32.store offset=1051564
                            i32.const 0
                            local.get 3
                            i32.store offset=1051552
                            local.get 2
                            local.get 5
                            i32.const 3
                            i32.or
                            i32.store offset=4
                            local.get 2
                            i32.const 8
                            i32.add
                            local.set 4
                            br 10 (;@1;)
                          end
                          block ;; label = @11
                            block ;; label = @12
                              i32.const 0
                              i32.load offset=1052012
                              i32.eqz
                              br_if 0 (;@12;)
                              i32.const 0
                              i32.load offset=1052020
                              local.set 3
                              br 1 (;@11;)
                            end
                            i32.const 0
                            i64.const -1
                            i64.store offset=1052024 align=4
                            i32.const 0
                            i64.const 281474976776192
                            i64.store offset=1052016 align=4
                            i32.const 0
                            local.get 1
                            i32.const 12
                            i32.add
                            i32.const -16
                            i32.and
                            i32.const 1431655768
                            i32.xor
                            i32.store offset=1052012
                            i32.const 0
                            i32.const 0
                            i32.store offset=1052032
                            i32.const 0
                            i32.const 0
                            i32.store offset=1051984
                            i32.const 65536
                            local.set 3
                          end
                          i32.const 0
                          local.set 4
                          block ;; label = @11
                            local.get 3
                            local.get 5
                            i32.const 71
                            i32.add
                            local.tee 8
                            i32.add
                            local.tee 0
                            i32.const 0
                            local.get 3
                            i32.sub
                            local.tee 7
                            i32.and
                            local.tee 9
                            local.get 5
                            i32.gt_u
                            br_if 0 (;@11;)
                            i32.const 0
                            i32.const 48
                            i32.store offset=1052036
                            br 10 (;@1;)
                          end
                          block ;; label = @11
                            i32.const 0
                            i32.load offset=1051980
                            local.tee 4
                            i32.eqz
                            br_if 0 (;@11;)
                            block ;; label = @12
                              i32.const 0
                              i32.load offset=1051972
                              local.tee 3
                              local.get 9
                              i32.add
                              local.tee 10
                              local.get 3
                              i32.le_u
                              br_if 0 (;@12;)
                              local.get 10
                              local.get 4
                              i32.le_u
                              br_if 1 (;@11;)
                            end
                            i32.const 0
                            local.set 4
                            i32.const 0
                            i32.const 48
                            i32.store offset=1052036
                            br 10 (;@1;)
                          end
                          i32.const 0
                          i32.load8_u offset=1051984
                          i32.const 4
                          i32.and
                          br_if 4 (;@6;)
                          block ;; label = @11
                            block ;; label = @12
                              block ;; label = @13
                                local.get 2
                                i32.eqz
                                br_if 0 (;@13;)
                                i32.const 1051988
                                local.set 4
                                loop ;; label = @14
                                  block ;; label = @15
                                    local.get 4
                                    i32.load
                                    local.tee 3
                                    local.get 2
                                    i32.gt_u
                                    br_if 0 (;@15;)
                                    local.get 3
                                    local.get 4
                                    i32.load offset=4
                                    i32.add
                                    local.get 2
                                    i32.gt_u
                                    br_if 3 (;@12;)
                                  end
                                  local.get 4
                                  i32.load offset=8
                                  local.tee 4
                                  br_if 0 (;@14;)
                                end
                              end
                              i32.const 0
                              call $sbrk
                              local.tee 0
                              i32.const -1
                              i32.eq
                              br_if 5 (;@7;)
                              local.get 9
                              local.set 7
                              block ;; label = @13
                                i32.const 0
                                i32.load offset=1052016
                                local.tee 4
                                i32.const -1
                                i32.add
                                local.tee 3
                                local.get 0
                                i32.and
                                i32.eqz
                                br_if 0 (;@13;)
                                local.get 9
                                local.get 0
                                i32.sub
                                local.get 3
                                local.get 0
                                i32.add
                                i32.const 0
                                local.get 4
                                i32.sub
                                i32.and
                                i32.add
                                local.set 7
                              end
                              local.get 7
                              local.get 5
                              i32.le_u
                              br_if 5 (;@7;)
                              local.get 7
                              i32.const 2147483646
                              i32.gt_u
                              br_if 5 (;@7;)
                              block ;; label = @13
                                i32.const 0
                                i32.load offset=1051980
                                local.tee 4
                                i32.eqz
                                br_if 0 (;@13;)
                                i32.const 0
                                i32.load offset=1051972
                                local.tee 3
                                local.get 7
                                i32.add
                                local.tee 6
                                local.get 3
                                i32.le_u
                                br_if 6 (;@7;)
                                local.get 6
                                local.get 4
                                i32.gt_u
                                br_if 6 (;@7;)
                              end
                              local.get 7
                              call $sbrk
                              local.tee 4
                              local.get 0
                              i32.ne
                              br_if 1 (;@11;)
                              br 7 (;@5;)
                            end
                            local.get 0
                            local.get 6
                            i32.sub
                            local.get 7
                            i32.and
                            local.tee 7
                            i32.const 2147483646
                            i32.gt_u
                            br_if 4 (;@7;)
                            local.get 7
                            call $sbrk
                            local.tee 0
                            local.get 4
                            i32.load
                            local.get 4
                            i32.load offset=4
                            i32.add
                            i32.eq
                            br_if 3 (;@8;)
                            local.get 0
                            local.set 4
                          end
                          block ;; label = @11
                            local.get 4
                            i32.const -1
                            i32.eq
                            br_if 0 (;@11;)
                            local.get 5
                            i32.const 72
                            i32.add
                            local.get 7
                            i32.le_u
                            br_if 0 (;@11;)
                            block ;; label = @12
                              local.get 8
                              local.get 7
                              i32.sub
                              i32.const 0
                              i32.load offset=1052020
                              local.tee 3
                              i32.add
                              i32.const 0
                              local.get 3
                              i32.sub
                              i32.and
                              local.tee 3
                              i32.const 2147483646
                              i32.le_u
                              br_if 0 (;@12;)
                              local.get 4
                              local.set 0
                              br 7 (;@5;)
                            end
                            block ;; label = @12
                              local.get 3
                              call $sbrk
                              i32.const -1
                              i32.eq
                              br_if 0 (;@12;)
                              local.get 3
                              local.get 7
                              i32.add
                              local.set 7
                              local.get 4
                              local.set 0
                              br 7 (;@5;)
                            end
                            i32.const 0
                            local.get 7
                            i32.sub
                            call $sbrk
                            drop
                            br 4 (;@7;)
                          end
                          local.get 4
                          local.set 0
                          local.get 4
                          i32.const -1
                          i32.ne
                          br_if 5 (;@5;)
                          br 3 (;@7;)
                        end
                        i32.const 0
                        local.set 9
                        br 7 (;@2;)
                      end
                      i32.const 0
                      local.set 0
                      br 5 (;@3;)
                    end
                    local.get 0
                    i32.const -1
                    i32.ne
                    br_if 2 (;@5;)
                  end
                  i32.const 0
                  i32.const 0
                  i32.load offset=1051984
                  i32.const 4
                  i32.or
                  i32.store offset=1051984
                end
                local.get 9
                i32.const 2147483646
                i32.gt_u
                br_if 1 (;@4;)
                local.get 9
                call $sbrk
                local.set 0
                i32.const 0
                call $sbrk
                local.set 4
                local.get 0
                i32.const -1
                i32.eq
                br_if 1 (;@4;)
                local.get 4
                i32.const -1
                i32.eq
                br_if 1 (;@4;)
                local.get 0
                local.get 4
                i32.ge_u
                br_if 1 (;@4;)
                local.get 4
                local.get 0
                i32.sub
                local.tee 7
                local.get 5
                i32.const 56
                i32.add
                i32.le_u
                br_if 1 (;@4;)
              end
              i32.const 0
              i32.const 0
              i32.load offset=1051972
              local.get 7
              i32.add
              local.tee 4
              i32.store offset=1051972
              block ;; label = @5
                local.get 4
                i32.const 0
                i32.load offset=1051976
                i32.le_u
                br_if 0 (;@5;)
                i32.const 0
                local.get 4
                i32.store offset=1051976
              end
              block ;; label = @5
                block ;; label = @6
                  block ;; label = @7
                    block ;; label = @8
                      i32.const 0
                      i32.load offset=1051564
                      local.tee 3
                      i32.eqz
                      br_if 0 (;@8;)
                      i32.const 1051988
                      local.set 4
                      loop ;; label = @9
                        local.get 0
                        local.get 4
                        i32.load
                        local.tee 6
                        local.get 4
                        i32.load offset=4
                        local.tee 9
                        i32.add
                        i32.eq
                        br_if 2 (;@7;)
                        local.get 4
                        i32.load offset=8
                        local.tee 4
                        br_if 0 (;@9;)
                        br 3 (;@6;)
                      end
                    end
                    block ;; label = @8
                      block ;; label = @9
                        i32.const 0
                        i32.load offset=1051556
                        local.tee 4
                        i32.eqz
                        br_if 0 (;@9;)
                        local.get 0
                        local.get 4
                        i32.ge_u
                        br_if 1 (;@8;)
                      end
                      i32.const 0
                      local.get 0
                      i32.store offset=1051556
                    end
                    i32.const 0
                    local.set 4
                    i32.const 0
                    local.get 7
                    i32.store offset=1051992
                    i32.const 0
                    local.get 0
                    i32.store offset=1051988
                    i32.const 0
                    i32.const -1
                    i32.store offset=1051572
                    i32.const 0
                    i32.const 0
                    i32.load offset=1052012
                    i32.store offset=1051576
                    i32.const 0
                    i32.const 0
                    i32.store offset=1052000
                    loop ;; label = @8
                      local.get 4
                      i32.const 1051600
                      i32.add
                      local.get 4
                      i32.const 1051588
                      i32.add
                      local.tee 3
                      i32.store
                      local.get 3
                      local.get 4
                      i32.const 1051580
                      i32.add
                      local.tee 6
                      i32.store
                      local.get 4
                      i32.const 1051592
                      i32.add
                      local.get 6
                      i32.store
                      local.get 4
                      i32.const 1051608
                      i32.add
                      local.get 4
                      i32.const 1051596
                      i32.add
                      local.tee 6
                      i32.store
                      local.get 6
                      local.get 3
                      i32.store
                      local.get 4
                      i32.const 1051616
                      i32.add
                      local.get 4
                      i32.const 1051604
                      i32.add
                      local.tee 3
                      i32.store
                      local.get 3
                      local.get 6
                      i32.store
                      local.get 4
                      i32.const 1051612
                      i32.add
                      local.get 3
                      i32.store
                      local.get 4
                      i32.const 32
                      i32.add
                      local.tee 4
                      i32.const 256
                      i32.ne
                      br_if 0 (;@8;)
                    end
                    local.get 0
                    i32.const -8
                    local.get 0
                    i32.sub
                    i32.const 15
                    i32.and
                    i32.const 0
                    local.get 0
                    i32.const 8
                    i32.add
                    i32.const 15
                    i32.and
                    select
                    local.tee 4
                    i32.add
                    local.tee 3
                    local.get 7
                    i32.const -56
                    i32.add
                    local.tee 6
                    local.get 4
                    i32.sub
                    local.tee 4
                    i32.const 1
                    i32.or
                    i32.store offset=4
                    i32.const 0
                    i32.const 0
                    i32.load offset=1052028
                    i32.store offset=1051568
                    i32.const 0
                    local.get 4
                    i32.store offset=1051552
                    i32.const 0
                    local.get 3
                    i32.store offset=1051564
                    local.get 0
                    local.get 6
                    i32.add
                    i32.const 56
                    i32.store offset=4
                    br 2 (;@5;)
                  end
                  local.get 4
                  i32.load8_u offset=12
                  i32.const 8
                  i32.and
                  br_if 0 (;@6;)
                  local.get 3
                  local.get 6
                  i32.lt_u
                  br_if 0 (;@6;)
                  local.get 3
                  local.get 0
                  i32.ge_u
                  br_if 0 (;@6;)
                  local.get 3
                  i32.const -8
                  local.get 3
                  i32.sub
                  i32.const 15
                  i32.and
                  i32.const 0
                  local.get 3
                  i32.const 8
                  i32.add
                  i32.const 15
                  i32.and
                  select
                  local.tee 6
                  i32.add
                  local.tee 0
                  i32.const 0
                  i32.load offset=1051552
                  local.get 7
                  i32.add
                  local.tee 2
                  local.get 6
                  i32.sub
                  local.tee 6
                  i32.const 1
                  i32.or
                  i32.store offset=4
                  local.get 4
                  local.get 9
                  local.get 7
                  i32.add
                  i32.store offset=4
                  i32.const 0
                  i32.const 0
                  i32.load offset=1052028
                  i32.store offset=1051568
                  i32.const 0
                  local.get 6
                  i32.store offset=1051552
                  i32.const 0
                  local.get 0
                  i32.store offset=1051564
                  local.get 3
                  local.get 2
                  i32.add
                  i32.const 56
                  i32.store offset=4
                  br 1 (;@5;)
                end
                block ;; label = @6
                  local.get 0
                  i32.const 0
                  i32.load offset=1051556
                  local.tee 9
                  i32.ge_u
                  br_if 0 (;@6;)
                  i32.const 0
                  local.get 0
                  i32.store offset=1051556
                  local.get 0
                  local.set 9
                end
                local.get 0
                local.get 7
                i32.add
                local.set 6
                i32.const 1051988
                local.set 4
                block ;; label = @6
                  block ;; label = @7
                    block ;; label = @8
                      block ;; label = @9
                        block ;; label = @10
                          block ;; label = @11
                            block ;; label = @12
                              loop ;; label = @13
                                local.get 4
                                i32.load
                                local.get 6
                                i32.eq
                                br_if 1 (;@12;)
                                local.get 4
                                i32.load offset=8
                                local.tee 4
                                br_if 0 (;@13;)
                                br 2 (;@11;)
                              end
                            end
                            local.get 4
                            i32.load8_u offset=12
                            i32.const 8
                            i32.and
                            i32.eqz
                            br_if 1 (;@10;)
                          end
                          i32.const 1051988
                          local.set 4
                          loop ;; label = @11
                            block ;; label = @12
                              local.get 4
                              i32.load
                              local.tee 6
                              local.get 3
                              i32.gt_u
                              br_if 0 (;@12;)
                              local.get 6
                              local.get 4
                              i32.load offset=4
                              i32.add
                              local.tee 6
                              local.get 3
                              i32.gt_u
                              br_if 3 (;@9;)
                            end
                            local.get 4
                            i32.load offset=8
                            local.set 4
                            br 0 (;@11;)
                          end
                        end
                        local.get 4
                        local.get 0
                        i32.store
                        local.get 4
                        local.get 4
                        i32.load offset=4
                        local.get 7
                        i32.add
                        i32.store offset=4
                        local.get 0
                        i32.const -8
                        local.get 0
                        i32.sub
                        i32.const 15
                        i32.and
                        i32.const 0
                        local.get 0
                        i32.const 8
                        i32.add
                        i32.const 15
                        i32.and
                        select
                        i32.add
                        local.tee 2
                        local.get 5
                        i32.const 3
                        i32.or
                        i32.store offset=4
                        local.get 6
                        i32.const -8
                        local.get 6
                        i32.sub
                        i32.const 15
                        i32.and
                        i32.const 0
                        local.get 6
                        i32.const 8
                        i32.add
                        i32.const 15
                        i32.and
                        select
                        i32.add
                        local.tee 7
                        local.get 2
                        local.get 5
                        i32.add
                        local.tee 5
                        i32.sub
                        local.set 4
                        block ;; label = @10
                          local.get 7
                          local.get 3
                          i32.ne
                          br_if 0 (;@10;)
                          i32.const 0
                          local.get 5
                          i32.store offset=1051564
                          i32.const 0
                          i32.const 0
                          i32.load offset=1051552
                          local.get 4
                          i32.add
                          local.tee 4
                          i32.store offset=1051552
                          local.get 5
                          local.get 4
                          i32.const 1
                          i32.or
                          i32.store offset=4
                          br 3 (;@7;)
                        end
                        block ;; label = @10
                          local.get 7
                          i32.const 0
                          i32.load offset=1051560
                          i32.ne
                          br_if 0 (;@10;)
                          i32.const 0
                          local.get 5
                          i32.store offset=1051560
                          i32.const 0
                          i32.const 0
                          i32.load offset=1051548
                          local.get 4
                          i32.add
                          local.tee 4
                          i32.store offset=1051548
                          local.get 5
                          local.get 4
                          i32.const 1
                          i32.or
                          i32.store offset=4
                          local.get 5
                          local.get 4
                          i32.add
                          local.get 4
                          i32.store
                          br 3 (;@7;)
                        end
                        block ;; label = @10
                          local.get 7
                          i32.load offset=4
                          local.tee 3
                          i32.const 3
                          i32.and
                          i32.const 1
                          i32.ne
                          br_if 0 (;@10;)
                          local.get 3
                          i32.const -8
                          i32.and
                          local.set 8
                          block ;; label = @11
                            block ;; label = @12
                              local.get 3
                              i32.const 255
                              i32.gt_u
                              br_if 0 (;@12;)
                              local.get 7
                              i32.load offset=8
                              local.tee 6
                              local.get 3
                              i32.const 3
                              i32.shr_u
                              local.tee 9
                              i32.const 3
                              i32.shl
                              i32.const 1051580
                              i32.add
                              local.tee 0
                              i32.eq
                              drop
                              block ;; label = @13
                                local.get 7
                                i32.load offset=12
                                local.tee 3
                                local.get 6
                                i32.ne
                                br_if 0 (;@13;)
                                i32.const 0
                                i32.const 0
                                i32.load offset=1051540
                                i32.const -2
                                local.get 9
                                i32.rotl
                                i32.and
                                i32.store offset=1051540
                                br 2 (;@11;)
                              end
                              local.get 3
                              local.get 0
                              i32.eq
                              drop
                              local.get 3
                              local.get 6
                              i32.store offset=8
                              local.get 6
                              local.get 3
                              i32.store offset=12
                              br 1 (;@11;)
                            end
                            local.get 7
                            i32.load offset=24
                            local.set 10
                            block ;; label = @12
                              block ;; label = @13
                                local.get 7
                                i32.load offset=12
                                local.tee 0
                                local.get 7
                                i32.eq
                                br_if 0 (;@13;)
                                local.get 7
                                i32.load offset=8
                                local.tee 3
                                local.get 9
                                i32.lt_u
                                drop
                                local.get 0
                                local.get 3
                                i32.store offset=8
                                local.get 3
                                local.get 0
                                i32.store offset=12
                                br 1 (;@12;)
                              end
                              block ;; label = @13
                                local.get 7
                                i32.const 20
                                i32.add
                                local.tee 3
                                i32.load
                                local.tee 6
                                br_if 0 (;@13;)
                                local.get 7
                                i32.const 16
                                i32.add
                                local.tee 3
                                i32.load
                                local.tee 6
                                br_if 0 (;@13;)
                                i32.const 0
                                local.set 0
                                br 1 (;@12;)
                              end
                              loop ;; label = @13
                                local.get 3
                                local.set 9
                                local.get 6
                                local.tee 0
                                i32.const 20
                                i32.add
                                local.tee 3
                                i32.load
                                local.tee 6
                                br_if 0 (;@13;)
                                local.get 0
                                i32.const 16
                                i32.add
                                local.set 3
                                local.get 0
                                i32.load offset=16
                                local.tee 6
                                br_if 0 (;@13;)
                              end
                              local.get 9
                              i32.const 0
                              i32.store
                            end
                            local.get 10
                            i32.eqz
                            br_if 0 (;@11;)
                            block ;; label = @12
                              block ;; label = @13
                                local.get 7
                                local.get 7
                                i32.load offset=28
                                local.tee 6
                                i32.const 2
                                i32.shl
                                i32.const 1051844
                                i32.add
                                local.tee 3
                                i32.load
                                i32.ne
                                br_if 0 (;@13;)
                                local.get 3
                                local.get 0
                                i32.store
                                local.get 0
                                br_if 1 (;@12;)
                                i32.const 0
                                i32.const 0
                                i32.load offset=1051544
                                i32.const -2
                                local.get 6
                                i32.rotl
                                i32.and
                                i32.store offset=1051544
                                br 2 (;@11;)
                              end
                              local.get 10
                              i32.const 16
                              i32.const 20
                              local.get 10
                              i32.load offset=16
                              local.get 7
                              i32.eq
                              select
                              i32.add
                              local.get 0
                              i32.store
                              local.get 0
                              i32.eqz
                              br_if 1 (;@11;)
                            end
                            local.get 0
                            local.get 10
                            i32.store offset=24
                            block ;; label = @12
                              local.get 7
                              i32.load offset=16
                              local.tee 3
                              i32.eqz
                              br_if 0 (;@12;)
                              local.get 0
                              local.get 3
                              i32.store offset=16
                              local.get 3
                              local.get 0
                              i32.store offset=24
                            end
                            local.get 7
                            i32.load offset=20
                            local.tee 3
                            i32.eqz
                            br_if 0 (;@11;)
                            local.get 0
                            i32.const 20
                            i32.add
                            local.get 3
                            i32.store
                            local.get 3
                            local.get 0
                            i32.store offset=24
                          end
                          local.get 8
                          local.get 4
                          i32.add
                          local.set 4
                          local.get 7
                          local.get 8
                          i32.add
                          local.tee 7
                          i32.load offset=4
                          local.set 3
                        end
                        local.get 7
                        local.get 3
                        i32.const -2
                        i32.and
                        i32.store offset=4
                        local.get 5
                        local.get 4
                        i32.add
                        local.get 4
                        i32.store
                        local.get 5
                        local.get 4
                        i32.const 1
                        i32.or
                        i32.store offset=4
                        block ;; label = @10
                          local.get 4
                          i32.const 255
                          i32.gt_u
                          br_if 0 (;@10;)
                          local.get 4
                          i32.const -8
                          i32.and
                          i32.const 1051580
                          i32.add
                          local.set 3
                          block ;; label = @11
                            block ;; label = @12
                              i32.const 0
                              i32.load offset=1051540
                              local.tee 6
                              i32.const 1
                              local.get 4
                              i32.const 3
                              i32.shr_u
                              i32.shl
                              local.tee 4
                              i32.and
                              br_if 0 (;@12;)
                              i32.const 0
                              local.get 6
                              local.get 4
                              i32.or
                              i32.store offset=1051540
                              local.get 3
                              local.set 4
                              br 1 (;@11;)
                            end
                            local.get 3
                            i32.load offset=8
                            local.set 4
                          end
                          local.get 4
                          local.get 5
                          i32.store offset=12
                          local.get 3
                          local.get 5
                          i32.store offset=8
                          local.get 5
                          local.get 3
                          i32.store offset=12
                          local.get 5
                          local.get 4
                          i32.store offset=8
                          br 3 (;@7;)
                        end
                        i32.const 31
                        local.set 3
                        block ;; label = @10
                          local.get 4
                          i32.const 16777215
                          i32.gt_u
                          br_if 0 (;@10;)
                          local.get 4
                          i32.const 8
                          i32.shr_u
                          local.tee 3
                          local.get 3
                          i32.const 1048320
                          i32.add
                          i32.const 16
                          i32.shr_u
                          i32.const 8
                          i32.and
                          local.tee 3
                          i32.shl
                          local.tee 6
                          local.get 6
                          i32.const 520192
                          i32.add
                          i32.const 16
                          i32.shr_u
                          i32.const 4
                          i32.and
                          local.tee 6
                          i32.shl
                          local.tee 0
                          local.get 0
                          i32.const 245760
                          i32.add
                          i32.const 16
                          i32.shr_u
                          i32.const 2
                          i32.and
                          local.tee 0
                          i32.shl
                          i32.const 15
                          i32.shr_u
                          local.get 3
                          local.get 6
                          i32.or
                          local.get 0
                          i32.or
                          i32.sub
                          local.tee 3
                          i32.const 1
                          i32.shl
                          local.get 4
                          local.get 3
                          i32.const 21
                          i32.add
                          i32.shr_u
                          i32.const 1
                          i32.and
                          i32.or
                          i32.const 28
                          i32.add
                          local.set 3
                        end
                        local.get 5
                        local.get 3
                        i32.store offset=28
                        local.get 5
                        i64.const 0
                        i64.store offset=16 align=4
                        local.get 3
                        i32.const 2
                        i32.shl
                        i32.const 1051844
                        i32.add
                        local.set 6
                        block ;; label = @10
                          i32.const 0
                          i32.load offset=1051544
                          local.tee 0
                          i32.const 1
                          local.get 3
                          i32.shl
                          local.tee 9
                          i32.and
                          br_if 0 (;@10;)
                          local.get 6
                          local.get 5
                          i32.store
                          i32.const 0
                          local.get 0
                          local.get 9
                          i32.or
                          i32.store offset=1051544
                          local.get 5
                          local.get 6
                          i32.store offset=24
                          local.get 5
                          local.get 5
                          i32.store offset=8
                          local.get 5
                          local.get 5
                          i32.store offset=12
                          br 3 (;@7;)
                        end
                        local.get 4
                        i32.const 0
                        i32.const 25
                        local.get 3
                        i32.const 1
                        i32.shr_u
                        i32.sub
                        local.get 3
                        i32.const 31
                        i32.eq
                        select
                        i32.shl
                        local.set 3
                        local.get 6
                        i32.load
                        local.set 0
                        loop ;; label = @10
                          local.get 0
                          local.tee 6
                          i32.load offset=4
                          i32.const -8
                          i32.and
                          local.get 4
                          i32.eq
                          br_if 2 (;@8;)
                          local.get 3
                          i32.const 29
                          i32.shr_u
                          local.set 0
                          local.get 3
                          i32.const 1
                          i32.shl
                          local.set 3
                          local.get 6
                          local.get 0
                          i32.const 4
                          i32.and
                          i32.add
                          i32.const 16
                          i32.add
                          local.tee 9
                          i32.load
                          local.tee 0
                          br_if 0 (;@10;)
                        end
                        local.get 9
                        local.get 5
                        i32.store
                        local.get 5
                        local.get 6
                        i32.store offset=24
                        local.get 5
                        local.get 5
                        i32.store offset=12
                        local.get 5
                        local.get 5
                        i32.store offset=8
                        br 2 (;@7;)
                      end
                      local.get 0
                      i32.const -8
                      local.get 0
                      i32.sub
                      i32.const 15
                      i32.and
                      i32.const 0
                      local.get 0
                      i32.const 8
                      i32.add
                      i32.const 15
                      i32.and
                      select
                      local.tee 4
                      i32.add
                      local.tee 2
                      local.get 7
                      i32.const -56
                      i32.add
                      local.tee 9
                      local.get 4
                      i32.sub
                      local.tee 4
                      i32.const 1
                      i32.or
                      i32.store offset=4
                      local.get 0
                      local.get 9
                      i32.add
                      i32.const 56
                      i32.store offset=4
                      local.get 3
                      local.get 6
                      i32.const 55
                      local.get 6
                      i32.sub
                      i32.const 15
                      i32.and
                      i32.const 0
                      local.get 6
                      i32.const -55
                      i32.add
                      i32.const 15
                      i32.and
                      select
                      i32.add
                      i32.const -63
                      i32.add
                      local.tee 9
                      local.get 9
                      local.get 3
                      i32.const 16
                      i32.add
                      i32.lt_u
                      select
                      local.tee 9
                      i32.const 35
                      i32.store offset=4
                      i32.const 0
                      i32.const 0
                      i32.load offset=1052028
                      i32.store offset=1051568
                      i32.const 0
                      local.get 4
                      i32.store offset=1051552
                      i32.const 0
                      local.get 2
                      i32.store offset=1051564
                      local.get 9
                      i32.const 16
                      i32.add
                      i32.const 0
                      i64.load offset=1051996 align=4
                      i64.store align=4
                      local.get 9
                      i32.const 0
                      i64.load offset=1051988 align=4
                      i64.store offset=8 align=4
                      i32.const 0
                      local.get 9
                      i32.const 8
                      i32.add
                      i32.store offset=1051996
                      i32.const 0
                      local.get 7
                      i32.store offset=1051992
                      i32.const 0
                      local.get 0
                      i32.store offset=1051988
                      i32.const 0
                      i32.const 0
                      i32.store offset=1052000
                      local.get 9
                      i32.const 36
                      i32.add
                      local.set 4
                      loop ;; label = @9
                        local.get 4
                        i32.const 7
                        i32.store
                        local.get 4
                        i32.const 4
                        i32.add
                        local.tee 4
                        local.get 6
                        i32.lt_u
                        br_if 0 (;@9;)
                      end
                      local.get 9
                      local.get 3
                      i32.eq
                      br_if 3 (;@5;)
                      local.get 9
                      local.get 9
                      i32.load offset=4
                      i32.const -2
                      i32.and
                      i32.store offset=4
                      local.get 9
                      local.get 9
                      local.get 3
                      i32.sub
                      local.tee 0
                      i32.store
                      local.get 3
                      local.get 0
                      i32.const 1
                      i32.or
                      i32.store offset=4
                      block ;; label = @9
                        local.get 0
                        i32.const 255
                        i32.gt_u
                        br_if 0 (;@9;)
                        local.get 0
                        i32.const -8
                        i32.and
                        i32.const 1051580
                        i32.add
                        local.set 4
                        block ;; label = @10
                          block ;; label = @11
                            i32.const 0
                            i32.load offset=1051540
                            local.tee 6
                            i32.const 1
                            local.get 0
                            i32.const 3
                            i32.shr_u
                            i32.shl
                            local.tee 0
                            i32.and
                            br_if 0 (;@11;)
                            i32.const 0
                            local.get 6
                            local.get 0
                            i32.or
                            i32.store offset=1051540
                            local.get 4
                            local.set 6
                            br 1 (;@10;)
                          end
                          local.get 4
                          i32.load offset=8
                          local.set 6
                        end
                        local.get 6
                        local.get 3
                        i32.store offset=12
                        local.get 4
                        local.get 3
                        i32.store offset=8
                        local.get 3
                        local.get 4
                        i32.store offset=12
                        local.get 3
                        local.get 6
                        i32.store offset=8
                        br 4 (;@5;)
                      end
                      i32.const 31
                      local.set 4
                      block ;; label = @9
                        local.get 0
                        i32.const 16777215
                        i32.gt_u
                        br_if 0 (;@9;)
                        local.get 0
                        i32.const 8
                        i32.shr_u
                        local.tee 4
                        local.get 4
                        i32.const 1048320
                        i32.add
                        i32.const 16
                        i32.shr_u
                        i32.const 8
                        i32.and
                        local.tee 4
                        i32.shl
                        local.tee 6
                        local.get 6
                        i32.const 520192
                        i32.add
                        i32.const 16
                        i32.shr_u
                        i32.const 4
                        i32.and
                        local.tee 6
                        i32.shl
                        local.tee 9
                        local.get 9
                        i32.const 245760
                        i32.add
                        i32.const 16
                        i32.shr_u
                        i32.const 2
                        i32.and
                        local.tee 9
                        i32.shl
                        i32.const 15
                        i32.shr_u
                        local.get 4
                        local.get 6
                        i32.or
                        local.get 9
                        i32.or
                        i32.sub
                        local.tee 4
                        i32.const 1
                        i32.shl
                        local.get 0
                        local.get 4
                        i32.const 21
                        i32.add
                        i32.shr_u
                        i32.const 1
                        i32.and
                        i32.or
                        i32.const 28
                        i32.add
                        local.set 4
                      end
                      local.get 3
                      local.get 4
                      i32.store offset=28
                      local.get 3
                      i64.const 0
                      i64.store offset=16 align=4
                      local.get 4
                      i32.const 2
                      i32.shl
                      i32.const 1051844
                      i32.add
                      local.set 6
                      block ;; label = @9
                        i32.const 0
                        i32.load offset=1051544
                        local.tee 9
                        i32.const 1
                        local.get 4
                        i32.shl
                        local.tee 7
                        i32.and
                        br_if 0 (;@9;)
                        local.get 6
                        local.get 3
                        i32.store
                        i32.const 0
                        local.get 9
                        local.get 7
                        i32.or
                        i32.store offset=1051544
                        local.get 3
                        local.get 6
                        i32.store offset=24
                        local.get 3
                        local.get 3
                        i32.store offset=8
                        local.get 3
                        local.get 3
                        i32.store offset=12
                        br 4 (;@5;)
                      end
                      local.get 0
                      i32.const 0
                      i32.const 25
                      local.get 4
                      i32.const 1
                      i32.shr_u
                      i32.sub
                      local.get 4
                      i32.const 31
                      i32.eq
                      select
                      i32.shl
                      local.set 4
                      local.get 6
                      i32.load
                      local.set 9
                      loop ;; label = @9
                        local.get 9
                        local.tee 6
                        i32.load offset=4
                        i32.const -8
                        i32.and
                        local.get 0
                        i32.eq
                        br_if 3 (;@6;)
                        local.get 4
                        i32.const 29
                        i32.shr_u
                        local.set 9
                        local.get 4
                        i32.const 1
                        i32.shl
                        local.set 4
                        local.get 6
                        local.get 9
                        i32.const 4
                        i32.and
                        i32.add
                        i32.const 16
                        i32.add
                        local.tee 7
                        i32.load
                        local.tee 9
                        br_if 0 (;@9;)
                      end
                      local.get 7
                      local.get 3
                      i32.store
                      local.get 3
                      local.get 6
                      i32.store offset=24
                      local.get 3
                      local.get 3
                      i32.store offset=12
                      local.get 3
                      local.get 3
                      i32.store offset=8
                      br 3 (;@5;)
                    end
                    local.get 6
                    i32.load offset=8
                    local.tee 4
                    local.get 5
                    i32.store offset=12
                    local.get 6
                    local.get 5
                    i32.store offset=8
                    local.get 5
                    i32.const 0
                    i32.store offset=24
                    local.get 5
                    local.get 6
                    i32.store offset=12
                    local.get 5
                    local.get 4
                    i32.store offset=8
                  end
                  local.get 2
                  i32.const 8
                  i32.add
                  local.set 4
                  br 5 (;@1;)
                end
                local.get 6
                i32.load offset=8
                local.tee 4
                local.get 3
                i32.store offset=12
                local.get 6
                local.get 3
                i32.store offset=8
                local.get 3
                i32.const 0
                i32.store offset=24
                local.get 3
                local.get 6
                i32.store offset=12
                local.get 3
                local.get 4
                i32.store offset=8
              end
              i32.const 0
              i32.load offset=1051552
              local.tee 4
              local.get 5
              i32.le_u
              br_if 0 (;@4;)
              i32.const 0
              i32.load offset=1051564
              local.tee 3
              local.get 5
              i32.add
              local.tee 6
              local.get 4
              local.get 5
              i32.sub
              local.tee 4
              i32.const 1
              i32.or
              i32.store offset=4
              i32.const 0
              local.get 4
              i32.store offset=1051552
              i32.const 0
              local.get 6
              i32.store offset=1051564
              local.get 3
              local.get 5
              i32.const 3
              i32.or
              i32.store offset=4
              local.get 3
              i32.const 8
              i32.add
              local.set 4
              br 3 (;@1;)
            end
            i32.const 0
            local.set 4
            i32.const 0
            i32.const 48
            i32.store offset=1052036
            br 2 (;@1;)
          end
          block ;; label = @3
            local.get 2
            i32.eqz
            br_if 0 (;@3;)
            block ;; label = @4
              block ;; label = @5
                local.get 9
                local.get 9
                i32.load offset=28
                local.tee 6
                i32.const 2
                i32.shl
                i32.const 1051844
                i32.add
                local.tee 4
                i32.load
                i32.ne
                br_if 0 (;@5;)
                local.get 4
                local.get 0
                i32.store
                local.get 0
                br_if 1 (;@4;)
                i32.const 0
                local.get 10
                i32.const -2
                local.get 6
                i32.rotl
                i32.and
                local.tee 10
                i32.store offset=1051544
                br 2 (;@3;)
              end
              local.get 2
              i32.const 16
              i32.const 20
              local.get 2
              i32.load offset=16
              local.get 9
              i32.eq
              select
              i32.add
              local.get 0
              i32.store
              local.get 0
              i32.eqz
              br_if 1 (;@3;)
            end
            local.get 0
            local.get 2
            i32.store offset=24
            block ;; label = @4
              local.get 9
              i32.load offset=16
              local.tee 4
              i32.eqz
              br_if 0 (;@4;)
              local.get 0
              local.get 4
              i32.store offset=16
              local.get 4
              local.get 0
              i32.store offset=24
            end
            local.get 9
            i32.const 20
            i32.add
            i32.load
            local.tee 4
            i32.eqz
            br_if 0 (;@3;)
            local.get 0
            i32.const 20
            i32.add
            local.get 4
            i32.store
            local.get 4
            local.get 0
            i32.store offset=24
          end
          block ;; label = @3
            block ;; label = @4
              local.get 3
              i32.const 15
              i32.gt_u
              br_if 0 (;@4;)
              local.get 9
              local.get 3
              local.get 5
              i32.add
              local.tee 4
              i32.const 3
              i32.or
              i32.store offset=4
              local.get 9
              local.get 4
              i32.add
              local.tee 4
              local.get 4
              i32.load offset=4
              i32.const 1
              i32.or
              i32.store offset=4
              br 1 (;@3;)
            end
            local.get 9
            local.get 5
            i32.add
            local.tee 0
            local.get 3
            i32.const 1
            i32.or
            i32.store offset=4
            local.get 9
            local.get 5
            i32.const 3
            i32.or
            i32.store offset=4
            local.get 0
            local.get 3
            i32.add
            local.get 3
            i32.store
            block ;; label = @4
              local.get 3
              i32.const 255
              i32.gt_u
              br_if 0 (;@4;)
              local.get 3
              i32.const -8
              i32.and
              i32.const 1051580
              i32.add
              local.set 4
              block ;; label = @5
                block ;; label = @6
                  i32.const 0
                  i32.load offset=1051540
                  local.tee 6
                  i32.const 1
                  local.get 3
                  i32.const 3
                  i32.shr_u
                  i32.shl
                  local.tee 3
                  i32.and
                  br_if 0 (;@6;)
                  i32.const 0
                  local.get 6
                  local.get 3
                  i32.or
                  i32.store offset=1051540
                  local.get 4
                  local.set 3
                  br 1 (;@5;)
                end
                local.get 4
                i32.load offset=8
                local.set 3
              end
              local.get 3
              local.get 0
              i32.store offset=12
              local.get 4
              local.get 0
              i32.store offset=8
              local.get 0
              local.get 4
              i32.store offset=12
              local.get 0
              local.get 3
              i32.store offset=8
              br 1 (;@3;)
            end
            i32.const 31
            local.set 4
            block ;; label = @4
              local.get 3
              i32.const 16777215
              i32.gt_u
              br_if 0 (;@4;)
              local.get 3
              i32.const 8
              i32.shr_u
              local.tee 4
              local.get 4
              i32.const 1048320
              i32.add
              i32.const 16
              i32.shr_u
              i32.const 8
              i32.and
              local.tee 4
              i32.shl
              local.tee 6
              local.get 6
              i32.const 520192
              i32.add
              i32.const 16
              i32.shr_u
              i32.const 4
              i32.and
              local.tee 6
              i32.shl
              local.tee 5
              local.get 5
              i32.const 245760
              i32.add
              i32.const 16
              i32.shr_u
              i32.const 2
              i32.and
              local.tee 5
              i32.shl
              i32.const 15
              i32.shr_u
              local.get 4
              local.get 6
              i32.or
              local.get 5
              i32.or
              i32.sub
              local.tee 4
              i32.const 1
              i32.shl
              local.get 3
              local.get 4
              i32.const 21
              i32.add
              i32.shr_u
              i32.const 1
              i32.and
              i32.or
              i32.const 28
              i32.add
              local.set 4
            end
            local.get 0
            local.get 4
            i32.store offset=28
            local.get 0
            i64.const 0
            i64.store offset=16 align=4
            local.get 4
            i32.const 2
            i32.shl
            i32.const 1051844
            i32.add
            local.set 6
            block ;; label = @4
              local.get 10
              i32.const 1
              local.get 4
              i32.shl
              local.tee 5
              i32.and
              br_if 0 (;@4;)
              local.get 6
              local.get 0
              i32.store
              i32.const 0
              local.get 10
              local.get 5
              i32.or
              i32.store offset=1051544
              local.get 0
              local.get 6
              i32.store offset=24
              local.get 0
              local.get 0
              i32.store offset=8
              local.get 0
              local.get 0
              i32.store offset=12
              br 1 (;@3;)
            end
            local.get 3
            i32.const 0
            i32.const 25
            local.get 4
            i32.const 1
            i32.shr_u
            i32.sub
            local.get 4
            i32.const 31
            i32.eq
            select
            i32.shl
            local.set 4
            local.get 6
            i32.load
            local.set 5
            block ;; label = @4
              loop ;; label = @5
                local.get 5
                local.tee 6
                i32.load offset=4
                i32.const -8
                i32.and
                local.get 3
                i32.eq
                br_if 1 (;@4;)
                local.get 4
                i32.const 29
                i32.shr_u
                local.set 5
                local.get 4
                i32.const 1
                i32.shl
                local.set 4
                local.get 6
                local.get 5
                i32.const 4
                i32.and
                i32.add
                i32.const 16
                i32.add
                local.tee 7
                i32.load
                local.tee 5
                br_if 0 (;@5;)
              end
              local.get 7
              local.get 0
              i32.store
              local.get 0
              local.get 6
              i32.store offset=24
              local.get 0
              local.get 0
              i32.store offset=12
              local.get 0
              local.get 0
              i32.store offset=8
              br 1 (;@3;)
            end
            local.get 6
            i32.load offset=8
            local.tee 4
            local.get 0
            i32.store offset=12
            local.get 6
            local.get 0
            i32.store offset=8
            local.get 0
            i32.const 0
            i32.store offset=24
            local.get 0
            local.get 6
            i32.store offset=12
            local.get 0
            local.get 4
            i32.store offset=8
          end
          local.get 9
          i32.const 8
          i32.add
          local.set 4
          br 1 (;@1;)
        end
        block ;; label = @2
          local.get 11
          i32.eqz
          br_if 0 (;@2;)
          block ;; label = @3
            block ;; label = @4
              local.get 0
              local.get 0
              i32.load offset=28
              local.tee 6
              i32.const 2
              i32.shl
              i32.const 1051844
              i32.add
              local.tee 4
              i32.load
              i32.ne
              br_if 0 (;@4;)
              local.get 4
              local.get 9
              i32.store
              local.get 9
              br_if 1 (;@3;)
              i32.const 0
              local.get 10
              i32.const -2
              local.get 6
              i32.rotl
              i32.and
              i32.store offset=1051544
              br 2 (;@2;)
            end
            local.get 11
            i32.const 16
            i32.const 20
            local.get 11
            i32.load offset=16
            local.get 0
            i32.eq
            select
            i32.add
            local.get 9
            i32.store
            local.get 9
            i32.eqz
            br_if 1 (;@2;)
          end
          local.get 9
          local.get 11
          i32.store offset=24
          block ;; label = @3
            local.get 0
            i32.load offset=16
            local.tee 4
            i32.eqz
            br_if 0 (;@3;)
            local.get 9
            local.get 4
            i32.store offset=16
            local.get 4
            local.get 9
            i32.store offset=24
          end
          local.get 0
          i32.const 20
          i32.add
          i32.load
          local.tee 4
          i32.eqz
          br_if 0 (;@2;)
          local.get 9
          i32.const 20
          i32.add
          local.get 4
          i32.store
          local.get 4
          local.get 9
          i32.store offset=24
        end
        block ;; label = @2
          block ;; label = @3
            local.get 3
            i32.const 15
            i32.gt_u
            br_if 0 (;@3;)
            local.get 0
            local.get 3
            local.get 5
            i32.add
            local.tee 4
            i32.const 3
            i32.or
            i32.store offset=4
            local.get 0
            local.get 4
            i32.add
            local.tee 4
            local.get 4
            i32.load offset=4
            i32.const 1
            i32.or
            i32.store offset=4
            br 1 (;@2;)
          end
          local.get 0
          local.get 5
          i32.add
          local.tee 6
          local.get 3
          i32.const 1
          i32.or
          i32.store offset=4
          local.get 0
          local.get 5
          i32.const 3
          i32.or
          i32.store offset=4
          local.get 6
          local.get 3
          i32.add
          local.get 3
          i32.store
          block ;; label = @3
            local.get 8
            i32.eqz
            br_if 0 (;@3;)
            local.get 8
            i32.const -8
            i32.and
            i32.const 1051580
            i32.add
            local.set 5
            i32.const 0
            i32.load offset=1051560
            local.set 4
            block ;; label = @4
              block ;; label = @5
                i32.const 1
                local.get 8
                i32.const 3
                i32.shr_u
                i32.shl
                local.tee 9
                local.get 7
                i32.and
                br_if 0 (;@5;)
                i32.const 0
                local.get 9
                local.get 7
                i32.or
                i32.store offset=1051540
                local.get 5
                local.set 9
                br 1 (;@4;)
              end
              local.get 5
              i32.load offset=8
              local.set 9
            end
            local.get 9
            local.get 4
            i32.store offset=12
            local.get 5
            local.get 4
            i32.store offset=8
            local.get 4
            local.get 5
            i32.store offset=12
            local.get 4
            local.get 9
            i32.store offset=8
          end
          i32.const 0
          local.get 6
          i32.store offset=1051560
          i32.const 0
          local.get 3
          i32.store offset=1051548
        end
        local.get 0
        i32.const 8
        i32.add
        local.set 4
      end
      local.get 1
      i32.const 16
      i32.add
      global.set $__stack_pointer
      local.get 4
    )
    (func $free (;94;) (type $.rodata) (param i32)
      local.get 0
      call $dlfree
    )
    (func $dlfree (;95;) (type $.rodata) (param i32)
      (local i32 i32 i32 i32 i32 i32 i32)
      block ;; label = @1
        local.get 0
        i32.eqz
        br_if 0 (;@1;)
        local.get 0
        i32.const -8
        i32.add
        local.tee 1
        local.get 0
        i32.const -4
        i32.add
        i32.load
        local.tee 2
        i32.const -8
        i32.and
        local.tee 0
        i32.add
        local.set 3
        block ;; label = @2
          local.get 2
          i32.const 1
          i32.and
          br_if 0 (;@2;)
          local.get 2
          i32.const 3
          i32.and
          i32.eqz
          br_if 1 (;@1;)
          local.get 1
          local.get 1
          i32.load
          local.tee 2
          i32.sub
          local.tee 1
          i32.const 0
          i32.load offset=1051556
          local.tee 4
          i32.lt_u
          br_if 1 (;@1;)
          local.get 2
          local.get 0
          i32.add
          local.set 0
          block ;; label = @3
            local.get 1
            i32.const 0
            i32.load offset=1051560
            i32.eq
            br_if 0 (;@3;)
            block ;; label = @4
              local.get 2
              i32.const 255
              i32.gt_u
              br_if 0 (;@4;)
              local.get 1
              i32.load offset=8
              local.tee 4
              local.get 2
              i32.const 3
              i32.shr_u
              local.tee 5
              i32.const 3
              i32.shl
              i32.const 1051580
              i32.add
              local.tee 6
              i32.eq
              drop
              block ;; label = @5
                local.get 1
                i32.load offset=12
                local.tee 2
                local.get 4
                i32.ne
                br_if 0 (;@5;)
                i32.const 0
                i32.const 0
                i32.load offset=1051540
                i32.const -2
                local.get 5
                i32.rotl
                i32.and
                i32.store offset=1051540
                br 3 (;@2;)
              end
              local.get 2
              local.get 6
              i32.eq
              drop
              local.get 2
              local.get 4
              i32.store offset=8
              local.get 4
              local.get 2
              i32.store offset=12
              br 2 (;@2;)
            end
            local.get 1
            i32.load offset=24
            local.set 7
            block ;; label = @4
              block ;; label = @5
                local.get 1
                i32.load offset=12
                local.tee 6
                local.get 1
                i32.eq
                br_if 0 (;@5;)
                local.get 1
                i32.load offset=8
                local.tee 2
                local.get 4
                i32.lt_u
                drop
                local.get 6
                local.get 2
                i32.store offset=8
                local.get 2
                local.get 6
                i32.store offset=12
                br 1 (;@4;)
              end
              block ;; label = @5
                local.get 1
                i32.const 20
                i32.add
                local.tee 2
                i32.load
                local.tee 4
                br_if 0 (;@5;)
                local.get 1
                i32.const 16
                i32.add
                local.tee 2
                i32.load
                local.tee 4
                br_if 0 (;@5;)
                i32.const 0
                local.set 6
                br 1 (;@4;)
              end
              loop ;; label = @5
                local.get 2
                local.set 5
                local.get 4
                local.tee 6
                i32.const 20
                i32.add
                local.tee 2
                i32.load
                local.tee 4
                br_if 0 (;@5;)
                local.get 6
                i32.const 16
                i32.add
                local.set 2
                local.get 6
                i32.load offset=16
                local.tee 4
                br_if 0 (;@5;)
              end
              local.get 5
              i32.const 0
              i32.store
            end
            local.get 7
            i32.eqz
            br_if 1 (;@2;)
            block ;; label = @4
              block ;; label = @5
                local.get 1
                local.get 1
                i32.load offset=28
                local.tee 4
                i32.const 2
                i32.shl
                i32.const 1051844
                i32.add
                local.tee 2
                i32.load
                i32.ne
                br_if 0 (;@5;)
                local.get 2
                local.get 6
                i32.store
                local.get 6
                br_if 1 (;@4;)
                i32.const 0
                i32.const 0
                i32.load offset=1051544
                i32.const -2
                local.get 4
                i32.rotl
                i32.and
                i32.store offset=1051544
                br 3 (;@2;)
              end
              local.get 7
              i32.const 16
              i32.const 20
              local.get 7
              i32.load offset=16
              local.get 1
              i32.eq
              select
              i32.add
              local.get 6
              i32.store
              local.get 6
              i32.eqz
              br_if 2 (;@2;)
            end
            local.get 6
            local.get 7
            i32.store offset=24
            block ;; label = @4
              local.get 1
              i32.load offset=16
              local.tee 2
              i32.eqz
              br_if 0 (;@4;)
              local.get 6
              local.get 2
              i32.store offset=16
              local.get 2
              local.get 6
              i32.store offset=24
            end
            local.get 1
            i32.load offset=20
            local.tee 2
            i32.eqz
            br_if 1 (;@2;)
            local.get 6
            i32.const 20
            i32.add
            local.get 2
            i32.store
            local.get 2
            local.get 6
            i32.store offset=24
            br 1 (;@2;)
          end
          local.get 3
          i32.load offset=4
          local.tee 2
          i32.const 3
          i32.and
          i32.const 3
          i32.ne
          br_if 0 (;@2;)
          local.get 3
          local.get 2
          i32.const -2
          i32.and
          i32.store offset=4
          i32.const 0
          local.get 0
          i32.store offset=1051548
          local.get 1
          local.get 0
          i32.add
          local.get 0
          i32.store
          local.get 1
          local.get 0
          i32.const 1
          i32.or
          i32.store offset=4
          return
        end
        local.get 1
        local.get 3
        i32.ge_u
        br_if 0 (;@1;)
        local.get 3
        i32.load offset=4
        local.tee 2
        i32.const 1
        i32.and
        i32.eqz
        br_if 0 (;@1;)
        block ;; label = @2
          block ;; label = @3
            local.get 2
            i32.const 2
            i32.and
            br_if 0 (;@3;)
            block ;; label = @4
              local.get 3
              i32.const 0
              i32.load offset=1051564
              i32.ne
              br_if 0 (;@4;)
              i32.const 0
              local.get 1
              i32.store offset=1051564
              i32.const 0
              i32.const 0
              i32.load offset=1051552
              local.get 0
              i32.add
              local.tee 0
              i32.store offset=1051552
              local.get 1
              local.get 0
              i32.const 1
              i32.or
              i32.store offset=4
              local.get 1
              i32.const 0
              i32.load offset=1051560
              i32.ne
              br_if 3 (;@1;)
              i32.const 0
              i32.const 0
              i32.store offset=1051548
              i32.const 0
              i32.const 0
              i32.store offset=1051560
              return
            end
            block ;; label = @4
              local.get 3
              i32.const 0
              i32.load offset=1051560
              i32.ne
              br_if 0 (;@4;)
              i32.const 0
              local.get 1
              i32.store offset=1051560
              i32.const 0
              i32.const 0
              i32.load offset=1051548
              local.get 0
              i32.add
              local.tee 0
              i32.store offset=1051548
              local.get 1
              local.get 0
              i32.const 1
              i32.or
              i32.store offset=4
              local.get 1
              local.get 0
              i32.add
              local.get 0
              i32.store
              return
            end
            local.get 2
            i32.const -8
            i32.and
            local.get 0
            i32.add
            local.set 0
            block ;; label = @4
              block ;; label = @5
                local.get 2
                i32.const 255
                i32.gt_u
                br_if 0 (;@5;)
                local.get 3
                i32.load offset=8
                local.tee 4
                local.get 2
                i32.const 3
                i32.shr_u
                local.tee 5
                i32.const 3
                i32.shl
                i32.const 1051580
                i32.add
                local.tee 6
                i32.eq
                drop
                block ;; label = @6
                  local.get 3
                  i32.load offset=12
                  local.tee 2
                  local.get 4
                  i32.ne
                  br_if 0 (;@6;)
                  i32.const 0
                  i32.const 0
                  i32.load offset=1051540
                  i32.const -2
                  local.get 5
                  i32.rotl
                  i32.and
                  i32.store offset=1051540
                  br 2 (;@4;)
                end
                local.get 2
                local.get 6
                i32.eq
                drop
                local.get 2
                local.get 4
                i32.store offset=8
                local.get 4
                local.get 2
                i32.store offset=12
                br 1 (;@4;)
              end
              local.get 3
              i32.load offset=24
              local.set 7
              block ;; label = @5
                block ;; label = @6
                  local.get 3
                  i32.load offset=12
                  local.tee 6
                  local.get 3
                  i32.eq
                  br_if 0 (;@6;)
                  local.get 3
                  i32.load offset=8
                  local.tee 2
                  i32.const 0
                  i32.load offset=1051556
                  i32.lt_u
                  drop
                  local.get 6
                  local.get 2
                  i32.store offset=8
                  local.get 2
                  local.get 6
                  i32.store offset=12
                  br 1 (;@5;)
                end
                block ;; label = @6
                  local.get 3
                  i32.const 20
                  i32.add
                  local.tee 2
                  i32.load
                  local.tee 4
                  br_if 0 (;@6;)
                  local.get 3
                  i32.const 16
                  i32.add
                  local.tee 2
                  i32.load
                  local.tee 4
                  br_if 0 (;@6;)
                  i32.const 0
                  local.set 6
                  br 1 (;@5;)
                end
                loop ;; label = @6
                  local.get 2
                  local.set 5
                  local.get 4
                  local.tee 6
                  i32.const 20
                  i32.add
                  local.tee 2
                  i32.load
                  local.tee 4
                  br_if 0 (;@6;)
                  local.get 6
                  i32.const 16
                  i32.add
                  local.set 2
                  local.get 6
                  i32.load offset=16
                  local.tee 4
                  br_if 0 (;@6;)
                end
                local.get 5
                i32.const 0
                i32.store
              end
              local.get 7
              i32.eqz
              br_if 0 (;@4;)
              block ;; label = @5
                block ;; label = @6
                  local.get 3
                  local.get 3
                  i32.load offset=28
                  local.tee 4
                  i32.const 2
                  i32.shl
                  i32.const 1051844
                  i32.add
                  local.tee 2
                  i32.load
                  i32.ne
                  br_if 0 (;@6;)
                  local.get 2
                  local.get 6
                  i32.store
                  local.get 6
                  br_if 1 (;@5;)
                  i32.const 0
                  i32.const 0
                  i32.load offset=1051544
                  i32.const -2
                  local.get 4
                  i32.rotl
                  i32.and
                  i32.store offset=1051544
                  br 2 (;@4;)
                end
                local.get 7
                i32.const 16
                i32.const 20
                local.get 7
                i32.load offset=16
                local.get 3
                i32.eq
                select
                i32.add
                local.get 6
                i32.store
                local.get 6
                i32.eqz
                br_if 1 (;@4;)
              end
              local.get 6
              local.get 7
              i32.store offset=24
              block ;; label = @5
                local.get 3
                i32.load offset=16
                local.tee 2
                i32.eqz
                br_if 0 (;@5;)
                local.get 6
                local.get 2
                i32.store offset=16
                local.get 2
                local.get 6
                i32.store offset=24
              end
              local.get 3
              i32.load offset=20
              local.tee 2
              i32.eqz
              br_if 0 (;@4;)
              local.get 6
              i32.const 20
              i32.add
              local.get 2
              i32.store
              local.get 2
              local.get 6
              i32.store offset=24
            end
            local.get 1
            local.get 0
            i32.add
            local.get 0
            i32.store
            local.get 1
            local.get 0
            i32.const 1
            i32.or
            i32.store offset=4
            local.get 1
            i32.const 0
            i32.load offset=1051560
            i32.ne
            br_if 1 (;@2;)
            i32.const 0
            local.get 0
            i32.store offset=1051548
            return
          end
          local.get 3
          local.get 2
          i32.const -2
          i32.and
          i32.store offset=4
          local.get 1
          local.get 0
          i32.add
          local.get 0
          i32.store
          local.get 1
          local.get 0
          i32.const 1
          i32.or
          i32.store offset=4
        end
        block ;; label = @2
          local.get 0
          i32.const 255
          i32.gt_u
          br_if 0 (;@2;)
          local.get 0
          i32.const -8
          i32.and
          i32.const 1051580
          i32.add
          local.set 2
          block ;; label = @3
            block ;; label = @4
              i32.const 0
              i32.load offset=1051540
              local.tee 4
              i32.const 1
              local.get 0
              i32.const 3
              i32.shr_u
              i32.shl
              local.tee 0
              i32.and
              br_if 0 (;@4;)
              i32.const 0
              local.get 4
              local.get 0
              i32.or
              i32.store offset=1051540
              local.get 2
              local.set 0
              br 1 (;@3;)
            end
            local.get 2
            i32.load offset=8
            local.set 0
          end
          local.get 0
          local.get 1
          i32.store offset=12
          local.get 2
          local.get 1
          i32.store offset=8
          local.get 1
          local.get 2
          i32.store offset=12
          local.get 1
          local.get 0
          i32.store offset=8
          return
        end
        i32.const 31
        local.set 2
        block ;; label = @2
          local.get 0
          i32.const 16777215
          i32.gt_u
          br_if 0 (;@2;)
          local.get 0
          i32.const 8
          i32.shr_u
          local.tee 2
          local.get 2
          i32.const 1048320
          i32.add
          i32.const 16
          i32.shr_u
          i32.const 8
          i32.and
          local.tee 2
          i32.shl
          local.tee 4
          local.get 4
          i32.const 520192
          i32.add
          i32.const 16
          i32.shr_u
          i32.const 4
          i32.and
          local.tee 4
          i32.shl
          local.tee 6
          local.get 6
          i32.const 245760
          i32.add
          i32.const 16
          i32.shr_u
          i32.const 2
          i32.and
          local.tee 6
          i32.shl
          i32.const 15
          i32.shr_u
          local.get 2
          local.get 4
          i32.or
          local.get 6
          i32.or
          i32.sub
          local.tee 2
          i32.const 1
          i32.shl
          local.get 0
          local.get 2
          i32.const 21
          i32.add
          i32.shr_u
          i32.const 1
          i32.and
          i32.or
          i32.const 28
          i32.add
          local.set 2
        end
        local.get 1
        local.get 2
        i32.store offset=28
        local.get 1
        i64.const 0
        i64.store offset=16 align=4
        local.get 2
        i32.const 2
        i32.shl
        i32.const 1051844
        i32.add
        local.set 4
        block ;; label = @2
          block ;; label = @3
            i32.const 0
            i32.load offset=1051544
            local.tee 6
            i32.const 1
            local.get 2
            i32.shl
            local.tee 3
            i32.and
            br_if 0 (;@3;)
            local.get 4
            local.get 1
            i32.store
            i32.const 0
            local.get 6
            local.get 3
            i32.or
            i32.store offset=1051544
            local.get 1
            local.get 4
            i32.store offset=24
            local.get 1
            local.get 1
            i32.store offset=8
            local.get 1
            local.get 1
            i32.store offset=12
            br 1 (;@2;)
          end
          local.get 0
          i32.const 0
          i32.const 25
          local.get 2
          i32.const 1
          i32.shr_u
          i32.sub
          local.get 2
          i32.const 31
          i32.eq
          select
          i32.shl
          local.set 2
          local.get 4
          i32.load
          local.set 6
          block ;; label = @3
            loop ;; label = @4
              local.get 6
              local.tee 4
              i32.load offset=4
              i32.const -8
              i32.and
              local.get 0
              i32.eq
              br_if 1 (;@3;)
              local.get 2
              i32.const 29
              i32.shr_u
              local.set 6
              local.get 2
              i32.const 1
              i32.shl
              local.set 2
              local.get 4
              local.get 6
              i32.const 4
              i32.and
              i32.add
              i32.const 16
              i32.add
              local.tee 3
              i32.load
              local.tee 6
              br_if 0 (;@4;)
            end
            local.get 3
            local.get 1
            i32.store
            local.get 1
            local.get 4
            i32.store offset=24
            local.get 1
            local.get 1
            i32.store offset=12
            local.get 1
            local.get 1
            i32.store offset=8
            br 1 (;@2;)
          end
          local.get 4
          i32.load offset=8
          local.tee 0
          local.get 1
          i32.store offset=12
          local.get 4
          local.get 1
          i32.store offset=8
          local.get 1
          i32.const 0
          i32.store offset=24
          local.get 1
          local.get 4
          i32.store offset=12
          local.get 1
          local.get 0
          i32.store offset=8
        end
        i32.const 0
        i32.const 0
        i32.load offset=1051572
        i32.const -1
        i32.add
        local.tee 1
        i32.const -1
        local.get 1
        select
        i32.store offset=1051572
      end
    )
    (func $calloc (;96;) (type 5) (param i32 i32) (result i32)
      (local i32 i64)
      block ;; label = @1
        block ;; label = @2
          local.get 0
          br_if 0 (;@2;)
          i32.const 0
          local.set 2
          br 1 (;@1;)
        end
        local.get 0
        i64.extend_i32_u
        local.get 1
        i64.extend_i32_u
        i64.mul
        local.tee 3
        i32.wrap_i64
        local.set 2
        local.get 1
        local.get 0
        i32.or
        i32.const 65536
        i32.lt_u
        br_if 0 (;@1;)
        i32.const -1
        local.get 2
        local.get 3
        i64.const 32
        i64.shr_u
        i32.wrap_i64
        i32.const 0
        i32.ne
        select
        local.set 2
      end
      block ;; label = @1
        local.get 2
        call $dlmalloc
        local.tee 0
        i32.eqz
        br_if 0 (;@1;)
        local.get 0
        i32.const -4
        i32.add
        i32.load8_u
        i32.const 3
        i32.and
        i32.eqz
        br_if 0 (;@1;)
        local.get 0
        i32.const 0
        local.get 2
        call $memset
        drop
      end
      local.get 0
    )
    (func $realloc (;97;) (type 5) (param i32 i32) (result i32)
      (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
      block ;; label = @1
        local.get 0
        br_if 0 (;@1;)
        local.get 1
        call $dlmalloc
        return
      end
      block ;; label = @1
        local.get 1
        i32.const -64
        i32.lt_u
        br_if 0 (;@1;)
        i32.const 0
        i32.const 48
        i32.store offset=1052036
        i32.const 0
        return
      end
      i32.const 16
      local.get 1
      i32.const 19
      i32.add
      i32.const -16
      i32.and
      local.get 1
      i32.const 11
      i32.lt_u
      select
      local.set 2
      local.get 0
      i32.const -4
      i32.add
      local.tee 3
      i32.load
      local.tee 4
      i32.const -8
      i32.and
      local.set 5
      block ;; label = @1
        block ;; label = @2
          block ;; label = @3
            local.get 4
            i32.const 3
            i32.and
            br_if 0 (;@3;)
            local.get 2
            i32.const 256
            i32.lt_u
            br_if 1 (;@2;)
            local.get 5
            local.get 2
            i32.const 4
            i32.or
            i32.lt_u
            br_if 1 (;@2;)
            local.get 5
            local.get 2
            i32.sub
            i32.const 0
            i32.load offset=1052020
            i32.const 1
            i32.shl
            i32.le_u
            br_if 2 (;@1;)
            br 1 (;@2;)
          end
          local.get 0
          i32.const -8
          i32.add
          local.tee 6
          local.get 5
          i32.add
          local.set 7
          block ;; label = @3
            local.get 5
            local.get 2
            i32.lt_u
            br_if 0 (;@3;)
            local.get 5
            local.get 2
            i32.sub
            local.tee 1
            i32.const 16
            i32.lt_u
            br_if 2 (;@1;)
            local.get 3
            local.get 2
            local.get 4
            i32.const 1
            i32.and
            i32.or
            i32.const 2
            i32.or
            i32.store
            local.get 6
            local.get 2
            i32.add
            local.tee 2
            local.get 1
            i32.const 3
            i32.or
            i32.store offset=4
            local.get 7
            local.get 7
            i32.load offset=4
            i32.const 1
            i32.or
            i32.store offset=4
            local.get 2
            local.get 1
            call $dispose_chunk
            local.get 0
            return
          end
          block ;; label = @3
            local.get 7
            i32.const 0
            i32.load offset=1051564
            i32.ne
            br_if 0 (;@3;)
            i32.const 0
            i32.load offset=1051552
            local.get 5
            i32.add
            local.tee 5
            local.get 2
            i32.le_u
            br_if 1 (;@2;)
            local.get 3
            local.get 2
            local.get 4
            i32.const 1
            i32.and
            i32.or
            i32.const 2
            i32.or
            i32.store
            i32.const 0
            local.get 6
            local.get 2
            i32.add
            local.tee 1
            i32.store offset=1051564
            i32.const 0
            local.get 5
            local.get 2
            i32.sub
            local.tee 2
            i32.store offset=1051552
            local.get 1
            local.get 2
            i32.const 1
            i32.or
            i32.store offset=4
            local.get 0
            return
          end
          block ;; label = @3
            local.get 7
            i32.const 0
            i32.load offset=1051560
            i32.ne
            br_if 0 (;@3;)
            i32.const 0
            i32.load offset=1051548
            local.get 5
            i32.add
            local.tee 5
            local.get 2
            i32.lt_u
            br_if 1 (;@2;)
            block ;; label = @4
              block ;; label = @5
                local.get 5
                local.get 2
                i32.sub
                local.tee 1
                i32.const 16
                i32.lt_u
                br_if 0 (;@5;)
                local.get 3
                local.get 2
                local.get 4
                i32.const 1
                i32.and
                i32.or
                i32.const 2
                i32.or
                i32.store
                local.get 6
                local.get 2
                i32.add
                local.tee 2
                local.get 1
                i32.const 1
                i32.or
                i32.store offset=4
                local.get 6
                local.get 5
                i32.add
                local.tee 5
                local.get 1
                i32.store
                local.get 5
                local.get 5
                i32.load offset=4
                i32.const -2
                i32.and
                i32.store offset=4
                br 1 (;@4;)
              end
              local.get 3
              local.get 4
              i32.const 1
              i32.and
              local.get 5
              i32.or
              i32.const 2
              i32.or
              i32.store
              local.get 6
              local.get 5
              i32.add
              local.tee 1
              local.get 1
              i32.load offset=4
              i32.const 1
              i32.or
              i32.store offset=4
              i32.const 0
              local.set 1
              i32.const 0
              local.set 2
            end
            i32.const 0
            local.get 2
            i32.store offset=1051560
            i32.const 0
            local.get 1
            i32.store offset=1051548
            local.get 0
            return
          end
          local.get 7
          i32.load offset=4
          local.tee 8
          i32.const 2
          i32.and
          br_if 0 (;@2;)
          local.get 8
          i32.const -8
          i32.and
          local.get 5
          i32.add
          local.tee 9
          local.get 2
          i32.lt_u
          br_if 0 (;@2;)
          local.get 9
          local.get 2
          i32.sub
          local.set 10
          block ;; label = @3
            block ;; label = @4
              local.get 8
              i32.const 255
              i32.gt_u
              br_if 0 (;@4;)
              local.get 7
              i32.load offset=8
              local.tee 1
              local.get 8
              i32.const 3
              i32.shr_u
              local.tee 11
              i32.const 3
              i32.shl
              i32.const 1051580
              i32.add
              local.tee 8
              i32.eq
              drop
              block ;; label = @5
                local.get 7
                i32.load offset=12
                local.tee 5
                local.get 1
                i32.ne
                br_if 0 (;@5;)
                i32.const 0
                i32.const 0
                i32.load offset=1051540
                i32.const -2
                local.get 11
                i32.rotl
                i32.and
                i32.store offset=1051540
                br 2 (;@3;)
              end
              local.get 5
              local.get 8
              i32.eq
              drop
              local.get 5
              local.get 1
              i32.store offset=8
              local.get 1
              local.get 5
              i32.store offset=12
              br 1 (;@3;)
            end
            local.get 7
            i32.load offset=24
            local.set 12
            block ;; label = @4
              block ;; label = @5
                local.get 7
                i32.load offset=12
                local.tee 8
                local.get 7
                i32.eq
                br_if 0 (;@5;)
                local.get 7
                i32.load offset=8
                local.tee 1
                i32.const 0
                i32.load offset=1051556
                i32.lt_u
                drop
                local.get 8
                local.get 1
                i32.store offset=8
                local.get 1
                local.get 8
                i32.store offset=12
                br 1 (;@4;)
              end
              block ;; label = @5
                local.get 7
                i32.const 20
                i32.add
                local.tee 1
                i32.load
                local.tee 5
                br_if 0 (;@5;)
                local.get 7
                i32.const 16
                i32.add
                local.tee 1
                i32.load
                local.tee 5
                br_if 0 (;@5;)
                i32.const 0
                local.set 8
                br 1 (;@4;)
              end
              loop ;; label = @5
                local.get 1
                local.set 11
                local.get 5
                local.tee 8
                i32.const 20
                i32.add
                local.tee 1
                i32.load
                local.tee 5
                br_if 0 (;@5;)
                local.get 8
                i32.const 16
                i32.add
                local.set 1
                local.get 8
                i32.load offset=16
                local.tee 5
                br_if 0 (;@5;)
              end
              local.get 11
              i32.const 0
              i32.store
            end
            local.get 12
            i32.eqz
            br_if 0 (;@3;)
            block ;; label = @4
              block ;; label = @5
                local.get 7
                local.get 7
                i32.load offset=28
                local.tee 5
                i32.const 2
                i32.shl
                i32.const 1051844
                i32.add
                local.tee 1
                i32.load
                i32.ne
                br_if 0 (;@5;)
                local.get 1
                local.get 8
                i32.store
                local.get 8
                br_if 1 (;@4;)
                i32.const 0
                i32.const 0
                i32.load offset=1051544
                i32.const -2
                local.get 5
                i32.rotl
                i32.and
                i32.store offset=1051544
                br 2 (;@3;)
              end
              local.get 12
              i32.const 16
              i32.const 20
              local.get 12
              i32.load offset=16
              local.get 7
              i32.eq
              select
              i32.add
              local.get 8
              i32.store
              local.get 8
              i32.eqz
              br_if 1 (;@3;)
            end
            local.get 8
            local.get 12
            i32.store offset=24
            block ;; label = @4
              local.get 7
              i32.load offset=16
              local.tee 1
              i32.eqz
              br_if 0 (;@4;)
              local.get 8
              local.get 1
              i32.store offset=16
              local.get 1
              local.get 8
              i32.store offset=24
            end
            local.get 7
            i32.load offset=20
            local.tee 1
            i32.eqz
            br_if 0 (;@3;)
            local.get 8
            i32.const 20
            i32.add
            local.get 1
            i32.store
            local.get 1
            local.get 8
            i32.store offset=24
          end
          block ;; label = @3
            local.get 10
            i32.const 15
            i32.gt_u
            br_if 0 (;@3;)
            local.get 3
            local.get 4
            i32.const 1
            i32.and
            local.get 9
            i32.or
            i32.const 2
            i32.or
            i32.store
            local.get 6
            local.get 9
            i32.add
            local.tee 1
            local.get 1
            i32.load offset=4
            i32.const 1
            i32.or
            i32.store offset=4
            local.get 0
            return
          end
          local.get 3
          local.get 2
          local.get 4
          i32.const 1
          i32.and
          i32.or
          i32.const 2
          i32.or
          i32.store
          local.get 6
          local.get 2
          i32.add
          local.tee 1
          local.get 10
          i32.const 3
          i32.or
          i32.store offset=4
          local.get 6
          local.get 9
          i32.add
          local.tee 2
          local.get 2
          i32.load offset=4
          i32.const 1
          i32.or
          i32.store offset=4
          local.get 1
          local.get 10
          call $dispose_chunk
          local.get 0
          return
        end
        block ;; label = @2
          local.get 1
          call $dlmalloc
          local.tee 2
          br_if 0 (;@2;)
          i32.const 0
          return
        end
        local.get 2
        local.get 0
        i32.const -4
        i32.const -8
        local.get 3
        i32.load
        local.tee 5
        i32.const 3
        i32.and
        select
        local.get 5
        i32.const -8
        i32.and
        i32.add
        local.tee 5
        local.get 1
        local.get 5
        local.get 1
        i32.lt_u
        select
        call $memcpy
        local.set 1
        local.get 0
        call $dlfree
        local.get 1
        local.set 0
      end
      local.get 0
    )
    (func $dispose_chunk (;98;) (type 3) (param i32 i32)
      (local i32 i32 i32 i32 i32 i32)
      local.get 0
      local.get 1
      i32.add
      local.set 2
      block ;; label = @1
        block ;; label = @2
          local.get 0
          i32.load offset=4
          local.tee 3
          i32.const 1
          i32.and
          br_if 0 (;@2;)
          local.get 3
          i32.const 3
          i32.and
          i32.eqz
          br_if 1 (;@1;)
          local.get 0
          i32.load
          local.tee 3
          local.get 1
          i32.add
          local.set 1
          block ;; label = @3
            block ;; label = @4
              local.get 0
              local.get 3
              i32.sub
              local.tee 0
              i32.const 0
              i32.load offset=1051560
              i32.eq
              br_if 0 (;@4;)
              block ;; label = @5
                local.get 3
                i32.const 255
                i32.gt_u
                br_if 0 (;@5;)
                local.get 0
                i32.load offset=8
                local.tee 4
                local.get 3
                i32.const 3
                i32.shr_u
                local.tee 5
                i32.const 3
                i32.shl
                i32.const 1051580
                i32.add
                local.tee 6
                i32.eq
                drop
                local.get 0
                i32.load offset=12
                local.tee 3
                local.get 4
                i32.ne
                br_if 2 (;@3;)
                i32.const 0
                i32.const 0
                i32.load offset=1051540
                i32.const -2
                local.get 5
                i32.rotl
                i32.and
                i32.store offset=1051540
                br 3 (;@2;)
              end
              local.get 0
              i32.load offset=24
              local.set 7
              block ;; label = @5
                block ;; label = @6
                  local.get 0
                  i32.load offset=12
                  local.tee 6
                  local.get 0
                  i32.eq
                  br_if 0 (;@6;)
                  local.get 0
                  i32.load offset=8
                  local.tee 3
                  i32.const 0
                  i32.load offset=1051556
                  i32.lt_u
                  drop
                  local.get 6
                  local.get 3
                  i32.store offset=8
                  local.get 3
                  local.get 6
                  i32.store offset=12
                  br 1 (;@5;)
                end
                block ;; label = @6
                  local.get 0
                  i32.const 20
                  i32.add
                  local.tee 3
                  i32.load
                  local.tee 4
                  br_if 0 (;@6;)
                  local.get 0
                  i32.const 16
                  i32.add
                  local.tee 3
                  i32.load
                  local.tee 4
                  br_if 0 (;@6;)
                  i32.const 0
                  local.set 6
                  br 1 (;@5;)
                end
                loop ;; label = @6
                  local.get 3
                  local.set 5
                  local.get 4
                  local.tee 6
                  i32.const 20
                  i32.add
                  local.tee 3
                  i32.load
                  local.tee 4
                  br_if 0 (;@6;)
                  local.get 6
                  i32.const 16
                  i32.add
                  local.set 3
                  local.get 6
                  i32.load offset=16
                  local.tee 4
                  br_if 0 (;@6;)
                end
                local.get 5
                i32.const 0
                i32.store
              end
              local.get 7
              i32.eqz
              br_if 2 (;@2;)
              block ;; label = @5
                block ;; label = @6
                  local.get 0
                  local.get 0
                  i32.load offset=28
                  local.tee 4
                  i32.const 2
                  i32.shl
                  i32.const 1051844
                  i32.add
                  local.tee 3
                  i32.load
                  i32.ne
                  br_if 0 (;@6;)
                  local.get 3
                  local.get 6
                  i32.store
                  local.get 6
                  br_if 1 (;@5;)
                  i32.const 0
                  i32.const 0
                  i32.load offset=1051544
                  i32.const -2
                  local.get 4
                  i32.rotl
                  i32.and
                  i32.store offset=1051544
                  br 4 (;@2;)
                end
                local.get 7
                i32.const 16
                i32.const 20
                local.get 7
                i32.load offset=16
                local.get 0
                i32.eq
                select
                i32.add
                local.get 6
                i32.store
                local.get 6
                i32.eqz
                br_if 3 (;@2;)
              end
              local.get 6
              local.get 7
              i32.store offset=24
              block ;; label = @5
                local.get 0
                i32.load offset=16
                local.tee 3
                i32.eqz
                br_if 0 (;@5;)
                local.get 6
                local.get 3
                i32.store offset=16
                local.get 3
                local.get 6
                i32.store offset=24
              end
              local.get 0
              i32.load offset=20
              local.tee 3
              i32.eqz
              br_if 2 (;@2;)
              local.get 6
              i32.const 20
              i32.add
              local.get 3
              i32.store
              local.get 3
              local.get 6
              i32.store offset=24
              br 2 (;@2;)
            end
            local.get 2
            i32.load offset=4
            local.tee 3
            i32.const 3
            i32.and
            i32.const 3
            i32.ne
            br_if 1 (;@2;)
            local.get 2
            local.get 3
            i32.const -2
            i32.and
            i32.store offset=4
            i32.const 0
            local.get 1
            i32.store offset=1051548
            local.get 2
            local.get 1
            i32.store
            local.get 0
            local.get 1
            i32.const 1
            i32.or
            i32.store offset=4
            return
          end
          local.get 3
          local.get 6
          i32.eq
          drop
          local.get 3
          local.get 4
          i32.store offset=8
          local.get 4
          local.get 3
          i32.store offset=12
        end
        block ;; label = @2
          block ;; label = @3
            local.get 2
            i32.load offset=4
            local.tee 3
            i32.const 2
            i32.and
            br_if 0 (;@3;)
            block ;; label = @4
              local.get 2
              i32.const 0
              i32.load offset=1051564
              i32.ne
              br_if 0 (;@4;)
              i32.const 0
              local.get 0
              i32.store offset=1051564
              i32.const 0
              i32.const 0
              i32.load offset=1051552
              local.get 1
              i32.add
              local.tee 1
              i32.store offset=1051552
              local.get 0
              local.get 1
              i32.const 1
              i32.or
              i32.store offset=4
              local.get 0
              i32.const 0
              i32.load offset=1051560
              i32.ne
              br_if 3 (;@1;)
              i32.const 0
              i32.const 0
              i32.store offset=1051548
              i32.const 0
              i32.const 0
              i32.store offset=1051560
              return
            end
            block ;; label = @4
              local.get 2
              i32.const 0
              i32.load offset=1051560
              i32.ne
              br_if 0 (;@4;)
              i32.const 0
              local.get 0
              i32.store offset=1051560
              i32.const 0
              i32.const 0
              i32.load offset=1051548
              local.get 1
              i32.add
              local.tee 1
              i32.store offset=1051548
              local.get 0
              local.get 1
              i32.const 1
              i32.or
              i32.store offset=4
              local.get 0
              local.get 1
              i32.add
              local.get 1
              i32.store
              return
            end
            local.get 3
            i32.const -8
            i32.and
            local.get 1
            i32.add
            local.set 1
            block ;; label = @4
              block ;; label = @5
                local.get 3
                i32.const 255
                i32.gt_u
                br_if 0 (;@5;)
                local.get 2
                i32.load offset=8
                local.tee 4
                local.get 3
                i32.const 3
                i32.shr_u
                local.tee 5
                i32.const 3
                i32.shl
                i32.const 1051580
                i32.add
                local.tee 6
                i32.eq
                drop
                block ;; label = @6
                  local.get 2
                  i32.load offset=12
                  local.tee 3
                  local.get 4
                  i32.ne
                  br_if 0 (;@6;)
                  i32.const 0
                  i32.const 0
                  i32.load offset=1051540
                  i32.const -2
                  local.get 5
                  i32.rotl
                  i32.and
                  i32.store offset=1051540
                  br 2 (;@4;)
                end
                local.get 3
                local.get 6
                i32.eq
                drop
                local.get 3
                local.get 4
                i32.store offset=8
                local.get 4
                local.get 3
                i32.store offset=12
                br 1 (;@4;)
              end
              local.get 2
              i32.load offset=24
              local.set 7
              block ;; label = @5
                block ;; label = @6
                  local.get 2
                  i32.load offset=12
                  local.tee 6
                  local.get 2
                  i32.eq
                  br_if 0 (;@6;)
                  local.get 2
                  i32.load offset=8
                  local.tee 3
                  i32.const 0
                  i32.load offset=1051556
                  i32.lt_u
                  drop
                  local.get 6
                  local.get 3
                  i32.store offset=8
                  local.get 3
                  local.get 6
                  i32.store offset=12
                  br 1 (;@5;)
                end
                block ;; label = @6
                  local.get 2
                  i32.const 20
                  i32.add
                  local.tee 4
                  i32.load
                  local.tee 3
                  br_if 0 (;@6;)
                  local.get 2
                  i32.const 16
                  i32.add
                  local.tee 4
                  i32.load
                  local.tee 3
                  br_if 0 (;@6;)
                  i32.const 0
                  local.set 6
                  br 1 (;@5;)
                end
                loop ;; label = @6
                  local.get 4
                  local.set 5
                  local.get 3
                  local.tee 6
                  i32.const 20
                  i32.add
                  local.tee 4
                  i32.load
                  local.tee 3
                  br_if 0 (;@6;)
                  local.get 6
                  i32.const 16
                  i32.add
                  local.set 4
                  local.get 6
                  i32.load offset=16
                  local.tee 3
                  br_if 0 (;@6;)
                end
                local.get 5
                i32.const 0
                i32.store
              end
              local.get 7
              i32.eqz
              br_if 0 (;@4;)
              block ;; label = @5
                block ;; label = @6
                  local.get 2
                  local.get 2
                  i32.load offset=28
                  local.tee 4
                  i32.const 2
                  i32.shl
                  i32.const 1051844
                  i32.add
                  local.tee 3
                  i32.load
                  i32.ne
                  br_if 0 (;@6;)
                  local.get 3
                  local.get 6
                  i32.store
                  local.get 6
                  br_if 1 (;@5;)
                  i32.const 0
                  i32.const 0
                  i32.load offset=1051544
                  i32.const -2
                  local.get 4
                  i32.rotl
                  i32.and
                  i32.store offset=1051544
                  br 2 (;@4;)
                end
                local.get 7
                i32.const 16
                i32.const 20
                local.get 7
                i32.load offset=16
                local.get 2
                i32.eq
                select
                i32.add
                local.get 6
                i32.store
                local.get 6
                i32.eqz
                br_if 1 (;@4;)
              end
              local.get 6
              local.get 7
              i32.store offset=24
              block ;; label = @5
                local.get 2
                i32.load offset=16
                local.tee 3
                i32.eqz
                br_if 0 (;@5;)
                local.get 6
                local.get 3
                i32.store offset=16
                local.get 3
                local.get 6
                i32.store offset=24
              end
              local.get 2
              i32.load offset=20
              local.tee 3
              i32.eqz
              br_if 0 (;@4;)
              local.get 6
              i32.const 20
              i32.add
              local.get 3
              i32.store
              local.get 3
              local.get 6
              i32.store offset=24
            end
            local.get 0
            local.get 1
            i32.add
            local.get 1
            i32.store
            local.get 0
            local.get 1
            i32.const 1
            i32.or
            i32.store offset=4
            local.get 0
            i32.const 0
            i32.load offset=1051560
            i32.ne
            br_if 1 (;@2;)
            i32.const 0
            local.get 1
            i32.store offset=1051548
            return
          end
          local.get 2
          local.get 3
          i32.const -2
          i32.and
          i32.store offset=4
          local.get 0
          local.get 1
          i32.add
          local.get 1
          i32.store
          local.get 0
          local.get 1
          i32.const 1
          i32.or
          i32.store offset=4
        end
        block ;; label = @2
          local.get 1
          i32.const 255
          i32.gt_u
          br_if 0 (;@2;)
          local.get 1
          i32.const -8
          i32.and
          i32.const 1051580
          i32.add
          local.set 3
          block ;; label = @3
            block ;; label = @4
              i32.const 0
              i32.load offset=1051540
              local.tee 4
              i32.const 1
              local.get 1
              i32.const 3
              i32.shr_u
              i32.shl
              local.tee 1
              i32.and
              br_if 0 (;@4;)
              i32.const 0
              local.get 4
              local.get 1
              i32.or
              i32.store offset=1051540
              local.get 3
              local.set 1
              br 1 (;@3;)
            end
            local.get 3
            i32.load offset=8
            local.set 1
          end
          local.get 1
          local.get 0
          i32.store offset=12
          local.get 3
          local.get 0
          i32.store offset=8
          local.get 0
          local.get 3
          i32.store offset=12
          local.get 0
          local.get 1
          i32.store offset=8
          return
        end
        i32.const 31
        local.set 3
        block ;; label = @2
          local.get 1
          i32.const 16777215
          i32.gt_u
          br_if 0 (;@2;)
          local.get 1
          i32.const 8
          i32.shr_u
          local.tee 3
          local.get 3
          i32.const 1048320
          i32.add
          i32.const 16
          i32.shr_u
          i32.const 8
          i32.and
          local.tee 3
          i32.shl
          local.tee 4
          local.get 4
          i32.const 520192
          i32.add
          i32.const 16
          i32.shr_u
          i32.const 4
          i32.and
          local.tee 4
          i32.shl
          local.tee 6
          local.get 6
          i32.const 245760
          i32.add
          i32.const 16
          i32.shr_u
          i32.const 2
          i32.and
          local.tee 6
          i32.shl
          i32.const 15
          i32.shr_u
          local.get 3
          local.get 4
          i32.or
          local.get 6
          i32.or
          i32.sub
          local.tee 3
          i32.const 1
          i32.shl
          local.get 1
          local.get 3
          i32.const 21
          i32.add
          i32.shr_u
          i32.const 1
          i32.and
          i32.or
          i32.const 28
          i32.add
          local.set 3
        end
        local.get 0
        local.get 3
        i32.store offset=28
        local.get 0
        i64.const 0
        i64.store offset=16 align=4
        local.get 3
        i32.const 2
        i32.shl
        i32.const 1051844
        i32.add
        local.set 4
        block ;; label = @2
          i32.const 0
          i32.load offset=1051544
          local.tee 6
          i32.const 1
          local.get 3
          i32.shl
          local.tee 2
          i32.and
          br_if 0 (;@2;)
          local.get 4
          local.get 0
          i32.store
          i32.const 0
          local.get 6
          local.get 2
          i32.or
          i32.store offset=1051544
          local.get 0
          local.get 4
          i32.store offset=24
          local.get 0
          local.get 0
          i32.store offset=8
          local.get 0
          local.get 0
          i32.store offset=12
          return
        end
        local.get 1
        i32.const 0
        i32.const 25
        local.get 3
        i32.const 1
        i32.shr_u
        i32.sub
        local.get 3
        i32.const 31
        i32.eq
        select
        i32.shl
        local.set 3
        local.get 4
        i32.load
        local.set 6
        block ;; label = @2
          loop ;; label = @3
            local.get 6
            local.tee 4
            i32.load offset=4
            i32.const -8
            i32.and
            local.get 1
            i32.eq
            br_if 1 (;@2;)
            local.get 3
            i32.const 29
            i32.shr_u
            local.set 6
            local.get 3
            i32.const 1
            i32.shl
            local.set 3
            local.get 4
            local.get 6
            i32.const 4
            i32.and
            i32.add
            i32.const 16
            i32.add
            local.tee 2
            i32.load
            local.tee 6
            br_if 0 (;@3;)
          end
          local.get 2
          local.get 0
          i32.store
          local.get 0
          local.get 4
          i32.store offset=24
          local.get 0
          local.get 0
          i32.store offset=12
          local.get 0
          local.get 0
          i32.store offset=8
          return
        end
        local.get 4
        i32.load offset=8
        local.tee 1
        local.get 0
        i32.store offset=12
        local.get 4
        local.get 0
        i32.store offset=8
        local.get 0
        i32.const 0
        i32.store offset=24
        local.get 0
        local.get 4
        i32.store offset=12
        local.get 0
        local.get 1
        i32.store offset=8
      end
    )
    (func $internal_memalign (;99;) (type 5) (param i32 i32) (result i32)
      (local i32 i32 i32 i32 i32)
      block ;; label = @1
        block ;; label = @2
          local.get 0
          i32.const 16
          local.get 0
          i32.const 16
          i32.gt_u
          select
          local.tee 2
          local.get 2
          i32.const -1
          i32.add
          i32.and
          br_if 0 (;@2;)
          local.get 2
          local.set 0
          br 1 (;@1;)
        end
        i32.const 32
        local.set 3
        loop ;; label = @2
          local.get 3
          local.tee 0
          i32.const 1
          i32.shl
          local.set 3
          local.get 0
          local.get 2
          i32.lt_u
          br_if 0 (;@2;)
        end
      end
      block ;; label = @1
        i32.const -64
        local.get 0
        i32.sub
        local.get 1
        i32.gt_u
        br_if 0 (;@1;)
        i32.const 0
        i32.const 48
        i32.store offset=1052036
        i32.const 0
        return
      end
      block ;; label = @1
        local.get 0
        i32.const 16
        local.get 1
        i32.const 19
        i32.add
        i32.const -16
        i32.and
        local.get 1
        i32.const 11
        i32.lt_u
        select
        local.tee 1
        i32.add
        i32.const 12
        i32.add
        call $dlmalloc
        local.tee 3
        br_if 0 (;@1;)
        i32.const 0
        return
      end
      local.get 3
      i32.const -8
      i32.add
      local.set 2
      block ;; label = @1
        block ;; label = @2
          local.get 0
          i32.const -1
          i32.add
          local.get 3
          i32.and
          br_if 0 (;@2;)
          local.get 2
          local.set 0
          br 1 (;@1;)
        end
        local.get 3
        i32.const -4
        i32.add
        local.tee 4
        i32.load
        local.tee 5
        i32.const -8
        i32.and
        local.get 3
        local.get 0
        i32.add
        i32.const -1
        i32.add
        i32.const 0
        local.get 0
        i32.sub
        i32.and
        i32.const -8
        i32.add
        local.tee 3
        i32.const 0
        local.get 0
        local.get 3
        local.get 2
        i32.sub
        i32.const 15
        i32.gt_u
        select
        i32.add
        local.tee 0
        local.get 2
        i32.sub
        local.tee 3
        i32.sub
        local.set 6
        block ;; label = @2
          local.get 5
          i32.const 3
          i32.and
          br_if 0 (;@2;)
          local.get 0
          local.get 6
          i32.store offset=4
          local.get 0
          local.get 2
          i32.load
          local.get 3
          i32.add
          i32.store
          br 1 (;@1;)
        end
        local.get 0
        local.get 6
        local.get 0
        i32.load offset=4
        i32.const 1
        i32.and
        i32.or
        i32.const 2
        i32.or
        i32.store offset=4
        local.get 0
        local.get 6
        i32.add
        local.tee 6
        local.get 6
        i32.load offset=4
        i32.const 1
        i32.or
        i32.store offset=4
        local.get 4
        local.get 3
        local.get 4
        i32.load
        i32.const 1
        i32.and
        i32.or
        i32.const 2
        i32.or
        i32.store
        local.get 2
        local.get 3
        i32.add
        local.tee 6
        local.get 6
        i32.load offset=4
        i32.const 1
        i32.or
        i32.store offset=4
        local.get 2
        local.get 3
        call $dispose_chunk
      end
      block ;; label = @1
        local.get 0
        i32.load offset=4
        local.tee 3
        i32.const 3
        i32.and
        i32.eqz
        br_if 0 (;@1;)
        local.get 3
        i32.const -8
        i32.and
        local.tee 2
        local.get 1
        i32.const 16
        i32.add
        i32.le_u
        br_if 0 (;@1;)
        local.get 0
        local.get 1
        local.get 3
        i32.const 1
        i32.and
        i32.or
        i32.const 2
        i32.or
        i32.store offset=4
        local.get 0
        local.get 1
        i32.add
        local.tee 3
        local.get 2
        local.get 1
        i32.sub
        local.tee 1
        i32.const 3
        i32.or
        i32.store offset=4
        local.get 0
        local.get 2
        i32.add
        local.tee 2
        local.get 2
        i32.load offset=4
        i32.const 1
        i32.or
        i32.store offset=4
        local.get 3
        local.get 1
        call $dispose_chunk
      end
      local.get 0
      i32.const 8
      i32.add
    )
    (func $aligned_alloc (;100;) (type 5) (param i32 i32) (result i32)
      block ;; label = @1
        local.get 0
        i32.const 16
        i32.gt_u
        br_if 0 (;@1;)
        local.get 1
        call $dlmalloc
        return
      end
      local.get 0
      local.get 1
      call $internal_memalign
    )
    (func $_Exit (;101;) (type $.rodata) (param i32)
      local.get 0
      call $__wasi_proc_exit
      unreachable
    )
    (func $__wasilibc_ensure_environ (;102;) (type 7)
      block ;; label = @1
        i32.const 0
        i32.load offset=1051456
        i32.const -1
        i32.ne
        br_if 0 (;@1;)
        call $__wasilibc_initialize_environ
      end
    )
    (func $__wasilibc_initialize_environ (;103;) (type 7)
      (local i32 i32 i32)
      global.get $__stack_pointer
      i32.const 16
      i32.sub
      local.tee 0
      global.set $__stack_pointer
      block ;; label = @1
        block ;; label = @2
          local.get 0
          i32.const 12
          i32.add
          local.get 0
          i32.const 8
          i32.add
          call $__wasi_environ_sizes_get
          br_if 0 (;@2;)
          block ;; label = @3
            local.get 0
            i32.load offset=12
            local.tee 1
            br_if 0 (;@3;)
            i32.const 1052040
            local.set 1
            br 2 (;@1;)
          end
          block ;; label = @3
            block ;; label = @4
              local.get 1
              i32.const 1
              i32.add
              local.tee 1
              i32.eqz
              br_if 0 (;@4;)
              local.get 0
              i32.load offset=8
              call $malloc
              local.tee 2
              i32.eqz
              br_if 0 (;@4;)
              local.get 1
              i32.const 4
              call $calloc
              local.tee 1
              br_if 1 (;@3;)
              local.get 2
              call $free
            end
            i32.const 70
            call $_Exit
            unreachable
          end
          local.get 1
          local.get 2
          call $__wasi_environ_get
          i32.eqz
          br_if 1 (;@1;)
          local.get 2
          call $free
          local.get 1
          call $free
        end
        i32.const 71
        call $_Exit
        unreachable
      end
      i32.const 0
      local.get 1
      i32.store offset=1051456
      local.get 0
      i32.const 16
      i32.add
      global.set $__stack_pointer
    )
    (func $__wasi_environ_get (;104;) (type 5) (param i32 i32) (result i32)
      local.get 0
      local.get 1
      call $__imported_wasi_snapshot_preview1_environ_get
      i32.const 65535
      i32.and
    )
    (func $__wasi_environ_sizes_get (;105;) (type 5) (param i32 i32) (result i32)
      local.get 0
      local.get 1
      call $__imported_wasi_snapshot_preview1_environ_sizes_get
      i32.const 65535
      i32.and
    )
    (func $__wasi_proc_exit (;106;) (type $.rodata) (param i32)
      local.get 0
      call $__imported_wasi_snapshot_preview1_proc_exit
      unreachable
    )
    (func $abort (;107;) (type 7)
      unreachable
      unreachable
    )
    (func $getcwd (;108;) (type 5) (param i32 i32) (result i32)
      (local i32)
      i32.const 0
      i32.load offset=1051460
      local.set 2
      block ;; label = @1
        block ;; label = @2
          local.get 0
          br_if 0 (;@2;)
          local.get 2
          call $strdup
          local.tee 0
          br_if 1 (;@1;)
          i32.const 0
          i32.const 48
          i32.store offset=1052036
          i32.const 0
          return
        end
        block ;; label = @2
          local.get 2
          call $strlen
          i32.const 1
          i32.add
          local.get 1
          i32.gt_u
          br_if 0 (;@2;)
          local.get 0
          local.get 2
          call $strcpy
          return
        end
        i32.const 0
        local.set 0
        i32.const 0
        i32.const 68
        i32.store offset=1052036
      end
      local.get 0
    )
    (func $sbrk (;109;) (type 10) (param i32) (result i32)
      block ;; label = @1
        local.get 0
        br_if 0 (;@1;)
        memory.size
        i32.const 16
        i32.shl
        return
      end
      block ;; label = @1
        local.get 0
        i32.const 65535
        i32.and
        br_if 0 (;@1;)
        local.get 0
        i32.const -1
        i32.le_s
        br_if 0 (;@1;)
        block ;; label = @2
          local.get 0
          i32.const 16
          i32.shr_u
          memory.grow
          local.tee 0
          i32.const -1
          i32.ne
          br_if 0 (;@2;)
          i32.const 0
          i32.const 48
          i32.store offset=1052036
          i32.const -1
          return
        end
        local.get 0
        i32.const 16
        i32.shl
        return
      end
      call $abort
      unreachable
    )
    (func $getenv (;110;) (type 10) (param i32) (result i32)
      (local i32 i32 i32 i32)
      call $__wasilibc_ensure_environ
      block ;; label = @1
        local.get 0
        i32.const 61
        call $__strchrnul
        local.tee 1
        local.get 0
        i32.ne
        br_if 0 (;@1;)
        i32.const 0
        return
      end
      i32.const 0
      local.set 2
      block ;; label = @1
        local.get 0
        local.get 1
        local.get 0
        i32.sub
        local.tee 3
        i32.add
        i32.load8_u
        br_if 0 (;@1;)
        i32.const 0
        i32.load offset=1051456
        local.tee 4
        i32.eqz
        br_if 0 (;@1;)
        local.get 4
        i32.load
        local.tee 1
        i32.eqz
        br_if 0 (;@1;)
        local.get 4
        i32.const 4
        i32.add
        local.set 4
        block ;; label = @2
          loop ;; label = @3
            block ;; label = @4
              local.get 0
              local.get 1
              local.get 3
              call $strncmp
              br_if 0 (;@4;)
              local.get 1
              local.get 3
              i32.add
              local.tee 1
              i32.load8_u
              i32.const 61
              i32.eq
              br_if 2 (;@2;)
            end
            local.get 4
            i32.load
            local.set 1
            local.get 4
            i32.const 4
            i32.add
            local.set 4
            local.get 1
            br_if 0 (;@3;)
            br 2 (;@1;)
          end
        end
        local.get 1
        i32.const 1
        i32.add
        local.set 2
      end
      local.get 2
    )
    (func $strdup (;111;) (type 10) (param i32) (result i32)
      (local i32 i32)
      block ;; label = @1
        local.get 0
        call $strlen
        i32.const 1
        i32.add
        local.tee 1
        call $malloc
        local.tee 2
        i32.eqz
        br_if 0 (;@1;)
        local.get 2
        local.get 0
        local.get 1
        call $memcpy
        drop
      end
      local.get 2
    )
    (func $__strchrnul (;112;) (type 5) (param i32 i32) (result i32)
      (local i32 i32 i32)
      block ;; label = @1
        block ;; label = @2
          block ;; label = @3
            block ;; label = @4
              local.get 1
              i32.const 255
              i32.and
              local.tee 2
              i32.eqz
              br_if 0 (;@4;)
              local.get 0
              i32.const 3
              i32.and
              i32.eqz
              br_if 2 (;@2;)
              block ;; label = @5
                local.get 0
                i32.load8_u
                local.tee 3
                br_if 0 (;@5;)
                local.get 0
                return
              end
              local.get 3
              local.get 1
              i32.const 255
              i32.and
              i32.ne
              br_if 1 (;@3;)
              local.get 0
              return
            end
            local.get 0
            local.get 0
            call $strlen
            i32.add
            return
          end
          block ;; label = @3
            local.get 0
            i32.const 1
            i32.add
            local.tee 3
            i32.const 3
            i32.and
            br_if 0 (;@3;)
            local.get 3
            local.set 0
            br 1 (;@2;)
          end
          local.get 3
          i32.load8_u
          local.tee 4
          i32.eqz
          br_if 1 (;@1;)
          local.get 4
          local.get 1
          i32.const 255
          i32.and
          i32.eq
          br_if 1 (;@1;)
          block ;; label = @3
            local.get 0
            i32.const 2
            i32.add
            local.tee 3
            i32.const 3
            i32.and
            br_if 0 (;@3;)
            local.get 3
            local.set 0
            br 1 (;@2;)
          end
          local.get 3
          i32.load8_u
          local.tee 4
          i32.eqz
          br_if 1 (;@1;)
          local.get 4
          local.get 1
          i32.const 255
          i32.and
          i32.eq
          br_if 1 (;@1;)
          block ;; label = @3
            local.get 0
            i32.const 3
            i32.add
            local.tee 3
            i32.const 3
            i32.and
            br_if 0 (;@3;)
            local.get 3
            local.set 0
            br 1 (;@2;)
          end
          local.get 3
          i32.load8_u
          local.tee 4
          i32.eqz
          br_if 1 (;@1;)
          local.get 4
          local.get 1
          i32.const 255
          i32.and
          i32.eq
          br_if 1 (;@1;)
          local.get 0
          i32.const 4
          i32.add
          local.set 0
        end
        block ;; label = @2
          local.get 0
          i32.load
          local.tee 3
          i32.const -1
          i32.xor
          local.get 3
          i32.const -16843009
          i32.add
          i32.and
          i32.const -2139062144
          i32.and
          br_if 0 (;@2;)
          local.get 2
          i32.const 16843009
          i32.mul
          local.set 2
          loop ;; label = @3
            local.get 3
            local.get 2
            i32.xor
            local.tee 3
            i32.const -1
            i32.xor
            local.get 3
            i32.const -16843009
            i32.add
            i32.and
            i32.const -2139062144
            i32.and
            br_if 1 (;@2;)
            local.get 0
            i32.const 4
            i32.add
            local.tee 0
            i32.load
            local.tee 3
            i32.const -1
            i32.xor
            local.get 3
            i32.const -16843009
            i32.add
            i32.and
            i32.const -2139062144
            i32.and
            i32.eqz
            br_if 0 (;@3;)
          end
        end
        local.get 0
        i32.const -1
        i32.add
        local.set 3
        loop ;; label = @2
          local.get 3
          i32.const 1
          i32.add
          local.tee 3
          i32.load8_u
          local.tee 0
          i32.eqz
          br_if 1 (;@1;)
          local.get 0
          local.get 1
          i32.const 255
          i32.and
          i32.ne
          br_if 0 (;@2;)
        end
      end
      local.get 3
    )
    (func $memcpy (;113;) (type 4) (param i32 i32 i32) (result i32)
      (local i32 i32 i32 i32)
      block ;; label = @1
        block ;; label = @2
          block ;; label = @3
            local.get 2
            i32.const 32
            i32.gt_u
            br_if 0 (;@3;)
            local.get 1
            i32.const 3
            i32.and
            i32.eqz
            br_if 1 (;@2;)
            local.get 2
            i32.eqz
            br_if 1 (;@2;)
            local.get 0
            local.get 1
            i32.load8_u
            i32.store8
            local.get 2
            i32.const -1
            i32.add
            local.set 3
            local.get 0
            i32.const 1
            i32.add
            local.set 4
            local.get 1
            i32.const 1
            i32.add
            local.tee 5
            i32.const 3
            i32.and
            i32.eqz
            br_if 2 (;@1;)
            local.get 3
            i32.eqz
            br_if 2 (;@1;)
            local.get 0
            local.get 1
            i32.load8_u offset=1
            i32.store8 offset=1
            local.get 2
            i32.const -2
            i32.add
            local.set 3
            local.get 0
            i32.const 2
            i32.add
            local.set 4
            local.get 1
            i32.const 2
            i32.add
            local.tee 5
            i32.const 3
            i32.and
            i32.eqz
            br_if 2 (;@1;)
            local.get 3
            i32.eqz
            br_if 2 (;@1;)
            local.get 0
            local.get 1
            i32.load8_u offset=2
            i32.store8 offset=2
            local.get 2
            i32.const -3
            i32.add
            local.set 3
            local.get 0
            i32.const 3
            i32.add
            local.set 4
            local.get 1
            i32.const 3
            i32.add
            local.tee 5
            i32.const 3
            i32.and
            i32.eqz
            br_if 2 (;@1;)
            local.get 3
            i32.eqz
            br_if 2 (;@1;)
            local.get 0
            local.get 1
            i32.load8_u offset=3
            i32.store8 offset=3
            local.get 2
            i32.const -4
            i32.add
            local.set 3
            local.get 0
            i32.const 4
            i32.add
            local.set 4
            local.get 1
            i32.const 4
            i32.add
            local.set 5
            br 2 (;@1;)
          end
          local.get 0
          local.get 1
          local.get 2
          memory.copy
          local.get 0
          return
        end
        local.get 2
        local.set 3
        local.get 0
        local.set 4
        local.get 1
        local.set 5
      end
      block ;; label = @1
        block ;; label = @2
          local.get 4
          i32.const 3
          i32.and
          local.tee 2
          br_if 0 (;@2;)
          block ;; label = @3
            block ;; label = @4
              local.get 3
              i32.const 16
              i32.ge_u
              br_if 0 (;@4;)
              local.get 3
              local.set 2
              br 1 (;@3;)
            end
            block ;; label = @4
              local.get 3
              i32.const -16
              i32.add
              local.tee 2
              i32.const 16
              i32.and
              br_if 0 (;@4;)
              local.get 4
              local.get 5
              i64.load align=4
              i64.store align=4
              local.get 4
              local.get 5
              i64.load offset=8 align=4
              i64.store offset=8 align=4
              local.get 4
              i32.const 16
              i32.add
              local.set 4
              local.get 5
              i32.const 16
              i32.add
              local.set 5
              local.get 2
              local.set 3
            end
            local.get 2
            i32.const 16
            i32.lt_u
            br_if 0 (;@3;)
            local.get 3
            local.set 2
            loop ;; label = @4
              local.get 4
              local.get 5
              i64.load align=4
              i64.store align=4
              local.get 4
              local.get 5
              i64.load offset=8 align=4
              i64.store offset=8 align=4
              local.get 4
              local.get 5
              i64.load offset=16 align=4
              i64.store offset=16 align=4
              local.get 4
              local.get 5
              i64.load offset=24 align=4
              i64.store offset=24 align=4
              local.get 4
              i32.const 32
              i32.add
              local.set 4
              local.get 5
              i32.const 32
              i32.add
              local.set 5
              local.get 2
              i32.const -32
              i32.add
              local.tee 2
              i32.const 15
              i32.gt_u
              br_if 0 (;@4;)
            end
          end
          block ;; label = @3
            local.get 2
            i32.const 8
            i32.and
            i32.eqz
            br_if 0 (;@3;)
            local.get 4
            local.get 5
            i64.load align=4
            i64.store align=4
            local.get 5
            i32.const 8
            i32.add
            local.set 5
            local.get 4
            i32.const 8
            i32.add
            local.set 4
          end
          block ;; label = @3
            local.get 2
            i32.const 4
            i32.and
            i32.eqz
            br_if 0 (;@3;)
            local.get 4
            local.get 5
            i32.load
            i32.store
            local.get 5
            i32.const 4
            i32.add
            local.set 5
            local.get 4
            i32.const 4
            i32.add
            local.set 4
          end
          block ;; label = @3
            local.get 2
            i32.const 2
            i32.and
            i32.eqz
            br_if 0 (;@3;)
            local.get 4
            local.get 5
            i32.load16_u align=1
            i32.store16 align=1
            local.get 4
            i32.const 2
            i32.add
            local.set 4
            local.get 5
            i32.const 2
            i32.add
            local.set 5
          end
          local.get 2
          i32.const 1
          i32.and
          i32.eqz
          br_if 1 (;@1;)
          local.get 4
          local.get 5
          i32.load8_u
          i32.store8
          local.get 0
          return
        end
        block ;; label = @2
          block ;; label = @3
            block ;; label = @4
              block ;; label = @5
                block ;; label = @6
                  local.get 3
                  i32.const 32
                  i32.lt_u
                  br_if 0 (;@6;)
                  block ;; label = @7
                    block ;; label = @8
                      local.get 2
                      i32.const -1
                      i32.add
                      br_table 3 (;@5;) 0 (;@8;) 1 (;@7;) 7 (;@1;)
                    end
                    local.get 4
                    local.get 5
                    i32.load
                    i32.store16 align=1
                    local.get 4
                    local.get 5
                    i32.const 2
                    i32.add
                    i32.load align=2
                    i32.store offset=2
                    local.get 4
                    local.get 5
                    i32.const 6
                    i32.add
                    i64.load align=2
                    i64.store offset=6 align=4
                    local.get 4
                    i32.const 18
                    i32.add
                    local.set 2
                    local.get 5
                    i32.const 18
                    i32.add
                    local.set 1
                    i32.const 14
                    local.set 6
                    local.get 5
                    i32.const 14
                    i32.add
                    i32.load align=2
                    local.set 5
                    i32.const 14
                    local.set 3
                    br 3 (;@4;)
                  end
                  local.get 4
                  local.get 5
                  i32.load
                  i32.store8
                  local.get 4
                  local.get 5
                  i32.const 1
                  i32.add
                  i32.load align=1
                  i32.store offset=1
                  local.get 4
                  local.get 5
                  i32.const 5
                  i32.add
                  i64.load align=1
                  i64.store offset=5 align=4
                  local.get 4
                  i32.const 17
                  i32.add
                  local.set 2
                  local.get 5
                  i32.const 17
                  i32.add
                  local.set 1
                  i32.const 13
                  local.set 6
                  local.get 5
                  i32.const 13
                  i32.add
                  i32.load align=1
                  local.set 5
                  i32.const 15
                  local.set 3
                  br 2 (;@4;)
                end
                block ;; label = @6
                  block ;; label = @7
                    local.get 3
                    i32.const 16
                    i32.and
                    br_if 0 (;@7;)
                    local.get 4
                    local.set 2
                    local.get 5
                    local.set 1
                    br 1 (;@6;)
                  end
                  local.get 4
                  local.get 5
                  i32.load8_u
                  i32.store8
                  local.get 4
                  local.get 5
                  i32.load offset=1 align=1
                  i32.store offset=1 align=1
                  local.get 4
                  local.get 5
                  i64.load offset=5 align=1
                  i64.store offset=5 align=1
                  local.get 4
                  local.get 5
                  i32.load16_u offset=13 align=1
                  i32.store16 offset=13 align=1
                  local.get 4
                  local.get 5
                  i32.load8_u offset=15
                  i32.store8 offset=15
                  local.get 4
                  i32.const 16
                  i32.add
                  local.set 2
                  local.get 5
                  i32.const 16
                  i32.add
                  local.set 1
                end
                local.get 3
                i32.const 8
                i32.and
                br_if 2 (;@3;)
                br 3 (;@2;)
              end
              local.get 4
              local.get 5
              i32.load
              local.tee 2
              i32.store8
              local.get 4
              local.get 2
              i32.const 16
              i32.shr_u
              i32.store8 offset=2
              local.get 4
              local.get 2
              i32.const 8
              i32.shr_u
              i32.store8 offset=1
              local.get 4
              local.get 5
              i32.const 3
              i32.add
              i32.load align=1
              i32.store offset=3
              local.get 4
              local.get 5
              i32.const 7
              i32.add
              i64.load align=1
              i64.store offset=7 align=4
              local.get 4
              i32.const 19
              i32.add
              local.set 2
              local.get 5
              i32.const 19
              i32.add
              local.set 1
              i32.const 15
              local.set 6
              local.get 5
              i32.const 15
              i32.add
              i32.load align=1
              local.set 5
              i32.const 13
              local.set 3
            end
            local.get 4
            local.get 6
            i32.add
            local.get 5
            i32.store
          end
          local.get 2
          local.get 1
          i64.load align=1
          i64.store align=1
          local.get 2
          i32.const 8
          i32.add
          local.set 2
          local.get 1
          i32.const 8
          i32.add
          local.set 1
        end
        block ;; label = @2
          local.get 3
          i32.const 4
          i32.and
          i32.eqz
          br_if 0 (;@2;)
          local.get 2
          local.get 1
          i32.load align=1
          i32.store align=1
          local.get 2
          i32.const 4
          i32.add
          local.set 2
          local.get 1
          i32.const 4
          i32.add
          local.set 1
        end
        block ;; label = @2
          local.get 3
          i32.const 2
          i32.and
          i32.eqz
          br_if 0 (;@2;)
          local.get 2
          local.get 1
          i32.load16_u align=1
          i32.store16 align=1
          local.get 2
          i32.const 2
          i32.add
          local.set 2
          local.get 1
          i32.const 2
          i32.add
          local.set 1
        end
        local.get 3
        i32.const 1
        i32.and
        i32.eqz
        br_if 0 (;@1;)
        local.get 2
        local.get 1
        i32.load8_u
        i32.store8
      end
      local.get 0
    )
    (func $memset (;114;) (type 4) (param i32 i32 i32) (result i32)
      (local i32 i32 i32 i64)
      block ;; label = @1
        local.get 2
        i32.const 33
        i32.lt_u
        br_if 0 (;@1;)
        local.get 0
        local.get 1
        local.get 2
        memory.fill
        local.get 0
        return
      end
      block ;; label = @1
        local.get 2
        i32.eqz
        br_if 0 (;@1;)
        local.get 0
        local.get 1
        i32.store8
        local.get 2
        local.get 0
        i32.add
        local.tee 3
        i32.const -1
        i32.add
        local.get 1
        i32.store8
        local.get 2
        i32.const 3
        i32.lt_u
        br_if 0 (;@1;)
        local.get 0
        local.get 1
        i32.store8 offset=2
        local.get 0
        local.get 1
        i32.store8 offset=1
        local.get 3
        i32.const -3
        i32.add
        local.get 1
        i32.store8
        local.get 3
        i32.const -2
        i32.add
        local.get 1
        i32.store8
        local.get 2
        i32.const 7
        i32.lt_u
        br_if 0 (;@1;)
        local.get 0
        local.get 1
        i32.store8 offset=3
        local.get 3
        i32.const -4
        i32.add
        local.get 1
        i32.store8
        local.get 2
        i32.const 9
        i32.lt_u
        br_if 0 (;@1;)
        local.get 0
        i32.const 0
        local.get 0
        i32.sub
        i32.const 3
        i32.and
        local.tee 4
        i32.add
        local.tee 5
        local.get 1
        i32.const 255
        i32.and
        i32.const 16843009
        i32.mul
        local.tee 3
        i32.store
        local.get 5
        local.get 2
        local.get 4
        i32.sub
        i32.const -4
        i32.and
        local.tee 1
        i32.add
        local.tee 2
        i32.const -4
        i32.add
        local.get 3
        i32.store
        local.get 1
        i32.const 9
        i32.lt_u
        br_if 0 (;@1;)
        local.get 5
        local.get 3
        i32.store offset=8
        local.get 5
        local.get 3
        i32.store offset=4
        local.get 2
        i32.const -8
        i32.add
        local.get 3
        i32.store
        local.get 2
        i32.const -12
        i32.add
        local.get 3
        i32.store
        local.get 1
        i32.const 25
        i32.lt_u
        br_if 0 (;@1;)
        local.get 5
        local.get 3
        i32.store offset=24
        local.get 5
        local.get 3
        i32.store offset=20
        local.get 5
        local.get 3
        i32.store offset=16
        local.get 5
        local.get 3
        i32.store offset=12
        local.get 2
        i32.const -16
        i32.add
        local.get 3
        i32.store
        local.get 2
        i32.const -20
        i32.add
        local.get 3
        i32.store
        local.get 2
        i32.const -24
        i32.add
        local.get 3
        i32.store
        local.get 2
        i32.const -28
        i32.add
        local.get 3
        i32.store
        local.get 1
        local.get 5
        i32.const 4
        i32.and
        i32.const 24
        i32.or
        local.tee 2
        i32.sub
        local.tee 1
        i32.const 32
        i32.lt_u
        br_if 0 (;@1;)
        local.get 3
        i64.extend_i32_u
        i64.const 4294967297
        i64.mul
        local.set 6
        local.get 5
        local.get 2
        i32.add
        local.set 2
        loop ;; label = @2
          local.get 2
          local.get 6
          i64.store offset=24
          local.get 2
          local.get 6
          i64.store offset=16
          local.get 2
          local.get 6
          i64.store offset=8
          local.get 2
          local.get 6
          i64.store
          local.get 2
          i32.const 32
          i32.add
          local.set 2
          local.get 1
          i32.const -32
          i32.add
          local.tee 1
          i32.const 31
          i32.gt_u
          br_if 0 (;@2;)
        end
      end
      local.get 0
    )
    (func $strncmp (;115;) (type 4) (param i32 i32 i32) (result i32)
      (local i32 i32 i32)
      block ;; label = @1
        local.get 2
        br_if 0 (;@1;)
        i32.const 0
        return
      end
      i32.const 0
      local.set 3
      block ;; label = @1
        local.get 0
        i32.load8_u
        local.tee 4
        i32.eqz
        br_if 0 (;@1;)
        local.get 0
        i32.const 1
        i32.add
        local.set 0
        local.get 2
        i32.const -1
        i32.add
        local.set 2
        loop ;; label = @2
          block ;; label = @3
            local.get 1
            i32.load8_u
            local.tee 5
            br_if 0 (;@3;)
            local.get 4
            local.set 3
            br 2 (;@1;)
          end
          block ;; label = @3
            local.get 2
            br_if 0 (;@3;)
            local.get 4
            local.set 3
            br 2 (;@1;)
          end
          block ;; label = @3
            local.get 4
            i32.const 255
            i32.and
            local.get 5
            i32.eq
            br_if 0 (;@3;)
            local.get 4
            local.set 3
            br 2 (;@1;)
          end
          local.get 2
          i32.const -1
          i32.add
          local.set 2
          local.get 1
          i32.const 1
          i32.add
          local.set 1
          local.get 0
          i32.load8_u
          local.set 4
          local.get 0
          i32.const 1
          i32.add
          local.set 0
          local.get 4
          br_if 0 (;@2;)
        end
      end
      local.get 3
      i32.const 255
      i32.and
      local.get 1
      i32.load8_u
      i32.sub
    )
    (func $__stpcpy (;116;) (type 5) (param i32 i32) (result i32)
      (local i32 i32)
      block ;; label = @1
        block ;; label = @2
          block ;; label = @3
            local.get 1
            local.get 0
            i32.xor
            i32.const 3
            i32.and
            i32.eqz
            br_if 0 (;@3;)
            local.get 1
            i32.load8_u
            local.set 2
            br 1 (;@2;)
          end
          block ;; label = @3
            local.get 1
            i32.const 3
            i32.and
            i32.eqz
            br_if 0 (;@3;)
            local.get 0
            local.get 1
            i32.load8_u
            local.tee 2
            i32.store8
            block ;; label = @4
              local.get 2
              br_if 0 (;@4;)
              local.get 0
              return
            end
            local.get 0
            i32.const 1
            i32.add
            local.set 2
            block ;; label = @4
              local.get 1
              i32.const 1
              i32.add
              local.tee 3
              i32.const 3
              i32.and
              br_if 0 (;@4;)
              local.get 2
              local.set 0
              local.get 3
              local.set 1
              br 1 (;@3;)
            end
            local.get 2
            local.get 3
            i32.load8_u
            local.tee 3
            i32.store8
            local.get 3
            i32.eqz
            br_if 2 (;@1;)
            local.get 0
            i32.const 2
            i32.add
            local.set 2
            block ;; label = @4
              local.get 1
              i32.const 2
              i32.add
              local.tee 3
              i32.const 3
              i32.and
              br_if 0 (;@4;)
              local.get 2
              local.set 0
              local.get 3
              local.set 1
              br 1 (;@3;)
            end
            local.get 2
            local.get 3
            i32.load8_u
            local.tee 3
            i32.store8
            local.get 3
            i32.eqz
            br_if 2 (;@1;)
            local.get 0
            i32.const 3
            i32.add
            local.set 2
            block ;; label = @4
              local.get 1
              i32.const 3
              i32.add
              local.tee 3
              i32.const 3
              i32.and
              br_if 0 (;@4;)
              local.get 2
              local.set 0
              local.get 3
              local.set 1
              br 1 (;@3;)
            end
            local.get 2
            local.get 3
            i32.load8_u
            local.tee 3
            i32.store8
            local.get 3
            i32.eqz
            br_if 2 (;@1;)
            local.get 0
            i32.const 4
            i32.add
            local.set 0
            local.get 1
            i32.const 4
            i32.add
            local.set 1
          end
          local.get 1
          i32.load
          local.tee 2
          i32.const -1
          i32.xor
          local.get 2
          i32.const -16843009
          i32.add
          i32.and
          i32.const -2139062144
          i32.and
          br_if 0 (;@2;)
          loop ;; label = @3
            local.get 0
            local.get 2
            i32.store
            local.get 0
            i32.const 4
            i32.add
            local.set 0
            local.get 1
            i32.const 4
            i32.add
            local.tee 1
            i32.load
            local.tee 2
            i32.const -1
            i32.xor
            local.get 2
            i32.const -16843009
            i32.add
            i32.and
            i32.const -2139062144
            i32.and
            i32.eqz
            br_if 0 (;@3;)
          end
        end
        local.get 0
        local.get 2
        i32.store8
        block ;; label = @2
          local.get 2
          i32.const 255
          i32.and
          br_if 0 (;@2;)
          local.get 0
          return
        end
        local.get 1
        i32.const 1
        i32.add
        local.set 1
        local.get 0
        local.set 2
        loop ;; label = @2
          local.get 2
          local.get 1
          i32.load8_u
          local.tee 0
          i32.store8 offset=1
          local.get 1
          i32.const 1
          i32.add
          local.set 1
          local.get 2
          i32.const 1
          i32.add
          local.set 2
          local.get 0
          br_if 0 (;@2;)
        end
      end
      local.get 2
    )
    (func $strcpy (;117;) (type 5) (param i32 i32) (result i32)
      local.get 0
      local.get 1
      call $__stpcpy
      drop
      local.get 0
    )
    (func $strlen (;118;) (type 10) (param i32) (result i32)
      (local i32 i32)
      local.get 0
      local.set 1
      block ;; label = @1
        block ;; label = @2
          local.get 0
          i32.const 3
          i32.and
          i32.eqz
          br_if 0 (;@2;)
          local.get 0
          local.set 1
          local.get 0
          i32.load8_u
          i32.eqz
          br_if 1 (;@1;)
          local.get 0
          i32.const 1
          i32.add
          local.tee 1
          i32.const 3
          i32.and
          i32.eqz
          br_if 0 (;@2;)
          local.get 1
          i32.load8_u
          i32.eqz
          br_if 1 (;@1;)
          local.get 0
          i32.const 2
          i32.add
          local.tee 1
          i32.const 3
          i32.and
          i32.eqz
          br_if 0 (;@2;)
          local.get 1
          i32.load8_u
          i32.eqz
          br_if 1 (;@1;)
          local.get 0
          i32.const 3
          i32.add
          local.tee 1
          i32.const 3
          i32.and
          i32.eqz
          br_if 0 (;@2;)
          local.get 1
          i32.load8_u
          i32.eqz
          br_if 1 (;@1;)
          local.get 0
          i32.const 4
          i32.add
          local.set 1
        end
        local.get 1
        i32.const -5
        i32.add
        local.set 1
        loop ;; label = @2
          local.get 1
          i32.const 5
          i32.add
          local.set 2
          local.get 1
          i32.const 4
          i32.add
          local.set 1
          local.get 2
          i32.load
          local.tee 2
          i32.const -1
          i32.xor
          local.get 2
          i32.const -16843009
          i32.add
          i32.and
          i32.const -2139062144
          i32.and
          i32.eqz
          br_if 0 (;@2;)
        end
        loop ;; label = @2
          local.get 1
          i32.const 1
          i32.add
          local.tee 1
          i32.load8_u
          br_if 0 (;@2;)
        end
      end
      local.get 1
      local.get 0
      i32.sub
    )
    (func $_ZN4core3ptr26drop_in_place$LT$usize$GT$17h2a7616625bccfaeaE (;119;) (type $.rodata) (param i32))
    (func $_ZN5alloc7raw_vec11finish_grow17h7cf7fb6522e4581bE (;120;) (type 9) (param i32 i32 i32 i32)
      block ;; label = @1
        block ;; label = @2
          local.get 2
          i32.eqz
          br_if 0 (;@2;)
          block ;; label = @3
            block ;; label = @4
              block ;; label = @5
                block ;; label = @6
                  block ;; label = @7
                    block ;; label = @8
                      local.get 1
                      i32.const 0
                      i32.lt_s
                      br_if 0 (;@8;)
                      local.get 3
                      i32.load offset=8
                      br_if 1 (;@7;)
                      local.get 1
                      br_if 2 (;@6;)
                      i32.const 1
                      local.set 2
                      br 4 (;@4;)
                    end
                    local.get 0
                    i32.const 8
                    i32.add
                    i32.const 0
                    i32.store
                    br 6 (;@1;)
                  end
                  block ;; label = @7
                    local.get 3
                    i32.load offset=4
                    local.tee 2
                    br_if 0 (;@7;)
                    block ;; label = @8
                      local.get 1
                      br_if 0 (;@8;)
                      i32.const 1
                      local.set 2
                      br 4 (;@4;)
                    end
                    local.get 1
                    i32.const 1
                    call $__rust_alloc
                    local.set 2
                    br 2 (;@5;)
                  end
                  local.get 3
                  i32.load
                  local.get 2
                  i32.const 1
                  local.get 1
                  call $__rust_realloc
                  local.set 2
                  br 1 (;@5;)
                end
                local.get 1
                i32.const 1
                call $__rust_alloc
                local.set 2
              end
              local.get 2
              i32.eqz
              br_if 1 (;@3;)
            end
            local.get 0
            local.get 2
            i32.store offset=4
            local.get 0
            i32.const 8
            i32.add
            local.get 1
            i32.store
            local.get 0
            i32.const 0
            i32.store
            return
          end
          local.get 0
          local.get 1
          i32.store offset=4
          local.get 0
          i32.const 8
          i32.add
          i32.const 1
          i32.store
          local.get 0
          i32.const 1
          i32.store
          return
        end
        local.get 0
        local.get 1
        i32.store offset=4
        local.get 0
        i32.const 8
        i32.add
        i32.const 0
        i32.store
      end
      local.get 0
      i32.const 1
      i32.store
    )
    (func $_ZN5alloc5alloc18handle_alloc_error17h680df29e672ed57dE (;121;) (type 3) (param i32 i32)
      local.get 0
      local.get 1
      call $_ZN5alloc5alloc18handle_alloc_error8rt_error17h606c627033d9706fE
      unreachable
    )
    (func $_ZN5alloc7raw_vec17capacity_overflow17h38ac120e37f2568fE (;122;) (type 7)
      (local i32)
      global.get $__stack_pointer
      i32.const 32
      i32.sub
      local.tee 0
      global.set $__stack_pointer
      local.get 0
      i32.const 20
      i32.add
      i32.const 1
      i32.store
      local.get 0
      i32.const 28
      i32.add
      i32.const 0
      i32.store
      local.get 0
      i32.const 1050644
      i32.store offset=16
      local.get 0
      i32.const 1050596
      i32.store offset=24
      local.get 0
      i32.const 0
      i32.store offset=8
      local.get 0
      i32.const 8
      i32.add
      i32.const 1050652
      call $_ZN4core9panicking9panic_fmt17hf4ce15c1b219b988E
      unreachable
    )
    (func $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17h6b78444faa513e71E (;123;) (type 3) (param i32 i32)
      (local i32 i32 i32)
      global.get $__stack_pointer
      i32.const 32
      i32.sub
      local.tee 2
      global.set $__stack_pointer
      block ;; label = @1
        block ;; label = @2
          local.get 1
          i32.const 1
          i32.add
          local.tee 1
          i32.eqz
          br_if 0 (;@2;)
          local.get 0
          i32.load
          local.tee 3
          i32.const 1
          i32.shl
          local.tee 4
          local.get 1
          local.get 4
          local.get 1
          i32.gt_u
          select
          local.tee 1
          i32.const 8
          local.get 1
          i32.const 8
          i32.gt_u
          select
          local.tee 1
          i32.const -1
          i32.xor
          i32.const 31
          i32.shr_u
          local.set 4
          block ;; label = @3
            block ;; label = @4
              local.get 3
              i32.eqz
              br_if 0 (;@4;)
              local.get 2
              i32.const 1
              i32.store offset=24
              local.get 2
              local.get 3
              i32.store offset=20
              local.get 2
              local.get 0
              i32.const 4
              i32.add
              i32.load
              i32.store offset=16
              br 1 (;@3;)
            end
            local.get 2
            i32.const 0
            i32.store offset=24
          end
          local.get 2
          local.get 1
          local.get 4
          local.get 2
          i32.const 16
          i32.add
          call $_ZN5alloc7raw_vec11finish_grow17h7cf7fb6522e4581bE
          local.get 2
          i32.load offset=4
          local.set 3
          block ;; label = @3
            local.get 2
            i32.load
            br_if 0 (;@3;)
            local.get 0
            local.get 1
            i32.store
            local.get 0
            local.get 3
            i32.store offset=4
            br 2 (;@1;)
          end
          local.get 2
          i32.const 8
          i32.add
          i32.load
          local.tee 0
          i32.const -2147483647
          i32.eq
          br_if 1 (;@1;)
          local.get 0
          i32.eqz
          br_if 0 (;@2;)
          local.get 3
          local.get 0
          call $_ZN5alloc5alloc18handle_alloc_error17h680df29e672ed57dE
          unreachable
        end
        call $_ZN5alloc7raw_vec17capacity_overflow17h38ac120e37f2568fE
        unreachable
      end
      local.get 2
      i32.const 32
      i32.add
      global.set $__stack_pointer
    )
    (func $_ZN5alloc5alloc18handle_alloc_error8rt_error17h606c627033d9706fE (;124;) (type 3) (param i32 i32)
      local.get 0
      local.get 1
      call $__rust_alloc_error_handler
      unreachable
    )
    (func $_ZN72_$LT$$RF$str$u20$as$u20$alloc..ffi..c_str..CString..new..SpecNewImpl$GT$13spec_new_impl17h340d4b599af20849E (;125;) (type 2) (param i32 i32 i32)
      (local i32 i32 i32 i64)
      global.get $__stack_pointer
      i32.const 48
      i32.sub
      local.tee 3
      global.set $__stack_pointer
      block ;; label = @1
        block ;; label = @2
          block ;; label = @3
            block ;; label = @4
              block ;; label = @5
                local.get 2
                i32.const 1
                i32.add
                local.tee 4
                i32.eqz
                br_if 0 (;@5;)
                local.get 4
                i32.const -1
                i32.le_s
                br_if 1 (;@4;)
                local.get 4
                i32.const 1
                call $__rust_alloc
                local.tee 5
                i32.eqz
                br_if 2 (;@3;)
                local.get 3
                local.get 5
                i32.store offset=20
                local.get 3
                local.get 4
                i32.store offset=16
                local.get 5
                local.get 1
                local.get 2
                call $memcpy
                drop
                local.get 3
                local.get 2
                i32.store offset=24
                block ;; label = @6
                  local.get 2
                  i32.const 8
                  i32.lt_u
                  br_if 0 (;@6;)
                  local.get 3
                  i32.const 8
                  i32.add
                  i32.const 0
                  local.get 1
                  local.get 2
                  call $_ZN4core5slice6memchr14memchr_aligned17h129bf890ef0ffda6E
                  local.get 3
                  i32.load offset=12
                  local.set 5
                  local.get 3
                  i32.load offset=8
                  local.set 4
                  br 5 (;@1;)
                end
                block ;; label = @6
                  local.get 2
                  br_if 0 (;@6;)
                  i32.const 0
                  local.set 5
                  i32.const 0
                  local.set 4
                  br 5 (;@1;)
                end
                block ;; label = @6
                  local.get 1
                  i32.load8_u
                  br_if 0 (;@6;)
                  i32.const 1
                  local.set 4
                  i32.const 0
                  local.set 5
                  br 5 (;@1;)
                end
                i32.const 1
                local.set 4
                local.get 2
                i32.const 1
                i32.eq
                br_if 3 (;@2;)
                block ;; label = @6
                  local.get 1
                  i32.load8_u offset=1
                  br_if 0 (;@6;)
                  i32.const 1
                  local.set 5
                  br 5 (;@1;)
                end
                i32.const 2
                local.set 5
                local.get 2
                i32.const 2
                i32.eq
                br_if 3 (;@2;)
                local.get 1
                i32.load8_u offset=2
                i32.eqz
                br_if 4 (;@1;)
                i32.const 3
                local.set 5
                local.get 2
                i32.const 3
                i32.eq
                br_if 3 (;@2;)
                local.get 1
                i32.load8_u offset=3
                i32.eqz
                br_if 4 (;@1;)
                i32.const 4
                local.set 5
                local.get 2
                i32.const 4
                i32.eq
                br_if 3 (;@2;)
                local.get 1
                i32.load8_u offset=4
                i32.eqz
                br_if 4 (;@1;)
                i32.const 5
                local.set 5
                local.get 2
                i32.const 5
                i32.eq
                br_if 3 (;@2;)
                local.get 1
                i32.load8_u offset=5
                i32.eqz
                br_if 4 (;@1;)
                local.get 2
                i32.const 6
                i32.eq
                br_if 3 (;@2;)
                local.get 2
                i32.const 6
                local.get 1
                i32.load8_u offset=6
                local.tee 4
                select
                local.set 5
                local.get 4
                i32.eqz
                local.set 4
                br 4 (;@1;)
              end
              i32.const 1050668
              i32.const 43
              i32.const 1050744
              call $_ZN4core9panicking5panic17h8fa39a92dcc1b069E
              unreachable
            end
            call $_ZN5alloc7raw_vec17capacity_overflow17h38ac120e37f2568fE
            unreachable
          end
          local.get 4
          i32.const 1
          call $_ZN5alloc5alloc18handle_alloc_error17h680df29e672ed57dE
          unreachable
        end
        local.get 2
        local.set 5
        i32.const 0
        local.set 4
      end
      block ;; label = @1
        block ;; label = @2
          local.get 4
          br_if 0 (;@2;)
          local.get 3
          i32.const 32
          i32.add
          i32.const 8
          i32.add
          local.get 3
          i32.const 16
          i32.add
          i32.const 8
          i32.add
          i32.load
          i32.store
          local.get 3
          local.get 3
          i64.load offset=16
          i64.store offset=32
          local.get 3
          local.get 3
          i32.const 32
          i32.add
          call $_ZN5alloc3ffi5c_str7CString19_from_vec_unchecked17hac0da7602f10a2d1E
          local.get 3
          i64.load
          local.set 6
          local.get 0
          i32.const 0
          i32.store offset=8
          local.get 0
          local.get 6
          i64.store align=4
          br 1 (;@1;)
        end
        local.get 0
        local.get 3
        i64.load offset=16
        i64.store offset=4 align=4
        local.get 0
        local.get 5
        i32.store
        local.get 0
        i32.const 12
        i32.add
        local.get 3
        i32.const 24
        i32.add
        i32.load
        i32.store
      end
      local.get 3
      i32.const 48
      i32.add
      global.set $__stack_pointer
    )
    (func $_ZN5alloc3ffi5c_str7CString19_from_vec_unchecked17hac0da7602f10a2d1E (;126;) (type 3) (param i32 i32)
      (local i32 i32 i32 i32)
      global.get $__stack_pointer
      i32.const 32
      i32.sub
      local.tee 2
      global.set $__stack_pointer
      block ;; label = @1
        block ;; label = @2
          block ;; label = @3
            block ;; label = @4
              block ;; label = @5
                local.get 1
                i32.load
                local.tee 3
                local.get 1
                i32.load offset=8
                local.tee 4
                i32.ne
                br_if 0 (;@5;)
                local.get 4
                i32.const 1
                i32.add
                local.tee 3
                i32.eqz
                br_if 2 (;@3;)
                local.get 3
                i32.const -1
                i32.xor
                i32.const 31
                i32.shr_u
                local.set 5
                block ;; label = @6
                  block ;; label = @7
                    local.get 4
                    i32.eqz
                    br_if 0 (;@7;)
                    local.get 2
                    i32.const 1
                    i32.store offset=24
                    local.get 2
                    local.get 4
                    i32.store offset=20
                    local.get 2
                    local.get 1
                    i32.const 4
                    i32.add
                    i32.load
                    i32.store offset=16
                    br 1 (;@6;)
                  end
                  local.get 2
                  i32.const 0
                  i32.store offset=24
                end
                local.get 2
                local.get 3
                local.get 5
                local.get 2
                i32.const 16
                i32.add
                call $_ZN5alloc7raw_vec11finish_grow17h7cf7fb6522e4581bE
                local.get 2
                i32.load offset=4
                local.set 5
                local.get 2
                i32.load
                br_if 1 (;@4;)
                local.get 1
                local.get 3
                i32.store
                local.get 1
                local.get 5
                i32.store offset=4
              end
              local.get 4
              local.get 3
              i32.ne
              br_if 3 (;@1;)
              br 2 (;@2;)
            end
            local.get 2
            i32.const 8
            i32.add
            i32.load
            local.tee 3
            i32.const -2147483647
            i32.eq
            br_if 1 (;@2;)
            local.get 3
            i32.eqz
            br_if 0 (;@3;)
            local.get 5
            local.get 3
            call $_ZN5alloc5alloc18handle_alloc_error17h680df29e672ed57dE
            unreachable
          end
          call $_ZN5alloc7raw_vec17capacity_overflow17h38ac120e37f2568fE
          unreachable
        end
        local.get 1
        local.get 4
        call $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16reserve_for_push17h6b78444faa513e71E
        local.get 1
        i32.load
        local.set 3
        local.get 1
        i32.load offset=8
        local.set 4
      end
      local.get 1
      local.get 4
      i32.const 1
      i32.add
      local.tee 5
      i32.store offset=8
      local.get 1
      i32.load offset=4
      local.tee 1
      local.get 4
      i32.add
      i32.const 0
      i32.store8
      block ;; label = @1
        block ;; label = @2
          block ;; label = @3
            local.get 3
            local.get 5
            i32.gt_u
            br_if 0 (;@3;)
            local.get 1
            local.set 4
            br 1 (;@2;)
          end
          block ;; label = @3
            local.get 5
            br_if 0 (;@3;)
            i32.const 1
            local.set 4
            local.get 1
            local.get 3
            i32.const 1
            call $__rust_dealloc
            br 1 (;@2;)
          end
          local.get 1
          local.get 3
          i32.const 1
          local.get 5
          call $__rust_realloc
          local.tee 4
          i32.eqz
          br_if 1 (;@1;)
        end
        local.get 0
        local.get 5
        i32.store offset=4
        local.get 0
        local.get 4
        i32.store
        local.get 2
        i32.const 32
        i32.add
        global.set $__stack_pointer
        return
      end
      local.get 5
      i32.const 1
      call $_ZN5alloc5alloc18handle_alloc_error17h680df29e672ed57dE
      unreachable
    )
    (func $_ZN5alloc4sync32arcinner_layout_for_value_layout17h57586c4dc56ab55aE (;127;) (type 2) (param i32 i32 i32)
      (local i32 i32)
      global.get $__stack_pointer
      i32.const 16
      i32.sub
      local.tee 3
      global.set $__stack_pointer
      block ;; label = @1
        local.get 2
        i32.const 7
        i32.add
        i32.const 0
        local.get 2
        i32.sub
        i32.and
        local.tee 4
        local.get 4
        i32.const -8
        i32.add
        i32.lt_u
        br_if 0 (;@1;)
        local.get 4
        local.get 1
        i32.add
        local.tee 1
        local.get 4
        i32.lt_u
        br_if 0 (;@1;)
        i32.const -2147483648
        local.get 2
        i32.const 4
        local.get 2
        i32.const 4
        i32.gt_u
        select
        local.tee 2
        i32.sub
        local.get 1
        i32.lt_u
        br_if 0 (;@1;)
        local.get 0
        local.get 2
        i32.store offset=4
        local.get 0
        local.get 2
        local.get 1
        i32.add
        i32.const -1
        i32.add
        i32.const 0
        local.get 2
        i32.sub
        i32.and
        i32.store
        local.get 3
        i32.const 16
        i32.add
        global.set $__stack_pointer
        return
      end
      i32.const 1050760
      i32.const 43
      local.get 3
      i32.const 8
      i32.add
      i32.const 1050804
      i32.const 1050848
      call $_ZN4core6result13unwrap_failed17he6bfae7ea6f8795eE
      unreachable
    )
    (func $_ZN4core3ops8function6FnOnce9call_once17h2709ecd011efc890E (;128;) (type 5) (param i32 i32) (result i32)
      local.get 0
      i32.load
      drop
      loop (result i32) ;; label = @1
        br 0 (;@1;)
      end
    )
    (func $_ZN4core3ptr102drop_in_place$LT$$RF$core..iter..adapters..copied..Copied$LT$core..slice..iter..Iter$LT$u8$GT$$GT$$GT$17h4850089a660ee085E (;129;) (type $.rodata) (param i32))
    (func $_ZN4core9panicking9panic_fmt17hf4ce15c1b219b988E (;130;) (type 3) (param i32 i32)
      (local i32)
      global.get $__stack_pointer
      i32.const 32
      i32.sub
      local.tee 2
      global.set $__stack_pointer
      local.get 2
      i32.const 1
      i32.store8 offset=24
      local.get 2
      local.get 1
      i32.store offset=20
      local.get 2
      local.get 0
      i32.store offset=16
      local.get 2
      i32.const 1050936
      i32.store offset=12
      local.get 2
      i32.const 1050864
      i32.store offset=8
      local.get 2
      i32.const 8
      i32.add
      call $rust_begin_unwind
      unreachable
    )
    (func $_ZN4core5slice5index26slice_start_index_len_fail17h4b6807d169d5a5ccE (;131;) (type 2) (param i32 i32 i32)
      local.get 0
      local.get 1
      local.get 2
      call $_ZN4core5slice5index29slice_start_index_len_fail_rt17h746adbf30693da97E
      unreachable
    )
    (func $_ZN4core3fmt9Formatter3pad17hee1e19a8df95bdd9E (;132;) (type 4) (param i32 i32 i32) (result i32)
      (local i32 i32 i32 i32 i32 i32 i32 i32)
      local.get 0
      i32.load offset=16
      local.set 3
      block ;; label = @1
        block ;; label = @2
          block ;; label = @3
            local.get 0
            i32.load offset=8
            local.tee 4
            i32.const 1
            i32.eq
            br_if 0 (;@3;)
            local.get 3
            i32.const 1
            i32.ne
            br_if 1 (;@2;)
          end
          block ;; label = @3
            local.get 3
            i32.const 1
            i32.ne
            br_if 0 (;@3;)
            local.get 1
            local.get 2
            i32.add
            local.set 5
            local.get 0
            i32.const 20
            i32.add
            i32.load
            i32.const 1
            i32.add
            local.set 6
            i32.const 0
            local.set 7
            local.get 1
            local.set 8
            block ;; label = @4
              loop ;; label = @5
                local.get 8
                local.set 3
                local.get 6
                i32.const -1
                i32.add
                local.tee 6
                i32.eqz
                br_if 1 (;@4;)
                local.get 3
                local.get 5
                i32.eq
                br_if 2 (;@3;)
                block ;; label = @6
                  block ;; label = @7
                    local.get 3
                    i32.load8_s
                    local.tee 9
                    i32.const -1
                    i32.le_s
                    br_if 0 (;@7;)
                    local.get 3
                    i32.const 1
                    i32.add
                    local.set 8
                    local.get 9
                    i32.const 255
                    i32.and
                    local.set 9
                    br 1 (;@6;)
                  end
                  local.get 3
                  i32.load8_u offset=1
                  i32.const 63
                  i32.and
                  local.set 8
                  local.get 9
                  i32.const 31
                  i32.and
                  local.set 10
                  block ;; label = @7
                    local.get 9
                    i32.const -33
                    i32.gt_u
                    br_if 0 (;@7;)
                    local.get 10
                    i32.const 6
                    i32.shl
                    local.get 8
                    i32.or
                    local.set 9
                    local.get 3
                    i32.const 2
                    i32.add
                    local.set 8
                    br 1 (;@6;)
                  end
                  local.get 8
                  i32.const 6
                  i32.shl
                  local.get 3
                  i32.load8_u offset=2
                  i32.const 63
                  i32.and
                  i32.or
                  local.set 8
                  block ;; label = @7
                    local.get 9
                    i32.const -16
                    i32.ge_u
                    br_if 0 (;@7;)
                    local.get 8
                    local.get 10
                    i32.const 12
                    i32.shl
                    i32.or
                    local.set 9
                    local.get 3
                    i32.const 3
                    i32.add
                    local.set 8
                    br 1 (;@6;)
                  end
                  local.get 8
                  i32.const 6
                  i32.shl
                  local.get 3
                  i32.load8_u offset=3
                  i32.const 63
                  i32.and
                  i32.or
                  local.get 10
                  i32.const 18
                  i32.shl
                  i32.const 1835008
                  i32.and
                  i32.or
                  local.tee 9
                  i32.const 1114112
                  i32.eq
                  br_if 3 (;@3;)
                  local.get 3
                  i32.const 4
                  i32.add
                  local.set 8
                end
                local.get 7
                local.get 3
                i32.sub
                local.get 8
                i32.add
                local.set 7
                local.get 9
                i32.const 1114112
                i32.ne
                br_if 0 (;@5;)
                br 2 (;@3;)
              end
            end
            local.get 3
            local.get 5
            i32.eq
            br_if 0 (;@3;)
            block ;; label = @4
              local.get 3
              i32.load8_s
              local.tee 8
              i32.const -1
              i32.gt_s
              br_if 0 (;@4;)
              local.get 8
              i32.const -32
              i32.lt_u
              br_if 0 (;@4;)
              local.get 8
              i32.const -16
              i32.lt_u
              br_if 0 (;@4;)
              local.get 3
              i32.load8_u offset=2
              i32.const 63
              i32.and
              i32.const 6
              i32.shl
              local.get 3
              i32.load8_u offset=1
              i32.const 63
              i32.and
              i32.const 12
              i32.shl
              i32.or
              local.get 3
              i32.load8_u offset=3
              i32.const 63
              i32.and
              i32.or
              local.get 8
              i32.const 255
              i32.and
              i32.const 18
              i32.shl
              i32.const 1835008
              i32.and
              i32.or
              i32.const 1114112
              i32.eq
              br_if 1 (;@3;)
            end
            block ;; label = @4
              block ;; label = @5
                local.get 7
                i32.eqz
                br_if 0 (;@5;)
                block ;; label = @6
                  local.get 7
                  local.get 2
                  i32.lt_u
                  br_if 0 (;@6;)
                  i32.const 0
                  local.set 3
                  local.get 7
                  local.get 2
                  i32.eq
                  br_if 1 (;@5;)
                  br 2 (;@4;)
                end
                i32.const 0
                local.set 3
                local.get 1
                local.get 7
                i32.add
                i32.load8_s
                i32.const -64
                i32.lt_s
                br_if 1 (;@4;)
              end
              local.get 1
              local.set 3
            end
            local.get 7
            local.get 2
            local.get 3
            select
            local.set 2
            local.get 3
            local.get 1
            local.get 3
            select
            local.set 1
          end
          block ;; label = @3
            local.get 4
            br_if 0 (;@3;)
            local.get 0
            i32.load
            local.get 1
            local.get 2
            local.get 0
            i32.load offset=4
            i32.load offset=12
            call_indirect (type 4)
            return
          end
          local.get 0
          i32.const 12
          i32.add
          i32.load
          local.set 7
          block ;; label = @3
            block ;; label = @4
              local.get 2
              i32.const 16
              i32.lt_u
              br_if 0 (;@4;)
              local.get 1
              local.get 2
              call $_ZN4core3str5count14do_count_chars17h9555fdd2933f4e49E
              local.set 8
              br 1 (;@3;)
            end
            block ;; label = @4
              local.get 2
              br_if 0 (;@4;)
              i32.const 0
              local.set 8
              br 1 (;@3;)
            end
            local.get 2
            i32.const 3
            i32.and
            local.set 9
            block ;; label = @4
              block ;; label = @5
                local.get 2
                i32.const -1
                i32.add
                i32.const 3
                i32.ge_u
                br_if 0 (;@5;)
                i32.const 0
                local.set 8
                local.get 1
                local.set 3
                br 1 (;@4;)
              end
              local.get 2
              i32.const -4
              i32.and
              local.set 6
              i32.const 0
              local.set 8
              local.get 1
              local.set 3
              loop ;; label = @5
                local.get 8
                local.get 3
                i32.load8_s
                i32.const -65
                i32.gt_s
                i32.add
                local.get 3
                i32.load8_s offset=1
                i32.const -65
                i32.gt_s
                i32.add
                local.get 3
                i32.load8_s offset=2
                i32.const -65
                i32.gt_s
                i32.add
                local.get 3
                i32.load8_s offset=3
                i32.const -65
                i32.gt_s
                i32.add
                local.set 8
                local.get 3
                i32.const 4
                i32.add
                local.set 3
                local.get 6
                i32.const -4
                i32.add
                local.tee 6
                br_if 0 (;@5;)
              end
            end
            local.get 9
            i32.eqz
            br_if 0 (;@3;)
            loop ;; label = @4
              local.get 8
              local.get 3
              i32.load8_s
              i32.const -65
              i32.gt_s
              i32.add
              local.set 8
              local.get 3
              i32.const 1
              i32.add
              local.set 3
              local.get 9
              i32.const -1
              i32.add
              local.tee 9
              br_if 0 (;@4;)
            end
          end
          block ;; label = @3
            local.get 7
            local.get 8
            i32.le_u
            br_if 0 (;@3;)
            local.get 7
            local.get 8
            i32.sub
            local.tee 8
            local.set 6
            block ;; label = @4
              block ;; label = @5
                block ;; label = @6
                  i32.const 0
                  local.get 0
                  i32.load8_u offset=32
                  local.tee 3
                  local.get 3
                  i32.const 3
                  i32.eq
                  select
                  i32.const 3
                  i32.and
                  local.tee 3
                  br_table 2 (;@4;) 0 (;@6;) 1 (;@5;) 2 (;@4;)
                end
                i32.const 0
                local.set 6
                local.get 8
                local.set 3
                br 1 (;@4;)
              end
              local.get 8
              i32.const 1
              i32.shr_u
              local.set 3
              local.get 8
              i32.const 1
              i32.add
              i32.const 1
              i32.shr_u
              local.set 6
            end
            local.get 3
            i32.const 1
            i32.add
            local.set 3
            local.get 0
            i32.const 4
            i32.add
            i32.load
            local.set 9
            local.get 0
            i32.load offset=28
            local.set 8
            local.get 0
            i32.load
            local.set 0
            block ;; label = @4
              loop ;; label = @5
                local.get 3
                i32.const -1
                i32.add
                local.tee 3
                i32.eqz
                br_if 1 (;@4;)
                local.get 0
                local.get 8
                local.get 9
                i32.load offset=16
                call_indirect (type 5)
                i32.eqz
                br_if 0 (;@5;)
              end
              i32.const 1
              return
            end
            i32.const 1
            local.set 3
            local.get 8
            i32.const 1114112
            i32.eq
            br_if 2 (;@1;)
            local.get 0
            local.get 1
            local.get 2
            local.get 9
            i32.load offset=12
            call_indirect (type 4)
            br_if 2 (;@1;)
            i32.const 0
            local.set 3
            loop ;; label = @4
              block ;; label = @5
                local.get 6
                local.get 3
                i32.ne
                br_if 0 (;@5;)
                local.get 6
                local.get 6
                i32.lt_u
                return
              end
              local.get 3
              i32.const 1
              i32.add
              local.set 3
              local.get 0
              local.get 8
              local.get 9
              i32.load offset=16
              call_indirect (type 5)
              i32.eqz
              br_if 0 (;@4;)
            end
            local.get 3
            i32.const -1
            i32.add
            local.get 6
            i32.lt_u
            return
          end
          local.get 0
          i32.load
          local.get 1
          local.get 2
          local.get 0
          i32.load offset=4
          i32.load offset=12
          call_indirect (type 4)
          return
        end
        local.get 0
        i32.load
        local.get 1
        local.get 2
        local.get 0
        i32.load offset=4
        i32.load offset=12
        call_indirect (type 4)
        local.set 3
      end
      local.get 3
    )
    (func $_ZN4core9panicking5panic17h8fa39a92dcc1b069E (;133;) (type 2) (param i32 i32 i32)
      (local i32)
      global.get $__stack_pointer
      i32.const 32
      i32.sub
      local.tee 3
      global.set $__stack_pointer
      local.get 3
      i32.const 12
      i32.add
      i32.const 1
      i32.store
      local.get 3
      i32.const 20
      i32.add
      i32.const 0
      i32.store
      local.get 3
      i32.const 1050864
      i32.store offset=16
      local.get 3
      i32.const 0
      i32.store
      local.get 3
      local.get 1
      i32.store offset=28
      local.get 3
      local.get 0
      i32.store offset=24
      local.get 3
      local.get 3
      i32.const 24
      i32.add
      i32.store offset=8
      local.get 3
      local.get 2
      call $_ZN4core9panicking9panic_fmt17hf4ce15c1b219b988E
      unreachable
    )
    (func $_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17hca64045c3402134cE (;134;) (type 5) (param i32 i32) (result i32)
      local.get 0
      i64.load32_u
      i32.const 1
      local.get 1
      call $_ZN4core3fmt3num3imp7fmt_u6417hf4eec24457ffc084E
    )
    (func $_ZN4core3fmt5write17h7558535140974479E (;135;) (type 4) (param i32 i32 i32) (result i32)
      (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
      global.get $__stack_pointer
      i32.const 48
      i32.sub
      local.tee 3
      global.set $__stack_pointer
      local.get 3
      i32.const 3
      i32.store8 offset=40
      local.get 3
      i64.const 137438953472
      i64.store offset=32
      i32.const 0
      local.set 4
      local.get 3
      i32.const 0
      i32.store offset=24
      local.get 3
      i32.const 0
      i32.store offset=16
      local.get 3
      local.get 1
      i32.store offset=12
      local.get 3
      local.get 0
      i32.store offset=8
      block ;; label = @1
        block ;; label = @2
          block ;; label = @3
            block ;; label = @4
              local.get 2
              i32.load
              local.tee 5
              br_if 0 (;@4;)
              local.get 2
              i32.const 20
              i32.add
              i32.load
              local.tee 0
              i32.eqz
              br_if 1 (;@3;)
              local.get 2
              i32.load offset=16
              local.set 1
              local.get 0
              i32.const 3
              i32.shl
              local.set 6
              local.get 0
              i32.const -1
              i32.add
              i32.const 536870911
              i32.and
              i32.const 1
              i32.add
              local.set 4
              local.get 2
              i32.load offset=8
              local.set 0
              loop ;; label = @5
                block ;; label = @6
                  local.get 0
                  i32.const 4
                  i32.add
                  i32.load
                  local.tee 7
                  i32.eqz
                  br_if 0 (;@6;)
                  local.get 3
                  i32.load offset=8
                  local.get 0
                  i32.load
                  local.get 7
                  local.get 3
                  i32.load offset=12
                  i32.load offset=12
                  call_indirect (type 4)
                  br_if 4 (;@2;)
                end
                local.get 1
                i32.load
                local.get 3
                i32.const 8
                i32.add
                local.get 1
                i32.const 4
                i32.add
                i32.load
                call_indirect (type 5)
                br_if 3 (;@2;)
                local.get 1
                i32.const 8
                i32.add
                local.set 1
                local.get 0
                i32.const 8
                i32.add
                local.set 0
                local.get 6
                i32.const -8
                i32.add
                local.tee 6
                br_if 0 (;@5;)
                br 2 (;@3;)
              end
            end
            local.get 2
            i32.load offset=4
            local.tee 1
            i32.eqz
            br_if 0 (;@3;)
            local.get 1
            i32.const 5
            i32.shl
            local.set 8
            local.get 1
            i32.const -1
            i32.add
            i32.const 134217727
            i32.and
            i32.const 1
            i32.add
            local.set 4
            local.get 2
            i32.load offset=8
            local.set 0
            i32.const 0
            local.set 6
            loop ;; label = @4
              block ;; label = @5
                local.get 0
                i32.const 4
                i32.add
                i32.load
                local.tee 1
                i32.eqz
                br_if 0 (;@5;)
                local.get 3
                i32.load offset=8
                local.get 0
                i32.load
                local.get 1
                local.get 3
                i32.load offset=12
                i32.load offset=12
                call_indirect (type 4)
                br_if 3 (;@2;)
              end
              local.get 3
              local.get 5
              local.get 6
              i32.add
              local.tee 1
              i32.const 28
              i32.add
              i32.load8_u
              i32.store8 offset=40
              local.get 3
              local.get 1
              i32.const 20
              i32.add
              i64.load align=4
              i64.store offset=32
              local.get 1
              i32.const 16
              i32.add
              i32.load
              local.set 9
              local.get 2
              i32.load offset=16
              local.set 10
              i32.const 0
              local.set 11
              i32.const 0
              local.set 7
              block ;; label = @5
                block ;; label = @6
                  block ;; label = @7
                    local.get 1
                    i32.const 12
                    i32.add
                    i32.load
                    br_table 1 (;@6;) 0 (;@7;) 2 (;@5;) 1 (;@6;)
                  end
                  local.get 9
                  i32.const 3
                  i32.shl
                  local.set 12
                  i32.const 0
                  local.set 7
                  local.get 10
                  local.get 12
                  i32.add
                  local.tee 12
                  i32.const 4
                  i32.add
                  i32.load
                  i32.const 52
                  i32.ne
                  br_if 1 (;@5;)
                  local.get 12
                  i32.load
                  i32.load
                  local.set 9
                end
                i32.const 1
                local.set 7
              end
              local.get 3
              local.get 9
              i32.store offset=20
              local.get 3
              local.get 7
              i32.store offset=16
              local.get 1
              i32.const 8
              i32.add
              i32.load
              local.set 7
              block ;; label = @5
                block ;; label = @6
                  block ;; label = @7
                    local.get 1
                    i32.const 4
                    i32.add
                    i32.load
                    br_table 1 (;@6;) 0 (;@7;) 2 (;@5;) 1 (;@6;)
                  end
                  local.get 7
                  i32.const 3
                  i32.shl
                  local.set 9
                  local.get 10
                  local.get 9
                  i32.add
                  local.tee 9
                  i32.const 4
                  i32.add
                  i32.load
                  i32.const 52
                  i32.ne
                  br_if 1 (;@5;)
                  local.get 9
                  i32.load
                  i32.load
                  local.set 7
                end
                i32.const 1
                local.set 11
              end
              local.get 3
              local.get 7
              i32.store offset=28
              local.get 3
              local.get 11
              i32.store offset=24
              local.get 10
              local.get 1
              i32.load
              i32.const 3
              i32.shl
              i32.add
              local.tee 1
              i32.load
              local.get 3
              i32.const 8
              i32.add
              local.get 1
              i32.load offset=4
              call_indirect (type 5)
              br_if 2 (;@2;)
              local.get 0
              i32.const 8
              i32.add
              local.set 0
              local.get 8
              local.get 6
              i32.const 32
              i32.add
              local.tee 6
              i32.ne
              br_if 0 (;@4;)
            end
          end
          block ;; label = @3
            local.get 4
            local.get 2
            i32.const 12
            i32.add
            i32.load
            i32.ge_u
            br_if 0 (;@3;)
            local.get 3
            i32.load offset=8
            local.get 2
            i32.load offset=8
            local.get 4
            i32.const 3
            i32.shl
            i32.add
            local.tee 1
            i32.load
            local.get 1
            i32.load offset=4
            local.get 3
            i32.load offset=12
            i32.load offset=12
            call_indirect (type 4)
            br_if 1 (;@2;)
          end
          i32.const 0
          local.set 1
          br 1 (;@1;)
        end
        i32.const 1
        local.set 1
      end
      local.get 3
      i32.const 48
      i32.add
      global.set $__stack_pointer
      local.get 1
    )
    (func $_ZN36_$LT$T$u20$as$u20$core..any..Any$GT$7type_id17hb25fc4480d8905d3E (;136;) (type $.data) (param i32) (result i64)
      i64.const -816388632080319500
    )
    (func $_ZN63_$LT$core..cell..BorrowMutError$u20$as$u20$core..fmt..Debug$GT$3fmt17h145bcc23e1a12888E (;137;) (type 5) (param i32 i32) (result i32)
      local.get 1
      i32.load
      i32.const 1050864
      i32.const 14
      local.get 1
      i32.load offset=4
      i32.load offset=12
      call_indirect (type 4)
    )
    (func $_ZN4core3ffi5c_str4CStr8from_ptr9strlen_rt17h0159b444b16e3465E (;138;) (type 10) (param i32) (result i32)
      local.get 0
      call $strlen
    )
    (func $_ZN4core5slice6memchr14memchr_aligned17h129bf890ef0ffda6E (;139;) (type 9) (param i32 i32 i32 i32)
      (local i32 i32 i32 i32 i32)
      block ;; label = @1
        block ;; label = @2
          block ;; label = @3
            block ;; label = @4
              block ;; label = @5
                block ;; label = @6
                  local.get 2
                  i32.const 3
                  i32.add
                  i32.const -4
                  i32.and
                  local.tee 4
                  local.get 2
                  i32.eq
                  br_if 0 (;@6;)
                  local.get 4
                  local.get 2
                  i32.sub
                  local.tee 4
                  local.get 3
                  local.get 4
                  local.get 3
                  i32.lt_u
                  select
                  local.tee 4
                  i32.eqz
                  br_if 0 (;@6;)
                  i32.const 0
                  local.set 5
                  local.get 1
                  i32.const 255
                  i32.and
                  local.set 6
                  i32.const 1
                  local.set 7
                  loop ;; label = @7
                    local.get 2
                    local.get 5
                    i32.add
                    i32.load8_u
                    local.get 6
                    i32.eq
                    br_if 6 (;@1;)
                    local.get 4
                    local.get 5
                    i32.const 1
                    i32.add
                    local.tee 5
                    i32.ne
                    br_if 0 (;@7;)
                  end
                  local.get 4
                  local.get 3
                  i32.const -8
                  i32.add
                  local.tee 8
                  i32.gt_u
                  br_if 2 (;@4;)
                  br 1 (;@5;)
                end
                local.get 3
                i32.const -8
                i32.add
                local.set 8
                i32.const 0
                local.set 4
              end
              local.get 1
              i32.const 255
              i32.and
              i32.const 16843009
              i32.mul
              local.set 5
              block ;; label = @5
                loop ;; label = @6
                  local.get 2
                  local.get 4
                  i32.add
                  local.tee 7
                  i32.load
                  local.get 5
                  i32.xor
                  local.tee 6
                  i32.const -1
                  i32.xor
                  local.get 6
                  i32.const -16843009
                  i32.add
                  i32.and
                  i32.const -2139062144
                  i32.and
                  br_if 1 (;@5;)
                  local.get 7
                  i32.const 4
                  i32.add
                  i32.load
                  local.get 5
                  i32.xor
                  local.tee 6
                  i32.const -1
                  i32.xor
                  local.get 6
                  i32.const -16843009
                  i32.add
                  i32.and
                  i32.const -2139062144
                  i32.and
                  br_if 1 (;@5;)
                  local.get 4
                  i32.const 8
                  i32.add
                  local.tee 4
                  local.get 8
                  i32.le_u
                  br_if 0 (;@6;)
                end
              end
              local.get 4
              local.get 3
              i32.gt_u
              br_if 1 (;@3;)
            end
            i32.const 0
            local.set 7
            local.get 4
            local.get 3
            i32.eq
            br_if 1 (;@2;)
            local.get 1
            i32.const 255
            i32.and
            local.set 5
            loop ;; label = @4
              block ;; label = @5
                local.get 2
                local.get 4
                i32.add
                i32.load8_u
                local.get 5
                i32.ne
                br_if 0 (;@5;)
                local.get 4
                local.set 5
                i32.const 1
                local.set 7
                br 4 (;@1;)
              end
              local.get 3
              local.get 4
              i32.const 1
              i32.add
              local.tee 4
              i32.eq
              br_if 2 (;@2;)
              br 0 (;@4;)
            end
          end
          local.get 4
          local.get 3
          i32.const 1051356
          call $_ZN4core5slice5index26slice_start_index_len_fail17h4b6807d169d5a5ccE
          unreachable
        end
        local.get 3
        local.set 5
      end
      local.get 0
      local.get 5
      i32.store offset=4
      local.get 0
      local.get 7
      i32.store
    )
    (func $_ZN4core3ffi5c_str4CStr19from_bytes_with_nul17h3bcfbfec0c9c291cE (;140;) (type 2) (param i32 i32 i32)
      (local i32 i32 i32)
      global.get $__stack_pointer
      i32.const 16
      i32.sub
      local.tee 3
      global.set $__stack_pointer
      block ;; label = @1
        block ;; label = @2
          local.get 2
          i32.const 8
          i32.lt_u
          br_if 0 (;@2;)
          local.get 3
          i32.const 8
          i32.add
          i32.const 0
          local.get 1
          local.get 2
          call $_ZN4core5slice6memchr14memchr_aligned17h129bf890ef0ffda6E
          local.get 3
          i32.load offset=12
          local.set 4
          local.get 3
          i32.load offset=8
          local.set 5
          br 1 (;@1;)
        end
        block ;; label = @2
          local.get 2
          br_if 0 (;@2;)
          i32.const 0
          local.set 4
          i32.const 0
          local.set 5
          br 1 (;@1;)
        end
        block ;; label = @2
          local.get 1
          i32.load8_u
          br_if 0 (;@2;)
          i32.const 1
          local.set 5
          i32.const 0
          local.set 4
          br 1 (;@1;)
        end
        i32.const 1
        local.set 5
        block ;; label = @2
          local.get 2
          i32.const 1
          i32.eq
          br_if 0 (;@2;)
          block ;; label = @3
            local.get 1
            i32.load8_u offset=1
            br_if 0 (;@3;)
            i32.const 1
            local.set 4
            br 2 (;@1;)
          end
          i32.const 2
          local.set 4
          local.get 2
          i32.const 2
          i32.eq
          br_if 0 (;@2;)
          local.get 1
          i32.load8_u offset=2
          i32.eqz
          br_if 1 (;@1;)
          i32.const 3
          local.set 4
          local.get 2
          i32.const 3
          i32.eq
          br_if 0 (;@2;)
          local.get 1
          i32.load8_u offset=3
          i32.eqz
          br_if 1 (;@1;)
          i32.const 4
          local.set 4
          local.get 2
          i32.const 4
          i32.eq
          br_if 0 (;@2;)
          local.get 1
          i32.load8_u offset=4
          i32.eqz
          br_if 1 (;@1;)
          i32.const 5
          local.set 4
          local.get 2
          i32.const 5
          i32.eq
          br_if 0 (;@2;)
          local.get 1
          i32.load8_u offset=5
          i32.eqz
          br_if 1 (;@1;)
          local.get 2
          local.set 4
          i32.const 0
          local.set 5
          local.get 2
          i32.const 6
          i32.eq
          br_if 1 (;@1;)
          local.get 2
          i32.const 6
          local.get 1
          i32.load8_u offset=6
          local.tee 5
          select
          local.set 4
          local.get 5
          i32.eqz
          local.set 5
          br 1 (;@1;)
        end
        local.get 2
        local.set 4
        i32.const 0
        local.set 5
      end
      block ;; label = @1
        block ;; label = @2
          local.get 5
          br_if 0 (;@2;)
          i32.const 1
          local.set 5
          local.get 0
          i32.const 1
          i32.store offset=4
          br 1 (;@1;)
        end
        i32.const 1
        local.set 5
        block ;; label = @2
          local.get 4
          i32.const 1
          i32.add
          local.get 2
          i32.eq
          br_if 0 (;@2;)
          local.get 0
          i32.const 0
          i32.store offset=4
          local.get 0
          i32.const 8
          i32.add
          local.get 4
          i32.store
          br 1 (;@1;)
        end
        local.get 0
        local.get 1
        i32.store offset=4
        local.get 0
        i32.const 8
        i32.add
        local.get 2
        i32.store
        i32.const 0
        local.set 5
      end
      local.get 0
      local.get 5
      i32.store
      local.get 3
      i32.const 16
      i32.add
      global.set $__stack_pointer
    )
    (func $_ZN4core6result13unwrap_failed17he6bfae7ea6f8795eE (;141;) (type 11) (param i32 i32 i32 i32 i32)
      (local i32)
      global.get $__stack_pointer
      i32.const 64
      i32.sub
      local.tee 5
      global.set $__stack_pointer
      local.get 5
      local.get 1
      i32.store offset=12
      local.get 5
      local.get 0
      i32.store offset=8
      local.get 5
      local.get 3
      i32.store offset=20
      local.get 5
      local.get 2
      i32.store offset=16
      local.get 5
      i32.const 24
      i32.add
      i32.const 12
      i32.add
      i32.const 2
      i32.store
      local.get 5
      i32.const 44
      i32.add
      i32.const 2
      i32.store
      local.get 5
      i32.const 48
      i32.add
      i32.const 12
      i32.add
      i32.const 53
      i32.store
      local.get 5
      i32.const 1051096
      i32.store offset=32
      local.get 5
      i32.const 0
      i32.store offset=24
      local.get 5
      i32.const 54
      i32.store offset=52
      local.get 5
      local.get 5
      i32.const 48
      i32.add
      i32.store offset=40
      local.get 5
      local.get 5
      i32.const 16
      i32.add
      i32.store offset=56
      local.get 5
      local.get 5
      i32.const 8
      i32.add
      i32.store offset=48
      local.get 5
      i32.const 24
      i32.add
      local.get 4
      call $_ZN4core9panicking9panic_fmt17hf4ce15c1b219b988E
      unreachable
    )
    (func $_ZN70_$LT$core..panic..location..Location$u20$as$u20$core..fmt..Display$GT$3fmt17h9c3dd31b52e6f54eE (;142;) (type 5) (param i32 i32) (result i32)
      (local i32)
      global.get $__stack_pointer
      i32.const 48
      i32.sub
      local.tee 2
      global.set $__stack_pointer
      local.get 2
      i32.const 20
      i32.add
      i32.const 2
      i32.store
      local.get 2
      i32.const 12
      i32.add
      i32.const 2
      i32.store
      local.get 2
      i32.const 54
      i32.store offset=4
      local.get 2
      local.get 0
      i32.store
      local.get 2
      local.get 0
      i32.const 12
      i32.add
      i32.store offset=16
      local.get 2
      local.get 0
      i32.const 8
      i32.add
      i32.store offset=8
      local.get 1
      i32.load
      local.set 0
      local.get 1
      i32.load offset=4
      local.set 1
      local.get 2
      i32.const 3
      i32.store offset=44
      local.get 2
      i32.const 3
      i32.store offset=36
      local.get 2
      i32.const 1050880
      i32.store offset=32
      local.get 2
      i32.const 0
      i32.store offset=24
      local.get 2
      local.get 2
      i32.store offset=40
      local.get 0
      local.get 1
      local.get 2
      i32.const 24
      i32.add
      call $_ZN4core3fmt5write17h7558535140974479E
      local.set 0
      local.get 2
      i32.const 48
      i32.add
      global.set $__stack_pointer
      local.get 0
    )
    (func $_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17hd168602520dd2091E (;143;) (type 5) (param i32 i32) (result i32)
      local.get 1
      local.get 0
      i32.load
      local.get 0
      i32.load offset=4
      call $_ZN4core3fmt9Formatter3pad17hee1e19a8df95bdd9E
    )
    (func $_ZN4core5panic10panic_info9PanicInfo7payload17h2c14f7d93cbd0d04E (;144;) (type 3) (param i32 i32)
      local.get 0
      local.get 1
      i64.load align=4
      i64.store
    )
    (func $_ZN4core5panic10panic_info9PanicInfo7message17hbfef73d098d3c2a5E (;145;) (type 10) (param i32) (result i32)
      local.get 0
      i32.load offset=8
    )
    (func $_ZN4core5panic10panic_info9PanicInfo8location17h73a8e3c8110f5f4eE (;146;) (type 10) (param i32) (result i32)
      local.get 0
      i32.load offset=12
    )
    (func $_ZN4core5panic10panic_info9PanicInfo10can_unwind17h23da1c404642e99aE (;147;) (type 10) (param i32) (result i32)
      local.get 0
      i32.load8_u offset=16
    )
    (func $_ZN73_$LT$core..panic..panic_info..PanicInfo$u20$as$u20$core..fmt..Display$GT$3fmt17h66e4e62ff3323c23E (;148;) (type 5) (param i32 i32) (result i32)
      (local i32 i32 i32)
      global.get $__stack_pointer
      i32.const 64
      i32.sub
      local.tee 2
      global.set $__stack_pointer
      i32.const 1
      local.set 3
      block ;; label = @1
        local.get 1
        i32.load
        local.tee 4
        i32.const 1050904
        i32.const 12
        local.get 1
        i32.load offset=4
        local.tee 1
        i32.load offset=12
        call_indirect (type 4)
        br_if 0 (;@1;)
        block ;; label = @2
          block ;; label = @3
            local.get 0
            i32.load offset=8
            local.tee 3
            i32.eqz
            br_if 0 (;@3;)
            local.get 2
            local.get 3
            i32.store offset=12
            local.get 2
            i32.const 55
            i32.store offset=20
            local.get 2
            local.get 2
            i32.const 12
            i32.add
            i32.store offset=16
            i32.const 1
            local.set 3
            local.get 2
            i32.const 1
            i32.store offset=60
            local.get 2
            i32.const 2
            i32.store offset=52
            local.get 2
            i32.const 1050920
            i32.store offset=48
            local.get 2
            i32.const 0
            i32.store offset=40
            local.get 2
            local.get 2
            i32.const 16
            i32.add
            i32.store offset=56
            local.get 4
            local.get 1
            local.get 2
            i32.const 40
            i32.add
            call $_ZN4core3fmt5write17h7558535140974479E
            i32.eqz
            br_if 1 (;@2;)
            br 2 (;@1;)
          end
          local.get 0
          i32.load
          local.tee 3
          local.get 0
          i32.load offset=4
          i32.const 12
          i32.add
          i32.load
          call_indirect (type $.data)
          i64.const -8527728395957036344
          i64.ne
          br_if 0 (;@2;)
          local.get 2
          local.get 3
          i32.store offset=12
          local.get 2
          i32.const 56
          i32.store offset=20
          local.get 2
          local.get 2
          i32.const 12
          i32.add
          i32.store offset=16
          i32.const 1
          local.set 3
          local.get 2
          i32.const 1
          i32.store offset=60
          local.get 2
          i32.const 2
          i32.store offset=52
          local.get 2
          i32.const 1050920
          i32.store offset=48
          local.get 2
          i32.const 0
          i32.store offset=40
          local.get 2
          local.get 2
          i32.const 16
          i32.add
          i32.store offset=56
          local.get 4
          local.get 1
          local.get 2
          i32.const 40
          i32.add
          call $_ZN4core3fmt5write17h7558535140974479E
          br_if 1 (;@1;)
        end
        local.get 0
        i32.load offset=12
        local.set 3
        local.get 2
        i32.const 36
        i32.add
        i32.const 2
        i32.store
        local.get 2
        i32.const 16
        i32.add
        i32.const 12
        i32.add
        i32.const 2
        i32.store
        local.get 2
        local.get 3
        i32.const 12
        i32.add
        i32.store offset=32
        local.get 2
        local.get 3
        i32.const 8
        i32.add
        i32.store offset=24
        local.get 2
        i32.const 54
        i32.store offset=20
        local.get 2
        local.get 3
        i32.store offset=16
        local.get 2
        i32.const 3
        i32.store offset=60
        local.get 2
        i32.const 3
        i32.store offset=52
        local.get 2
        i32.const 1050880
        i32.store offset=48
        local.get 2
        i32.const 0
        i32.store offset=40
        local.get 2
        local.get 2
        i32.const 16
        i32.add
        i32.store offset=56
        local.get 4
        local.get 1
        local.get 2
        i32.const 40
        i32.add
        call $_ZN4core3fmt5write17h7558535140974479E
        local.set 3
      end
      local.get 2
      i32.const 64
      i32.add
      global.set $__stack_pointer
      local.get 3
    )
    (func $_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h4292964f1c9daeffE (;149;) (type 5) (param i32 i32) (result i32)
      (local i32 i32 i32)
      global.get $__stack_pointer
      i32.const 32
      i32.sub
      local.tee 2
      global.set $__stack_pointer
      local.get 1
      i32.load offset=4
      local.set 3
      local.get 1
      i32.load
      local.set 4
      local.get 2
      i32.const 8
      i32.add
      i32.const 16
      i32.add
      local.get 0
      i32.load
      local.tee 1
      i32.const 16
      i32.add
      i64.load align=4
      i64.store
      local.get 2
      i32.const 8
      i32.add
      i32.const 8
      i32.add
      local.get 1
      i32.const 8
      i32.add
      i64.load align=4
      i64.store
      local.get 2
      local.get 1
      i64.load align=4
      i64.store offset=8
      local.get 4
      local.get 3
      local.get 2
      i32.const 8
      i32.add
      call $_ZN4core3fmt5write17h7558535140974479E
      local.set 1
      local.get 2
      i32.const 32
      i32.add
      global.set $__stack_pointer
      local.get 1
    )
    (func $_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17he9a145660f417571E (;150;) (type 5) (param i32 i32) (result i32)
      local.get 1
      local.get 0
      i32.load
      local.tee 0
      i32.load
      local.get 0
      i32.load offset=4
      call $_ZN4core3fmt9Formatter3pad17hee1e19a8df95bdd9E
    )
    (func $_ZN4core9panicking19assert_failed_inner17hf30758b978d1cad1E (;151;) (type 12) (param i32 i32 i32 i32 i32 i32 i32)
      (local i32)
      global.get $__stack_pointer
      i32.const 112
      i32.sub
      local.tee 7
      global.set $__stack_pointer
      local.get 7
      local.get 2
      i32.store offset=12
      local.get 7
      local.get 1
      i32.store offset=8
      local.get 7
      local.get 4
      i32.store offset=20
      local.get 7
      local.get 3
      i32.store offset=16
      block ;; label = @1
        block ;; label = @2
          block ;; label = @3
            block ;; label = @4
              local.get 0
              i32.const 255
              i32.and
              br_table 0 (;@4;) 1 (;@3;) 2 (;@2;) 0 (;@4;)
            end
            local.get 7
            i32.const 1050961
            i32.store offset=24
            i32.const 2
            local.set 2
            br 2 (;@1;)
          end
          local.get 7
          i32.const 1050959
          i32.store offset=24
          i32.const 2
          local.set 2
          br 1 (;@1;)
        end
        local.get 7
        i32.const 1050952
        i32.store offset=24
        i32.const 7
        local.set 2
      end
      local.get 7
      local.get 2
      i32.store offset=28
      block ;; label = @1
        local.get 5
        i32.load offset=8
        br_if 0 (;@1;)
        local.get 7
        i32.const 56
        i32.add
        i32.const 20
        i32.add
        i32.const 53
        i32.store
        local.get 7
        i32.const 56
        i32.add
        i32.const 12
        i32.add
        i32.const 53
        i32.store
        local.get 7
        i32.const 88
        i32.add
        i32.const 12
        i32.add
        i32.const 4
        i32.store
        local.get 7
        i32.const 88
        i32.add
        i32.const 20
        i32.add
        i32.const 3
        i32.store
        local.get 7
        i32.const 1051060
        i32.store offset=96
        local.get 7
        i32.const 0
        i32.store offset=88
        local.get 7
        i32.const 54
        i32.store offset=60
        local.get 7
        local.get 7
        i32.const 56
        i32.add
        i32.store offset=104
        local.get 7
        local.get 7
        i32.const 16
        i32.add
        i32.store offset=72
        local.get 7
        local.get 7
        i32.const 8
        i32.add
        i32.store offset=64
        local.get 7
        local.get 7
        i32.const 24
        i32.add
        i32.store offset=56
        local.get 7
        i32.const 88
        i32.add
        local.get 6
        call $_ZN4core9panicking9panic_fmt17hf4ce15c1b219b988E
        unreachable
      end
      local.get 7
      i32.const 32
      i32.add
      i32.const 16
      i32.add
      local.get 5
      i32.const 16
      i32.add
      i64.load align=4
      i64.store
      local.get 7
      i32.const 32
      i32.add
      i32.const 8
      i32.add
      local.get 5
      i32.const 8
      i32.add
      i64.load align=4
      i64.store
      local.get 7
      local.get 5
      i64.load align=4
      i64.store offset=32
      local.get 7
      i32.const 88
      i32.add
      i32.const 12
      i32.add
      i32.const 4
      i32.store
      local.get 7
      i32.const 88
      i32.add
      i32.const 20
      i32.add
      i32.const 4
      i32.store
      local.get 7
      i32.const 84
      i32.add
      i32.const 6
      i32.store
      local.get 7
      i32.const 56
      i32.add
      i32.const 20
      i32.add
      i32.const 53
      i32.store
      local.get 7
      i32.const 56
      i32.add
      i32.const 12
      i32.add
      i32.const 53
      i32.store
      local.get 7
      i32.const 1051024
      i32.store offset=96
      local.get 7
      i32.const 0
      i32.store offset=88
      local.get 7
      i32.const 54
      i32.store offset=60
      local.get 7
      local.get 7
      i32.const 56
      i32.add
      i32.store offset=104
      local.get 7
      local.get 7
      i32.const 32
      i32.add
      i32.store offset=80
      local.get 7
      local.get 7
      i32.const 16
      i32.add
      i32.store offset=72
      local.get 7
      local.get 7
      i32.const 8
      i32.add
      i32.store offset=64
      local.get 7
      local.get 7
      i32.const 24
      i32.add
      i32.store offset=56
      local.get 7
      i32.const 88
      i32.add
      local.get 6
      call $_ZN4core9panicking9panic_fmt17hf4ce15c1b219b988E
      unreachable
    )
    (func $_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h20f7957e80c7e530E (;152;) (type 5) (param i32 i32) (result i32)
      local.get 0
      i32.load
      local.get 1
      local.get 0
      i32.load offset=4
      i32.load offset=12
      call_indirect (type 5)
    )
    (func $_ZN59_$LT$core..fmt..Arguments$u20$as$u20$core..fmt..Display$GT$3fmt17h6ae0c0f6e4b417fcE (;153;) (type 5) (param i32 i32) (result i32)
      (local i32 i32)
      global.get $__stack_pointer
      i32.const 32
      i32.sub
      local.tee 2
      global.set $__stack_pointer
      local.get 1
      i32.load offset=4
      local.set 3
      local.get 1
      i32.load
      local.set 1
      local.get 2
      i32.const 8
      i32.add
      i32.const 16
      i32.add
      local.get 0
      i32.const 16
      i32.add
      i64.load align=4
      i64.store
      local.get 2
      i32.const 8
      i32.add
      i32.const 8
      i32.add
      local.get 0
      i32.const 8
      i32.add
      i64.load align=4
      i64.store
      local.get 2
      local.get 0
      i64.load align=4
      i64.store offset=8
      local.get 1
      local.get 3
      local.get 2
      i32.const 8
      i32.add
      call $_ZN4core3fmt5write17h7558535140974479E
      local.set 0
      local.get 2
      i32.const 32
      i32.add
      global.set $__stack_pointer
      local.get 0
    )
    (func $_ZN4core3fmt9Formatter12pad_integral17hcc3b56246532f1b4E (;154;) (type 13) (param i32 i32 i32 i32 i32 i32) (result i32)
      (local i32 i32 i32 i32 i32 i32 i32)
      block ;; label = @1
        block ;; label = @2
          local.get 1
          i32.eqz
          br_if 0 (;@2;)
          i32.const 43
          i32.const 1114112
          local.get 0
          i32.load offset=24
          local.tee 6
          i32.const 1
          i32.and
          local.tee 1
          select
          local.set 7
          local.get 1
          local.get 5
          i32.add
          local.set 8
          br 1 (;@1;)
        end
        local.get 5
        i32.const 1
        i32.add
        local.set 8
        local.get 0
        i32.load offset=24
        local.set 6
        i32.const 45
        local.set 7
      end
      block ;; label = @1
        block ;; label = @2
          local.get 6
          i32.const 4
          i32.and
          br_if 0 (;@2;)
          i32.const 0
          local.set 2
          br 1 (;@1;)
        end
        block ;; label = @2
          block ;; label = @3
            local.get 3
            i32.const 16
            i32.lt_u
            br_if 0 (;@3;)
            local.get 2
            local.get 3
            call $_ZN4core3str5count14do_count_chars17h9555fdd2933f4e49E
            local.set 9
            br 1 (;@2;)
          end
          block ;; label = @3
            local.get 3
            br_if 0 (;@3;)
            i32.const 0
            local.set 9
            br 1 (;@2;)
          end
          local.get 3
          i32.const 3
          i32.and
          local.set 10
          block ;; label = @3
            block ;; label = @4
              local.get 3
              i32.const -1
              i32.add
              i32.const 3
              i32.ge_u
              br_if 0 (;@4;)
              i32.const 0
              local.set 9
              local.get 2
              local.set 1
              br 1 (;@3;)
            end
            local.get 3
            i32.const -4
            i32.and
            local.set 11
            i32.const 0
            local.set 9
            local.get 2
            local.set 1
            loop ;; label = @4
              local.get 9
              local.get 1
              i32.load8_s
              i32.const -65
              i32.gt_s
              i32.add
              local.get 1
              i32.load8_s offset=1
              i32.const -65
              i32.gt_s
              i32.add
              local.get 1
              i32.load8_s offset=2
              i32.const -65
              i32.gt_s
              i32.add
              local.get 1
              i32.load8_s offset=3
              i32.const -65
              i32.gt_s
              i32.add
              local.set 9
              local.get 1
              i32.const 4
              i32.add
              local.set 1
              local.get 11
              i32.const -4
              i32.add
              local.tee 11
              br_if 0 (;@4;)
            end
          end
          local.get 10
          i32.eqz
          br_if 0 (;@2;)
          loop ;; label = @3
            local.get 9
            local.get 1
            i32.load8_s
            i32.const -65
            i32.gt_s
            i32.add
            local.set 9
            local.get 1
            i32.const 1
            i32.add
            local.set 1
            local.get 10
            i32.const -1
            i32.add
            local.tee 10
            br_if 0 (;@3;)
          end
        end
        local.get 9
        local.get 8
        i32.add
        local.set 8
      end
      block ;; label = @1
        block ;; label = @2
          local.get 0
          i32.load offset=8
          br_if 0 (;@2;)
          i32.const 1
          local.set 1
          local.get 0
          i32.load
          local.tee 9
          local.get 0
          i32.const 4
          i32.add
          i32.load
          local.tee 0
          local.get 7
          local.get 2
          local.get 3
          call $_ZN4core3fmt9Formatter12pad_integral12write_prefix17hf3cd6df73ed78638E
          br_if 1 (;@1;)
          local.get 9
          local.get 4
          local.get 5
          local.get 0
          i32.load offset=12
          call_indirect (type 4)
          return
        end
        block ;; label = @2
          block ;; label = @3
            block ;; label = @4
              block ;; label = @5
                block ;; label = @6
                  local.get 0
                  i32.const 12
                  i32.add
                  i32.load
                  local.tee 11
                  local.get 8
                  i32.le_u
                  br_if 0 (;@6;)
                  local.get 6
                  i32.const 8
                  i32.and
                  br_if 4 (;@2;)
                  local.get 11
                  local.get 8
                  i32.sub
                  local.tee 9
                  local.set 11
                  i32.const 1
                  local.get 0
                  i32.load8_u offset=32
                  local.tee 1
                  local.get 1
                  i32.const 3
                  i32.eq
                  select
                  i32.const 3
                  i32.and
                  local.tee 1
                  br_table 3 (;@3;) 1 (;@5;) 2 (;@4;) 3 (;@3;)
                end
                i32.const 1
                local.set 1
                local.get 0
                i32.load
                local.tee 9
                local.get 0
                i32.const 4
                i32.add
                i32.load
                local.tee 0
                local.get 7
                local.get 2
                local.get 3
                call $_ZN4core3fmt9Formatter12pad_integral12write_prefix17hf3cd6df73ed78638E
                br_if 4 (;@1;)
                local.get 9
                local.get 4
                local.get 5
                local.get 0
                i32.load offset=12
                call_indirect (type 4)
                return
              end
              i32.const 0
              local.set 11
              local.get 9
              local.set 1
              br 1 (;@3;)
            end
            local.get 9
            i32.const 1
            i32.shr_u
            local.set 1
            local.get 9
            i32.const 1
            i32.add
            i32.const 1
            i32.shr_u
            local.set 11
          end
          local.get 1
          i32.const 1
          i32.add
          local.set 1
          local.get 0
          i32.const 4
          i32.add
          i32.load
          local.set 10
          local.get 0
          i32.load offset=28
          local.set 9
          local.get 0
          i32.load
          local.set 0
          block ;; label = @3
            loop ;; label = @4
              local.get 1
              i32.const -1
              i32.add
              local.tee 1
              i32.eqz
              br_if 1 (;@3;)
              local.get 0
              local.get 9
              local.get 10
              i32.load offset=16
              call_indirect (type 5)
              i32.eqz
              br_if 0 (;@4;)
            end
            i32.const 1
            return
          end
          i32.const 1
          local.set 1
          local.get 9
          i32.const 1114112
          i32.eq
          br_if 1 (;@1;)
          local.get 0
          local.get 10
          local.get 7
          local.get 2
          local.get 3
          call $_ZN4core3fmt9Formatter12pad_integral12write_prefix17hf3cd6df73ed78638E
          br_if 1 (;@1;)
          local.get 0
          local.get 4
          local.get 5
          local.get 10
          i32.load offset=12
          call_indirect (type 4)
          br_if 1 (;@1;)
          i32.const 0
          local.set 1
          block ;; label = @3
            loop ;; label = @4
              block ;; label = @5
                local.get 11
                local.get 1
                i32.ne
                br_if 0 (;@5;)
                local.get 11
                local.set 1
                br 2 (;@3;)
              end
              local.get 1
              i32.const 1
              i32.add
              local.set 1
              local.get 0
              local.get 9
              local.get 10
              i32.load offset=16
              call_indirect (type 5)
              i32.eqz
              br_if 0 (;@4;)
            end
            local.get 1
            i32.const -1
            i32.add
            local.set 1
          end
          local.get 1
          local.get 11
          i32.lt_u
          local.set 1
          br 1 (;@1;)
        end
        local.get 0
        i32.load offset=28
        local.set 6
        local.get 0
        i32.const 48
        i32.store offset=28
        local.get 0
        i32.load8_u offset=32
        local.set 12
        i32.const 1
        local.set 1
        local.get 0
        i32.const 1
        i32.store8 offset=32
        local.get 0
        i32.load
        local.tee 9
        local.get 0
        i32.const 4
        i32.add
        i32.load
        local.tee 10
        local.get 7
        local.get 2
        local.get 3
        call $_ZN4core3fmt9Formatter12pad_integral12write_prefix17hf3cd6df73ed78638E
        br_if 0 (;@1;)
        local.get 11
        local.get 8
        i32.sub
        i32.const 1
        i32.add
        local.set 1
        block ;; label = @2
          loop ;; label = @3
            local.get 1
            i32.const -1
            i32.add
            local.tee 1
            i32.eqz
            br_if 1 (;@2;)
            local.get 9
            i32.const 48
            local.get 10
            i32.load offset=16
            call_indirect (type 5)
            i32.eqz
            br_if 0 (;@3;)
          end
          i32.const 1
          return
        end
        i32.const 1
        local.set 1
        local.get 9
        local.get 4
        local.get 5
        local.get 10
        i32.load offset=12
        call_indirect (type 4)
        br_if 0 (;@1;)
        local.get 0
        local.get 12
        i32.store8 offset=32
        local.get 0
        local.get 6
        i32.store offset=28
        i32.const 0
        return
      end
      local.get 1
    )
    (func $_ZN4core3str5count14do_count_chars17h9555fdd2933f4e49E (;155;) (type 5) (param i32 i32) (result i32)
      (local i32 i32 i32 i32 i32 i32 i32 i32 i32)
      block ;; label = @1
        block ;; label = @2
          local.get 0
          i32.const 3
          i32.add
          i32.const -4
          i32.and
          local.tee 2
          local.get 0
          i32.sub
          local.tee 3
          local.get 1
          i32.gt_u
          br_if 0 (;@2;)
          local.get 3
          i32.const 4
          i32.gt_u
          br_if 0 (;@2;)
          local.get 1
          local.get 3
          i32.sub
          local.tee 4
          i32.const 4
          i32.lt_u
          br_if 0 (;@2;)
          local.get 4
          i32.const 3
          i32.and
          local.set 5
          i32.const 0
          local.set 6
          i32.const 0
          local.set 1
          block ;; label = @3
            local.get 2
            local.get 0
            i32.eq
            br_if 0 (;@3;)
            local.get 3
            i32.const 3
            i32.and
            local.set 7
            block ;; label = @4
              block ;; label = @5
                local.get 2
                local.get 0
                i32.const -1
                i32.xor
                i32.add
                i32.const 3
                i32.ge_u
                br_if 0 (;@5;)
                i32.const 0
                local.set 1
                local.get 0
                local.set 2
                br 1 (;@4;)
              end
              local.get 3
              i32.const -4
              i32.and
              local.set 8
              i32.const 0
              local.set 1
              local.get 0
              local.set 2
              loop ;; label = @5
                local.get 1
                local.get 2
                i32.load8_s
                i32.const -65
                i32.gt_s
                i32.add
                local.get 2
                i32.load8_s offset=1
                i32.const -65
                i32.gt_s
                i32.add
                local.get 2
                i32.load8_s offset=2
                i32.const -65
                i32.gt_s
                i32.add
                local.get 2
                i32.load8_s offset=3
                i32.const -65
                i32.gt_s
                i32.add
                local.set 1
                local.get 2
                i32.const 4
                i32.add
                local.set 2
                local.get 8
                i32.const -4
                i32.add
                local.tee 8
                br_if 0 (;@5;)
              end
            end
            local.get 7
            i32.eqz
            br_if 0 (;@3;)
            loop ;; label = @4
              local.get 1
              local.get 2
              i32.load8_s
              i32.const -65
              i32.gt_s
              i32.add
              local.set 1
              local.get 2
              i32.const 1
              i32.add
              local.set 2
              local.get 7
              i32.const -1
              i32.add
              local.tee 7
              br_if 0 (;@4;)
            end
          end
          local.get 0
          local.get 3
          i32.add
          local.set 0
          block ;; label = @3
            local.get 5
            i32.eqz
            br_if 0 (;@3;)
            local.get 0
            local.get 4
            i32.const -4
            i32.and
            i32.add
            local.tee 2
            i32.load8_s
            i32.const -65
            i32.gt_s
            local.set 6
            local.get 5
            i32.const 1
            i32.eq
            br_if 0 (;@3;)
            local.get 6
            local.get 2
            i32.load8_s offset=1
            i32.const -65
            i32.gt_s
            i32.add
            local.set 6
            local.get 5
            i32.const 2
            i32.eq
            br_if 0 (;@3;)
            local.get 6
            local.get 2
            i32.load8_s offset=2
            i32.const -65
            i32.gt_s
            i32.add
            local.set 6
          end
          local.get 4
          i32.const 2
          i32.shr_u
          local.set 3
          local.get 6
          local.get 1
          i32.add
          local.set 7
          loop ;; label = @3
            local.get 0
            local.set 6
            local.get 3
            i32.eqz
            br_if 2 (;@1;)
            local.get 3
            i32.const 192
            local.get 3
            i32.const 192
            i32.lt_u
            select
            local.tee 4
            i32.const 3
            i32.and
            local.set 5
            local.get 4
            i32.const 2
            i32.shl
            local.set 9
            block ;; label = @4
              block ;; label = @5
                local.get 4
                i32.const 252
                i32.and
                local.tee 10
                br_if 0 (;@5;)
                i32.const 0
                local.set 2
                br 1 (;@4;)
              end
              local.get 6
              local.get 10
              i32.const 2
              i32.shl
              i32.add
              local.set 8
              i32.const 0
              local.set 2
              local.get 6
              local.set 0
              loop ;; label = @5
                local.get 0
                i32.eqz
                br_if 1 (;@4;)
                local.get 0
                i32.const 12
                i32.add
                i32.load
                local.tee 1
                i32.const -1
                i32.xor
                i32.const 7
                i32.shr_u
                local.get 1
                i32.const 6
                i32.shr_u
                i32.or
                i32.const 16843009
                i32.and
                local.get 0
                i32.const 8
                i32.add
                i32.load
                local.tee 1
                i32.const -1
                i32.xor
                i32.const 7
                i32.shr_u
                local.get 1
                i32.const 6
                i32.shr_u
                i32.or
                i32.const 16843009
                i32.and
                local.get 0
                i32.const 4
                i32.add
                i32.load
                local.tee 1
                i32.const -1
                i32.xor
                i32.const 7
                i32.shr_u
                local.get 1
                i32.const 6
                i32.shr_u
                i32.or
                i32.const 16843009
                i32.and
                local.get 0
                i32.load
                local.tee 1
                i32.const -1
                i32.xor
                i32.const 7
                i32.shr_u
                local.get 1
                i32.const 6
                i32.shr_u
                i32.or
                i32.const 16843009
                i32.and
                local.get 2
                i32.add
                i32.add
                i32.add
                i32.add
                local.set 2
                local.get 0
                i32.const 16
                i32.add
                local.tee 0
                local.get 8
                i32.ne
                br_if 0 (;@5;)
              end
            end
            local.get 3
            local.get 4
            i32.sub
            local.set 3
            local.get 6
            local.get 9
            i32.add
            local.set 0
            local.get 2
            i32.const 8
            i32.shr_u
            i32.const 16711935
            i32.and
            local.get 2
            i32.const 16711935
            i32.and
            i32.add
            i32.const 65537
            i32.mul
            i32.const 16
            i32.shr_u
            local.get 7
            i32.add
            local.set 7
            local.get 5
            i32.eqz
            br_if 0 (;@3;)
          end
          block ;; label = @3
            block ;; label = @4
              local.get 6
              br_if 0 (;@4;)
              i32.const 0
              local.set 2
              br 1 (;@3;)
            end
            local.get 6
            local.get 10
            i32.const 2
            i32.shl
            i32.add
            local.set 0
            local.get 5
            i32.const -1
            i32.add
            i32.const 1073741823
            i32.and
            local.tee 2
            i32.const 1
            i32.add
            local.tee 8
            i32.const 3
            i32.and
            local.set 1
            block ;; label = @4
              block ;; label = @5
                local.get 2
                i32.const 3
                i32.ge_u
                br_if 0 (;@5;)
                i32.const 0
                local.set 2
                br 1 (;@4;)
              end
              local.get 8
              i32.const 2147483644
              i32.and
              local.set 8
              i32.const 0
              local.set 2
              loop ;; label = @5
                local.get 0
                i32.const 12
                i32.add
                i32.load
                local.tee 3
                i32.const -1
                i32.xor
                i32.const 7
                i32.shr_u
                local.get 3
                i32.const 6
                i32.shr_u
                i32.or
                i32.const 16843009
                i32.and
                local.get 0
                i32.const 8
                i32.add
                i32.load
                local.tee 3
                i32.const -1
                i32.xor
                i32.const 7
                i32.shr_u
                local.get 3
                i32.const 6
                i32.shr_u
                i32.or
                i32.const 16843009
                i32.and
                local.get 0
                i32.const 4
                i32.add
                i32.load
                local.tee 3
                i32.const -1
                i32.xor
                i32.const 7
                i32.shr_u
                local.get 3
                i32.const 6
                i32.shr_u
                i32.or
                i32.const 16843009
                i32.and
                local.get 0
                i32.load
                local.tee 3
                i32.const -1
                i32.xor
                i32.const 7
                i32.shr_u
                local.get 3
                i32.const 6
                i32.shr_u
                i32.or
                i32.const 16843009
                i32.and
                local.get 2
                i32.add
                i32.add
                i32.add
                i32.add
                local.set 2
                local.get 0
                i32.const 16
                i32.add
                local.set 0
                local.get 8
                i32.const -4
                i32.add
                local.tee 8
                br_if 0 (;@5;)
              end
            end
            local.get 1
            i32.eqz
            br_if 0 (;@3;)
            loop ;; label = @4
              local.get 0
              i32.load
              local.tee 8
              i32.const -1
              i32.xor
              i32.const 7
              i32.shr_u
              local.get 8
              i32.const 6
              i32.shr_u
              i32.or
              i32.const 16843009
              i32.and
              local.get 2
              i32.add
              local.set 2
              local.get 0
              i32.const 4
              i32.add
              local.set 0
              local.get 1
              i32.const -1
              i32.add
              local.tee 1
              br_if 0 (;@4;)
            end
          end
          local.get 2
          i32.const 8
          i32.shr_u
          i32.const 16711935
          i32.and
          local.get 2
          i32.const 16711935
          i32.and
          i32.add
          i32.const 65537
          i32.mul
          i32.const 16
          i32.shr_u
          local.get 7
          i32.add
          return
        end
        block ;; label = @2
          local.get 1
          br_if 0 (;@2;)
          i32.const 0
          return
        end
        local.get 1
        i32.const 3
        i32.and
        local.set 2
        block ;; label = @2
          block ;; label = @3
            local.get 1
            i32.const -1
            i32.add
            i32.const 3
            i32.ge_u
            br_if 0 (;@3;)
            i32.const 0
            local.set 7
            br 1 (;@2;)
          end
          local.get 1
          i32.const -4
          i32.and
          local.set 1
          i32.const 0
          local.set 7
          loop ;; label = @3
            local.get 7
            local.get 0
            i32.load8_s
            i32.const -65
            i32.gt_s
            i32.add
            local.get 0
            i32.load8_s offset=1
            i32.const -65
            i32.gt_s
            i32.add
            local.get 0
            i32.load8_s offset=2
            i32.const -65
            i32.gt_s
            i32.add
            local.get 0
            i32.load8_s offset=3
            i32.const -65
            i32.gt_s
            i32.add
            local.set 7
            local.get 0
            i32.const 4
            i32.add
            local.set 0
            local.get 1
            i32.const -4
            i32.add
            local.tee 1
            br_if 0 (;@3;)
          end
        end
        local.get 2
        i32.eqz
        br_if 0 (;@1;)
        loop ;; label = @2
          local.get 7
          local.get 0
          i32.load8_s
          i32.const -65
          i32.gt_s
          i32.add
          local.set 7
          local.get 0
          i32.const 1
          i32.add
          local.set 0
          local.get 2
          i32.const -1
          i32.add
          local.tee 2
          br_if 0 (;@2;)
        end
      end
      local.get 7
    )
    (func $_ZN4core3fmt9Formatter12pad_integral12write_prefix17hf3cd6df73ed78638E (;156;) (type 14) (param i32 i32 i32 i32 i32) (result i32)
      (local i32)
      block ;; label = @1
        block ;; label = @2
          block ;; label = @3
            local.get 2
            i32.const 1114112
            i32.eq
            br_if 0 (;@3;)
            i32.const 1
            local.set 5
            local.get 0
            local.get 2
            local.get 1
            i32.load offset=16
            call_indirect (type 5)
            br_if 1 (;@2;)
          end
          local.get 3
          br_if 1 (;@1;)
          i32.const 0
          local.set 5
        end
        local.get 5
        return
      end
      local.get 0
      local.get 3
      local.get 4
      local.get 1
      i32.load offset=12
      call_indirect (type 4)
    )
    (func $_ZN4core3fmt9Formatter9write_fmt17hdae39eebc223cfffE (;157;) (type 5) (param i32 i32) (result i32)
      (local i32 i32)
      global.get $__stack_pointer
      i32.const 32
      i32.sub
      local.tee 2
      global.set $__stack_pointer
      local.get 0
      i32.load offset=4
      local.set 3
      local.get 0
      i32.load
      local.set 0
      local.get 2
      i32.const 8
      i32.add
      i32.const 16
      i32.add
      local.get 1
      i32.const 16
      i32.add
      i64.load align=4
      i64.store
      local.get 2
      i32.const 8
      i32.add
      i32.const 8
      i32.add
      local.get 1
      i32.const 8
      i32.add
      i64.load align=4
      i64.store
      local.get 2
      local.get 1
      i64.load align=4
      i64.store offset=8
      local.get 0
      local.get 3
      local.get 2
      i32.const 8
      i32.add
      call $_ZN4core3fmt5write17h7558535140974479E
      local.set 1
      local.get 2
      i32.const 32
      i32.add
      global.set $__stack_pointer
      local.get 1
    )
    (func $_ZN43_$LT$bool$u20$as$u20$core..fmt..Display$GT$3fmt17h3687ae6db1632d84E (;158;) (type 5) (param i32 i32) (result i32)
      block ;; label = @1
        local.get 0
        i32.load8_u
        br_if 0 (;@1;)
        local.get 1
        i32.const 1051316
        i32.const 5
        call $_ZN4core3fmt9Formatter3pad17hee1e19a8df95bdd9E
        return
      end
      local.get 1
      i32.const 1051312
      i32.const 4
      call $_ZN4core3fmt9Formatter3pad17hee1e19a8df95bdd9E
    )
    (func $_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17hcd33a3726c86db1aE (;159;) (type 4) (param i32 i32 i32) (result i32)
      local.get 2
      local.get 0
      local.get 1
      call $_ZN4core3fmt9Formatter3pad17hee1e19a8df95bdd9E
    )
    (func $_ZN4core5slice5index29slice_start_index_len_fail_rt17h746adbf30693da97E (;160;) (type 2) (param i32 i32 i32)
      (local i32)
      global.get $__stack_pointer
      i32.const 48
      i32.sub
      local.tee 3
      global.set $__stack_pointer
      local.get 3
      local.get 1
      i32.store offset=4
      local.get 3
      local.get 0
      i32.store
      local.get 3
      i32.const 8
      i32.add
      i32.const 12
      i32.add
      i32.const 2
      i32.store
      local.get 3
      i32.const 28
      i32.add
      i32.const 2
      i32.store
      local.get 3
      i32.const 32
      i32.add
      i32.const 12
      i32.add
      i32.const 2
      i32.store
      local.get 3
      i32.const 1051424
      i32.store offset=16
      local.get 3
      i32.const 0
      i32.store offset=8
      local.get 3
      i32.const 2
      i32.store offset=36
      local.get 3
      local.get 3
      i32.const 32
      i32.add
      i32.store offset=24
      local.get 3
      local.get 3
      i32.const 4
      i32.add
      i32.store offset=40
      local.get 3
      local.get 3
      i32.store offset=32
      local.get 3
      i32.const 8
      i32.add
      local.get 2
      call $_ZN4core9panicking9panic_fmt17hf4ce15c1b219b988E
      unreachable
    )
    (func $_ZN4core3fmt3num3imp7fmt_u6417hf4eec24457ffc084E (;161;) (type 15) (param i64 i32 i32) (result i32)
      (local i32 i32 i64 i32 i32 i32)
      global.get $__stack_pointer
      i32.const 48
      i32.sub
      local.tee 3
      global.set $__stack_pointer
      i32.const 39
      local.set 4
      block ;; label = @1
        block ;; label = @2
          local.get 0
          i64.const 10000
          i64.ge_u
          br_if 0 (;@2;)
          local.get 0
          local.set 5
          br 1 (;@1;)
        end
        i32.const 39
        local.set 4
        loop ;; label = @2
          local.get 3
          i32.const 9
          i32.add
          local.get 4
          i32.add
          local.tee 6
          i32.const -4
          i32.add
          local.get 0
          local.get 0
          i64.const 10000
          i64.div_u
          local.tee 5
          i64.const 10000
          i64.mul
          i64.sub
          i32.wrap_i64
          local.tee 7
          i32.const 65535
          i32.and
          i32.const 100
          i32.div_u
          local.tee 8
          i32.const 1
          i32.shl
          i32.const 1051112
          i32.add
          i32.load16_u align=1
          i32.store16 align=1
          local.get 6
          i32.const -2
          i32.add
          local.get 7
          local.get 8
          i32.const 100
          i32.mul
          i32.sub
          i32.const 65535
          i32.and
          i32.const 1
          i32.shl
          i32.const 1051112
          i32.add
          i32.load16_u align=1
          i32.store16 align=1
          local.get 4
          i32.const -4
          i32.add
          local.set 4
          local.get 0
          i64.const 99999999
          i64.gt_u
          local.set 6
          local.get 5
          local.set 0
          local.get 6
          br_if 0 (;@2;)
        end
      end
      block ;; label = @1
        local.get 5
        i32.wrap_i64
        local.tee 6
        i32.const 99
        i32.le_u
        br_if 0 (;@1;)
        local.get 3
        i32.const 9
        i32.add
        local.get 4
        i32.const -2
        i32.add
        local.tee 4
        i32.add
        local.get 5
        i32.wrap_i64
        local.tee 6
        local.get 6
        i32.const 65535
        i32.and
        i32.const 100
        i32.div_u
        local.tee 6
        i32.const 100
        i32.mul
        i32.sub
        i32.const 65535
        i32.and
        i32.const 1
        i32.shl
        i32.const 1051112
        i32.add
        i32.load16_u align=1
        i32.store16 align=1
      end
      block ;; label = @1
        block ;; label = @2
          local.get 6
          i32.const 10
          i32.lt_u
          br_if 0 (;@2;)
          local.get 3
          i32.const 9
          i32.add
          local.get 4
          i32.const -2
          i32.add
          local.tee 4
          i32.add
          local.get 6
          i32.const 1
          i32.shl
          i32.const 1051112
          i32.add
          i32.load16_u align=1
          i32.store16 align=1
          br 1 (;@1;)
        end
        local.get 3
        i32.const 9
        i32.add
        local.get 4
        i32.const -1
        i32.add
        local.tee 4
        i32.add
        local.get 6
        i32.const 48
        i32.add
        i32.store8
      end
      local.get 2
      local.get 1
      i32.const 1050864
      i32.const 0
      local.get 3
      i32.const 9
      i32.add
      local.get 4
      i32.add
      i32.const 39
      local.get 4
      i32.sub
      call $_ZN4core3fmt9Formatter12pad_integral17hcc3b56246532f1b4E
      local.set 4
      local.get 3
      i32.const 48
      i32.add
      global.set $__stack_pointer
      local.get 4
    )
    (func $_ZN69_$LT$core..alloc..layout..LayoutError$u20$as$u20$core..fmt..Debug$GT$3fmt17h52f211bc771dfb44E (;162;) (type 5) (param i32 i32) (result i32)
      local.get 1
      i32.load
      i32.const 1051440
      i32.const 11
      local.get 1
      i32.load offset=4
      i32.load offset=12
      call_indirect (type 4)
    )
    (table (;0;) 59 59 funcref)
    (memory (;0;) 17)
    (global $__stack_pointer (;0;) (mut i32) i32.const 1048576)
    (export "memory" (memory 0))
    (export "hello-world" (func $hello-world))
    (export "cabi_post_hello-world" (func $cabi_post_hello-world))
    (export "cabi_realloc" (func $cabi_realloc))
    (elem (;0;) (i32.const 1) func $_ZN91_$LT$std..sys_common..backtrace.._print..DisplayBacktrace$u20$as$u20$core..fmt..Display$GT$3fmt17h6e8846cac7369070E $_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17hca64045c3402134cE $_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h9f91f4a02f7722e6E $_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h553f113e10db4e4dE $_ZN73_$LT$core..panic..panic_info..PanicInfo$u20$as$u20$core..fmt..Display$GT$3fmt17h66e4e62ff3323c23E $_ZN59_$LT$core..fmt..Arguments$u20$as$u20$core..fmt..Display$GT$3fmt17h6ae0c0f6e4b417fcE $_ZN3std5alloc24default_alloc_error_hook17h1faf522cf81e449fE $_ZN4core3ptr100drop_in_place$LT$$RF$mut$u20$std..io..Write..write_fmt..Adapter$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$17hde21ae438dab7501E $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h303b0dcaf54ff4d5E $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17hd9f4a6d08a482859E $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_fmt17ha2835ff278cbfecbE $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17hd4e24d7828055adbE $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h97dcd5289d066230E $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_fmt17h19a1acee2e3fe47bE $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h92bdbb051fdd6c01E $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h488f14e19ec7ceafE $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_fmt17h4ab582e0a50bf665E $_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17had3a23ed2b0f9a78E $_ZN63_$LT$core..cell..BorrowMutError$u20$as$u20$core..fmt..Debug$GT$3fmt17h145bcc23e1a12888E $_ZN4core3ptr88drop_in_place$LT$std..io..Write..write_fmt..Adapter$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$17hf78d30d59fb86c0dE $_ZN80_$LT$std..io..Write..write_fmt..Adapter$LT$T$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17hc76d2b6fa3488422E $_ZN4core3fmt5Write10write_char17haa46f9e30bca77f3E $_ZN4core3fmt5Write9write_fmt17he26b07feb918eff5E $_ZN80_$LT$std..io..Write..write_fmt..Adapter$LT$T$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17h1468756d66c20292E $_ZN4core3fmt5Write10write_char17hb36c4fc26ddebae1E $_ZN4core3fmt5Write9write_fmt17hadcd24a979fa7d5dE $_ZN64_$LT$std..sys..wasi..stdio..Stderr$u20$as$u20$std..io..Write$GT$5write17he47e049b369162fdE $_ZN64_$LT$std..sys..wasi..stdio..Stderr$u20$as$u20$std..io..Write$GT$14write_vectored17h7464986e1d313f43E $_ZN64_$LT$std..sys..wasi..stdio..Stderr$u20$as$u20$std..io..Write$GT$17is_write_vectored17h3220da0d279580c7E $_ZN64_$LT$std..sys..wasi..stdio..Stderr$u20$as$u20$std..io..Write$GT$5flush17hb4fd558eb40a0fc2E $_ZN3std2io5Write9write_all17h544eaae0cf5cf6cdE $_ZN3std2io5Write18write_all_vectored17h4a3f8eead6bfe2c3E $_ZN3std2io5Write9write_fmt17hba5fcb56a4c5cebaE $_ZN4core3ptr205drop_in_place$LT$$LT$alloc..boxed..Box$LT$dyn$u20$core..error..Error$u2b$core..marker..Send$u2b$core..marker..Sync$GT$$u20$as$u20$core..convert..From$LT$alloc..string..String$GT$$GT$..from..StringError$GT$17h6486a4eecfa8ec50E $_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$5write17h31125b29efb4f619E $_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$14write_vectored17he20320b606539ce1E $_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$17is_write_vectored17hc7b9f7c56ce6f0ceE $_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$5flush17h63afd92b838412a5E $_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17h30621f068535731eE $_ZN3std2io5Write18write_all_vectored17h7d2f89f47ec58282E $_ZN3std2io5Write9write_fmt17h80e619ee06f416f6E $_ZN36_$LT$T$u20$as$u20$core..any..Any$GT$7type_id17hbcf83b65e788092eE $_ZN36_$LT$T$u20$as$u20$core..any..Any$GT$7type_id17hcff55bed44912628E $_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h6743b4145838f5adE $_ZN90_$LT$std..panicking..begin_panic_handler..PanicPayload$u20$as$u20$core..panic..BoxMeUp$GT$8take_box17h0fa45657b266d809E $_ZN90_$LT$std..panicking..begin_panic_handler..PanicPayload$u20$as$u20$core..panic..BoxMeUp$GT$3get17h9ce6f22ca87c10fcE $_ZN93_$LT$std..panicking..begin_panic_handler..StrPanicPayload$u20$as$u20$core..panic..BoxMeUp$GT$8take_box17h61beb27f3cc94c1dE $_ZN93_$LT$std..panicking..begin_panic_handler..StrPanicPayload$u20$as$u20$core..panic..BoxMeUp$GT$3get17h4b420efd9f0fe8bdE $_ZN36_$LT$T$u20$as$u20$core..any..Any$GT$7type_id17h176cc91ce5e817f1E $_ZN4core3ptr26drop_in_place$LT$usize$GT$17h2a7616625bccfaeaE $_ZN69_$LT$core..alloc..layout..LayoutError$u20$as$u20$core..fmt..Debug$GT$3fmt17h52f211bc771dfb44E $_ZN4core3ops8function6FnOnce9call_once17h2709ecd011efc890E $_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h20f7957e80c7e530E $_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17hd168602520dd2091E $_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h4292964f1c9daeffE $_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17he9a145660f417571E $_ZN4core3ptr102drop_in_place$LT$$RF$core..iter..adapters..copied..Copied$LT$core..slice..iter..Iter$LT$u8$GT$$GT$$GT$17h4850089a660ee085E $_ZN36_$LT$T$u20$as$u20$core..any..Any$GT$7type_id17hb25fc4480d8905d3E)
    (data (;0;) (i32.const 1048576) "Hello, World!\00\00\00\08\00\00\00\04\00\00\00\04\00\00\00\09\00\00\00\0a\00\00\00\0b\00\00\00\08\00\00\00\04\00\00\00\04\00\00\00\0c\00\00\00\0d\00\00\00\0e\00\00\00\08\00\00\00\04\00\00\00\04\00\00\00\0f\00\00\00\10\00\00\00\11\00\00\00\00\00\00\00\08\00\00\00\04\00\00\00\04\00\00\00\12\00\00\00called `Option::unwrap()` on a `None` valueinternal error: entered unreachable codefatal runtime error: \0a\00\00\00\bf\00\10\00\15\00\00\00\d4\00\10\00\01\00\00\00library/std/src/thread/mod.rsfailed to generate unique thread ID: bitspace exhausted\05\01\10\007\00\00\00\e8\00\10\00\1d\00\00\00_\04\00\00\0d\00\00\00RUST_BACKTRACE\00\00X\00\10\00\00\00\00\00already borrowed\08\00\00\00\00\00\00\00\01\00\00\00\13\00\00\00library/std/src/io/mod.rs\00\00\00\8c\01\10\00\19\00\00\00&\05\00\00\16\00\00\00advancing io slices beyond their length\00\b8\01\10\00'\00\00\00\8c\01\10\00\19\00\00\00(\05\00\00\0d\00\00\00\8c\01\10\00\19\00\00\00\0f\06\00\00!\00\00\00failed to write whole buffer\08\02\10\00\1c\00\00\00\17\00\00\00formatter error\000\02\10\00\0f\00\00\00(\00\00\00\14\00\00\00\0c\00\00\00\04\00\00\00\15\00\00\00\16\00\00\00\17\00\00\00\14\00\00\00\0c\00\00\00\04\00\00\00\18\00\00\00\19\00\00\00\1a\00\00\00library/std/src/panic.rs|\02\10\00\18\00\00\00\f3\00\00\00\12\00\00\00file name contained an unexpected NUL byte\00\00\a4\02\10\00*\00\00\00\14\00\00\00\00\00\00\00\02\00\00\00\d0\02\10\00stack backtrace:\0a\00\00\00\e8\02\10\00\11\00\00\00note: Some details are omitted, run with `RUST_BACKTRACE=full` for a verbose backtrace.\0a\04\03\10\00X\00\00\00library/std/src/sys_common/thread_info.rs\00\00\00d\03\10\00)\00\00\00\16\00\00\003\00\00\00memory allocation of  bytes failed\00\00\a0\03\10\00\15\00\00\00\b5\03\10\00\0d\00\00\00library/std/src/alloc.rs\d4\03\10\00\18\00\00\00U\01\00\00\09\00\00\00 bytes failed\0a\00\00\a0\03\10\00\15\00\00\00\fc\03\10\00\0e\00\00\00library/std/src/panicking.rsBox<dyn Any><unnamed>\00\00\00\08\00\00\00\00\00\00\00\01\00\00\00\1b\00\00\00\1c\00\00\00\1d\00\00\00\1e\00\00\00\1f\00\00\00 \00\00\00!\00\00\00\22\00\00\00\0c\00\00\00\04\00\00\00#\00\00\00$\00\00\00%\00\00\00&\00\00\00'\00\00\00(\00\00\00)\00\00\00\1c\04\10\00\1c\00\00\00\f9\00\00\00$\00\00\00thread '' panicked at '', \00\00\b0\04\10\00\08\00\00\00\b8\04\10\00\0f\00\00\00\c7\04\10\00\03\00\00\00\d4\00\10\00\01\00\00\00note: run with `RUST_BACKTRACE=1` environment variable to display a backtrace\0a\00\00\ec\04\10\00N\00\00\00\1c\04\10\00\1c\00\00\00B\02\00\00\1e\00\00\00\1c\04\10\00\1c\00\00\00A\02\00\00\1f\00\00\00\22\00\00\00\0c\00\00\00\04\00\00\00*\00\00\00\08\00\00\00\08\00\00\00\04\00\00\00+\00\00\00,\00\00\00\10\00\00\00\04\00\00\00-\00\00\00.\00\00\00\08\00\00\00\08\00\00\00\04\00\00\00/\00\00\000\00\00\00thread panicked while processing panic. aborting.\0a\00\00\ac\05\10\002\00\00\00\08\00\00\00\00\00\00\00\01\00\00\001\00\00\00\0apanicked after panic::always_abort(), aborting.\0a\00\00\00X\00\10\00\00\00\00\00\f8\05\10\001\00\00\00thread caused non-unwinding panic. aborting.\0a\00\00\00<\06\10\00-\00\00\00thread panicked while panicking. aborting.\0a\00t\06\10\00+\00\00\00failed to initiate panic, error \a8\06\10\00 \00\00\00advancing IoSlice beyond its length\00\d0\06\10\00#\00\00\00library/std/src/sys/wasi/io.rs\00\00\fc\06\10\00\1e\00\00\00\17\00\00\00\0d\00\00\00cannot recursively acquire mutex,\07\10\00 \00\00\00library/std/src/sys/wasi/../unsupported/locks/mutex.rs\00\00T\07\10\006\00\00\00\14\00\00\00\09\00\00\00rwlock locked for writing\00\00\00\9c\07\10\00\19\00\00\00\0e\00\0f\00?\00\02\00@\005\00\0d\00\04\00\03\00,\00\1b\00\1c\00I\00\14\00\06\004\000\00/\00library/alloc/src/raw_vec.rscapacity overflow\00\00\00\00\08\10\00\11\00\00\00\e4\07\10\00\1c\00\00\00\0d\02\00\00\05\00\00\00called `Option::unwrap()` on a `None` valuelibrary/alloc/src/ffi/c_str.rs\00\00\00W\08\10\00\1e\00\00\00\1b\01\00\007\00\00\00called `Result::unwrap()` on an `Err` value\002\00\00\00\00\00\00\00\01\00\00\003\00\00\00library/alloc/src/sync.rs\00\00\00\c4\08\10\00\19\00\00\00V\01\00\002\00\00\00BorrowMutError:\00\f0\08\10\00\00\00\00\00\fe\08\10\00\01\00\00\00\fe\08\10\00\01\00\00\00panicked at '', $\09\10\00\01\00\00\00%\09\10\00\03\00\00\009\00\00\00\00\00\00\00\01\00\00\00:\00\00\00matches!===assertion failed: `(left  right)`\0a  left: ``,\0a right: ``: \00\00\00S\09\10\00\19\00\00\00l\09\10\00\12\00\00\00~\09\10\00\0c\00\00\00\8a\09\10\00\03\00\00\00`\00\00\00S\09\10\00\19\00\00\00l\09\10\00\12\00\00\00~\09\10\00\0c\00\00\00\b0\09\10\00\01\00\00\00: \00\00\f0\08\10\00\00\00\00\00\d4\09\10\00\02\00\00\0000010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899truefalselibrary/core/src/slice/memchr.rs\00\00\00\b9\0a\10\00 \00\00\00q\00\00\00'\00\00\00range start index  out of range for slice of length \ec\0a\10\00\12\00\00\00\fe\0a\10\00\22\00\00\00LayoutError")
    (data (;1;) (i32.const 1051452) "\01\00\00\00\ff\ff\ff\ff\e2\07\10\00")
    (@producers
      (language "Rust" "")
      (processed-by "rustc" "1.69.0 (84c898d65 2023-04-16)")
      (processed-by "clang" "15.0.6")
      (processed-by "wit-component" "0.11.0")
      (processed-by "wit-bindgen-rust" "0.8.0")
    )
  )
  (core module (;1;)
    (type (;0;) (func (param i32)))
    (type (;1;) (func (param i32 i32)))
    (type (;2;) (func (param i32 i64 i32)))
    (type (;3;) (func (param i32 i32 i32 i32)))
    (type (;4;) (func (param i32) (result i32)))
    (type (;5;) (func (param i32 i32 i32)))
    (type (;6;) (func (param i32 i32 i32 i32) (result i32)))
    (type (;7;) (func (result i32)))
    (type (;8;) (func (param i32 i32 i32) (result i32)))
    (type (;9;) (func (param i32 i32) (result i32)))
    (type (;10;) (func))
    (import "env" "memory" (memory (;0;) 0))
    (import "wasi:cli-base/preopens" "get-directories" (func $_ZN22wasi_snapshot_preview111descriptors11Descriptors3new19get_preopens_import17h59cf4a31ba016325E (;0;) (type 0)))
    (import "wasi:filesystem/filesystem" "get-type" (func $_ZN22wasi_snapshot_preview18bindings4wasi10filesystem10filesystem8get_type10wit_import17hf24ea32acf9fd0cbE (;1;) (type 1)))
    (import "__main_module__" "cabi_realloc" (func $_ZN22wasi_snapshot_preview15State3new12cabi_realloc17h99915ad2474f6b34E (;2;) (type 6)))
    (import "wasi:cli-base/environment" "get-environment" (func $_ZN22wasi_snapshot_preview15State15get_environment22get_environment_import17hadba5711a57ce325E (;3;) (type 0)))
    (import "wasi:filesystem/filesystem" "write-via-stream" (func $_ZN22wasi_snapshot_preview18bindings4wasi10filesystem10filesystem16write_via_stream10wit_import17h5aebdaf48684fb77E (;4;) (type 2)))
    (import "wasi:filesystem/filesystem" "append-via-stream" (func $_ZN22wasi_snapshot_preview18bindings4wasi10filesystem10filesystem17append_via_stream10wit_import17hae0e9b5133288e9bE (;5;) (type 1)))
    (import "wasi:filesystem/filesystem" "drop-descriptor" (func $_ZN22wasi_snapshot_preview18bindings4wasi10filesystem10filesystem15drop_descriptor10wit_import17h74b4a560aee02b23E (;6;) (type 0)))
    (import "wasi:cli-base/stderr" "get-stderr" (func $_ZN22wasi_snapshot_preview18bindings4wasi8cli_base6stderr10get_stderr10wit_import17h6f51056d89f3d6a4E (;7;) (type 7)))
    (import "wasi:cli-base/stdin" "get-stdin" (func $_ZN22wasi_snapshot_preview18bindings4wasi8cli_base5stdin9get_stdin10wit_import17h8d9cecbf25a612feE (;8;) (type 7)))
    (import "wasi:cli-base/stdout" "get-stdout" (func $_ZN22wasi_snapshot_preview18bindings4wasi8cli_base6stdout10get_stdout10wit_import17hfbcdbe2193060ee8E (;9;) (type 7)))
    (import "wasi:cli-base/exit" "exit" (func $_ZN22wasi_snapshot_preview18bindings4wasi8cli_base4exit4exit10wit_import17hb55e487e426c3307E (;10;) (type 0)))
    (import "wasi:io/streams" "drop-input-stream" (func $_ZN22wasi_snapshot_preview18bindings4wasi2io7streams17drop_input_stream10wit_import17h8b10af723d2beb39E (;11;) (type 0)))
    (import "wasi:io/streams" "drop-output-stream" (func $_ZN22wasi_snapshot_preview18bindings4wasi2io7streams18drop_output_stream10wit_import17hfc6e42f480d9fbf8E (;12;) (type 0)))
    (import "wasi:io/streams" "write" (func $_ZN22wasi_snapshot_preview18bindings4wasi2io7streams5write10wit_import17hed07ba09fee3058dE (;13;) (type 3)))
    (import "wasi:io/streams" "blocking-write" (func $_ZN22wasi_snapshot_preview18bindings4wasi2io7streams14blocking_write10wit_import17h67402e9cca18d40fE (;14;) (type 3)))
    (func $cabi_import_realloc (;15;) (type 6) (param i32 i32 i32 i32) (result i32)
      (local i32)
      call $allocate_stack
      global.get $__stack_pointer
      i32.const 48
      i32.sub
      local.tee 4
      global.set $__stack_pointer
      block ;; label = @1
        block ;; label = @2
          block ;; label = @3
            block ;; label = @4
              block ;; label = @5
                local.get 0
                br_if 0 (;@5;)
                local.get 1
                br_if 0 (;@5;)
                call $_ZN22wasi_snapshot_preview15State3ptr17hb1b8ed8ad13dafb2E
                local.tee 0
                i32.load
                local.tee 1
                i32.const 2147483647
                i32.ge_u
                br_if 1 (;@4;)
                local.get 0
                local.get 1
                i32.const 1
                i32.add
                i32.store
                local.get 0
                i32.load offset=8
                i32.const 560490357
                i32.ne
                br_if 2 (;@3;)
                block ;; label = @6
                  local.get 0
                  i32.const 65532
                  i32.add
                  i32.load
                  i32.const 560490357
                  i32.ne
                  br_if 0 (;@6;)
                  block ;; label = @7
                    local.get 0
                    i32.const 20
                    i32.add
                    i32.load
                    local.tee 1
                    i32.eqz
                    br_if 0 (;@7;)
                    local.get 1
                    local.get 2
                    local.get 3
                    call $_ZN22wasi_snapshot_preview19BumpArena5alloc17h7c53bcdf706602d3E
                    local.set 2
                    br 6 (;@1;)
                  end
                  local.get 0
                  i32.load offset=12
                  local.tee 1
                  i32.eqz
                  br_if 4 (;@2;)
                  block ;; label = @7
                    local.get 2
                    local.get 1
                    i32.add
                    i32.const -1
                    i32.add
                    i32.const 0
                    local.get 2
                    i32.sub
                    i32.and
                    local.tee 2
                    local.get 3
                    i32.add
                    local.tee 3
                    local.get 2
                    i32.ge_u
                    local.get 3
                    call $_ZN97_$LT$core..option..Option$LT$T$GT$$u20$as$u20$wasi_snapshot_preview1..TrappingUnwrap$LT$T$GT$$GT$15trapping_unwrap17h866112bbcc75b465E
                    local.get 1
                    local.get 0
                    i32.const 16
                    i32.add
                    i32.load
                    i32.add
                    local.tee 3
                    local.get 1
                    i32.ge_u
                    local.get 3
                    call $_ZN97_$LT$core..option..Option$LT$T$GT$$u20$as$u20$wasi_snapshot_preview1..TrappingUnwrap$LT$T$GT$$GT$15trapping_unwrap17h866112bbcc75b465E
                    i32.gt_u
                    br_if 0 (;@7;)
                    local.get 0
                    i32.const 0
                    i32.store offset=12
                    br 6 (;@1;)
                  end
                  local.get 4
                  i32.const 32
                  i32.store8 offset=47
                  local.get 4
                  i32.const 1701734764
                  i32.store offset=43 align=1
                  local.get 4
                  i64.const 2338042707334751329
                  i64.store offset=35 align=1
                  local.get 4
                  i64.const 2338600898263348341
                  i64.store offset=27 align=1
                  local.get 4
                  i64.const 7162263158133189730
                  i64.store offset=19 align=1
                  local.get 4
                  i64.const 7018969289221893749
                  i64.store offset=11 align=1
                  local.get 4
                  i32.const 11
                  i32.add
                  i32.const 37
                  call $_ZN22wasi_snapshot_preview16macros5print17h00e98c6320ceabafE
                  i32.const 219
                  call $_ZN22wasi_snapshot_preview16macros10eprint_u3217ha29c03b5a1c2525eE
                  local.get 4
                  i32.const 8250
                  i32.store16 offset=11 align=1
                  local.get 4
                  i32.const 11
                  i32.add
                  i32.const 2
                  call $_ZN22wasi_snapshot_preview16macros5print17h00e98c6320ceabafE
                  local.get 4
                  i32.const 2681
                  i32.store16 offset=23 align=1
                  local.get 4
                  i32.const 1919905125
                  i32.store offset=19 align=1
                  local.get 4
                  i64.const 7863397576860792175
                  i64.store offset=11 align=1
                  local.get 4
                  i32.const 11
                  i32.add
                  i32.const 14
                  call $_ZN22wasi_snapshot_preview16macros5print17h00e98c6320ceabafE
                  local.get 4
                  i32.const 10
                  i32.store8 offset=11
                  local.get 4
                  i32.const 11
                  i32.add
                  i32.const 1
                  call $_ZN22wasi_snapshot_preview16macros5print17h00e98c6320ceabafE
                  unreachable
                  unreachable
                end
                local.get 4
                i32.const 32
                i32.store8 offset=47
                local.get 4
                i32.const 1701734764
                i32.store offset=43 align=1
                local.get 4
                i64.const 2338042707334751329
                i64.store offset=35 align=1
                local.get 4
                i64.const 2338600898263348341
                i64.store offset=27 align=1
                local.get 4
                i64.const 7162263158133189730
                i64.store offset=19 align=1
                local.get 4
                i64.const 7018969289221893749
                i64.store offset=11 align=1
                local.get 4
                i32.const 11
                i32.add
                i32.const 37
                call $_ZN22wasi_snapshot_preview16macros5print17h00e98c6320ceabafE
                i32.const 2261
                call $_ZN22wasi_snapshot_preview16macros10eprint_u3217ha29c03b5a1c2525eE
                local.get 4
                i32.const 8250
                i32.store16 offset=11 align=1
                local.get 4
                i32.const 11
                i32.add
                i32.const 2
                call $_ZN22wasi_snapshot_preview16macros5print17h00e98c6320ceabafE
                local.get 4
                i32.const 10
                i32.store8 offset=27
                local.get 4
                i64.const 7234307576302018670
                i64.store offset=19 align=1
                local.get 4
                i64.const 8028075845441778529
                i64.store offset=11 align=1
                local.get 4
                i32.const 11
                i32.add
                i32.const 17
                call $_ZN22wasi_snapshot_preview16macros5print17h00e98c6320ceabafE
                local.get 4
                i32.const 10
                i32.store8 offset=11
                local.get 4
                i32.const 11
                i32.add
                i32.const 1
                call $_ZN22wasi_snapshot_preview16macros5print17h00e98c6320ceabafE
                unreachable
                unreachable
              end
              local.get 4
              i32.const 32
              i32.store8 offset=47
              local.get 4
              i32.const 1701734764
              i32.store offset=43 align=1
              local.get 4
              i64.const 2338042707334751329
              i64.store offset=35 align=1
              local.get 4
              i64.const 2338600898263348341
              i64.store offset=27 align=1
              local.get 4
              i64.const 7162263158133189730
              i64.store offset=19 align=1
              local.get 4
              i64.const 7018969289221893749
              i64.store offset=11 align=1
              local.get 4
              i32.const 11
              i32.add
              i32.const 37
              call $_ZN22wasi_snapshot_preview16macros5print17h00e98c6320ceabafE
              i32.const 106
              call $_ZN22wasi_snapshot_preview16macros10eprint_u3217ha29c03b5a1c2525eE
              local.get 4
              i32.const 10
              i32.store8 offset=11
              local.get 4
              i32.const 11
              i32.add
              i32.const 1
              call $_ZN22wasi_snapshot_preview16macros5print17h00e98c6320ceabafE
              unreachable
              unreachable
            end
            local.get 4
            i32.const 32
            i32.store8 offset=47
            local.get 4
            i32.const 1701734764
            i32.store offset=43 align=1
            local.get 4
            i64.const 2338042707334751329
            i64.store offset=35 align=1
            local.get 4
            i64.const 2338600898263348341
            i64.store offset=27 align=1
            local.get 4
            i64.const 7162263158133189730
            i64.store offset=19 align=1
            local.get 4
            i64.const 7018969289221893749
            i64.store offset=11 align=1
            local.get 4
            i32.const 11
            i32.add
            i32.const 37
            call $_ZN22wasi_snapshot_preview16macros5print17h00e98c6320ceabafE
            i32.const 2259
            call $_ZN22wasi_snapshot_preview16macros10eprint_u3217ha29c03b5a1c2525eE
            local.get 4
            i32.const 10
            i32.store8 offset=11
            local.get 4
            i32.const 11
            i32.add
            i32.const 1
            call $_ZN22wasi_snapshot_preview16macros5print17h00e98c6320ceabafE
            unreachable
            unreachable
          end
          local.get 4
          i32.const 32
          i32.store8 offset=47
          local.get 4
          i32.const 1701734764
          i32.store offset=43 align=1
          local.get 4
          i64.const 2338042707334751329
          i64.store offset=35 align=1
          local.get 4
          i64.const 2338600898263348341
          i64.store offset=27 align=1
          local.get 4
          i64.const 7162263158133189730
          i64.store offset=19 align=1
          local.get 4
          i64.const 7018969289221893749
          i64.store offset=11 align=1
          local.get 4
          i32.const 11
          i32.add
          i32.const 37
          call $_ZN22wasi_snapshot_preview16macros5print17h00e98c6320ceabafE
          i32.const 2260
          call $_ZN22wasi_snapshot_preview16macros10eprint_u3217ha29c03b5a1c2525eE
          local.get 4
          i32.const 8250
          i32.store16 offset=11 align=1
          local.get 4
          i32.const 11
          i32.add
          i32.const 2
          call $_ZN22wasi_snapshot_preview16macros5print17h00e98c6320ceabafE
          local.get 4
          i32.const 10
          i32.store8 offset=27
          local.get 4
          i64.const 7234307576302018670
          i64.store offset=19 align=1
          local.get 4
          i64.const 8028075845441778529
          i64.store offset=11 align=1
          local.get 4
          i32.const 11
          i32.add
          i32.const 17
          call $_ZN22wasi_snapshot_preview16macros5print17h00e98c6320ceabafE
          local.get 4
          i32.const 10
          i32.store8 offset=11
          local.get 4
          i32.const 11
          i32.add
          i32.const 1
          call $_ZN22wasi_snapshot_preview16macros5print17h00e98c6320ceabafE
          unreachable
          unreachable
        end
        local.get 4
        i32.const 32
        i32.store8 offset=47
        local.get 4
        i32.const 1701734764
        i32.store offset=43 align=1
        local.get 4
        i64.const 2338042707334751329
        i64.store offset=35 align=1
        local.get 4
        i64.const 2338600898263348341
        i64.store offset=27 align=1
        local.get 4
        i64.const 7162263158133189730
        i64.store offset=19 align=1
        local.get 4
        i64.const 7018969289221893749
        i64.store offset=11 align=1
        local.get 4
        i32.const 11
        i32.add
        i32.const 37
        call $_ZN22wasi_snapshot_preview16macros5print17h00e98c6320ceabafE
        i32.const 212
        call $_ZN22wasi_snapshot_preview16macros10eprint_u3217ha29c03b5a1c2525eE
        local.get 4
        i32.const 8250
        i32.store16 offset=11 align=1
        local.get 4
        i32.const 11
        i32.add
        i32.const 2
        call $_ZN22wasi_snapshot_preview16macros5print17h00e98c6320ceabafE
        local.get 4
        i32.const 10
        i32.store8 offset=47
        local.get 4
        i32.const 1684370293
        i32.store offset=43 align=1
        local.get 4
        i64.const 2340011850872286305
        i64.store offset=35 align=1
        local.get 4
        i64.const 2338053340533122404
        i64.store offset=27 align=1
        local.get 4
        i64.const 7599383958532420719
        i64.store offset=19 align=1
        local.get 4
        i64.const 7935468323262068066
        i64.store offset=11 align=1
        local.get 4
        i32.const 11
        i32.add
        i32.const 37
        call $_ZN22wasi_snapshot_preview16macros5print17h00e98c6320ceabafE
        local.get 4
        i32.const 10
        i32.store8 offset=11
        local.get 4
        i32.const 11
        i32.add
        i32.const 1
        call $_ZN22wasi_snapshot_preview16macros5print17h00e98c6320ceabafE
        unreachable
        unreachable
      end
      local.get 0
      local.get 0
      i32.load
      i32.const -1
      i32.add
      i32.store
      local.get 4
      i32.const 48
      i32.add
      global.set $__stack_pointer
      local.get 2
    )
    (func $_ZN22wasi_snapshot_preview15State3ptr17hb1b8ed8ad13dafb2E (;16;) (type 7) (result i32)
      (local i32)
      block ;; label = @1
        call $get_state_ptr
        local.tee 0
        br_if 0 (;@1;)
        call $_ZN22wasi_snapshot_preview15State3new17hbfa9fb0a7a894f14E
        local.tee 0
        call $set_state_ptr
      end
      local.get 0
    )
    (func $_ZN22wasi_snapshot_preview19BumpArena5alloc17h7c53bcdf706602d3E (;17;) (type 8) (param i32 i32 i32) (result i32)
      (local i32)
      global.get $__stack_pointer
      i32.const 48
      i32.sub
      local.tee 3
      global.set $__stack_pointer
      block ;; label = @1
        local.get 0
        local.get 1
        i32.add
        local.get 0
        i32.load offset=54904
        i32.add
        i32.const -1
        i32.add
        i32.const 0
        local.get 1
        i32.sub
        i32.and
        local.tee 1
        local.get 0
        i32.sub
        local.get 2
        i32.add
        local.tee 2
        i32.const 54904
        i32.gt_u
        br_if 0 (;@1;)
        local.get 0
        local.get 2
        i32.store offset=54904
        local.get 3
        i32.const 48
        i32.add
        global.set $__stack_pointer
        local.get 1
        return
      end
      local.get 3
      i32.const 32
      i32.store8 offset=47
      local.get 3
      i32.const 1701734764
      i32.store offset=43 align=1
      local.get 3
      i64.const 2338042707334751329
      i64.store offset=35 align=1
      local.get 3
      i64.const 2338600898263348341
      i64.store offset=27 align=1
      local.get 3
      i64.const 7162263158133189730
      i64.store offset=19 align=1
      local.get 3
      i64.const 7018969289221893749
      i64.store offset=11 align=1
      local.get 3
      i32.const 11
      i32.add
      i32.const 37
      call $_ZN22wasi_snapshot_preview16macros5print17h00e98c6320ceabafE
      i32.const 136
      call $_ZN22wasi_snapshot_preview16macros10eprint_u3217ha29c03b5a1c2525eE
      local.get 3
      i32.const 8250
      i32.store16 offset=11 align=1
      local.get 3
      i32.const 11
      i32.add
      i32.const 2
      call $_ZN22wasi_snapshot_preview16macros5print17h00e98c6320ceabafE
      local.get 3
      i32.const 2681
      i32.store16 offset=23 align=1
      local.get 3
      i32.const 1919905125
      i32.store offset=19 align=1
      local.get 3
      i64.const 7863397576860792175
      i64.store offset=11 align=1
      local.get 3
      i32.const 11
      i32.add
      i32.const 14
      call $_ZN22wasi_snapshot_preview16macros5print17h00e98c6320ceabafE
      local.get 3
      i32.const 10
      i32.store8 offset=11
      local.get 3
      i32.const 11
      i32.add
      i32.const 1
      call $_ZN22wasi_snapshot_preview16macros5print17h00e98c6320ceabafE
      unreachable
      unreachable
    )
    (func $_ZN22wasi_snapshot_preview111ImportAlloc10with_arena17h226c3c18370937f8E (;18;) (type 5) (param i32 i32 i32)
      (local i32 i32)
      global.get $__stack_pointer
      i32.const 48
      i32.sub
      local.tee 3
      global.set $__stack_pointer
      block ;; label = @1
        block ;; label = @2
          local.get 0
          i32.load
          br_if 0 (;@2;)
          local.get 0
          i32.load offset=8
          local.set 4
          local.get 0
          local.get 1
          i32.store offset=8
          local.get 4
          i32.eqz
          br_if 1 (;@1;)
          local.get 3
          i32.const 32
          i32.store8 offset=47
          local.get 3
          i32.const 1701734764
          i32.store offset=43 align=1
          local.get 3
          i64.const 2338042707334751329
          i64.store offset=35 align=1
          local.get 3
          i64.const 2338600898263348341
          i64.store offset=27 align=1
          local.get 3
          i64.const 7162263158133189730
          i64.store offset=19 align=1
          local.get 3
          i64.const 7018969289221893749
          i64.store offset=11 align=1
          local.get 3
          i32.const 11
          i32.add
          i32.const 37
          call $_ZN22wasi_snapshot_preview16macros5print17h00e98c6320ceabafE
          i32.const 198
          call $_ZN22wasi_snapshot_preview16macros10eprint_u3217ha29c03b5a1c2525eE
          local.get 3
          i32.const 8250
          i32.store16 offset=11 align=1
          local.get 3
          i32.const 11
          i32.add
          i32.const 2
          call $_ZN22wasi_snapshot_preview16macros5print17h00e98c6320ceabafE
          local.get 3
          i64.const 748000395109933170
          i64.store offset=27 align=1
          local.get 3
          i64.const 7307218417350680677
          i64.store offset=19 align=1
          local.get 3
          i64.const 8390050488160450159
          i64.store offset=11 align=1
          local.get 3
          i32.const 11
          i32.add
          i32.const 24
          call $_ZN22wasi_snapshot_preview16macros5print17h00e98c6320ceabafE
          local.get 3
          i32.const 10
          i32.store8 offset=11
          local.get 3
          i32.const 11
          i32.add
          i32.const 1
          call $_ZN22wasi_snapshot_preview16macros5print17h00e98c6320ceabafE
          unreachable
          unreachable
        end
        local.get 3
        i32.const 32
        i32.store8 offset=47
        local.get 3
        i32.const 1701734764
        i32.store offset=43 align=1
        local.get 3
        i64.const 2338042707334751329
        i64.store offset=35 align=1
        local.get 3
        i64.const 2338600898263348341
        i64.store offset=27 align=1
        local.get 3
        i64.const 7162263158133189730
        i64.store offset=19 align=1
        local.get 3
        i64.const 7018969289221893749
        i64.store offset=11 align=1
        local.get 3
        i32.const 11
        i32.add
        i32.const 37
        call $_ZN22wasi_snapshot_preview16macros5print17h00e98c6320ceabafE
        i32.const 191
        call $_ZN22wasi_snapshot_preview16macros10eprint_u3217ha29c03b5a1c2525eE
        local.get 3
        i32.const 8250
        i32.store16 offset=11 align=1
        local.get 3
        i32.const 11
        i32.add
        i32.const 2
        call $_ZN22wasi_snapshot_preview16macros5print17h00e98c6320ceabafE
        local.get 3
        i32.const 174417007
        i32.store offset=19 align=1
        local.get 3
        i64.const 7863410729224140130
        i64.store offset=11 align=1
        local.get 3
        i32.const 11
        i32.add
        i32.const 12
        call $_ZN22wasi_snapshot_preview16macros5print17h00e98c6320ceabafE
        local.get 3
        i32.const 10
        i32.store8 offset=11
        local.get 3
        i32.const 11
        i32.add
        i32.const 1
        call $_ZN22wasi_snapshot_preview16macros5print17h00e98c6320ceabafE
        unreachable
        unreachable
      end
      local.get 2
      call $_ZN22wasi_snapshot_preview111descriptors11Descriptors3new19get_preopens_import17h59cf4a31ba016325E
      local.get 0
      i32.const 0
      i32.store offset=8
      local.get 3
      i32.const 48
      i32.add
      global.set $__stack_pointer
    )
    (func $cabi_export_realloc (;19;) (type 6) (param i32 i32 i32 i32) (result i32)
      (local i32)
      call $allocate_stack
      global.get $__stack_pointer
      i32.const 48
      i32.sub
      local.tee 4
      global.set $__stack_pointer
      block ;; label = @1
        block ;; label = @2
          block ;; label = @3
            block ;; label = @4
              local.get 0
              br_if 0 (;@4;)
              local.get 1
              br_if 0 (;@4;)
              call $_ZN22wasi_snapshot_preview15State3ptr17hb1b8ed8ad13dafb2E
              local.tee 0
              i32.load
              br_if 1 (;@3;)
              local.get 0
              i32.const -1
              i32.store
              local.get 0
              i32.load offset=8
              i32.const 560490357
              i32.ne
              br_if 2 (;@2;)
              local.get 0
              i32.const 65532
              i32.add
              i32.load
              i32.const 560490357
              i32.ne
              br_if 3 (;@1;)
              local.get 0
              i32.const 10296
              i32.add
              local.get 2
              local.get 3
              call $_ZN22wasi_snapshot_preview19BumpArena5alloc17h7c53bcdf706602d3E
              local.set 1
              local.get 0
              local.get 0
              i32.load
              i32.const 1
              i32.add
              i32.store
              local.get 4
              i32.const 48
              i32.add
              global.set $__stack_pointer
              local.get 1
              return
            end
            local.get 4
            i32.const 32
            i32.store8 offset=47
            local.get 4
            i32.const 1701734764
            i32.store offset=43 align=1
            local.get 4
            i64.const 2338042707334751329
            i64.store offset=35 align=1
            local.get 4
            i64.const 2338600898263348341
            i64.store offset=27 align=1
            local.get 4
            i64.const 7162263158133189730
            i64.store offset=19 align=1
            local.get 4
            i64.const 7018969289221893749
            i64.store offset=11 align=1
            local.get 4
            i32.const 11
            i32.add
            i32.const 37
            call $_ZN22wasi_snapshot_preview16macros5print17h00e98c6320ceabafE
            i32.const 242
            call $_ZN22wasi_snapshot_preview16macros10eprint_u3217ha29c03b5a1c2525eE
            local.get 4
            i32.const 10
            i32.store8 offset=11
            local.get 4
            i32.const 11
            i32.add
            i32.const 1
            call $_ZN22wasi_snapshot_preview16macros5print17h00e98c6320ceabafE
            unreachable
            unreachable
          end
          local.get 4
          i32.const 32
          i32.store8 offset=47
          local.get 4
          i32.const 1701734764
          i32.store offset=43 align=1
          local.get 4
          i64.const 2338042707334751329
          i64.store offset=35 align=1
          local.get 4
          i64.const 2338600898263348341
          i64.store offset=27 align=1
          local.get 4
          i64.const 7162263158133189730
          i64.store offset=19 align=1
          local.get 4
          i64.const 7018969289221893749
          i64.store offset=11 align=1
          local.get 4
          i32.const 11
          i32.add
          i32.const 37
          call $_ZN22wasi_snapshot_preview16macros5print17h00e98c6320ceabafE
          i32.const 2271
          call $_ZN22wasi_snapshot_preview16macros10eprint_u3217ha29c03b5a1c2525eE
          local.get 4
          i32.const 10
          i32.store8 offset=11
          local.get 4
          i32.const 11
          i32.add
          i32.const 1
          call $_ZN22wasi_snapshot_preview16macros5print17h00e98c6320ceabafE
          unreachable
          unreachable
        end
        local.get 4
        i32.const 32
        i32.store8 offset=47
        local.get 4
        i32.const 1701734764
        i32.store offset=43 align=1
        local.get 4
        i64.const 2338042707334751329
        i64.store offset=35 align=1
        local.get 4
        i64.const 2338600898263348341
        i64.store offset=27 align=1
        local.get 4
        i64.const 7162263158133189730
        i64.store offset=19 align=1
        local.get 4
        i64.const 7018969289221893749
        i64.store offset=11 align=1
        local.get 4
        i32.const 11
        i32.add
        i32.const 37
        call $_ZN22wasi_snapshot_preview16macros5print17h00e98c6320ceabafE
        i32.const 2272
        call $_ZN22wasi_snapshot_preview16macros10eprint_u3217ha29c03b5a1c2525eE
        local.get 4
        i32.const 8250
        i32.store16 offset=11 align=1
        local.get 4
        i32.const 11
        i32.add
        i32.const 2
        call $_ZN22wasi_snapshot_preview16macros5print17h00e98c6320ceabafE
        local.get 4
        i32.const 10
        i32.store8 offset=27
        local.get 4
        i64.const 7234307576302018670
        i64.store offset=19 align=1
        local.get 4
        i64.const 8028075845441778529
        i64.store offset=11 align=1
        local.get 4
        i32.const 11
        i32.add
        i32.const 17
        call $_ZN22wasi_snapshot_preview16macros5print17h00e98c6320ceabafE
        local.get 4
        i32.const 10
        i32.store8 offset=11
        local.get 4
        i32.const 11
        i32.add
        i32.const 1
        call $_ZN22wasi_snapshot_preview16macros5print17h00e98c6320ceabafE
        unreachable
        unreachable
      end
      local.get 4
      i32.const 32
      i32.store8 offset=47
      local.get 4
      i32.const 1701734764
      i32.store offset=43 align=1
      local.get 4
      i64.const 2338042707334751329
      i64.store offset=35 align=1
      local.get 4
      i64.const 2338600898263348341
      i64.store offset=27 align=1
      local.get 4
      i64.const 7162263158133189730
      i64.store offset=19 align=1
      local.get 4
      i64.const 7018969289221893749
      i64.store offset=11 align=1
      local.get 4
      i32.const 11
      i32.add
      i32.const 37
      call $_ZN22wasi_snapshot_preview16macros5print17h00e98c6320ceabafE
      i32.const 2273
      call $_ZN22wasi_snapshot_preview16macros10eprint_u3217ha29c03b5a1c2525eE
      local.get 4
      i32.const 8250
      i32.store16 offset=11 align=1
      local.get 4
      i32.const 11
      i32.add
      i32.const 2
      call $_ZN22wasi_snapshot_preview16macros5print17h00e98c6320ceabafE
      local.get 4
      i32.const 10
      i32.store8 offset=27
      local.get 4
      i64.const 7234307576302018670
      i64.store offset=19 align=1
      local.get 4
      i64.const 8028075845441778529
      i64.store offset=11 align=1
      local.get 4
      i32.const 11
      i32.add
      i32.const 17
      call $_ZN22wasi_snapshot_preview16macros5print17h00e98c6320ceabafE
      local.get 4
      i32.const 10
      i32.store8 offset=11
      local.get 4
      i32.const 11
      i32.add
      i32.const 1
      call $_ZN22wasi_snapshot_preview16macros5print17h00e98c6320ceabafE
      unreachable
      unreachable
    )
    (func $environ_get (;20;) (type 9) (param i32 i32) (result i32)
      (local i32 i32 i32 i32 i32)
      call $allocate_stack
      global.get $__stack_pointer
      i32.const 48
      i32.sub
      local.tee 2
      global.set $__stack_pointer
      block ;; label = @1
        block ;; label = @2
          block ;; label = @3
            call $_ZN22wasi_snapshot_preview15State3ptr17hb1b8ed8ad13dafb2E
            local.tee 3
            i32.load
            local.tee 4
            i32.const 2147483647
            i32.ge_u
            br_if 0 (;@3;)
            local.get 3
            local.get 4
            i32.const 1
            i32.add
            i32.store
            local.get 3
            i32.load offset=8
            i32.const 560490357
            i32.ne
            br_if 1 (;@2;)
            local.get 3
            i32.const 65532
            i32.add
            i32.load
            i32.const 560490357
            i32.ne
            br_if 2 (;@1;)
            local.get 2
            local.get 3
            i32.const 8
            i32.add
            call $_ZN22wasi_snapshot_preview15State15get_environment17hdad68bb075e53292E
            block ;; label = @4
              local.get 2
              i32.load offset=4
              local.tee 5
              i32.eqz
              br_if 0 (;@4;)
              local.get 2
              i32.load
              local.tee 4
              local.get 5
              i32.const 4
              i32.shl
              i32.add
              local.set 6
              loop ;; label = @5
                local.get 0
                local.get 1
                i32.store
                local.get 1
                local.get 4
                i32.load
                local.get 4
                i32.const 4
                i32.add
                local.tee 5
                i32.load
                call $memcpy
                local.get 5
                i32.load
                i32.add
                local.tee 1
                i32.const 61
                i32.store8
                local.get 1
                i32.const 1
                i32.add
                local.get 4
                i32.const 8
                i32.add
                i32.load
                local.get 4
                i32.const 12
                i32.add
                local.tee 1
                i32.load
                call $memcpy
                local.get 1
                i32.load
                i32.add
                local.tee 1
                i32.const 0
                i32.store8
                local.get 1
                i32.const 1
                i32.add
                local.set 1
                local.get 0
                i32.const 4
                i32.add
                local.set 0
                local.get 4
                i32.const 16
                i32.add
                local.tee 4
                local.get 6
                i32.ne
                br_if 0 (;@5;)
              end
            end
            local.get 3
            local.get 3
            i32.load
            i32.const -1
            i32.add
            i32.store
            local.get 2
            i32.const 48
            i32.add
            global.set $__stack_pointer
            i32.const 0
            return
          end
          local.get 2
          i32.const 32
          i32.store8 offset=47
          local.get 2
          i32.const 1701734764
          i32.store offset=43 align=1
          local.get 2
          i64.const 2338042707334751329
          i64.store offset=35 align=1
          local.get 2
          i64.const 2338600898263348341
          i64.store offset=27 align=1
          local.get 2
          i64.const 7162263158133189730
          i64.store offset=19 align=1
          local.get 2
          i64.const 7018969289221893749
          i64.store offset=11 align=1
          local.get 2
          i32.const 11
          i32.add
          i32.const 37
          call $_ZN22wasi_snapshot_preview16macros5print17h00e98c6320ceabafE
          i32.const 2259
          call $_ZN22wasi_snapshot_preview16macros10eprint_u3217ha29c03b5a1c2525eE
          local.get 2
          i32.const 10
          i32.store8 offset=11
          local.get 2
          i32.const 11
          i32.add
          i32.const 1
          call $_ZN22wasi_snapshot_preview16macros5print17h00e98c6320ceabafE
          unreachable
          unreachable
        end
        local.get 2
        i32.const 32
        i32.store8 offset=47
        local.get 2
        i32.const 1701734764
        i32.store offset=43 align=1
        local.get 2
        i64.const 2338042707334751329
        i64.store offset=35 align=1
        local.get 2
        i64.const 2338600898263348341
        i64.store offset=27 align=1
        local.get 2
        i64.const 7162263158133189730
        i64.store offset=19 align=1
        local.get 2
        i64.const 7018969289221893749
        i64.store offset=11 align=1
        local.get 2
        i32.const 11
        i32.add
        i32.const 37
        call $_ZN22wasi_snapshot_preview16macros5print17h00e98c6320ceabafE
        i32.const 2260
        call $_ZN22wasi_snapshot_preview16macros10eprint_u3217ha29c03b5a1c2525eE
        local.get 2
        i32.const 8250
        i32.store16 offset=11 align=1
        local.get 2
        i32.const 11
        i32.add
        i32.const 2
        call $_ZN22wasi_snapshot_preview16macros5print17h00e98c6320ceabafE
        local.get 2
        i32.const 10
        i32.store8 offset=27
        local.get 2
        i64.const 7234307576302018670
        i64.store offset=19 align=1
        local.get 2
        i64.const 8028075845441778529
        i64.store offset=11 align=1
        local.get 2
        i32.const 11
        i32.add
        i32.const 17
        call $_ZN22wasi_snapshot_preview16macros5print17h00e98c6320ceabafE
        local.get 2
        i32.const 10
        i32.store8 offset=11
        local.get 2
        i32.const 11
        i32.add
        i32.const 1
        call $_ZN22wasi_snapshot_preview16macros5print17h00e98c6320ceabafE
        unreachable
        unreachable
      end
      local.get 2
      i32.const 32
      i32.store8 offset=47
      local.get 2
      i32.const 1701734764
      i32.store offset=43 align=1
      local.get 2
      i64.const 2338042707334751329
      i64.store offset=35 align=1
      local.get 2
      i64.const 2338600898263348341
      i64.store offset=27 align=1
      local.get 2
      i64.const 7162263158133189730
      i64.store offset=19 align=1
      local.get 2
      i64.const 7018969289221893749
      i64.store offset=11 align=1
      local.get 2
      i32.const 11
      i32.add
      i32.const 37
      call $_ZN22wasi_snapshot_preview16macros5print17h00e98c6320ceabafE
      i32.const 2261
      call $_ZN22wasi_snapshot_preview16macros10eprint_u3217ha29c03b5a1c2525eE
      local.get 2
      i32.const 8250
      i32.store16 offset=11 align=1
      local.get 2
      i32.const 11
      i32.add
      i32.const 2
      call $_ZN22wasi_snapshot_preview16macros5print17h00e98c6320ceabafE
      local.get 2
      i32.const 10
      i32.store8 offset=27
      local.get 2
      i64.const 7234307576302018670
      i64.store offset=19 align=1
      local.get 2
      i64.const 8028075845441778529
      i64.store offset=11 align=1
      local.get 2
      i32.const 11
      i32.add
      i32.const 17
      call $_ZN22wasi_snapshot_preview16macros5print17h00e98c6320ceabafE
      local.get 2
      i32.const 10
      i32.store8 offset=11
      local.get 2
      i32.const 11
      i32.add
      i32.const 1
      call $_ZN22wasi_snapshot_preview16macros5print17h00e98c6320ceabafE
      unreachable
      unreachable
    )
    (func $_ZN22wasi_snapshot_preview15State15get_environment17hdad68bb075e53292E (;21;) (type 1) (param i32 i32)
      (local i32 i32 i32)
      global.get $__stack_pointer
      i32.const 64
      i32.sub
      local.tee 2
      global.set $__stack_pointer
      block ;; label = @1
        block ;; label = @2
          local.get 1
          i32.load offset=65204
          local.tee 3
          i32.eqz
          br_if 0 (;@2;)
          local.get 1
          i32.const 65208
          i32.add
          i32.load
          local.set 4
          br 1 (;@1;)
        end
        local.get 2
        i64.const 0
        i64.store offset=16
        block ;; label = @2
          block ;; label = @3
            local.get 1
            i32.load offset=4
            br_if 0 (;@3;)
            local.get 1
            i32.const 12
            i32.add
            local.tee 3
            i32.load
            local.set 4
            local.get 3
            local.get 1
            i32.const 10288
            i32.add
            i32.store
            local.get 4
            br_if 1 (;@2;)
            local.get 2
            i32.const 16
            i32.add
            call $_ZN22wasi_snapshot_preview15State15get_environment22get_environment_import17hadba5711a57ce325E
            local.get 1
            i32.const 0
            i32.store offset=12
            local.get 1
            i32.const 65208
            i32.add
            local.get 2
            i32.load offset=20
            local.tee 4
            i32.store
            local.get 1
            local.get 2
            i32.load offset=16
            local.tee 3
            i32.store offset=65204
            br 2 (;@1;)
          end
          local.get 2
          i32.const 32
          i32.store8 offset=63
          local.get 2
          i32.const 1701734764
          i32.store offset=59 align=1
          local.get 2
          i64.const 2338042707334751329
          i64.store offset=51 align=1
          local.get 2
          i64.const 2338600898263348341
          i64.store offset=43 align=1
          local.get 2
          i64.const 7162263158133189730
          i64.store offset=35 align=1
          local.get 2
          i64.const 7018969289221893749
          i64.store offset=27 align=1
          local.get 2
          i32.const 27
          i32.add
          i32.const 37
          call $_ZN22wasi_snapshot_preview16macros5print17h00e98c6320ceabafE
          i32.const 191
          call $_ZN22wasi_snapshot_preview16macros10eprint_u3217ha29c03b5a1c2525eE
          local.get 2
          i32.const 8250
          i32.store16 offset=27 align=1
          local.get 2
          i32.const 27
          i32.add
          i32.const 2
          call $_ZN22wasi_snapshot_preview16macros5print17h00e98c6320ceabafE
          local.get 2
          i32.const 174417007
          i32.store offset=35 align=1
          local.get 2
          i64.const 7863410729224140130
          i64.store offset=27 align=1
          local.get 2
          i32.const 27
          i32.add
          i32.const 12
          call $_ZN22wasi_snapshot_preview16macros5print17h00e98c6320ceabafE
          local.get 2
          i32.const 10
          i32.store8 offset=27
          local.get 2
          i32.const 27
          i32.add
          i32.const 1
          call $_ZN22wasi_snapshot_preview16macros5print17h00e98c6320ceabafE
          unreachable
          unreachable
        end
        local.get 2
        i32.const 32
        i32.store8 offset=63
        local.get 2
        i32.const 1701734764
        i32.store offset=59 align=1
        local.get 2
        i64.const 2338042707334751329
        i64.store offset=51 align=1
        local.get 2
        i64.const 2338600898263348341
        i64.store offset=43 align=1
        local.get 2
        i64.const 7162263158133189730
        i64.store offset=35 align=1
        local.get 2
        i64.const 7018969289221893749
        i64.store offset=27 align=1
        local.get 2
        i32.const 27
        i32.add
        i32.const 37
        call $_ZN22wasi_snapshot_preview16macros5print17h00e98c6320ceabafE
        i32.const 198
        call $_ZN22wasi_snapshot_preview16macros10eprint_u3217ha29c03b5a1c2525eE
        local.get 2
        i32.const 8250
        i32.store16 offset=27 align=1
        local.get 2
        i32.const 27
        i32.add
        i32.const 2
        call $_ZN22wasi_snapshot_preview16macros5print17h00e98c6320ceabafE
        local.get 2
        i64.const 748000395109933170
        i64.store offset=43 align=1
        local.get 2
        i64.const 7307218417350680677
        i64.store offset=35 align=1
        local.get 2
        i64.const 8390050488160450159
        i64.store offset=27 align=1
        local.get 2
        i32.const 27
        i32.add
        i32.const 24
        call $_ZN22wasi_snapshot_preview16macros5print17h00e98c6320ceabafE
        local.get 2
        i32.const 10
        i32.store8 offset=27
        local.get 2
        i32.const 27
        i32.add
        i32.const 1
        call $_ZN22wasi_snapshot_preview16macros5print17h00e98c6320ceabafE
        unreachable
        unreachable
      end
      local.get 2
      i32.const 8
      i32.add
      local.get 3
      local.get 4
      call $_ZN97_$LT$core..option..Option$LT$T$GT$$u20$as$u20$wasi_snapshot_preview1..TrappingUnwrap$LT$T$GT$$GT$15trapping_unwrap17hc133ffb1084c392dE
      local.get 2
      i32.load offset=12
      local.set 1
      local.get 0
      local.get 2
      i32.load offset=8
      i32.store
      local.get 0
      local.get 1
      i32.store offset=4
      local.get 2
      i32.const 64
      i32.add
      global.set $__stack_pointer
    )
    (func $environ_sizes_get (;22;) (type 9) (param i32 i32) (result i32)
      (local i32 i32 i32 i32 i32)
      call $allocate_stack
      global.get $__stack_pointer
      i32.const 48
      i32.sub
      local.tee 2
      global.set $__stack_pointer
      block ;; label = @1
        block ;; label = @2
          block ;; label = @3
            block ;; label = @4
              block ;; label = @5
                call $get_allocation_state
                i32.const -2
                i32.add
                i32.const -3
                i32.and
                i32.eqz
                br_if 0 (;@5;)
                local.get 0
                i32.const 0
                i32.store
                local.get 1
                i32.const 0
                i32.store
                br 1 (;@4;)
              end
              call $_ZN22wasi_snapshot_preview15State3ptr17hb1b8ed8ad13dafb2E
              local.tee 3
              i32.load
              local.tee 4
              i32.const 2147483647
              i32.ge_u
              br_if 1 (;@3;)
              local.get 3
              local.get 4
              i32.const 1
              i32.add
              i32.store
              local.get 3
              i32.load offset=8
              i32.const 560490357
              i32.ne
              br_if 2 (;@2;)
              local.get 3
              i32.const 65532
              i32.add
              i32.load
              i32.const 560490357
              i32.ne
              br_if 3 (;@1;)
              local.get 2
              local.get 3
              i32.const 8
              i32.add
              call $_ZN22wasi_snapshot_preview15State15get_environment17hdad68bb075e53292E
              local.get 2
              i32.load
              local.set 5
              local.get 0
              local.get 2
              i32.load offset=4
              local.tee 4
              i32.store
              block ;; label = @5
                block ;; label = @6
                  local.get 4
                  br_if 0 (;@6;)
                  i32.const 0
                  local.set 4
                  br 1 (;@5;)
                end
                local.get 4
                i32.const 4
                i32.shl
                local.set 6
                local.get 5
                i32.const 12
                i32.add
                local.set 0
                i32.const 0
                local.set 4
                loop ;; label = @6
                  local.get 4
                  local.get 0
                  i32.const -8
                  i32.add
                  i32.load
                  i32.add
                  local.get 0
                  i32.load
                  i32.add
                  i32.const 2
                  i32.add
                  local.set 4
                  local.get 0
                  i32.const 16
                  i32.add
                  local.set 0
                  local.get 6
                  i32.const -16
                  i32.add
                  local.tee 6
                  br_if 0 (;@6;)
                end
              end
              local.get 1
              local.get 4
              i32.store
              local.get 3
              local.get 3
              i32.load
              i32.const -1
              i32.add
              i32.store
            end
            local.get 2
            i32.const 48
            i32.add
            global.set $__stack_pointer
            i32.const 0
            return
          end
          local.get 2
          i32.const 32
          i32.store8 offset=47
          local.get 2
          i32.const 1701734764
          i32.store offset=43 align=1
          local.get 2
          i64.const 2338042707334751329
          i64.store offset=35 align=1
          local.get 2
          i64.const 2338600898263348341
          i64.store offset=27 align=1
          local.get 2
          i64.const 7162263158133189730
          i64.store offset=19 align=1
          local.get 2
          i64.const 7018969289221893749
          i64.store offset=11 align=1
          local.get 2
          i32.const 11
          i32.add
          i32.const 37
          call $_ZN22wasi_snapshot_preview16macros5print17h00e98c6320ceabafE
          i32.const 2259
          call $_ZN22wasi_snapshot_preview16macros10eprint_u3217ha29c03b5a1c2525eE
          local.get 2
          i32.const 10
          i32.store8 offset=11
          local.get 2
          i32.const 11
          i32.add
          i32.const 1
          call $_ZN22wasi_snapshot_preview16macros5print17h00e98c6320ceabafE
          unreachable
          unreachable
        end
        local.get 2
        i32.const 32
        i32.store8 offset=47
        local.get 2
        i32.const 1701734764
        i32.store offset=43 align=1
        local.get 2
        i64.const 2338042707334751329
        i64.store offset=35 align=1
        local.get 2
        i64.const 2338600898263348341
        i64.store offset=27 align=1
        local.get 2
        i64.const 7162263158133189730
        i64.store offset=19 align=1
        local.get 2
        i64.const 7018969289221893749
        i64.store offset=11 align=1
        local.get 2
        i32.const 11
        i32.add
        i32.const 37
        call $_ZN22wasi_snapshot_preview16macros5print17h00e98c6320ceabafE
        i32.const 2260
        call $_ZN22wasi_snapshot_preview16macros10eprint_u3217ha29c03b5a1c2525eE
        local.get 2
        i32.const 8250
        i32.store16 offset=11 align=1
        local.get 2
        i32.const 11
        i32.add
        i32.const 2
        call $_ZN22wasi_snapshot_preview16macros5print17h00e98c6320ceabafE
        local.get 2
        i32.const 10
        i32.store8 offset=27
        local.get 2
        i64.const 7234307576302018670
        i64.store offset=19 align=1
        local.get 2
        i64.const 8028075845441778529
        i64.store offset=11 align=1
        local.get 2
        i32.const 11
        i32.add
        i32.const 17
        call $_ZN22wasi_snapshot_preview16macros5print17h00e98c6320ceabafE
        local.get 2
        i32.const 10
        i32.store8 offset=11
        local.get 2
        i32.const 11
        i32.add
        i32.const 1
        call $_ZN22wasi_snapshot_preview16macros5print17h00e98c6320ceabafE
        unreachable
        unreachable
      end
      local.get 2
      i32.const 32
      i32.store8 offset=47
      local.get 2
      i32.const 1701734764
      i32.store offset=43 align=1
      local.get 2
      i64.const 2338042707334751329
      i64.store offset=35 align=1
      local.get 2
      i64.const 2338600898263348341
      i64.store offset=27 align=1
      local.get 2
      i64.const 7162263158133189730
      i64.store offset=19 align=1
      local.get 2
      i64.const 7018969289221893749
      i64.store offset=11 align=1
      local.get 2
      i32.const 11
      i32.add
      i32.const 37
      call $_ZN22wasi_snapshot_preview16macros5print17h00e98c6320ceabafE
      i32.const 2261
      call $_ZN22wasi_snapshot_preview16macros10eprint_u3217ha29c03b5a1c2525eE
      local.get 2
      i32.const 8250
      i32.store16 offset=11 align=1
      local.get 2
      i32.const 11
      i32.add
      i32.const 2
      call $_ZN22wasi_snapshot_preview16macros5print17h00e98c6320ceabafE
      local.get 2
      i32.const 10
      i32.store8 offset=27
      local.get 2
      i64.const 7234307576302018670
      i64.store offset=19 align=1
      local.get 2
      i64.const 8028075845441778529
      i64.store offset=11 align=1
      local.get 2
      i32.const 11
      i32.add
      i32.const 17
      call $_ZN22wasi_snapshot_preview16macros5print17h00e98c6320ceabafE
      local.get 2
      i32.const 10
      i32.store8 offset=11
      local.get 2
      i32.const 11
      i32.add
      i32.const 1
      call $_ZN22wasi_snapshot_preview16macros5print17h00e98c6320ceabafE
      unreachable
      unreachable
    )
    (func $_ZN22wasi_snapshot_preview15State11descriptors17h438e992d3216ea70E (;23;) (type 1) (param i32 i32)
      (local i32 i32)
      global.get $__stack_pointer
      i32.const 6176
      i32.sub
      local.tee 2
      global.set $__stack_pointer
      block ;; label = @1
        block ;; label = @2
          local.get 1
          i32.load offset=16
          br_if 0 (;@2;)
          local.get 1
          i32.const -1
          i32.store offset=16
          local.get 1
          i32.const 24
          i32.add
          local.set 3
          block ;; label = @3
            local.get 1
            i32.const 6172
            i32.add
            i32.load
            i32.const 2
            i32.ne
            br_if 0 (;@3;)
            local.get 2
            i32.const 8
            i32.add
            local.get 1
            i32.const 4
            i32.add
            local.get 1
            i32.const 10288
            i32.add
            call $_ZN22wasi_snapshot_preview111descriptors11Descriptors3new17hb3cc67ca4afe01b3E
            local.get 3
            local.get 2
            i32.const 8
            i32.add
            i32.const 6168
            call $memcpy
            drop
            local.get 1
            i32.load offset=6172
            i32.const 2
            i32.eq
            br_if 2 (;@1;)
          end
          local.get 0
          local.get 1
          i32.const 16
          i32.add
          i32.store offset=4
          local.get 0
          local.get 3
          i32.store
          local.get 2
          i32.const 6176
          i32.add
          global.set $__stack_pointer
          return
        end
        local.get 2
        i32.const 32
        i32.store8 offset=44
        local.get 2
        i32.const 1701734764
        i32.store offset=40 align=1
        local.get 2
        i64.const 2338042707334751329
        i64.store offset=32 align=1
        local.get 2
        i64.const 2338600898263348341
        i64.store offset=24 align=1
        local.get 2
        i64.const 7162263158133189730
        i64.store offset=16 align=1
        local.get 2
        i64.const 7018969289221893749
        i64.store offset=8 align=1
        local.get 2
        i32.const 8
        i32.add
        i32.const 37
        call $_ZN22wasi_snapshot_preview16macros5print17h00e98c6320ceabafE
        i32.const 2355
        call $_ZN22wasi_snapshot_preview16macros10eprint_u3217ha29c03b5a1c2525eE
        local.get 2
        i32.const 10
        i32.store8 offset=8
        local.get 2
        i32.const 8
        i32.add
        i32.const 1
        call $_ZN22wasi_snapshot_preview16macros5print17h00e98c6320ceabafE
        unreachable
        unreachable
      end
      local.get 2
      i32.const 32
      i32.store8 offset=44
      local.get 2
      i32.const 1701734764
      i32.store offset=40 align=1
      local.get 2
      i64.const 2338042707334751329
      i64.store offset=32 align=1
      local.get 2
      i64.const 2338600898263348341
      i64.store offset=24 align=1
      local.get 2
      i64.const 7162263158133189730
      i64.store offset=16 align=1
      local.get 2
      i64.const 7018969289221893749
      i64.store offset=8 align=1
      local.get 2
      i32.const 8
      i32.add
      i32.const 37
      call $_ZN22wasi_snapshot_preview16macros5print17h00e98c6320ceabafE
      i32.const 2359
      call $_ZN22wasi_snapshot_preview16macros10eprint_u3217ha29c03b5a1c2525eE
      local.get 2
      i32.const 10
      i32.store8 offset=8
      local.get 2
      i32.const 8
      i32.add
      i32.const 1
      call $_ZN22wasi_snapshot_preview16macros5print17h00e98c6320ceabafE
      unreachable
      unreachable
    )
    (func $fd_write (;24;) (type 6) (param i32 i32 i32 i32) (result i32)
      (local i32 i32 i32 i32 i32 i32 i64 i64)
      call $allocate_stack
      global.get $__stack_pointer
      i32.const 96
      i32.sub
      local.tee 4
      global.set $__stack_pointer
      block ;; label = @1
        block ;; label = @2
          block ;; label = @3
            block ;; label = @4
              block ;; label = @5
                block ;; label = @6
                  block ;; label = @7
                    call $get_allocation_state
                    i32.const -2
                    i32.add
                    i32.const -3
                    i32.and
                    br_if 0 (;@7;)
                    block ;; label = @8
                      block ;; label = @9
                        local.get 2
                        i32.eqz
                        br_if 0 (;@9;)
                        loop ;; label = @10
                          local.get 1
                          i32.const 4
                          i32.add
                          i32.load
                          local.tee 5
                          br_if 2 (;@8;)
                          local.get 1
                          i32.const 8
                          i32.add
                          local.set 1
                          local.get 2
                          i32.const -1
                          i32.add
                          local.tee 2
                          br_if 0 (;@10;)
                        end
                      end
                      i32.const 0
                      local.set 1
                      local.get 3
                      i32.const 0
                      i32.store
                      br 7 (;@1;)
                    end
                    local.get 1
                    i32.load
                    local.set 6
                    call $_ZN22wasi_snapshot_preview15State3ptr17hb1b8ed8ad13dafb2E
                    local.tee 2
                    i32.load
                    local.tee 1
                    i32.const 2147483647
                    i32.ge_u
                    br_if 1 (;@6;)
                    local.get 2
                    local.get 1
                    i32.const 1
                    i32.add
                    i32.store
                    local.get 2
                    i32.load offset=8
                    i32.const 560490357
                    i32.ne
                    br_if 2 (;@5;)
                    block ;; label = @8
                      block ;; label = @9
                        local.get 2
                        i32.const 65532
                        i32.add
                        i32.load
                        i32.const 560490357
                        i32.ne
                        br_if 0 (;@9;)
                        local.get 4
                        i32.const 48
                        i32.add
                        local.get 2
                        i32.const 8
                        i32.add
                        call $_ZN22wasi_snapshot_preview15State11descriptors17h438e992d3216ea70E
                        local.get 4
                        i32.load offset=48
                        local.tee 7
                        i32.load16_u offset=6144
                        local.set 8
                        local.get 4
                        i32.load offset=52
                        local.set 9
                        i32.const 8
                        local.set 1
                        i32.const 0
                        local.get 0
                        call $_ZN101_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$wasi_snapshot_preview1..TrappingUnwrap$LT$T$GT$$GT$15trapping_unwrap17h7b8d64f7a2350287E
                        local.tee 0
                        local.get 8
                        i32.ge_u
                        br_if 7 (;@2;)
                        local.get 7
                        local.get 0
                        i32.const 48
                        i32.mul
                        i32.add
                        local.tee 0
                        i32.load
                        i32.eqz
                        br_if 7 (;@2;)
                        local.get 4
                        i32.const 56
                        i32.add
                        local.get 0
                        i32.const 8
                        i32.add
                        call $_ZN22wasi_snapshot_preview111descriptors7Streams16get_write_stream17hc85758344e13a1d4E
                        local.get 4
                        i32.load16_u offset=56
                        br_if 1 (;@8;)
                        local.get 4
                        i32.load offset=60
                        local.set 1
                        block ;; label = @10
                          block ;; label = @11
                            local.get 0
                            i32.const 40
                            i32.add
                            i32.load8_u
                            i32.const -2
                            i32.add
                            i32.const 255
                            i32.and
                            local.tee 8
                            i32.const 2
                            i32.gt_u
                            br_if 0 (;@11;)
                            local.get 8
                            i32.const 1
                            i32.ne
                            br_if 1 (;@10;)
                          end
                          local.get 0
                          i32.const 41
                          i32.add
                          i32.load8_u
                          br_if 6 (;@4;)
                          local.get 4
                          local.get 1
                          local.get 6
                          local.get 5
                          call $_ZN22wasi_snapshot_preview18bindings4wasi2io7streams5write17he4671e1904a0d003E
                          local.get 4
                          i64.load offset=8
                          local.set 10
                          local.get 4
                          i64.load
                          local.set 11
                          br 7 (;@3;)
                        end
                        local.get 4
                        i32.const 32
                        i32.add
                        local.get 1
                        local.get 6
                        local.get 5
                        call $_ZN22wasi_snapshot_preview18bindings4wasi2io7streams5write17he4671e1904a0d003E
                        local.get 4
                        i64.load offset=40
                        local.set 10
                        local.get 4
                        i64.load offset=32
                        local.set 11
                        br 6 (;@3;)
                      end
                      local.get 4
                      i32.const 32
                      i32.store8 offset=92
                      local.get 4
                      i32.const 1701734764
                      i32.store offset=88 align=1
                      local.get 4
                      i64.const 2338042707334751329
                      i64.store offset=80 align=1
                      local.get 4
                      i64.const 2338600898263348341
                      i64.store offset=72 align=1
                      local.get 4
                      i64.const 7162263158133189730
                      i64.store offset=64 align=1
                      local.get 4
                      i64.const 7018969289221893749
                      i64.store offset=56 align=1
                      local.get 4
                      i32.const 56
                      i32.add
                      i32.const 37
                      call $_ZN22wasi_snapshot_preview16macros5print17h00e98c6320ceabafE
                      i32.const 2261
                      call $_ZN22wasi_snapshot_preview16macros10eprint_u3217ha29c03b5a1c2525eE
                      local.get 4
                      i32.const 8250
                      i32.store16 offset=56 align=1
                      local.get 4
                      i32.const 56
                      i32.add
                      i32.const 2
                      call $_ZN22wasi_snapshot_preview16macros5print17h00e98c6320ceabafE
                      local.get 4
                      i32.const 10
                      i32.store8 offset=72
                      local.get 4
                      i64.const 7234307576302018670
                      i64.store offset=64 align=1
                      local.get 4
                      i64.const 8028075845441778529
                      i64.store offset=56 align=1
                      local.get 4
                      i32.const 56
                      i32.add
                      i32.const 17
                      call $_ZN22wasi_snapshot_preview16macros5print17h00e98c6320ceabafE
                      local.get 4
                      i32.const 10
                      i32.store8 offset=56
                      local.get 4
                      i32.const 56
                      i32.add
                      i32.const 1
                      call $_ZN22wasi_snapshot_preview16macros5print17h00e98c6320ceabafE
                      unreachable
                      unreachable
                    end
                    local.get 4
                    i32.load16_u offset=58
                    local.set 1
                    br 5 (;@2;)
                  end
                  local.get 3
                  i32.const 0
                  i32.store
                  i32.const 29
                  local.set 1
                  br 5 (;@1;)
                end
                local.get 4
                i32.const 32
                i32.store8 offset=92
                local.get 4
                i32.const 1701734764
                i32.store offset=88 align=1
                local.get 4
                i64.const 2338042707334751329
                i64.store offset=80 align=1
                local.get 4
                i64.const 2338600898263348341
                i64.store offset=72 align=1
                local.get 4
                i64.const 7162263158133189730
                i64.store offset=64 align=1
                local.get 4
                i64.const 7018969289221893749
                i64.store offset=56 align=1
                local.get 4
                i32.const 56
                i32.add
                i32.const 37
                call $_ZN22wasi_snapshot_preview16macros5print17h00e98c6320ceabafE
                i32.const 2259
                call $_ZN22wasi_snapshot_preview16macros10eprint_u3217ha29c03b5a1c2525eE
                local.get 4
                i32.const 10
                i32.store8 offset=56
                local.get 4
                i32.const 56
                i32.add
                i32.const 1
                call $_ZN22wasi_snapshot_preview16macros5print17h00e98c6320ceabafE
                unreachable
                unreachable
              end
              local.get 4
              i32.const 32
              i32.store8 offset=92
              local.get 4
              i32.const 1701734764
              i32.store offset=88 align=1
              local.get 4
              i64.const 2338042707334751329
              i64.store offset=80 align=1
              local.get 4
              i64.const 2338600898263348341
              i64.store offset=72 align=1
              local.get 4
              i64.const 7162263158133189730
              i64.store offset=64 align=1
              local.get 4
              i64.const 7018969289221893749
              i64.store offset=56 align=1
              local.get 4
              i32.const 56
              i32.add
              i32.const 37
              call $_ZN22wasi_snapshot_preview16macros5print17h00e98c6320ceabafE
              i32.const 2260
              call $_ZN22wasi_snapshot_preview16macros10eprint_u3217ha29c03b5a1c2525eE
              local.get 4
              i32.const 8250
              i32.store16 offset=56 align=1
              local.get 4
              i32.const 56
              i32.add
              i32.const 2
              call $_ZN22wasi_snapshot_preview16macros5print17h00e98c6320ceabafE
              local.get 4
              i32.const 10
              i32.store8 offset=72
              local.get 4
              i64.const 7234307576302018670
              i64.store offset=64 align=1
              local.get 4
              i64.const 8028075845441778529
              i64.store offset=56 align=1
              local.get 4
              i32.const 56
              i32.add
              i32.const 17
              call $_ZN22wasi_snapshot_preview16macros5print17h00e98c6320ceabafE
              local.get 4
              i32.const 10
              i32.store8 offset=56
              local.get 4
              i32.const 56
              i32.add
              i32.const 1
              call $_ZN22wasi_snapshot_preview16macros5print17h00e98c6320ceabafE
              unreachable
              unreachable
            end
            local.get 4
            i32.const 16
            i32.add
            local.get 1
            local.get 6
            local.get 5
            call $_ZN22wasi_snapshot_preview18bindings4wasi2io7streams14blocking_write17hf09c031006095cf4E
            local.get 4
            i64.load offset=24
            local.set 10
            local.get 4
            i64.load offset=16
            local.set 11
          end
          i32.const 29
          local.set 1
          local.get 11
          i32.wrap_i64
          br_if 0 (;@2;)
          block ;; label = @3
            local.get 0
            i32.load8_u offset=40
            local.tee 1
            br_if 0 (;@3;)
            local.get 1
            i32.const -2
            i32.add
            i32.const 255
            i32.and
            local.tee 1
            i32.const 2
            i32.gt_u
            local.get 1
            i32.const 1
            i32.eq
            i32.or
            i32.eqz
            br_if 0 (;@3;)
            local.get 0
            i32.const 32
            i32.add
            local.tee 1
            local.get 1
            i64.load
            local.get 10
            i64.add
            i64.store
          end
          local.get 3
          local.get 10
          i64.store32
          i32.const 0
          local.set 1
        end
        local.get 9
        local.get 9
        i32.load
        i32.const 1
        i32.add
        i32.store
        local.get 2
        local.get 2
        i32.load
        i32.const -1
        i32.add
        i32.store
      end
      local.get 4
      i32.const 96
      i32.add
      global.set $__stack_pointer
      local.get 1
      i32.const 65535
      i32.and
    )
    (func $proc_exit (;25;) (type 0) (param i32)
      (local i32)
      call $allocate_stack
      global.get $__stack_pointer
      i32.const 48
      i32.sub
      local.tee 1
      global.set $__stack_pointer
      local.get 0
      i32.const 0
      i32.ne
      call $_ZN22wasi_snapshot_preview18bindings4wasi8cli_base4exit4exit17h4115d681a73a3ecbE
      local.get 1
      i32.const 32
      i32.store8 offset=46
      local.get 1
      i32.const 1701734764
      i32.store offset=42 align=1
      local.get 1
      i64.const 2338042707334751329
      i64.store offset=34 align=1
      local.get 1
      i64.const 2338600898263348341
      i64.store offset=26 align=1
      local.get 1
      i64.const 7162263158133189730
      i64.store offset=18 align=1
      local.get 1
      i64.const 7018969289221893749
      i64.store offset=10 align=1
      local.get 1
      i32.const 10
      i32.add
      i32.const 37
      call $_ZN22wasi_snapshot_preview16macros5print17h00e98c6320ceabafE
      i32.const 1868
      call $_ZN22wasi_snapshot_preview16macros10eprint_u3217ha29c03b5a1c2525eE
      local.get 1
      i32.const 8250
      i32.store16 offset=10 align=1
      local.get 1
      i32.const 10
      i32.add
      i32.const 2
      call $_ZN22wasi_snapshot_preview16macros5print17h00e98c6320ceabafE
      local.get 1
      i32.const 2593
      i32.store16 offset=46 align=1
      local.get 1
      i32.const 1953069157
      i32.store offset=42 align=1
      local.get 1
      i64.const 2338537461596644384
      i64.store offset=34 align=1
      local.get 1
      i64.const 7957695015159098981
      i64.store offset=26 align=1
      local.get 1
      i64.const 7882825952909664372
      i64.store offset=18 align=1
      local.get 1
      i64.const 7599935561254793064
      i64.store offset=10 align=1
      local.get 1
      i32.const 10
      i32.add
      i32.const 38
      call $_ZN22wasi_snapshot_preview16macros5print17h00e98c6320ceabafE
      local.get 1
      i32.const 10
      i32.store8 offset=10
      local.get 1
      i32.const 10
      i32.add
      i32.const 1
      call $_ZN22wasi_snapshot_preview16macros5print17h00e98c6320ceabafE
      unreachable
      unreachable
    )
    (func $_ZN22wasi_snapshot_preview15State3new17hbfa9fb0a7a894f14E (;26;) (type 7) (result i32)
      (local i32 i32)
      global.get $__stack_pointer
      i32.const 48
      i32.sub
      local.tee 0
      global.set $__stack_pointer
      block ;; label = @1
        call $get_allocation_state
        i32.const 2
        i32.ne
        br_if 0 (;@1;)
        i32.const 3
        call $set_allocation_state
        i32.const 0
        i32.const 0
        i32.const 8
        i32.const 65536
        call $_ZN22wasi_snapshot_preview15State3new12cabi_realloc17h99915ad2474f6b34E
        local.set 1
        i32.const 4
        call $set_allocation_state
        local.get 1
        i64.const 0
        i64.store offset=12 align=4
        local.get 1
        i32.const 560490357
        i32.store offset=8
        local.get 1
        i32.const 0
        i32.store
        local.get 1
        i32.const 20
        i32.add
        i64.const 0
        i64.store align=4
        local.get 1
        i64.const 0
        i64.store offset=65488 align=4
        local.get 1
        i32.const 0
        i32.store offset=65480
        local.get 1
        i32.const 0
        i32.store offset=65212
        local.get 1
        i64.const 0
        i64.store offset=65200 align=4
        local.get 1
        i32.const 2
        i32.store offset=6180
        local.get 1
        i32.const 65496
        i32.add
        i64.const 0
        i64.store align=4
        local.get 1
        i32.const 65504
        i32.add
        i64.const 0
        i64.store align=4
        local.get 1
        i32.const 65509
        i32.add
        i64.const 0
        i64.store align=1
        local.get 1
        i32.const 560490357
        i32.store offset=65532
        local.get 1
        i32.const 11822
        i32.store16 offset=65528
        local.get 1
        i32.const 0
        i32.store offset=65520
        local.get 0
        i32.const 48
        i32.add
        global.set $__stack_pointer
        local.get 1
        return
      end
      local.get 0
      i32.const 32
      i32.store8 offset=47
      local.get 0
      i32.const 1701734764
      i32.store offset=43 align=1
      local.get 0
      i64.const 2338042707334751329
      i64.store offset=35 align=1
      local.get 0
      i64.const 2338600898263348341
      i64.store offset=27 align=1
      local.get 0
      i64.const 7162263158133189730
      i64.store offset=19 align=1
      local.get 0
      i64.const 7018969289221893749
      i64.store offset=11 align=1
      local.get 0
      i32.const 11
      i32.add
      i32.const 37
      call $_ZN22wasi_snapshot_preview16macros5print17h00e98c6320ceabafE
      i32.const 2304
      call $_ZN22wasi_snapshot_preview16macros10eprint_u3217ha29c03b5a1c2525eE
      local.get 0
      i32.const 8250
      i32.store16 offset=11 align=1
      local.get 0
      i32.const 11
      i32.add
      i32.const 2
      call $_ZN22wasi_snapshot_preview16macros5print17h00e98c6320ceabafE
      local.get 0
      i32.const 10
      i32.store8 offset=27
      local.get 0
      i64.const 7234307576302018670
      i64.store offset=19 align=1
      local.get 0
      i64.const 8028075845441778529
      i64.store offset=11 align=1
      local.get 0
      i32.const 11
      i32.add
      i32.const 17
      call $_ZN22wasi_snapshot_preview16macros5print17h00e98c6320ceabafE
      local.get 0
      i32.const 10
      i32.store8 offset=11
      local.get 0
      i32.const 11
      i32.add
      i32.const 1
      call $_ZN22wasi_snapshot_preview16macros5print17h00e98c6320ceabafE
      unreachable
      unreachable
    )
    (func $_ZN22wasi_snapshot_preview18bindings4wasi8cli_base4exit4exit17h4115d681a73a3ecbE (;27;) (type 0) (param i32)
      local.get 0
      call $_ZN22wasi_snapshot_preview18bindings4wasi8cli_base4exit4exit10wit_import17hb55e487e426c3307E
    )
    (func $_ZN4core3ptr68drop_in_place$LT$wasi_snapshot_preview1..descriptors..Descriptor$GT$17h77e3c9f9dd09d154E.llvm.1514050663785461993 (;28;) (type 0) (param i32)
      (local i32 i32)
      global.get $__stack_pointer
      i32.const 48
      i32.sub
      local.tee 1
      global.set $__stack_pointer
      block ;; label = @1
        local.get 0
        i32.load
        i32.eqz
        br_if 0 (;@1;)
        block ;; label = @2
          local.get 0
          i32.load offset=8
          i32.eqz
          br_if 0 (;@2;)
          local.get 0
          i32.const 12
          i32.add
          i32.load
          call $_ZN22wasi_snapshot_preview18bindings4wasi2io7streams17drop_input_stream10wit_import17h8b10af723d2beb39E
        end
        block ;; label = @2
          local.get 0
          i32.const 16
          i32.add
          i32.load
          i32.eqz
          br_if 0 (;@2;)
          local.get 0
          i32.const 20
          i32.add
          i32.load
          call $_ZN22wasi_snapshot_preview18bindings4wasi2io7streams18drop_output_stream10wit_import17hfc6e42f480d9fbf8E
        end
        block ;; label = @2
          block ;; label = @3
            local.get 0
            i32.const 40
            i32.add
            i32.load8_u
            i32.const -2
            i32.add
            local.tee 2
            i32.const 1
            local.get 2
            i32.const 255
            i32.and
            i32.const 3
            i32.lt_u
            select
            i32.const 255
            i32.and
            br_table 2 (;@1;) 1 (;@2;) 0 (;@3;) 2 (;@1;)
          end
          local.get 1
          i32.const 32
          i32.store8 offset=47
          local.get 1
          i32.const 1701734764
          i32.store offset=43 align=1
          local.get 1
          i64.const 2338042707334751329
          i64.store offset=35 align=1
          local.get 1
          i64.const 2338600898263348341
          i64.store offset=27 align=1
          local.get 1
          i64.const 7162263158133189730
          i64.store offset=19 align=1
          local.get 1
          i64.const 7018969289221893749
          i64.store offset=11 align=1
          local.get 1
          i32.const 11
          i32.add
          i32.const 37
          call $_ZN22wasi_snapshot_preview16macros5print17h00e98c6320ceabafE
          i32.const 34
          call $_ZN22wasi_snapshot_preview16macros10eprint_u3217ha29c03b5a1c2525eE
          local.get 1
          i32.const 10
          i32.store8 offset=11
          local.get 1
          i32.const 11
          i32.add
          i32.const 1
          call $_ZN22wasi_snapshot_preview16macros5print17h00e98c6320ceabafE
          unreachable
          unreachable
        end
        local.get 0
        i32.const 24
        i32.add
        i32.load
        call $_ZN22wasi_snapshot_preview18bindings4wasi10filesystem10filesystem15drop_descriptor10wit_import17h74b4a560aee02b23E
      end
      local.get 1
      i32.const 48
      i32.add
      global.set $__stack_pointer
    )
    (func $_ZN22wasi_snapshot_preview111descriptors7Streams16get_write_stream17hc85758344e13a1d4E (;29;) (type 1) (param i32 i32)
      (local i32 i32 i32 i32)
      global.get $__stack_pointer
      i32.const 16
      i32.sub
      local.tee 2
      global.set $__stack_pointer
      block ;; label = @1
        block ;; label = @2
          block ;; label = @3
            block ;; label = @4
              block ;; label = @5
                block ;; label = @6
                  local.get 1
                  i32.load offset=8
                  br_if 0 (;@6;)
                  block ;; label = @7
                    local.get 1
                    i32.const 32
                    i32.add
                    i32.load8_u
                    local.tee 3
                    i32.const -2
                    i32.add
                    i32.const 255
                    i32.and
                    local.tee 4
                    i32.const 2
                    i32.gt_u
                    br_if 0 (;@7;)
                    i32.const 1
                    local.set 5
                    local.get 4
                    i32.const 1
                    i32.ne
                    br_if 2 (;@5;)
                  end
                  block ;; label = @7
                    local.get 1
                    i32.const 20
                    i32.add
                    i32.load8_u
                    i32.const 3
                    i32.ne
                    br_if 0 (;@7;)
                    local.get 0
                    i32.const 8
                    i32.store16 offset=2
                    br 5 (;@2;)
                  end
                  local.get 1
                  i32.load offset=16
                  local.set 5
                  block ;; label = @7
                    block ;; label = @8
                      local.get 3
                      i32.const 255
                      i32.and
                      br_if 0 (;@8;)
                      local.get 5
                      local.get 1
                      i32.const 24
                      i32.add
                      i64.load
                      local.get 2
                      i32.const 8
                      i32.add
                      call $_ZN22wasi_snapshot_preview18bindings4wasi10filesystem10filesystem16write_via_stream10wit_import17h5aebdaf48684fb77E
                      local.get 2
                      i32.load8_u offset=8
                      i32.eqz
                      br_if 1 (;@7;)
                      local.get 0
                      local.get 2
                      i32.load8_u offset=12
                      call $_ZN22wasi_snapshot_preview1157_$LT$impl$u20$core..convert..From$LT$wasi_snapshot_preview1..bindings..wasi..filesystem..filesystem..ErrorCode$GT$$u20$for$u20$wasi..lib_generated..Errno$GT$4from17h14d49ce3a2573102E
                      i32.store16 offset=2
                      br 6 (;@2;)
                    end
                    local.get 5
                    local.get 2
                    i32.const 8
                    i32.add
                    call $_ZN22wasi_snapshot_preview18bindings4wasi10filesystem10filesystem17append_via_stream10wit_import17hae0e9b5133288e9bE
                    local.get 2
                    i32.load8_u offset=8
                    br_if 3 (;@4;)
                  end
                  local.get 2
                  i32.load offset=12
                  local.set 5
                  local.get 1
                  i32.const 1
                  i32.store offset=8
                  local.get 0
                  local.get 5
                  i32.store offset=4
                  local.get 1
                  i32.const 12
                  i32.add
                  local.get 5
                  i32.store
                  br 3 (;@3;)
                end
                local.get 0
                local.get 1
                i32.const 12
                i32.add
                i32.load
                i32.store offset=4
                br 2 (;@3;)
              end
              local.get 0
              i32.const 8
              i32.store16 offset=2
              br 3 (;@1;)
            end
            local.get 0
            local.get 2
            i32.load8_u offset=12
            call $_ZN22wasi_snapshot_preview1157_$LT$impl$u20$core..convert..From$LT$wasi_snapshot_preview1..bindings..wasi..filesystem..filesystem..ErrorCode$GT$$u20$for$u20$wasi..lib_generated..Errno$GT$4from17h14d49ce3a2573102E
            i32.store16 offset=2
            br 1 (;@2;)
          end
          i32.const 0
          local.set 5
          br 1 (;@1;)
        end
        i32.const 1
        local.set 5
      end
      local.get 0
      local.get 5
      i32.store16
      local.get 2
      i32.const 16
      i32.add
      global.set $__stack_pointer
    )
    (func $_ZN22wasi_snapshot_preview111descriptors11Descriptors3new17hb3cc67ca4afe01b3E (;30;) (type 5) (param i32 i32 i32)
      (local i32 i32 i32 i32 i32 i32 i32)
      global.get $__stack_pointer
      i32.const 64
      i32.sub
      local.tee 3
      global.set $__stack_pointer
      local.get 0
      i32.const 0
      i32.store offset=6156
      local.get 0
      i32.const 0
      i32.store offset=6148
      call $_ZN22wasi_snapshot_preview18bindings4wasi8cli_base5stdin9get_stdin10wit_import17h8d9cecbf25a612feE
      local.set 4
      call $_ZN22wasi_snapshot_preview18bindings4wasi8cli_base6stdout10get_stdout10wit_import17hfbcdbe2193060ee8E
      local.set 5
      call $_ZN22wasi_snapshot_preview18bindings4wasi8cli_base6stderr10get_stderr10wit_import17h6f51056d89f3d6a4E
      local.tee 6
      call $set_stderr_stream
      local.get 0
      i32.const 2
      i32.store8 offset=40
      local.get 0
      i32.const 0
      i32.store offset=16
      local.get 0
      local.get 4
      i32.store offset=12
      local.get 0
      i32.const 1
      i32.store offset=8
      local.get 0
      i32.const 1
      i32.store
      local.get 3
      i32.const 0
      i32.store offset=20
      local.get 3
      i32.const 0
      i32.store16 offset=16
      local.get 3
      i32.const 16
      i32.add
      call $_ZN101_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$wasi_snapshot_preview1..TrappingUnwrap$LT$T$GT$$GT$15trapping_unwrap17h6d86ad75a69e188dE
      drop
      local.get 0
      i32.const 68
      i32.add
      local.get 5
      i32.store
      local.get 0
      i32.const 64
      i32.add
      i32.const 1
      i32.store
      local.get 0
      i32.const 56
      i32.add
      i32.const 0
      i32.store
      local.get 0
      i32.const 1
      i32.store offset=48
      local.get 0
      i32.const 72
      i32.add
      local.get 3
      i64.load offset=16
      i64.store
      local.get 0
      i32.const 80
      i32.add
      local.get 3
      i32.const 24
      i32.add
      local.tee 5
      i64.load
      i64.store
      local.get 0
      i32.const 88
      i32.add
      i32.const 2
      i32.store8
      local.get 0
      local.get 3
      i32.load align=1
      i32.store offset=89 align=1
      i32.const 3
      local.set 4
      local.get 0
      i32.const 92
      i32.add
      local.get 3
      i32.const 3
      i32.add
      local.tee 7
      i32.load align=1
      i32.store align=1
      local.get 3
      i32.const 1
      i32.store offset=12
      local.get 3
      i32.const 0
      i32.store16 offset=8
      local.get 3
      i32.const 8
      i32.add
      call $_ZN101_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$wasi_snapshot_preview1..TrappingUnwrap$LT$T$GT$$GT$15trapping_unwrap17h6d86ad75a69e188dE
      drop
      local.get 0
      i32.const 116
      i32.add
      local.get 6
      i32.store
      local.get 0
      i32.const 112
      i32.add
      i32.const 1
      i32.store
      local.get 0
      i32.const 104
      i32.add
      i32.const 0
      i32.store
      local.get 0
      i32.const 1
      i32.store offset=96
      local.get 0
      i32.const 120
      i32.add
      local.get 3
      i64.load offset=16
      i64.store
      local.get 0
      i32.const 128
      i32.add
      local.get 5
      i64.load
      i64.store
      local.get 0
      i32.const 136
      i32.add
      i32.const 2
      i32.store8
      local.get 0
      i32.const 3
      i32.store16 offset=6144
      local.get 0
      local.get 3
      i32.load align=1
      i32.store offset=137 align=1
      local.get 0
      i32.const 140
      i32.add
      local.get 7
      i32.load align=1
      i32.store align=1
      local.get 3
      i32.const 2
      i32.store offset=12
      local.get 3
      i32.const 0
      i32.store16 offset=8
      local.get 3
      i32.const 8
      i32.add
      call $_ZN101_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$wasi_snapshot_preview1..TrappingUnwrap$LT$T$GT$$GT$15trapping_unwrap17h6d86ad75a69e188dE
      drop
      local.get 3
      i64.const 0
      i64.store
      local.get 1
      local.get 2
      local.get 3
      call $_ZN22wasi_snapshot_preview111ImportAlloc10with_arena17h226c3c18370937f8E
      local.get 3
      i32.load
      local.set 8
      block ;; label = @1
        local.get 3
        i32.load offset=4
        local.tee 9
        i32.eqz
        br_if 0 (;@1;)
        local.get 9
        i32.const 12
        i32.mul
        local.set 1
        local.get 3
        i32.const 16
        i32.add
        i32.const 1
        i32.or
        local.set 7
        local.get 8
        local.set 2
        loop ;; label = @2
          local.get 2
          i32.load
          local.tee 5
          local.get 3
          i32.const 16
          i32.add
          call $_ZN22wasi_snapshot_preview18bindings4wasi10filesystem10filesystem8get_type10wit_import17hf24ea32acf9fd0cbE
          local.get 3
          i32.load8_u offset=16
          i32.const 0
          i32.ne
          local.get 7
          i32.load8_u
          call $_ZN101_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$wasi_snapshot_preview1..TrappingUnwrap$LT$T$GT$$GT$15trapping_unwrap17h3c19bcaf2e52ef19E
          local.set 6
          local.get 3
          i32.const 0
          i32.store16 offset=56
          local.get 3
          i64.const 0
          i64.store offset=48
          local.get 3
          local.get 5
          i32.store offset=40
          local.get 3
          i32.const 0
          i32.store offset=32
          local.get 3
          i32.const 0
          i32.store offset=24
          local.get 3
          i32.const 1
          i32.store offset=16
          local.get 3
          local.get 6
          i32.const 255
          i32.and
          i32.store8 offset=44
          block ;; label = @3
            block ;; label = @4
              local.get 4
              i32.const 65535
              i32.and
              local.tee 5
              i32.const 128
              i32.lt_u
              br_if 0 (;@4;)
              local.get 3
              i32.const 48
              i32.store16 offset=10
              local.get 3
              i32.const 16
              i32.add
              call $_ZN4core3ptr68drop_in_place$LT$wasi_snapshot_preview1..descriptors..Descriptor$GT$17h77e3c9f9dd09d154E.llvm.1514050663785461993
              i32.const 1
              local.set 5
              br 1 (;@3;)
            end
            local.get 0
            local.get 5
            i32.const 48
            i32.mul
            i32.add
            local.get 3
            i32.const 16
            i32.add
            i32.const 48
            call $memcpy
            drop
            local.get 0
            local.get 4
            i32.const 1
            i32.add
            local.tee 4
            i32.store16 offset=6144
            local.get 3
            local.get 5
            i32.store offset=12
            i32.const 0
            local.set 5
          end
          local.get 2
          i32.const 12
          i32.add
          local.set 2
          local.get 3
          local.get 5
          i32.store16 offset=8
          local.get 3
          i32.const 8
          i32.add
          call $_ZN101_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$wasi_snapshot_preview1..TrappingUnwrap$LT$T$GT$$GT$15trapping_unwrap17h6d86ad75a69e188dE
          drop
          local.get 1
          i32.const -12
          i32.add
          local.tee 1
          br_if 0 (;@2;)
        end
      end
      local.get 0
      local.get 8
      i32.store offset=6156
      local.get 0
      i32.const 6160
      i32.add
      local.get 9
      i32.store
      local.get 3
      i32.const 64
      i32.add
      global.set $__stack_pointer
    )
    (func $_ZN22wasi_snapshot_preview18bindings4wasi2io7streams5write17he4671e1904a0d003E (;31;) (type 3) (param i32 i32 i32 i32)
      (local i32 i64 i64)
      global.get $__stack_pointer
      i32.const 16
      i32.sub
      local.tee 4
      global.set $__stack_pointer
      local.get 1
      local.get 2
      local.get 3
      local.get 4
      call $_ZN22wasi_snapshot_preview18bindings4wasi2io7streams5write10wit_import17hed07ba09fee3058dE
      block ;; label = @1
        block ;; label = @2
          local.get 4
          i32.load8_u
          i32.eqz
          br_if 0 (;@2;)
          i64.const 1
          local.set 5
          br 1 (;@1;)
        end
        local.get 4
        i32.const 8
        i32.add
        i64.load
        local.set 6
        i64.const 0
        local.set 5
      end
      local.get 0
      local.get 6
      i64.store offset=8
      local.get 0
      local.get 5
      i64.store
      local.get 4
      i32.const 16
      i32.add
      global.set $__stack_pointer
    )
    (func $_ZN22wasi_snapshot_preview18bindings4wasi2io7streams14blocking_write17hf09c031006095cf4E (;32;) (type 3) (param i32 i32 i32 i32)
      (local i32 i64 i64)
      global.get $__stack_pointer
      i32.const 16
      i32.sub
      local.tee 4
      global.set $__stack_pointer
      local.get 1
      local.get 2
      local.get 3
      local.get 4
      call $_ZN22wasi_snapshot_preview18bindings4wasi2io7streams14blocking_write10wit_import17h67402e9cca18d40fE
      block ;; label = @1
        block ;; label = @2
          local.get 4
          i32.load8_u
          i32.eqz
          br_if 0 (;@2;)
          i64.const 1
          local.set 5
          br 1 (;@1;)
        end
        local.get 4
        i32.const 8
        i32.add
        i64.load
        local.set 6
        i64.const 0
        local.set 5
      end
      local.get 0
      local.get 6
      i64.store offset=8
      local.get 0
      local.get 5
      i64.store
      local.get 4
      i32.const 16
      i32.add
      global.set $__stack_pointer
    )
    (func $_ZN101_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$wasi_snapshot_preview1..TrappingUnwrap$LT$T$GT$$GT$15trapping_unwrap17h3c19bcaf2e52ef19E (;33;) (type 9) (param i32 i32) (result i32)
      (local i32)
      global.get $__stack_pointer
      i32.const 48
      i32.sub
      local.tee 2
      global.set $__stack_pointer
      block ;; label = @1
        local.get 0
        br_if 0 (;@1;)
        local.get 2
        i32.const 48
        i32.add
        global.set $__stack_pointer
        local.get 1
        return
      end
      local.get 2
      i32.const 32
      i32.store8 offset=47
      local.get 2
      i32.const 1701734764
      i32.store offset=43 align=1
      local.get 2
      i64.const 2338042707334751329
      i64.store offset=35 align=1
      local.get 2
      i64.const 2338600898263348341
      i64.store offset=27 align=1
      local.get 2
      i64.const 7162263158133189730
      i64.store offset=19 align=1
      local.get 2
      i64.const 7018969289221893749
      i64.store offset=11 align=1
      local.get 2
      i32.const 11
      i32.add
      i32.const 37
      call $_ZN22wasi_snapshot_preview16macros5print17h00e98c6320ceabafE
      i32.const 93
      call $_ZN22wasi_snapshot_preview16macros10eprint_u3217ha29c03b5a1c2525eE
      local.get 2
      i32.const 10
      i32.store8 offset=11
      local.get 2
      i32.const 11
      i32.add
      i32.const 1
      call $_ZN22wasi_snapshot_preview16macros5print17h00e98c6320ceabafE
      unreachable
      unreachable
    )
    (func $_ZN101_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$wasi_snapshot_preview1..TrappingUnwrap$LT$T$GT$$GT$15trapping_unwrap17h6d86ad75a69e188dE (;34;) (type 4) (param i32) (result i32)
      (local i32)
      global.get $__stack_pointer
      i32.const 48
      i32.sub
      local.tee 1
      global.set $__stack_pointer
      block ;; label = @1
        local.get 0
        i32.load16_u
        br_if 0 (;@1;)
        local.get 0
        i32.load offset=4
        local.set 0
        local.get 1
        i32.const 48
        i32.add
        global.set $__stack_pointer
        local.get 0
        return
      end
      local.get 1
      i32.const 32
      i32.store8 offset=47
      local.get 1
      i32.const 1701734764
      i32.store offset=43 align=1
      local.get 1
      i64.const 2338042707334751329
      i64.store offset=35 align=1
      local.get 1
      i64.const 2338600898263348341
      i64.store offset=27 align=1
      local.get 1
      i64.const 7162263158133189730
      i64.store offset=19 align=1
      local.get 1
      i64.const 7018969289221893749
      i64.store offset=11 align=1
      local.get 1
      i32.const 11
      i32.add
      i32.const 37
      call $_ZN22wasi_snapshot_preview16macros5print17h00e98c6320ceabafE
      i32.const 93
      call $_ZN22wasi_snapshot_preview16macros10eprint_u3217ha29c03b5a1c2525eE
      local.get 1
      i32.const 10
      i32.store8 offset=11
      local.get 1
      i32.const 11
      i32.add
      i32.const 1
      call $_ZN22wasi_snapshot_preview16macros5print17h00e98c6320ceabafE
      unreachable
      unreachable
    )
    (func $_ZN101_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$wasi_snapshot_preview1..TrappingUnwrap$LT$T$GT$$GT$15trapping_unwrap17h7b8d64f7a2350287E (;35;) (type 9) (param i32 i32) (result i32)
      (local i32)
      global.get $__stack_pointer
      i32.const 48
      i32.sub
      local.tee 2
      global.set $__stack_pointer
      block ;; label = @1
        local.get 0
        br_if 0 (;@1;)
        local.get 2
        i32.const 48
        i32.add
        global.set $__stack_pointer
        local.get 1
        return
      end
      local.get 2
      i32.const 32
      i32.store8 offset=47
      local.get 2
      i32.const 1701734764
      i32.store offset=43 align=1
      local.get 2
      i64.const 2338042707334751329
      i64.store offset=35 align=1
      local.get 2
      i64.const 2338600898263348341
      i64.store offset=27 align=1
      local.get 2
      i64.const 7162263158133189730
      i64.store offset=19 align=1
      local.get 2
      i64.const 7018969289221893749
      i64.store offset=11 align=1
      local.get 2
      i32.const 11
      i32.add
      i32.const 37
      call $_ZN22wasi_snapshot_preview16macros5print17h00e98c6320ceabafE
      i32.const 93
      call $_ZN22wasi_snapshot_preview16macros10eprint_u3217ha29c03b5a1c2525eE
      local.get 2
      i32.const 10
      i32.store8 offset=11
      local.get 2
      i32.const 11
      i32.add
      i32.const 1
      call $_ZN22wasi_snapshot_preview16macros5print17h00e98c6320ceabafE
      unreachable
      unreachable
    )
    (func $_ZN22wasi_snapshot_preview1157_$LT$impl$u20$core..convert..From$LT$wasi_snapshot_preview1..bindings..wasi..filesystem..filesystem..ErrorCode$GT$$u20$for$u20$wasi..lib_generated..Errno$GT$4from17h14d49ce3a2573102E (;36;) (type 4) (param i32) (result i32)
      (local i32 i32)
      global.get $__stack_pointer
      i32.const 16
      i32.sub
      local.set 1
      i32.const 6
      local.set 2
      block ;; label = @1
        block ;; label = @2
          block ;; label = @3
            block ;; label = @4
              block ;; label = @5
                block ;; label = @6
                  block ;; label = @7
                    block ;; label = @8
                      block ;; label = @9
                        block ;; label = @10
                          block ;; label = @11
                            block ;; label = @12
                              block ;; label = @13
                                block ;; label = @14
                                  block ;; label = @15
                                    block ;; label = @16
                                      block ;; label = @17
                                        block ;; label = @18
                                          block ;; label = @19
                                            block ;; label = @20
                                              block ;; label = @21
                                                block ;; label = @22
                                                  block ;; label = @23
                                                    block ;; label = @24
                                                      block ;; label = @25
                                                        block ;; label = @26
                                                          block ;; label = @27
                                                            block ;; label = @28
                                                              block ;; label = @29
                                                                block ;; label = @30
                                                                  block ;; label = @31
                                                                    block ;; label = @32
                                                                      block ;; label = @33
                                                                        block ;; label = @34
                                                                          block ;; label = @35
                                                                            block ;; label = @36
                                                                              block ;; label = @37
                                                                                local.get 0
                                                                                i32.const 255
                                                                                i32.and
                                                                                br_table 0 (;@37;) 36 (;@1;) 1 (;@36;) 2 (;@35;) 3 (;@34;) 4 (;@33;) 5 (;@32;) 6 (;@31;) 7 (;@30;) 8 (;@29;) 9 (;@28;) 10 (;@27;) 11 (;@26;) 12 (;@25;) 13 (;@24;) 14 (;@23;) 15 (;@22;) 16 (;@21;) 17 (;@20;) 18 (;@19;) 19 (;@18;) 20 (;@17;) 21 (;@16;) 22 (;@15;) 23 (;@14;) 24 (;@13;) 25 (;@12;) 26 (;@11;) 27 (;@10;) 28 (;@9;) 29 (;@8;) 30 (;@7;) 31 (;@6;) 32 (;@5;) 33 (;@4;) 34 (;@3;) 35 (;@2;) 0 (;@37;)
                                                                              end
                                                                              local.get 1
                                                                              i32.const 2
                                                                              i32.store16 offset=14
                                                                              local.get 1
                                                                              i32.const 14
                                                                              i32.add
                                                                              local.set 0
                                                                              local.get 1
                                                                              i32.load16_u offset=14
                                                                              return
                                                                            end
                                                                            i32.const 7
                                                                            return
                                                                          end
                                                                          i32.const 8
                                                                          return
                                                                        end
                                                                        i32.const 10
                                                                        return
                                                                      end
                                                                      i32.const 16
                                                                      return
                                                                    end
                                                                    i32.const 19
                                                                    return
                                                                  end
                                                                  i32.const 20
                                                                  return
                                                                end
                                                                i32.const 22
                                                                return
                                                              end
                                                              i32.const 25
                                                              return
                                                            end
                                                            i32.const 26
                                                            return
                                                          end
                                                          i32.const 27
                                                          return
                                                        end
                                                        i32.const 28
                                                        return
                                                      end
                                                      i32.const 29
                                                      return
                                                    end
                                                    i32.const 31
                                                    return
                                                  end
                                                  i32.const 32
                                                  return
                                                end
                                                i32.const 34
                                                return
                                              end
                                              i32.const 35
                                              return
                                            end
                                            i32.const 37
                                            return
                                          end
                                          i32.const 43
                                          return
                                        end
                                        i32.const 44
                                        return
                                      end
                                      i32.const 46
                                      return
                                    end
                                    i32.const 48
                                    return
                                  end
                                  i32.const 51
                                  return
                                end
                                i32.const 54
                                return
                              end
                              i32.const 55
                              return
                            end
                            i32.const 56
                            return
                          end
                          i32.const 58
                          return
                        end
                        i32.const 59
                        return
                      end
                      i32.const 60
                      return
                    end
                    i32.const 61
                    return
                  end
                  i32.const 63
                  return
                end
                i32.const 64
                return
              end
              i32.const 69
              return
            end
            i32.const 70
            return
          end
          i32.const 74
          return
        end
        i32.const 75
        local.set 2
      end
      local.get 2
    )
    (func $_ZN97_$LT$core..option..Option$LT$T$GT$$u20$as$u20$wasi_snapshot_preview1..TrappingUnwrap$LT$T$GT$$GT$15trapping_unwrap17h866112bbcc75b465E (;37;) (type 9) (param i32 i32) (result i32)
      (local i32)
      global.get $__stack_pointer
      i32.const 48
      i32.sub
      local.tee 2
      global.set $__stack_pointer
      block ;; label = @1
        local.get 0
        br_if 0 (;@1;)
        local.get 2
        i32.const 32
        i32.store8 offset=47
        local.get 2
        i32.const 1701734764
        i32.store offset=43 align=1
        local.get 2
        i64.const 2338042707334751329
        i64.store offset=35 align=1
        local.get 2
        i64.const 2338600898263348341
        i64.store offset=27 align=1
        local.get 2
        i64.const 7162263158133189730
        i64.store offset=19 align=1
        local.get 2
        i64.const 7018969289221893749
        i64.store offset=11 align=1
        local.get 2
        i32.const 11
        i32.add
        i32.const 37
        call $_ZN22wasi_snapshot_preview16macros5print17h00e98c6320ceabafE
        i32.const 84
        call $_ZN22wasi_snapshot_preview16macros10eprint_u3217ha29c03b5a1c2525eE
        local.get 2
        i32.const 10
        i32.store8 offset=11
        local.get 2
        i32.const 11
        i32.add
        i32.const 1
        call $_ZN22wasi_snapshot_preview16macros5print17h00e98c6320ceabafE
        unreachable
        unreachable
      end
      local.get 2
      i32.const 48
      i32.add
      global.set $__stack_pointer
      local.get 1
    )
    (func $_ZN97_$LT$core..option..Option$LT$T$GT$$u20$as$u20$wasi_snapshot_preview1..TrappingUnwrap$LT$T$GT$$GT$15trapping_unwrap17hc133ffb1084c392dE (;38;) (type 5) (param i32 i32 i32)
      (local i32)
      global.get $__stack_pointer
      i32.const 48
      i32.sub
      local.tee 3
      global.set $__stack_pointer
      block ;; label = @1
        local.get 1
        br_if 0 (;@1;)
        local.get 3
        i32.const 32
        i32.store8 offset=47
        local.get 3
        i32.const 1701734764
        i32.store offset=43 align=1
        local.get 3
        i64.const 2338042707334751329
        i64.store offset=35 align=1
        local.get 3
        i64.const 2338600898263348341
        i64.store offset=27 align=1
        local.get 3
        i64.const 7162263158133189730
        i64.store offset=19 align=1
        local.get 3
        i64.const 7018969289221893749
        i64.store offset=11 align=1
        local.get 3
        i32.const 11
        i32.add
        i32.const 37
        call $_ZN22wasi_snapshot_preview16macros5print17h00e98c6320ceabafE
        i32.const 84
        call $_ZN22wasi_snapshot_preview16macros10eprint_u3217ha29c03b5a1c2525eE
        local.get 3
        i32.const 10
        i32.store8 offset=11
        local.get 3
        i32.const 11
        i32.add
        i32.const 1
        call $_ZN22wasi_snapshot_preview16macros5print17h00e98c6320ceabafE
        unreachable
        unreachable
      end
      local.get 0
      local.get 2
      i32.store offset=4
      local.get 0
      local.get 1
      i32.store
      local.get 3
      i32.const 48
      i32.add
      global.set $__stack_pointer
    )
    (func $_ZN22wasi_snapshot_preview16macros5print17h00e98c6320ceabafE (;39;) (type 1) (param i32 i32)
      (local i32)
      global.get $__stack_pointer
      i32.const 16
      i32.sub
      local.tee 2
      global.set $__stack_pointer
      call $get_stderr_stream
      local.get 0
      local.get 1
      local.get 2
      call $_ZN22wasi_snapshot_preview18bindings4wasi2io7streams5write10wit_import17hed07ba09fee3058dE
      local.get 2
      i32.const 16
      i32.add
      global.set $__stack_pointer
    )
    (func $_ZN22wasi_snapshot_preview16macros10eprint_u3217ha29c03b5a1c2525eE (;40;) (type 0) (param i32)
      (local i32)
      global.get $__stack_pointer
      i32.const 32
      i32.sub
      local.tee 1
      global.set $__stack_pointer
      block ;; label = @1
        block ;; label = @2
          local.get 0
          br_if 0 (;@2;)
          local.get 1
          i32.const 48
          i32.store8 offset=15
          call $get_stderr_stream
          local.get 1
          i32.const 15
          i32.add
          i32.const 1
          local.get 1
          i32.const 16
          i32.add
          call $_ZN22wasi_snapshot_preview18bindings4wasi2io7streams5write10wit_import17hed07ba09fee3058dE
          br 1 (;@1;)
        end
        local.get 0
        call $_ZN22wasi_snapshot_preview16macros10eprint_u3215eprint_u32_impl17h9561d5c3257b931fE.llvm.7825809932192240016
      end
      local.get 1
      i32.const 32
      i32.add
      global.set $__stack_pointer
    )
    (func $_ZN22wasi_snapshot_preview16macros10eprint_u3215eprint_u32_impl17h9561d5c3257b931fE.llvm.7825809932192240016 (;41;) (type 0) (param i32)
      (local i32 i32)
      global.get $__stack_pointer
      i32.const 32
      i32.sub
      local.tee 1
      global.set $__stack_pointer
      block ;; label = @1
        local.get 0
        i32.eqz
        br_if 0 (;@1;)
        local.get 0
        i32.const 10
        i32.div_u
        local.tee 2
        call $_ZN22wasi_snapshot_preview16macros10eprint_u3215eprint_u32_impl17h9561d5c3257b931fE.llvm.7825809932192240016
        local.get 1
        local.get 0
        local.get 2
        i32.const 10
        i32.mul
        i32.sub
        i32.const 48
        i32.or
        i32.store8 offset=15
        call $get_stderr_stream
        local.get 1
        i32.const 15
        i32.add
        i32.const 1
        local.get 1
        i32.const 16
        i32.add
        call $_ZN22wasi_snapshot_preview18bindings4wasi2io7streams5write10wit_import17hed07ba09fee3058dE
      end
      local.get 1
      i32.const 32
      i32.add
      global.set $__stack_pointer
    )
    (func $get_state_ptr (;42;) (type 7) (result i32)
      global.get $internal_state_ptr
    )
    (func $set_state_ptr (;43;) (type 0) (param i32)
      local.get 0
      global.set $internal_state_ptr
    )
    (func $get_allocation_state (;44;) (type 7) (result i32)
      global.get $allocation_state
    )
    (func $set_allocation_state (;45;) (type 0) (param i32)
      local.get 0
      global.set $allocation_state
    )
    (func $get_stderr_stream (;46;) (type 7) (result i32)
      global.get $stderr_stream
    )
    (func $set_stderr_stream (;47;) (type 0) (param i32)
      local.get 0
      global.set $stderr_stream
    )
    (func $memcpy (;48;) (type 8) (param i32 i32 i32) (result i32)
      local.get 0
      local.get 1
      local.get 2
      call $_ZN17compiler_builtins3mem6memcpy17hcbb99ce7957f8f29E
    )
    (func $_ZN17compiler_builtins3mem6memcpy17hcbb99ce7957f8f29E (;49;) (type 8) (param i32 i32 i32) (result i32)
      (local i32 i32 i32 i32 i32 i32 i32 i32)
      block ;; label = @1
        block ;; label = @2
          local.get 2
          i32.const 15
          i32.gt_u
          br_if 0 (;@2;)
          local.get 0
          local.set 3
          br 1 (;@1;)
        end
        local.get 0
        i32.const 0
        local.get 0
        i32.sub
        i32.const 3
        i32.and
        local.tee 4
        i32.add
        local.set 5
        block ;; label = @2
          local.get 4
          i32.eqz
          br_if 0 (;@2;)
          local.get 0
          local.set 3
          local.get 1
          local.set 6
          loop ;; label = @3
            local.get 3
            local.get 6
            i32.load8_u
            i32.store8
            local.get 6
            i32.const 1
            i32.add
            local.set 6
            local.get 3
            i32.const 1
            i32.add
            local.tee 3
            local.get 5
            i32.lt_u
            br_if 0 (;@3;)
          end
        end
        local.get 5
        local.get 2
        local.get 4
        i32.sub
        local.tee 7
        i32.const -4
        i32.and
        local.tee 8
        i32.add
        local.set 3
        block ;; label = @2
          block ;; label = @3
            local.get 1
            local.get 4
            i32.add
            local.tee 9
            i32.const 3
            i32.and
            local.tee 6
            i32.eqz
            br_if 0 (;@3;)
            local.get 8
            i32.const 1
            i32.lt_s
            br_if 1 (;@2;)
            local.get 9
            i32.const -4
            i32.and
            local.tee 10
            i32.const 4
            i32.add
            local.set 1
            i32.const 0
            local.get 6
            i32.const 3
            i32.shl
            local.tee 2
            i32.sub
            i32.const 24
            i32.and
            local.set 4
            local.get 10
            i32.load
            local.set 6
            loop ;; label = @4
              local.get 5
              local.get 6
              local.get 2
              i32.shr_u
              local.get 1
              i32.load
              local.tee 6
              local.get 4
              i32.shl
              i32.or
              i32.store
              local.get 1
              i32.const 4
              i32.add
              local.set 1
              local.get 5
              i32.const 4
              i32.add
              local.tee 5
              local.get 3
              i32.lt_u
              br_if 0 (;@4;)
              br 2 (;@2;)
            end
          end
          local.get 8
          i32.const 1
          i32.lt_s
          br_if 0 (;@2;)
          local.get 9
          local.set 1
          loop ;; label = @3
            local.get 5
            local.get 1
            i32.load
            i32.store
            local.get 1
            i32.const 4
            i32.add
            local.set 1
            local.get 5
            i32.const 4
            i32.add
            local.tee 5
            local.get 3
            i32.lt_u
            br_if 0 (;@3;)
          end
        end
        local.get 7
        i32.const 3
        i32.and
        local.set 2
        local.get 9
        local.get 8
        i32.add
        local.set 1
      end
      block ;; label = @1
        local.get 2
        i32.eqz
        br_if 0 (;@1;)
        local.get 3
        local.get 2
        i32.add
        local.set 5
        loop ;; label = @2
          local.get 3
          local.get 1
          i32.load8_u
          i32.store8
          local.get 1
          i32.const 1
          i32.add
          local.set 1
          local.get 3
          i32.const 1
          i32.add
          local.tee 3
          local.get 5
          i32.lt_u
          br_if 0 (;@2;)
        end
      end
      local.get 0
    )
    (func $allocate_stack (;50;) (type 10)
      global.get $allocation_state
      i32.const 0
      i32.eq
      if ;; label = @1
        i32.const 1
        global.set $allocation_state
        i32.const 0
        i32.const 0
        i32.const 8
        i32.const 65536
        call $_ZN22wasi_snapshot_preview15State3new12cabi_realloc17h99915ad2474f6b34E
        i32.const 65536
        i32.add
        global.set $__stack_pointer
        i32.const 2
        global.set $allocation_state
      end
    )
    (global $__stack_pointer (;0;) (mut i32) i32.const 0)
    (global $internal_state_ptr (;1;) (mut i32) i32.const 0)
    (global $allocation_state (;2;) (mut i32) i32.const 0)
    (global $stderr_stream (;3;) (mut i32) i32.const 123)
    (export "cabi_import_realloc" (func $cabi_import_realloc))
    (export "cabi_export_realloc" (func $cabi_export_realloc))
    (export "fd_write" (func $fd_write))
    (export "proc_exit" (func $proc_exit))
    (export "environ_get" (func $environ_get))
    (export "environ_sizes_get" (func $environ_sizes_get))
    (@producers
      (language "Rust" "")
      (processed-by "rustc" "1.70.0 (90c541806 2023-05-31)")
    )
  )
  (core module (;2;)
    (type (;0;) (func (param i32)))
    (type (;1;) (func (param i32 i64 i32)))
    (type (;2;) (func (param i32 i32)))
    (type (;3;) (func (param i32 i32 i32 i32)))
    (type (;4;) (func (param i32 i32 i32 i32) (result i32)))
    (type (;5;) (func (param i32 i32) (result i32)))
    (type (;6;) (func (param i32)))
    (func $indirect-wasi:cli-base/preopens-get-directories (;0;) (type 0) (param i32)
      local.get 0
      i32.const 0
      call_indirect (type 0)
    )
    (func $indirect-wasi:filesystem/filesystem-write-via-stream (;1;) (type 1) (param i32 i64 i32)
      local.get 0
      local.get 1
      local.get 2
      i32.const 1
      call_indirect (type 1)
    )
    (func $indirect-wasi:filesystem/filesystem-append-via-stream (;2;) (type 2) (param i32 i32)
      local.get 0
      local.get 1
      i32.const 2
      call_indirect (type 2)
    )
    (func $indirect-wasi:filesystem/filesystem-get-type (;3;) (type 2) (param i32 i32)
      local.get 0
      local.get 1
      i32.const 3
      call_indirect (type 2)
    )
    (func $indirect-wasi:cli-base/environment-get-environment (;4;) (type 0) (param i32)
      local.get 0
      i32.const 4
      call_indirect (type 0)
    )
    (func $indirect-wasi:io/streams-write (;5;) (type 3) (param i32 i32 i32 i32)
      local.get 0
      local.get 1
      local.get 2
      local.get 3
      i32.const 5
      call_indirect (type 3)
    )
    (func $indirect-wasi:io/streams-blocking-write (;6;) (type 3) (param i32 i32 i32 i32)
      local.get 0
      local.get 1
      local.get 2
      local.get 3
      i32.const 6
      call_indirect (type 3)
    )
    (func $adapt-wasi_snapshot_preview1-fd_write (;7;) (type 4) (param i32 i32 i32 i32) (result i32)
      local.get 0
      local.get 1
      local.get 2
      local.get 3
      i32.const 7
      call_indirect (type 4)
    )
    (func $adapt-wasi_snapshot_preview1-environ_get (;8;) (type 5) (param i32 i32) (result i32)
      local.get 0
      local.get 1
      i32.const 8
      call_indirect (type 5)
    )
    (func $adapt-wasi_snapshot_preview1-environ_sizes_get (;9;) (type 5) (param i32 i32) (result i32)
      local.get 0
      local.get 1
      i32.const 9
      call_indirect (type 5)
    )
    (func $adapt-wasi_snapshot_preview1-proc_exit (;10;) (type 6) (param i32)
      local.get 0
      i32.const 10
      call_indirect (type 6)
    )
    (table (;0;) 11 11 funcref)
    (export "0" (func $indirect-wasi:cli-base/preopens-get-directories))
    (export "1" (func $indirect-wasi:filesystem/filesystem-write-via-stream))
    (export "2" (func $indirect-wasi:filesystem/filesystem-append-via-stream))
    (export "3" (func $indirect-wasi:filesystem/filesystem-get-type))
    (export "4" (func $indirect-wasi:cli-base/environment-get-environment))
    (export "5" (func $indirect-wasi:io/streams-write))
    (export "6" (func $indirect-wasi:io/streams-blocking-write))
    (export "7" (func $adapt-wasi_snapshot_preview1-fd_write))
    (export "8" (func $adapt-wasi_snapshot_preview1-environ_get))
    (export "9" (func $adapt-wasi_snapshot_preview1-environ_sizes_get))
    (export "10" (func $adapt-wasi_snapshot_preview1-proc_exit))
    (export "$imports" (table 0))
    (@producers
      (processed-by "wit-component" "0.11.0")
    )
  )
  (core module (;3;)
    (type (;0;) (func (param i32)))
    (type (;1;) (func (param i32 i64 i32)))
    (type (;2;) (func (param i32 i32)))
    (type (;3;) (func (param i32 i32 i32 i32)))
    (type (;4;) (func (param i32 i32 i32 i32) (result i32)))
    (type (;5;) (func (param i32 i32) (result i32)))
    (type (;6;) (func (param i32)))
    (import "" "0" (func (;0;) (type 0)))
    (import "" "1" (func (;1;) (type 1)))
    (import "" "2" (func (;2;) (type 2)))
    (import "" "3" (func (;3;) (type 2)))
    (import "" "4" (func (;4;) (type 0)))
    (import "" "5" (func (;5;) (type 3)))
    (import "" "6" (func (;6;) (type 3)))
    (import "" "7" (func (;7;) (type 4)))
    (import "" "8" (func (;8;) (type 5)))
    (import "" "9" (func (;9;) (type 5)))
    (import "" "10" (func (;10;) (type 6)))
    (import "" "$imports" (table (;0;) 11 11 funcref))
    (elem (;0;) (i32.const 0) func 0 1 2 3 4 5 6 7 8 9 10)
    (@producers
      (processed-by "wit-component" "0.11.0")
    )
  )
  (core instance (;0;) (instantiate 2))
  (alias core export 0 "7" (core func (;0;)))
  (alias core export 0 "8" (core func (;1;)))
  (alias core export 0 "9" (core func (;2;)))
  (alias core export 0 "10" (core func (;3;)))
  (core instance (;1;)
    (export "fd_write" (func 0))
    (export "environ_get" (func 1))
    (export "environ_sizes_get" (func 2))
    (export "proc_exit" (func 3))
  )
  (core instance (;2;) (instantiate 0
      (with "wasi_snapshot_preview1" (instance 1))
    )
  )
  (alias core export 2 "memory" (core memory (;0;)))
  (alias core export 2 "cabi_realloc" (core func (;4;)))
  (alias core export 2 "cabi_realloc" (core func (;5;)))
  (core instance (;3;)
    (export "cabi_realloc" (func 5))
  )
  (core instance (;4;)
    (export "memory" (memory 0))
  )
  (alias core export 0 "0" (core func (;6;)))
  (core instance (;5;)
    (export "get-directories" (func 6))
  )
  (alias core export 0 "1" (core func (;7;)))
  (alias core export 0 "2" (core func (;8;)))
  (alias core export 0 "3" (core func (;9;)))
  (alias export 1 "drop-descriptor" (func (;0;)))
  (core func (;10;) (canon lower (func 0)))
  (core instance (;6;)
    (export "write-via-stream" (func 7))
    (export "append-via-stream" (func 8))
    (export "get-type" (func 9))
    (export "drop-descriptor" (func 10))
  )
  (alias core export 0 "4" (core func (;11;)))
  (core instance (;7;)
    (export "get-environment" (func 11))
  )
  (alias export 7 "get-stderr" (func (;1;)))
  (core func (;12;) (canon lower (func 1)))
  (core instance (;8;)
    (export "get-stderr" (func 12))
  )
  (alias export 5 "get-stdin" (func (;2;)))
  (core func (;13;) (canon lower (func 2)))
  (core instance (;9;)
    (export "get-stdin" (func 13))
  )
  (alias export 6 "get-stdout" (func (;3;)))
  (core func (;14;) (canon lower (func 3)))
  (core instance (;10;)
    (export "get-stdout" (func 14))
  )
  (alias export 4 "exit" (func (;4;)))
  (core func (;15;) (canon lower (func 4)))
  (core instance (;11;)
    (export "exit" (func 15))
  )
  (alias core export 0 "5" (core func (;16;)))
  (alias core export 0 "6" (core func (;17;)))
  (alias export 0 "drop-input-stream" (func (;5;)))
  (core func (;18;) (canon lower (func 5)))
  (alias export 0 "drop-output-stream" (func (;6;)))
  (core func (;19;) (canon lower (func 6)))
  (core instance (;12;)
    (export "write" (func 16))
    (export "blocking-write" (func 17))
    (export "drop-input-stream" (func 18))
    (export "drop-output-stream" (func 19))
  )
  (core instance (;13;) (instantiate 1
      (with "__main_module__" (instance 3))
      (with "env" (instance 4))
      (with "wasi:cli-base/preopens" (instance 5))
      (with "wasi:filesystem/filesystem" (instance 6))
      (with "wasi:cli-base/environment" (instance 7))
      (with "wasi:cli-base/stderr" (instance 8))
      (with "wasi:cli-base/stdin" (instance 9))
      (with "wasi:cli-base/stdout" (instance 10))
      (with "wasi:cli-base/exit" (instance 11))
      (with "wasi:io/streams" (instance 12))
    )
  )
  (alias core export 13 "cabi_export_realloc" (core func (;20;)))
  (alias core export 13 "cabi_import_realloc" (core func (;21;)))
  (alias core export 0 "$imports" (core table (;0;)))
  (alias export 3 "get-directories" (func (;7;)))
  (core func (;22;) (canon lower (func 7) (memory 0) (realloc 21) string-encoding=utf8))
  (alias export 1 "write-via-stream" (func (;8;)))
  (core func (;23;) (canon lower (func 8) (memory 0)))
  (alias export 1 "append-via-stream" (func (;9;)))
  (core func (;24;) (canon lower (func 9) (memory 0)))
  (alias export 1 "get-type" (func (;10;)))
  (core func (;25;) (canon lower (func 10) (memory 0)))
  (alias export 2 "get-environment" (func (;11;)))
  (core func (;26;) (canon lower (func 11) (memory 0) (realloc 21) string-encoding=utf8))
  (alias export 0 "write" (func (;12;)))
  (core func (;27;) (canon lower (func 12) (memory 0)))
  (alias export 0 "blocking-write" (func (;13;)))
  (core func (;28;) (canon lower (func 13) (memory 0)))
  (alias core export 13 "fd_write" (core func (;29;)))
  (alias core export 13 "environ_get" (core func (;30;)))
  (alias core export 13 "environ_sizes_get" (core func (;31;)))
  (alias core export 13 "proc_exit" (core func (;32;)))
  (core instance (;14;)
    (export "$imports" (table 0))
    (export "0" (func 22))
    (export "1" (func 23))
    (export "2" (func 24))
    (export "3" (func 25))
    (export "4" (func 26))
    (export "5" (func 27))
    (export "6" (func 28))
    (export "7" (func 29))
    (export "8" (func 30))
    (export "9" (func 31))
    (export "10" (func 32))
  )
  (core instance (;15;) (instantiate 3
      (with "" (instance 14))
    )
  )
  (type (;13;) (func (result string)))
  (alias core export 2 "hello-world" (core func (;33;)))
  (alias core export 2 "cabi_post_hello-world" (core func (;34;)))
  (func (;14;) (type 13) (canon lift (core func 33) (memory 0) string-encoding=utf8 (post-return 34)))
  (@producers
    (processed-by "wit-component" "0.11.0")
    (processed-by "cargo-component" "0.1.0 (84ad1dc 2023-07-05 wasi:7f4d569)")
  )
  (export (;15;) "hello-world" (func 14))
)