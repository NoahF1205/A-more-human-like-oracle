# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from kortex_driver/OptionInformation.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class OptionInformation(genpy.Message):
  _md5sum = "4a9212bde4d95812b702827b151ff2e7"
  _type = "kortex_driver/OptionInformation"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """
uint32 sensor
uint32 option
bool supported
bool read_only
float32 minimum
float32 maximum
float32 step
float32 default_value"""
  __slots__ = ['sensor','option','supported','read_only','minimum','maximum','step','default_value']
  _slot_types = ['uint32','uint32','bool','bool','float32','float32','float32','float32']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       sensor,option,supported,read_only,minimum,maximum,step,default_value

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(OptionInformation, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.sensor is None:
        self.sensor = 0
      if self.option is None:
        self.option = 0
      if self.supported is None:
        self.supported = False
      if self.read_only is None:
        self.read_only = False
      if self.minimum is None:
        self.minimum = 0.
      if self.maximum is None:
        self.maximum = 0.
      if self.step is None:
        self.step = 0.
      if self.default_value is None:
        self.default_value = 0.
    else:
      self.sensor = 0
      self.option = 0
      self.supported = False
      self.read_only = False
      self.minimum = 0.
      self.maximum = 0.
      self.step = 0.
      self.default_value = 0.

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self
      buff.write(_get_struct_2I2B4f().pack(_x.sensor, _x.option, _x.supported, _x.read_only, _x.minimum, _x.maximum, _x.step, _x.default_value))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      end = 0
      _x = self
      start = end
      end += 26
      (_x.sensor, _x.option, _x.supported, _x.read_only, _x.minimum, _x.maximum, _x.step, _x.default_value,) = _get_struct_2I2B4f().unpack(str[start:end])
      self.supported = bool(self.supported)
      self.read_only = bool(self.read_only)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_get_struct_2I2B4f().pack(_x.sensor, _x.option, _x.supported, _x.read_only, _x.minimum, _x.maximum, _x.step, _x.default_value))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      end = 0
      _x = self
      start = end
      end += 26
      (_x.sensor, _x.option, _x.supported, _x.read_only, _x.minimum, _x.maximum, _x.step, _x.default_value,) = _get_struct_2I2B4f().unpack(str[start:end])
      self.supported = bool(self.supported)
      self.read_only = bool(self.read_only)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_2I2B4f = None
def _get_struct_2I2B4f():
    global _struct_2I2B4f
    if _struct_2I2B4f is None:
        _struct_2I2B4f = struct.Struct("<2I2B4f")
    return _struct_2I2B4f
