/**
 * Autogenerated by Thrift
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */

package test.fixtures.swift.toobigenum;

import com.facebook.swift.codec.*;

@SwiftGenerated
public class TooBigEnum extends IntEnum {

    private final int value;

    TooBigEnum(int value) {
        this.value = value;
    }

    @Override
    @ThriftEnumValue
    public int getValue() {
        return value;
    }

    @ThriftIntEnumResolver
    public static TooBigEnum fromInteger(int n) {
        return new TooBigEnum(n);
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) {
            return true;
        }
        if (o == null || getClass() != o.getClass()) {
            return false;
        }

        TooBigEnum other = (TooBigEnum)o;

        return this.value == other.value;
    }

    @Override
    public int hashCode() {
        return value;
    }
}
