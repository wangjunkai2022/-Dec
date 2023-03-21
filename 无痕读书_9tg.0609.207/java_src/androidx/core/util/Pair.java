package androidx.core.util;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.apk.Cgoto;
/* loaded from: classes8.dex */
public class Pair<F, S> {
    @Nullable
    public final F first;
    @Nullable
    public final S second;

    public Pair(@Nullable F f, @Nullable S s) {
        this.first = f;
        this.second = s;
    }

    @NonNull
    public static <A, B> Pair<A, B> create(@Nullable A a2, @Nullable B b) {
        return new Pair<>(a2, b);
    }

    public boolean equals(Object obj) {
        if (obj instanceof Pair) {
            Pair pair = (Pair) obj;
            return ObjectsCompat.equals(pair.first, this.first) && ObjectsCompat.equals(pair.second, this.second);
        }
        return false;
    }

    public int hashCode() {
        F f = this.first;
        int hashCode = f == null ? 0 : f.hashCode();
        S s = this.second;
        return hashCode ^ (s != null ? s.hashCode() : 0);
    }

    @NonNull
    public String toString() {
        StringBuilder m1016super = Cgoto.m1016super("Pair{");
        m1016super.append(String.valueOf(this.first));
        m1016super.append(" ");
        m1016super.append(String.valueOf(this.second));
        m1016super.append("}");
        return m1016super.toString();
    }
}
