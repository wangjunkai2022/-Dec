package com.bytedance.pangle.res.a;

import java.io.DataInput;
/* loaded from: classes8.dex */
public abstract class f implements DataInput {

    /* renamed from: a  reason: collision with root package name */
    public final i f11369a;

    public f(i iVar) {
        this.f11369a = iVar;
    }

    @Override // java.io.DataInput
    public boolean readBoolean() {
        return this.f11369a.readBoolean();
    }

    @Override // java.io.DataInput
    public byte readByte() {
        return this.f11369a.readByte();
    }

    @Override // java.io.DataInput
    public char readChar() {
        return this.f11369a.readChar();
    }

    @Override // java.io.DataInput
    public double readDouble() {
        return this.f11369a.readDouble();
    }

    @Override // java.io.DataInput
    public float readFloat() {
        return this.f11369a.readFloat();
    }

    @Override // java.io.DataInput
    public void readFully(byte[] bArr, int i, int i2) {
        this.f11369a.readFully(bArr, i, i2);
    }

    @Override // java.io.DataInput
    public int readInt() {
        return this.f11369a.readInt();
    }

    @Override // java.io.DataInput
    public String readLine() {
        return this.f11369a.readLine();
    }

    @Override // java.io.DataInput
    public long readLong() {
        return this.f11369a.readLong();
    }

    @Override // java.io.DataInput
    public short readShort() {
        return this.f11369a.readShort();
    }

    @Override // java.io.DataInput
    public String readUTF() {
        return this.f11369a.readUTF();
    }

    @Override // java.io.DataInput
    public int readUnsignedByte() {
        return this.f11369a.readUnsignedByte();
    }

    @Override // java.io.DataInput
    public int readUnsignedShort() {
        return this.f11369a.readUnsignedShort();
    }

    @Override // java.io.DataInput
    public int skipBytes(int i) {
        return this.f11369a.skipBytes(i);
    }

    @Override // java.io.DataInput
    public void readFully(byte[] bArr) {
        this.f11369a.readFully(bArr);
    }
}
