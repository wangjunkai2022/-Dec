.class public Lcom/apk/tt;
.super Ljava/lang/Object;
.source "MmkvManager.java"


# static fields
.field public static do:Lcom/tencent/mmkv/MMKV;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/tencent/mmkv/MMKV;->defaultMMKV()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    sput-object v0, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    return-void
.end method

.method public static do(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    invoke-virtual {v0, p0, p1}, Lcom/tencent/mmkv/MMKV;->decodeString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
