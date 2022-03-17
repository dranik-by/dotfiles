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



#include <ATen/ops/_linalg_inv_out_helper_ops.h>

namespace at {


// aten::_linalg_inv_out_helper_(Tensor(a!) self, Tensor(b!) infos_lu, Tensor(c!) infos_getri) -> Tensor(a!)
TORCH_API inline at::Tensor & _linalg_inv_out_helper_(at::Tensor & self, at::Tensor & infos_lu, at::Tensor & infos_getri) {
    return at::_ops::_linalg_inv_out_helper_::call(self, infos_lu, infos_getri);
}

}