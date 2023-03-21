package com.apk;

import org.jetbrains.annotations.NotNull;
/* compiled from: ByteString.kt */
/* loaded from: classes7.dex */
public final class ol0 {
    @NotNull

    /* renamed from: do  reason: not valid java name */
    public static final char[] f3457do = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};

    /* renamed from: do  reason: not valid java name */
    public static final int m1973do(char c) {
        if ('0' <= c && '9' >= c) {
            return c - '0';
        }
        char c2 = 'a';
        if ('a' > c || 'f' < c) {
            c2 = 'A';
            if ('A' > c || 'F' < c) {
                throw new IllegalArgumentException("Unexpected hex digit: " + c);
            }
        }
        return (c - c2) + 10;
    }
}
