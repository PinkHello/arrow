# Licensed to the Apache Software Foundation (ASF) under one
# or more contributor license agreements.  See the NOTICE file
# distributed with this work for additional information
# regarding copyright ownership.  The ASF licenses this file
# to you under the Apache License, Version 2.0 (the
# "License"); you may not use this file except in compliance
# with the License.  You may obtain a copy of the License at
#
#   http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing,
# software distributed under the License is distributed on an
# "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
# KIND, either express or implied.  See the License for the
# specific language governing permissions and limitations
# under the License.

#' @include type.R

ListType <- R6Class("ListType",
  inherit = NestedType,
  active = list(
    value_field = function() ListType__value_field(self),
    value_type = function() ListType__value_type(self)
  )
)

#' @rdname data-type
#' @export
list_of <- function(type) list__(type)

LargeListType <- R6Class("LargeListType",
  inherit = NestedType,
  active = list(
    value_field = function() LargeListType__value_field(self),
    value_type = function() LargeListType__value_type(self)
  )
)

#' @rdname data-type
#' @export
large_list_of <- function(type) large_list__(type)

#' @rdname data-type
#' @export
FixedSizeListType <- R6Class("FixedSizeListType",
  inherit = NestedType,
  active = list(
    value_field = function() FixedSizeListType__value_field(self),
    value_type = function() FixedSizeListType__value_type(self),
    list_size = function() FixedSizeListType__list_size(self)
  )
)

#' @rdname data-type
#' @export
fixed_size_list_of <- function(type, list_size) fixed_size_list__(type, list_size)
