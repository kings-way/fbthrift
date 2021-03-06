/**
 * Autogenerated by Thrift
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */
import java.util.List;
import java.util.ArrayList;
import java.util.Map;
import java.util.HashMap;
import java.util.Set;
import java.util.HashSet;
import java.util.Collections;
import java.util.BitSet;
import java.util.Arrays;
import com.facebook.thrift.*;
import com.facebook.thrift.annotations.*;
import com.facebook.thrift.async.*;
import com.facebook.thrift.meta_data.*;
import com.facebook.thrift.server.*;
import com.facebook.thrift.transport.*;
import com.facebook.thrift.protocol.*;

@SuppressWarnings({ "unused", "serial", "unchecked" })
public class ComplexUnion extends TUnion<ComplexUnion> implements Comparable<ComplexUnion> {
  private static final TStruct STRUCT_DESC = new TStruct("ComplexUnion");
  private static final TField INT_VALUE_FIELD_DESC = new TField("intValue", TType.I64, (short)1);
  private static final TField STRING_VALUE_FIELD_DESC = new TField("stringValue", TType.STRING, (short)5);
  private static final TField INT_LIST_VALUE_FIELD_DESC = new TField("intListValue", TType.LIST, (short)2);
  private static final TField STRING_LIST_VALUE_FIELD_DESC = new TField("stringListValue", TType.LIST, (short)3);
  private static final TField TYPEDEF_VALUE_FIELD_DESC = new TField("typedefValue", TType.MAP, (short)9);
  private static final TField STRING_REF_FIELD_DESC = new TField("stringRef", TType.STRING, (short)14);

  public static final int INTVALUE = 1;
  public static final int STRINGVALUE = 5;
  public static final int INTLISTVALUE = 2;
  public static final int STRINGLISTVALUE = 3;
  public static final int TYPEDEFVALUE = 9;
  public static final int STRINGREF = 14;

  public static final Map<Integer, FieldMetaData> metaDataMap;

  static {
    Map<Integer, FieldMetaData> tmpMetaDataMap = new HashMap<Integer, FieldMetaData>();
    tmpMetaDataMap.put(INTVALUE, new FieldMetaData("intValue", TFieldRequirementType.DEFAULT, 
        new FieldValueMetaData(TType.I64)));
    tmpMetaDataMap.put(STRINGVALUE, new FieldMetaData("stringValue", TFieldRequirementType.DEFAULT, 
        new FieldValueMetaData(TType.STRING)));
    tmpMetaDataMap.put(INTLISTVALUE, new FieldMetaData("intListValue", TFieldRequirementType.DEFAULT, 
        new ListMetaData(TType.LIST, 
            new FieldValueMetaData(TType.I64))));
    tmpMetaDataMap.put(STRINGLISTVALUE, new FieldMetaData("stringListValue", TFieldRequirementType.DEFAULT, 
        new ListMetaData(TType.LIST, 
            new FieldValueMetaData(TType.STRING))));
    tmpMetaDataMap.put(TYPEDEFVALUE, new FieldMetaData("typedefValue", TFieldRequirementType.DEFAULT, 
        new MapMetaData(TType.MAP, 
            new FieldValueMetaData(TType.I16), 
            new FieldValueMetaData(TType.STRING))));
    tmpMetaDataMap.put(STRINGREF, new FieldMetaData("stringRef", TFieldRequirementType.DEFAULT, 
        new FieldValueMetaData(TType.STRING)));
    metaDataMap = Collections.unmodifiableMap(tmpMetaDataMap);
  }

  public ComplexUnion() {
    super();
  }

  public ComplexUnion(int setField, Object __value) {
    super(setField, __value);
  }

  public ComplexUnion(ComplexUnion other) {
    super(other);
  }

  public ComplexUnion deepCopy() {
    return new ComplexUnion(this);
  }

  public static ComplexUnion intValue(long __value) {
    ComplexUnion x = new ComplexUnion();
    x.setIntValue(__value);
    return x;
  }

  public static ComplexUnion stringValue(String __value) {
    ComplexUnion x = new ComplexUnion();
    x.setStringValue(__value);
    return x;
  }

  public static ComplexUnion intListValue(List<Long> __value) {
    ComplexUnion x = new ComplexUnion();
    x.setIntListValue(__value);
    return x;
  }

  public static ComplexUnion stringListValue(List<String> __value) {
    ComplexUnion x = new ComplexUnion();
    x.setStringListValue(__value);
    return x;
  }

  public static ComplexUnion typedefValue(Map<Short,String> __value) {
    ComplexUnion x = new ComplexUnion();
    x.setTypedefValue(__value);
    return x;
  }

  public static ComplexUnion stringRef(String __value) {
    ComplexUnion x = new ComplexUnion();
    x.setStringRef(__value);
    return x;
  }


  @Override
  protected void checkType(short setField, Object __value) throws ClassCastException {
    switch (setField) {
      case INTVALUE:
        if (__value instanceof Long) {
          break;
        }
        throw new ClassCastException("Was expecting value of type Long for field 'intValue', but got " + __value.getClass().getSimpleName());
      case STRINGVALUE:
        if (__value instanceof String) {
          break;
        }
        throw new ClassCastException("Was expecting value of type String for field 'stringValue', but got " + __value.getClass().getSimpleName());
      case INTLISTVALUE:
        if (__value instanceof List) {
          break;
        }
        throw new ClassCastException("Was expecting value of type List<Long> for field 'intListValue', but got " + __value.getClass().getSimpleName());
      case STRINGLISTVALUE:
        if (__value instanceof List) {
          break;
        }
        throw new ClassCastException("Was expecting value of type List<String> for field 'stringListValue', but got " + __value.getClass().getSimpleName());
      case TYPEDEFVALUE:
        if (__value instanceof Map) {
          break;
        }
        throw new ClassCastException("Was expecting value of type Map<Short,String> for field 'typedefValue', but got " + __value.getClass().getSimpleName());
      case STRINGREF:
        if (__value instanceof String) {
          break;
        }
        throw new ClassCastException("Was expecting value of type String for field 'stringRef', but got " + __value.getClass().getSimpleName());
      default:
        throw new IllegalArgumentException("Unknown field id " + setField);
    }
  }

  @Override
  public void read(TProtocol iprot) throws TException {
    setField_ = 0;
    value_ = null;
    iprot.readStructBegin(metaDataMap);
    TField __field = iprot.readFieldBegin();
    if (__field.type != TType.STOP)
    {
      value_ = readValue(iprot, __field);
      if (value_ != null)
      {
        switch (__field.id) {
          case INTVALUE:
            if (__field.type == INT_VALUE_FIELD_DESC.type) {
              setField_ = __field.id;
            }
            break;
          case STRINGVALUE:
            if (__field.type == STRING_VALUE_FIELD_DESC.type) {
              setField_ = __field.id;
            }
            break;
          case INTLISTVALUE:
            if (__field.type == INT_LIST_VALUE_FIELD_DESC.type) {
              setField_ = __field.id;
            }
            break;
          case STRINGLISTVALUE:
            if (__field.type == STRING_LIST_VALUE_FIELD_DESC.type) {
              setField_ = __field.id;
            }
            break;
          case TYPEDEFVALUE:
            if (__field.type == TYPEDEF_VALUE_FIELD_DESC.type) {
              setField_ = __field.id;
            }
            break;
          case STRINGREF:
            if (__field.type == STRING_REF_FIELD_DESC.type) {
              setField_ = __field.id;
            }
            break;
        }
      }
      iprot.readFieldEnd();
      iprot.readFieldBegin();
      iprot.readFieldEnd();
    }
    iprot.readStructEnd();
  }

  @Override
  protected Object readValue(TProtocol iprot, TField __field) throws TException {
    switch (__field.id) {
      case INTVALUE:
        if (__field.type == INT_VALUE_FIELD_DESC.type) {
          Long intValue;
          intValue = iprot.readI64();
          return intValue;
        }
        break;
      case STRINGVALUE:
        if (__field.type == STRING_VALUE_FIELD_DESC.type) {
          String stringValue;
          stringValue = iprot.readString();
          return stringValue;
        }
        break;
      case INTLISTVALUE:
        if (__field.type == INT_LIST_VALUE_FIELD_DESC.type) {
          List<Long> intListValue;
          {
            TList _list0 = iprot.readListBegin();
            intListValue = new ArrayList<Long>(Math.max(0, _list0.size));
            for (int _i1 = 0; 
                 (_list0.size < 0) ? iprot.peekList() : (_i1 < _list0.size); 
                 ++_i1)
            {
              long _elem2;
              _elem2 = iprot.readI64();
              intListValue.add(_elem2);
            }
            iprot.readListEnd();
          }
          return intListValue;
        }
        break;
      case STRINGLISTVALUE:
        if (__field.type == STRING_LIST_VALUE_FIELD_DESC.type) {
          List<String> stringListValue;
          {
            TList _list3 = iprot.readListBegin();
            stringListValue = new ArrayList<String>(Math.max(0, _list3.size));
            for (int _i4 = 0; 
                 (_list3.size < 0) ? iprot.peekList() : (_i4 < _list3.size); 
                 ++_i4)
            {
              String _elem5;
              _elem5 = iprot.readString();
              stringListValue.add(_elem5);
            }
            iprot.readListEnd();
          }
          return stringListValue;
        }
        break;
      case TYPEDEFVALUE:
        if (__field.type == TYPEDEF_VALUE_FIELD_DESC.type) {
          Map<Short,String> typedefValue;
          {
            TMap _map6 = iprot.readMapBegin();
            typedefValue = new HashMap<Short,String>(Math.max(0, 2*_map6.size));
            for (int _i7 = 0; 
                 (_map6.size < 0) ? iprot.peekMap() : (_i7 < _map6.size); 
                 ++_i7)
            {
              short _key8;
              String _val9;
              _key8 = iprot.readI16();
              _val9 = iprot.readString();
              typedefValue.put(_key8, _val9);
            }
            iprot.readMapEnd();
          }
          return typedefValue;
        }
        break;
      case STRINGREF:
        if (__field.type == STRING_REF_FIELD_DESC.type) {
          String stringRef;
          stringRef = iprot.readString();
          return stringRef;
        }
        break;
    }
    TProtocolUtil.skip(iprot, __field.type);
    return null;
  }

  @Override
  protected void writeValue(TProtocol oprot, short setField, Object __value) throws TException {
    switch (setField) {
      case INTVALUE:
        Long intValue = (Long)getFieldValue();
        oprot.writeI64(intValue);
        return;
      case STRINGVALUE:
        String stringValue = (String)getFieldValue();
        oprot.writeString(stringValue);
        return;
      case INTLISTVALUE:
        List<Long> intListValue = (List<Long>)getFieldValue();
        {
          oprot.writeListBegin(new TList(TType.I64, intListValue.size()));
          for (long _iter10 : intListValue)          {
            oprot.writeI64(_iter10);
          }
          oprot.writeListEnd();
        }
        return;
      case STRINGLISTVALUE:
        List<String> stringListValue = (List<String>)getFieldValue();
        {
          oprot.writeListBegin(new TList(TType.STRING, stringListValue.size()));
          for (String _iter11 : stringListValue)          {
            oprot.writeString(_iter11);
          }
          oprot.writeListEnd();
        }
        return;
      case TYPEDEFVALUE:
        Map<Short,String> typedefValue = (Map<Short,String>)getFieldValue();
        {
          oprot.writeMapBegin(new TMap(TType.I16, TType.STRING, typedefValue.size()));
          for (Map.Entry<Short, String> _iter12 : typedefValue.entrySet())          {
            oprot.writeI16(_iter12.getKey());
            oprot.writeString(_iter12.getValue());
          }
          oprot.writeMapEnd();
        }
        return;
      case STRINGREF:
        String stringRef = (String)getFieldValue();
        oprot.writeString(stringRef);
        return;
      default:
        throw new IllegalStateException("Cannot write union with unknown field " + setField);
    }
  }

  @Override
  protected TField getFieldDesc(int setField) {
    switch (setField) {
      case INTVALUE:
        return INT_VALUE_FIELD_DESC;
      case STRINGVALUE:
        return STRING_VALUE_FIELD_DESC;
      case INTLISTVALUE:
        return INT_LIST_VALUE_FIELD_DESC;
      case STRINGLISTVALUE:
        return STRING_LIST_VALUE_FIELD_DESC;
      case TYPEDEFVALUE:
        return TYPEDEF_VALUE_FIELD_DESC;
      case STRINGREF:
        return STRING_REF_FIELD_DESC;
      default:
        throw new IllegalArgumentException("Unknown field id " + setField);
    }
  }

  @Override
  protected TStruct getStructDesc() {
    return STRUCT_DESC;
  }

  @Override
  protected Map<Integer, FieldMetaData> getMetaDataMap() { return metaDataMap; }

  private Object __getValue(int expectedFieldId) {
    if (getSetField() == expectedFieldId) {
      return getFieldValue();
    } else {
      throw new RuntimeException("Cannot get field '" + getFieldDesc(expectedFieldId).name + "' because union is currently set to " + getFieldDesc(getSetField()).name);
    }
  }

  private void __setValue(int fieldId, Object __value) {
    if (__value == null) throw new NullPointerException();
    setField_ = fieldId;
    value_ = __value;
  }

  public long getIntValue() {
    return (Long) __getValue(INTVALUE);
  }

  public void setIntValue(long __value) {
    setField_ = INTVALUE;
    value_ = __value;
  }

  public String getStringValue() {
    return (String) __getValue(STRINGVALUE);
  }

  public void setStringValue(String __value) {
    __setValue(STRINGVALUE, __value);
  }

  public List<Long> getIntListValue() {
    return (List<Long>) __getValue(INTLISTVALUE);
  }

  public void setIntListValue(List<Long> __value) {
    __setValue(INTLISTVALUE, __value);
  }

  public List<String> getStringListValue() {
    return (List<String>) __getValue(STRINGLISTVALUE);
  }

  public void setStringListValue(List<String> __value) {
    __setValue(STRINGLISTVALUE, __value);
  }

  public Map<Short,String> getTypedefValue() {
    return (Map<Short,String>) __getValue(TYPEDEFVALUE);
  }

  public void setTypedefValue(Map<Short,String> __value) {
    __setValue(TYPEDEFVALUE, __value);
  }

  public String getStringRef() {
    return (String) __getValue(STRINGREF);
  }

  public void setStringRef(String __value) {
    __setValue(STRINGREF, __value);
  }

  public boolean equals(Object other) {
    if (other instanceof ComplexUnion) {
      return equals((ComplexUnion)other);
    } else {
      return false;
    }
  }

  public boolean equals(ComplexUnion other) {
    return equalsNobinaryImpl(other);
  }

  @Override
  public int compareTo(ComplexUnion other) {
    return compareToImpl(other);
  }


  @Override
  public int hashCode() {
    return Arrays.deepHashCode(new Object[] {getSetField(), getFieldValue()});
  }

}
