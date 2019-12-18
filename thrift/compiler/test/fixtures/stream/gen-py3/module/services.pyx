#
# Autogenerated by Thrift
#
# DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
#  @generated
#

cimport cython
from cpython.version cimport PY_VERSION_HEX
from libcpp.memory cimport shared_ptr, make_shared, unique_ptr, make_unique
from libcpp.string cimport string
from libcpp cimport bool as cbool
from cpython cimport bool as pbool
from libc.stdint cimport int8_t, int16_t, int32_t, int64_t
from libcpp.vector cimport vector
from libcpp.set cimport set as cset
from libcpp.map cimport map as cmap
from cython.operator cimport dereference as deref
from cpython.ref cimport PyObject
from thrift.py3.common import (
  InterfaceSpec as __InterfaceSpec,
  MethodSpec as __MethodSpec,
  ArgumentSpec as __ArgumentSpec,
)
from thrift.py3.exceptions cimport (
    cTApplicationException,
    ApplicationError as __ApplicationError,
    cTApplicationExceptionType__UNKNOWN)
from thrift.py3.server cimport ServiceInterface, RequestContext, Cpp2RequestContext
from thrift.py3.server import RequestContext, pass_context
from folly cimport (
  cFollyPromise,
  cFollyUnit,
  c_unit
)
from thrift.py3.types cimport move

if PY_VERSION_HEX >= 0x030702F0:  # 3.7.2 Final
    from thrift.py3.server cimport THRIFT_REQUEST_CONTEXT as __THRIFT_REQUEST_CONTEXT

cimport folly.futures
from folly.executor cimport get_executor
cimport folly.iobuf as __iobuf
import folly.iobuf as __iobuf
from folly.iobuf cimport move as move_iobuf

from thrift.py3.stream cimport cServerStream, cResponseAndServerStream
cimport module.types as _module_types
import module.types as _module_types

import asyncio
import functools
import sys
import traceback
import types as _py_types

from module.services_wrapper cimport cPubSubStreamingServiceInterface


cdef extern from "<utility>" namespace "std":
    cdef cFollyPromise[cResponseAndServerStream[int32_t,int32_t]] move_promise_cResponseAndServerStream__int32_t_int32_t "std::move"(
        cFollyPromise[cResponseAndServerStream[int32_t,int32_t]])
    cdef cFollyPromise[cServerStream[int32_t]] move_promise_cServerStream__int32_t "std::move"(
        cFollyPromise[cServerStream[int32_t]])

@cython.auto_pickle(False)
cdef class Promise_cResponseAndServerStream__int32_t_int32_t:
    cdef cFollyPromise[cResponseAndServerStream[int32_t,int32_t]] cPromise

    @staticmethod
    cdef create(cFollyPromise[cResponseAndServerStream[int32_t,int32_t]] cPromise):
        inst = <Promise_cResponseAndServerStream__int32_t_int32_t>Promise_cResponseAndServerStream__int32_t_int32_t.__new__(Promise_cResponseAndServerStream__int32_t_int32_t)
        inst.cPromise = move_promise_cResponseAndServerStream__int32_t_int32_t(cPromise)
        return inst

@cython.auto_pickle(False)
cdef class Promise_cServerStream__int32_t:
    cdef cFollyPromise[cServerStream[int32_t]] cPromise

    @staticmethod
    cdef create(cFollyPromise[cServerStream[int32_t]] cPromise):
        inst = <Promise_cServerStream__int32_t>Promise_cServerStream__int32_t.__new__(Promise_cServerStream__int32_t)
        inst.cPromise = move_promise_cServerStream__int32_t(cPromise)
        return inst

cdef object _PubSubStreamingService_annotations = _py_types.MappingProxyType({
})


@cython.auto_pickle(False)
cdef class PubSubStreamingServiceInterface(
    ServiceInterface
):
    annotations = _PubSubStreamingService_annotations

    def __cinit__(self):
        self._cpp_obj = cPubSubStreamingServiceInterface(
            <PyObject *> self,
            get_executor()
        )

    @staticmethod
    def pass_context_returnstream(fn):
        return pass_context(fn)

    async def returnstream(
            self,
            i32_from,
            i32_to):
        raise NotImplementedError("async def returnstream is not implemented")

    @staticmethod
    def pass_context_streamthrows(fn):
        return pass_context(fn)

    async def streamthrows(
            self,
            foo):
        raise NotImplementedError("async def streamthrows is not implemented")

    @staticmethod
    def pass_context_boththrows(fn):
        return pass_context(fn)

    async def boththrows(
            self,
            foo):
        raise NotImplementedError("async def boththrows is not implemented")

    @staticmethod
    def pass_context_responseandstreamthrows(fn):
        return pass_context(fn)

    async def responseandstreamthrows(
            self,
            foo):
        raise NotImplementedError("async def responseandstreamthrows is not implemented")

    @staticmethod
    def pass_context_streamleftthrows(fn):
        return pass_context(fn)

    async def streamleftthrows(
            self,
            foo):
        raise NotImplementedError("async def streamleftthrows is not implemented")

    @staticmethod
    def pass_context_bothleftthrows(fn):
        return pass_context(fn)

    async def bothleftthrows(
            self,
            foo):
        raise NotImplementedError("async def bothleftthrows is not implemented")

    @staticmethod
    def pass_context_responseandstreamleftthrows(fn):
        return pass_context(fn)

    async def responseandstreamleftthrows(
            self,
            foo):
        raise NotImplementedError("async def responseandstreamleftthrows is not implemented")

    @staticmethod
    def __get_reflection_for_returnstream():
        return __MethodSpec(
            name="returnstream",
            arguments=[
                __ArgumentSpec(
                    name="i32_from",
                    type=int,
                    annotations=_py_types.MappingProxyType({
                    }),
                ),
                __ArgumentSpec(
                    name="i32_to",
                    type=int,
                    annotations=_py_types.MappingProxyType({
                    }),
                ),
            ],
            result=_module_types.ServerStream__i32,
            exceptions=[
            ],
            annotations=_py_types.MappingProxyType({
            }),
        )

    @staticmethod
    def __get_reflection_for_streamthrows():
        return __MethodSpec(
            name="streamthrows",
            arguments=[
                __ArgumentSpec(
                    name="foo",
                    type=int,
                    annotations=_py_types.MappingProxyType({
                    }),
                ),
            ],
            result=_module_types.ServerStream__i32,
            exceptions=[
            ],
            annotations=_py_types.MappingProxyType({
            }),
        )

    @staticmethod
    def __get_reflection_for_boththrows():
        return __MethodSpec(
            name="boththrows",
            arguments=[
                __ArgumentSpec(
                    name="foo",
                    type=int,
                    annotations=_py_types.MappingProxyType({
                    }),
                ),
            ],
            result=_module_types.ServerStream__i32,
            exceptions=[
                _module_types.FooEx,
            ],
            annotations=_py_types.MappingProxyType({
            }),
        )

    @staticmethod
    def __get_reflection_for_responseandstreamthrows():
        return __MethodSpec(
            name="responseandstreamthrows",
            arguments=[
                __ArgumentSpec(
                    name="foo",
                    type=int,
                    annotations=_py_types.MappingProxyType({
                    }),
                ),
            ],
            result=_module_types.ResponseAndServerStream__i32_i32,
            exceptions=[
                _module_types.FooEx,
            ],
            annotations=_py_types.MappingProxyType({
            }),
        )

    @staticmethod
    def __get_reflection_for_streamleftthrows():
        return __MethodSpec(
            name="streamleftthrows",
            arguments=[
                __ArgumentSpec(
                    name="foo",
                    type=int,
                    annotations=_py_types.MappingProxyType({
                    }),
                ),
            ],
            result=_module_types.ServerStream__i32,
            exceptions=[
            ],
            annotations=_py_types.MappingProxyType({
            }),
        )

    @staticmethod
    def __get_reflection_for_bothleftthrows():
        return __MethodSpec(
            name="bothleftthrows",
            arguments=[
                __ArgumentSpec(
                    name="foo",
                    type=int,
                    annotations=_py_types.MappingProxyType({
                    }),
                ),
            ],
            result=_module_types.ServerStream__i32,
            exceptions=[
                _module_types.FooEx,
            ],
            annotations=_py_types.MappingProxyType({
            }),
        )

    @staticmethod
    def __get_reflection_for_responseandstreamleftthrows():
        return __MethodSpec(
            name="responseandstreamleftthrows",
            arguments=[
                __ArgumentSpec(
                    name="foo",
                    type=int,
                    annotations=_py_types.MappingProxyType({
                    }),
                ),
            ],
            result=_module_types.ResponseAndServerStream__i32_i32,
            exceptions=[
                _module_types.FooEx,
            ],
            annotations=_py_types.MappingProxyType({
            }),
        )

    @classmethod
    def __get_reflection__(cls):
        return __InterfaceSpec(
            name="PubSubStreamingService",
            methods=[
                cls.__get_reflection_for_returnstream(),
                cls.__get_reflection_for_streamthrows(),
                cls.__get_reflection_for_boththrows(),
                cls.__get_reflection_for_responseandstreamthrows(),
                cls.__get_reflection_for_streamleftthrows(),
                cls.__get_reflection_for_bothleftthrows(),
                cls.__get_reflection_for_responseandstreamleftthrows(),
            ],
            annotations=_py_types.MappingProxyType({
            }),
        )



cdef api void call_cy_PubSubStreamingService_returnstream(
    object self,
    Cpp2RequestContext* ctx,
    cFollyPromise[cServerStream[int32_t]] cPromise,
    int32_t i32_from,
    int32_t i32_to
):
    cdef PubSubStreamingServiceInterface __iface
    __iface = self
    __promise = Promise_cServerStream__int32_t.create(move_promise_cServerStream__int32_t(cPromise))
    arg_i32_from = i32_from
    arg_i32_to = i32_to
    __context_obj = RequestContext.create(ctx)
    __context = None
    if __iface._pass_context_returnstream:
        __context = __context_obj
    if PY_VERSION_HEX >= 0x030702F0:  # 3.7.2 Final
        __context_token = __THRIFT_REQUEST_CONTEXT.set(__context_obj)
    asyncio.get_event_loop().create_task(
        PubSubStreamingService_returnstream_coro(
            self,
            __context,
            __promise,
            arg_i32_from,
            arg_i32_to
        )
    )
    if PY_VERSION_HEX >= 0x030702F0:  # 3.7.2 Final
        __THRIFT_REQUEST_CONTEXT.reset(__context_token)

async def PubSubStreamingService_returnstream_coro(
    object self,
    object ctx,
    Promise_cServerStream__int32_t promise,
    i32_from,
    i32_to
):
    try:
        if ctx is not None:
            result = await self.returnstream(ctx,
                      i32_from,
                      i32_to)
        else:
            result = await self.returnstream(
                      i32_from,
                      i32_to)
    except __ApplicationError as ex:
        # If the handler raised an ApplicationError convert it to a C++ one
        promise.cPromise.setException(cTApplicationException(
            ex.type.value, ex.message.encode('UTF-8')
        ))
    except Exception as ex:
        print(
            "Unexpected error in service handler returnstream:",
            file=sys.stderr)
        traceback.print_exc()
        promise.cPromise.setException(cTApplicationException(
            cTApplicationExceptionType__UNKNOWN, repr(ex).encode('UTF-8')
        ))
    else:
        promise.cPromise.setValue(cServerStream[int32_t]() # server streaming support is not implemented yet
)

cdef api void call_cy_PubSubStreamingService_streamthrows(
    object self,
    Cpp2RequestContext* ctx,
    cFollyPromise[cServerStream[int32_t]] cPromise,
    int32_t foo
):
    cdef PubSubStreamingServiceInterface __iface
    __iface = self
    __promise = Promise_cServerStream__int32_t.create(move_promise_cServerStream__int32_t(cPromise))
    arg_foo = foo
    __context_obj = RequestContext.create(ctx)
    __context = None
    if __iface._pass_context_streamthrows:
        __context = __context_obj
    if PY_VERSION_HEX >= 0x030702F0:  # 3.7.2 Final
        __context_token = __THRIFT_REQUEST_CONTEXT.set(__context_obj)
    asyncio.get_event_loop().create_task(
        PubSubStreamingService_streamthrows_coro(
            self,
            __context,
            __promise,
            arg_foo
        )
    )
    if PY_VERSION_HEX >= 0x030702F0:  # 3.7.2 Final
        __THRIFT_REQUEST_CONTEXT.reset(__context_token)

async def PubSubStreamingService_streamthrows_coro(
    object self,
    object ctx,
    Promise_cServerStream__int32_t promise,
    foo
):
    try:
        if ctx is not None:
            result = await self.streamthrows(ctx,
                      foo)
        else:
            result = await self.streamthrows(
                      foo)
    except __ApplicationError as ex:
        # If the handler raised an ApplicationError convert it to a C++ one
        promise.cPromise.setException(cTApplicationException(
            ex.type.value, ex.message.encode('UTF-8')
        ))
    except Exception as ex:
        print(
            "Unexpected error in service handler streamthrows:",
            file=sys.stderr)
        traceback.print_exc()
        promise.cPromise.setException(cTApplicationException(
            cTApplicationExceptionType__UNKNOWN, repr(ex).encode('UTF-8')
        ))
    else:
        promise.cPromise.setValue(cServerStream[int32_t]() # server streaming support is not implemented yet
)

cdef api void call_cy_PubSubStreamingService_boththrows(
    object self,
    Cpp2RequestContext* ctx,
    cFollyPromise[cServerStream[int32_t]] cPromise,
    int32_t foo
):
    cdef PubSubStreamingServiceInterface __iface
    __iface = self
    __promise = Promise_cServerStream__int32_t.create(move_promise_cServerStream__int32_t(cPromise))
    arg_foo = foo
    __context_obj = RequestContext.create(ctx)
    __context = None
    if __iface._pass_context_boththrows:
        __context = __context_obj
    if PY_VERSION_HEX >= 0x030702F0:  # 3.7.2 Final
        __context_token = __THRIFT_REQUEST_CONTEXT.set(__context_obj)
    asyncio.get_event_loop().create_task(
        PubSubStreamingService_boththrows_coro(
            self,
            __context,
            __promise,
            arg_foo
        )
    )
    if PY_VERSION_HEX >= 0x030702F0:  # 3.7.2 Final
        __THRIFT_REQUEST_CONTEXT.reset(__context_token)

async def PubSubStreamingService_boththrows_coro(
    object self,
    object ctx,
    Promise_cServerStream__int32_t promise,
    foo
):
    try:
        if ctx is not None:
            result = await self.boththrows(ctx,
                      foo)
        else:
            result = await self.boththrows(
                      foo)
    except _module_types.FooEx as ex:
        promise.cPromise.setException(deref((<_module_types.FooEx> ex)._cpp_obj))
    except __ApplicationError as ex:
        # If the handler raised an ApplicationError convert it to a C++ one
        promise.cPromise.setException(cTApplicationException(
            ex.type.value, ex.message.encode('UTF-8')
        ))
    except Exception as ex:
        print(
            "Unexpected error in service handler boththrows:",
            file=sys.stderr)
        traceback.print_exc()
        promise.cPromise.setException(cTApplicationException(
            cTApplicationExceptionType__UNKNOWN, repr(ex).encode('UTF-8')
        ))
    else:
        promise.cPromise.setValue(cServerStream[int32_t]() # server streaming support is not implemented yet
)

cdef api void call_cy_PubSubStreamingService_responseandstreamthrows(
    object self,
    Cpp2RequestContext* ctx,
    cFollyPromise[cResponseAndServerStream[int32_t,int32_t]] cPromise,
    int32_t foo
):
    cdef PubSubStreamingServiceInterface __iface
    __iface = self
    __promise = Promise_cResponseAndServerStream__int32_t_int32_t.create(move_promise_cResponseAndServerStream__int32_t_int32_t(cPromise))
    arg_foo = foo
    __context_obj = RequestContext.create(ctx)
    __context = None
    if __iface._pass_context_responseandstreamthrows:
        __context = __context_obj
    if PY_VERSION_HEX >= 0x030702F0:  # 3.7.2 Final
        __context_token = __THRIFT_REQUEST_CONTEXT.set(__context_obj)
    asyncio.get_event_loop().create_task(
        PubSubStreamingService_responseandstreamthrows_coro(
            self,
            __context,
            __promise,
            arg_foo
        )
    )
    if PY_VERSION_HEX >= 0x030702F0:  # 3.7.2 Final
        __THRIFT_REQUEST_CONTEXT.reset(__context_token)

async def PubSubStreamingService_responseandstreamthrows_coro(
    object self,
    object ctx,
    Promise_cResponseAndServerStream__int32_t_int32_t promise,
    foo
):
    try:
        if ctx is not None:
            result = await self.responseandstreamthrows(ctx,
                      foo)
        else:
            result = await self.responseandstreamthrows(
                      foo)
    except _module_types.FooEx as ex:
        promise.cPromise.setException(deref((<_module_types.FooEx> ex)._cpp_obj))
    except __ApplicationError as ex:
        # If the handler raised an ApplicationError convert it to a C++ one
        promise.cPromise.setException(cTApplicationException(
            ex.type.value, ex.message.encode('UTF-8')
        ))
    except Exception as ex:
        print(
            "Unexpected error in service handler responseandstreamthrows:",
            file=sys.stderr)
        traceback.print_exc()
        promise.cPromise.setException(cTApplicationException(
            cTApplicationExceptionType__UNKNOWN, repr(ex).encode('UTF-8')
        ))
    else:
        promise.cPromise.setValue(cResponseAndServerStream[int32_t,int32_t]() # server streaming support is not implemented yet
)

cdef api void call_cy_PubSubStreamingService_streamleftthrows(
    object self,
    Cpp2RequestContext* ctx,
    cFollyPromise[cServerStream[int32_t]] cPromise,
    int32_t foo
):
    cdef PubSubStreamingServiceInterface __iface
    __iface = self
    __promise = Promise_cServerStream__int32_t.create(move_promise_cServerStream__int32_t(cPromise))
    arg_foo = foo
    __context_obj = RequestContext.create(ctx)
    __context = None
    if __iface._pass_context_streamleftthrows:
        __context = __context_obj
    if PY_VERSION_HEX >= 0x030702F0:  # 3.7.2 Final
        __context_token = __THRIFT_REQUEST_CONTEXT.set(__context_obj)
    asyncio.get_event_loop().create_task(
        PubSubStreamingService_streamleftthrows_coro(
            self,
            __context,
            __promise,
            arg_foo
        )
    )
    if PY_VERSION_HEX >= 0x030702F0:  # 3.7.2 Final
        __THRIFT_REQUEST_CONTEXT.reset(__context_token)

async def PubSubStreamingService_streamleftthrows_coro(
    object self,
    object ctx,
    Promise_cServerStream__int32_t promise,
    foo
):
    try:
        if ctx is not None:
            result = await self.streamleftthrows(ctx,
                      foo)
        else:
            result = await self.streamleftthrows(
                      foo)
    except __ApplicationError as ex:
        # If the handler raised an ApplicationError convert it to a C++ one
        promise.cPromise.setException(cTApplicationException(
            ex.type.value, ex.message.encode('UTF-8')
        ))
    except Exception as ex:
        print(
            "Unexpected error in service handler streamleftthrows:",
            file=sys.stderr)
        traceback.print_exc()
        promise.cPromise.setException(cTApplicationException(
            cTApplicationExceptionType__UNKNOWN, repr(ex).encode('UTF-8')
        ))
    else:
        promise.cPromise.setValue(cServerStream[int32_t]() # server streaming support is not implemented yet
)

cdef api void call_cy_PubSubStreamingService_bothleftthrows(
    object self,
    Cpp2RequestContext* ctx,
    cFollyPromise[cServerStream[int32_t]] cPromise,
    int32_t foo
):
    cdef PubSubStreamingServiceInterface __iface
    __iface = self
    __promise = Promise_cServerStream__int32_t.create(move_promise_cServerStream__int32_t(cPromise))
    arg_foo = foo
    __context_obj = RequestContext.create(ctx)
    __context = None
    if __iface._pass_context_bothleftthrows:
        __context = __context_obj
    if PY_VERSION_HEX >= 0x030702F0:  # 3.7.2 Final
        __context_token = __THRIFT_REQUEST_CONTEXT.set(__context_obj)
    asyncio.get_event_loop().create_task(
        PubSubStreamingService_bothleftthrows_coro(
            self,
            __context,
            __promise,
            arg_foo
        )
    )
    if PY_VERSION_HEX >= 0x030702F0:  # 3.7.2 Final
        __THRIFT_REQUEST_CONTEXT.reset(__context_token)

async def PubSubStreamingService_bothleftthrows_coro(
    object self,
    object ctx,
    Promise_cServerStream__int32_t promise,
    foo
):
    try:
        if ctx is not None:
            result = await self.bothleftthrows(ctx,
                      foo)
        else:
            result = await self.bothleftthrows(
                      foo)
    except _module_types.FooEx as ex:
        promise.cPromise.setException(deref((<_module_types.FooEx> ex)._cpp_obj))
    except __ApplicationError as ex:
        # If the handler raised an ApplicationError convert it to a C++ one
        promise.cPromise.setException(cTApplicationException(
            ex.type.value, ex.message.encode('UTF-8')
        ))
    except Exception as ex:
        print(
            "Unexpected error in service handler bothleftthrows:",
            file=sys.stderr)
        traceback.print_exc()
        promise.cPromise.setException(cTApplicationException(
            cTApplicationExceptionType__UNKNOWN, repr(ex).encode('UTF-8')
        ))
    else:
        promise.cPromise.setValue(cServerStream[int32_t]() # server streaming support is not implemented yet
)

cdef api void call_cy_PubSubStreamingService_responseandstreamleftthrows(
    object self,
    Cpp2RequestContext* ctx,
    cFollyPromise[cResponseAndServerStream[int32_t,int32_t]] cPromise,
    int32_t foo
):
    cdef PubSubStreamingServiceInterface __iface
    __iface = self
    __promise = Promise_cResponseAndServerStream__int32_t_int32_t.create(move_promise_cResponseAndServerStream__int32_t_int32_t(cPromise))
    arg_foo = foo
    __context_obj = RequestContext.create(ctx)
    __context = None
    if __iface._pass_context_responseandstreamleftthrows:
        __context = __context_obj
    if PY_VERSION_HEX >= 0x030702F0:  # 3.7.2 Final
        __context_token = __THRIFT_REQUEST_CONTEXT.set(__context_obj)
    asyncio.get_event_loop().create_task(
        PubSubStreamingService_responseandstreamleftthrows_coro(
            self,
            __context,
            __promise,
            arg_foo
        )
    )
    if PY_VERSION_HEX >= 0x030702F0:  # 3.7.2 Final
        __THRIFT_REQUEST_CONTEXT.reset(__context_token)

async def PubSubStreamingService_responseandstreamleftthrows_coro(
    object self,
    object ctx,
    Promise_cResponseAndServerStream__int32_t_int32_t promise,
    foo
):
    try:
        if ctx is not None:
            result = await self.responseandstreamleftthrows(ctx,
                      foo)
        else:
            result = await self.responseandstreamleftthrows(
                      foo)
    except _module_types.FooEx as ex:
        promise.cPromise.setException(deref((<_module_types.FooEx> ex)._cpp_obj))
    except __ApplicationError as ex:
        # If the handler raised an ApplicationError convert it to a C++ one
        promise.cPromise.setException(cTApplicationException(
            ex.type.value, ex.message.encode('UTF-8')
        ))
    except Exception as ex:
        print(
            "Unexpected error in service handler responseandstreamleftthrows:",
            file=sys.stderr)
        traceback.print_exc()
        promise.cPromise.setException(cTApplicationException(
            cTApplicationExceptionType__UNKNOWN, repr(ex).encode('UTF-8')
        ))
    else:
        promise.cPromise.setValue(cResponseAndServerStream[int32_t,int32_t]() # server streaming support is not implemented yet
)

