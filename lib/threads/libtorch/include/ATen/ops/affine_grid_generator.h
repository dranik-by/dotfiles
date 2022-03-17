#pragma once

// @generated by tools/codegen/gen.py from Function.h

#include <ATen/Context.h>
#include <ATen/DeviceGuard.h>
#include <ATen/TensorUtils.h>
#include <ATen/TracerMode.h>
#include <ATen/core/Generator.h>
#include <ATen/core/Reduction.h>
#include <ATen/core/Tensor.h>
#include <c10/core/Scalar.h>
#include <c10/core/Storage.h>
#include <c10/core/TensorOptions.h>
#include <c10/util/Deprecated.h>
#include <c10/util/Optional.h>



#include <ATen/ops/affine_grid_generator_ops.h>

namespace at {


// aten::affine_grid_generator(Tensor theta, int[] size, bool align_corners) -> Tensor
TORCH_API inline at::Tensor affine_grid_generator(const at::Tensor & theta, at::IntArrayRef size, bool align_corners) {
    return at::_ops::affine_grid_generator::call(theta, size, align_corners);
}

}