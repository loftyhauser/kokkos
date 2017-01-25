#!/bin/bash

echo "Rename Kokkos macros"

# ACTIVE
git grep -El "KOKKOS_[A-Za-z0-9_]*" -- '*.cpp' '*.hpp' ':(exclude)*/Kokkos_OldMacros.hpp'  | while read file; do
  #  
  echo $file
  #
  sed -i "s/KOKKOS_ATOMICS_USE_CUDA/KOKKOS_ENABLE_CUDA_ATOMICS/g" $file
  sed -i "s/KOKKOS_ATOMICS_USE_GCC/KOKKOS_ENABLE_GNU_ATOMICS/g" $file
  sed -i "s/KOKKOS_ATOMICS_USE_GNU/KOKKOS_ENABLE_GNU_ATOMICS/g" $file
  sed -i "s/KOKKOS_ATOMICS_USE_INTEL/KOKKOS_ENABLE_INTEL_ATOMICS/g" $file
  sed -i "s/KOKKOS_ATOMICS_USE_OMP31/KOKKOS_ENABLE_OPENMP_ATOMICS/g" $file
  sed -i "s/KOKKOS_ATOMICS_USE_OPENMP31/KOKKOS_ENABLE_OPENMP_ATOMICS/g" $file
  sed -i "s/KOKKOS_ATOMICS_USE_WINDOWS/KOKKOS_ENABLE_WINDOWS_ATOMICS/g" $file
  sed -i "s/KOKKOS_CUDA_CLANG_WORKAROUND/KOKKOS_IMPL_CUDA_CLANG_WORKAROUND/g" $file
  sed -i "s/KOKKOS_CUDA_USE_LAMBDA/KOKKOS_ENABLE_CUDA_LAMBDA/g" $file
  sed -i "s/KOKKOS_CUDA_USE_LDG_INTRINSIC/KOKKOS_ENABLE_CUDA_LDG_INTRINSIC/g" $file
  sed -i "s/KOKKOS_CUDA_USE_RELOCATABLE_DEVICE_CODE/KOKKOS_ENABLE_CUDA_RELOCATABLE_DEVICE_CODE/g" $file
  sed -i "s/KOKKOS_CUDA_USE_UVM/KOKKOS_ENABLE_CUDA_UVM/g" $file
  sed -i "s/KOKKOS_HAVE_CUDA/KOKKOS_ENABLE_CUDA/g" $file
  sed -i "s/KOKKOS_HAVE_CUDA_LAMBDA/KOKKOS_ENABLE_CUDA_LAMBDA/g" $file
  sed -i "s/KOKKOS_HAVE_CUDA_RDC/KOKKOS_ENABLE_CUDA_RDC/g" $file
  sed -i "s/KOKKOS_HAVE_CUSPARSE/KOKKOS_ENABLE_CUSPARSE/g" $file
  sed -i "s/KOKKOS_HAVE_CXX11/KOKKOS_ENABLE_CXX11/g" $file
  sed -i "s/KOKKOS_HAVE_CXX11_DISPATCH_LAMBDA/KOKKOS_ENABLE_CXX11_DISPATCH_LAMBDA/g" $file
  sed -i "s/KOKKOS_HAVE_CXX1Z/KOKKOS_ENABLE_CXX1Z/g" $file
  sed -i "s/KOKKOS_HAVE_DEBUG/KOKKOS_DEBUG/g" $file
  sed -i "s/KOKKOS_HAVE_DEFAULT_DEVICE_TYPE_CUDA/KOKKOS_ENABLE_DEFAULT_DEVICE_TYPE_CUDA/g" $file
  sed -i "s/KOKKOS_HAVE_DEFAULT_DEVICE_TYPE_OPENMP/KOKKOS_ENABLE_DEFAULT_DEVICE_TYPE_OPENMP/g" $file
  sed -i "s/KOKKOS_HAVE_DEFAULT_DEVICE_TYPE_SERIAL/KOKKOS_ENABLE_DEFAULT_DEVICE_TYPE_SERIAL/g" $file
  sed -i "s/KOKKOS_HAVE_DEFAULT_DEVICE_TYPE_THREADS/KOKKOS_ENABLE_DEFAULT_DEVICE_TYPE_THREADS/g" $file
  sed -i "s/KOKKOS_HAVE_HBWSPACE/KOKKOS_ENABLE_HBWSPACE/g" $file
  sed -i "s/KOKKOS_HAVE_HWLOC/KOKKOS_ENABLE_HWLOC/g" $file
  sed -i "s/KOKKOS_HAVE_MPI/KOKKOS_ENABLE_MPI/g" $file
  sed -i "s/KOKKOS_HAVE_OPENMP/KOKKOS_ENABLE_OPENMP/g" $file
  sed -i "s/KOKKOS_HAVE_PRAGMA_IVDEP/KOKKOS_ENABLE_PRAGMA_IVDEP/g" $file
  sed -i "s/KOKKOS_HAVE_PRAGMA_LOOPCOUNT/KOKKOS_ENABLE_PRAGMA_LOOPCOUNT/g" $file
  sed -i "s/KOKKOS_HAVE_PRAGMA_SIMD/KOKKOS_ENABLE_PRAGMA_SIMD/g" $file
  sed -i "s/KOKKOS_HAVE_PRAGMA_UNROLL/KOKKOS_ENABLE_PRAGMA_UNROLL/g" $file
  sed -i "s/KOKKOS_HAVE_PRAGMA_VECTOR/KOKKOS_ENABLE_PRAGMA_VECTOR/g" $file
  sed -i "s/KOKKOS_HAVE_PTHREAD/KOKKOS_ENABLE_PTHREAD/g" $file
  sed -i "s/KOKKOS_HAVE_QTHREAD/KOKKOS_ENABLE_QTHREAD/g" $file
  sed -i "s/KOKKOS_HAVE_SERIAL/KOKKOS_ENABLE_SERIAL/g" $file
  sed -i "s/KOKKOS_HAVE_TYPE/KOKKOS_IMPL_HAS_TYPE/g" $file
  sed -i "s/KOKKOS_HAVE_WINTHREAD/KOKKOS_ENABLE_WINTHREAD/g" $file
  sed -i "s/KOKKOS_HAVE_Winthread/KOKKOS_ENABLE_WINTHREAD/g" $file
  sed -i "s/KOKKOS_INTEL_MM_ALLOC_AVAILABLE/KOKKOS_ENABLE_INTEL_MM_ALLOC/g" $file
  sed -i "s/KOKKOS_MACRO_IMPL_TO_STRING/KOKKOS_IMPL_MACRO_TO_STRING/g" $file
  sed -i "s/KOKKOS_MACRO_TO_STRING/KOKKOS_MACRO_TO_STRING/g" $file
  sed -i "s/KOKKOS_MAY_ALIAS/KOKKOS_IMPL_MAY_ALIAS/g" $file
  sed -i "s/KOKKOS_MDRANGE_IVDEP/KOKKOS_IMPL_MDRANGE_IVDEP/g" $file
  sed -i "s/KOKKOS_MEMPOOL_PRINTERR/KOKKOS_ENABLE_MEMPOOL_PRINTERR/g" $file
  sed -i "s/KOKKOS_MEMPOOL_PRINT_ACTIVE_SUPERBLOCKS/KOKKOS_ENABLE_MEMPOOL_PRINT_ACTIVE_SUPERBLOCKS/g" $file
  sed -i "s/KOKKOS_MEMPOOL_PRINT_BLOCKSIZE_INFO/KOKKOS_ENABLE_MEMPOOL_PRINT_BLOCKSIZE_INFO/g" $file
  sed -i "s/KOKKOS_MEMPOOL_PRINT_CONSTRUCTOR_INFO/KOKKOS_ENABLE_MEMPOOL_PRINT_CONSTRUCTOR_INFO/g" $file
  sed -i "s/KOKKOS_MEMPOOL_PRINT_INDIVIDUAL_PAGE_INFO/KOKKOS_ENABLE_MEMPOOL_PRINT_INDIVIDUAL_PAGE_INFO/g" $file
  sed -i "s/KOKKOS_MEMPOOL_PRINT_INFO/KOKKOS_ENABLE_MEMPOOL_PRINT_INFO/g" $file
  sed -i "s/KOKKOS_MEMPOOL_PRINT_PAGE_INFO/KOKKOS_ENABLE_MEMPOOL_PRINT_PAGE_INFO/g" $file
  sed -i "s/KOKKOS_MEMPOOL_PRINT_SUPERBLOCK_INFO/KOKKOS_ENABLE_MEMPOOL_PRINT_SUPERBLOCK_INFO/g" $file
  sed -i "s/KOKKOS_POSIX_MEMALIGN_AVAILABLE/KOKKOS_ENABLE_POSIX_MEMALIGN/g" $file
  sed -i "s/KOKKOS_POSIX_MMAP_FLAGS/KOKKOS_IMPL_POSIX_MMAP_FLAGS/g" $file
  sed -i "s/KOKKOS_POSIX_MMAP_FLAGS_HUGE/KOKKOS_IMPL_POSIX_MMAP_FLAGS_HUGE/g" $file
  sed -i "s/KOKKOS_SHARED_ALLOCATION_TRACKER_DECREMENT/KOKKOS_IMPL_SHARED_ALLOCATION_TRACKER_DECREMENT/g" $file
  sed -i "s/KOKKOS_SHARED_ALLOCATION_TRACKER_ENABLED/KOKKOS_IMPL_SHARED_ALLOCATION_TRACKER_ENABLED/g" $file
  sed -i "s/KOKKOS_SHARED_ALLOCATION_TRACKER_INCREMENT/KOKKOS_IMPL_SHARED_ALLOCATION_TRACKER_INCREMENT/g" $file
  sed -i "s/KOKKOS_USE_CUDA_UVM/KOKKOS_ENABLE_CUDA_UVM/g" $file
  sed -i "s/KOKKOS_USE_ISA_KNC/KOKKOS_ENABLE_ISA_KNC/g" $file
  sed -i "s/KOKKOS_USE_ISA_POWERPCLE/KOKKOS_ENABLE_ISA_POWERPCLE/g" $file
  sed -i "s/KOKKOS_USE_ISA_X86_64/KOKKOS_ENABLE_ISA_X86_64/g" $file
  sed -i "s/KOKKOS_USE_LIBRT/KOKKOS_ENABLE_LIBRT/g" $file
  sed -i "s/KOKKOS_VIEW_OPERATOR_VERIFY/KOKKOS_IMPL_VIEW_OPERATOR_VERIFY/g" $file
done