.class public Lcom/bytedance/msdk/adapter/config/DefaultAdapterClasses;
.super Ljava/lang/Object;
.source "DefaultAdapterClasses.java"


# static fields
.field public static final do:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/bytedance/msdk/adapter/config/DefaultAdapterClasses;->do:Ljava/util/Set;

    const-string v1, "com.bytedance.msdk.adapter.pangle.PangleAdapterConfiguration"

    .line 2
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3
    sget-object v0, Lcom/bytedance/msdk/adapter/config/DefaultAdapterClasses;->do:Ljava/util/Set;

    const-string v1, "com.bytedance.msdk.adapter.unity.UnityAdapterConfiguration"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4
    sget-object v0, Lcom/bytedance/msdk/adapter/config/DefaultAdapterClasses;->do:Ljava/util/Set;

    const-string v1, "com.bytedance.msdk.adapter.baidu.BaiduAdapterConfiguration"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 5
    sget-object v0, Lcom/bytedance/msdk/adapter/config/DefaultAdapterClasses;->do:Ljava/util/Set;

    const-string v1, "com.bytedance.msdk.adapter.sigmob.SigmobAdapterConfiguration"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6
    sget-object v0, Lcom/bytedance/msdk/adapter/config/DefaultAdapterClasses;->do:Ljava/util/Set;

    const-string v1, "com.bytedance.msdk.adapter.admob.AdmobAdapterConfiguration"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 7
    sget-object v0, Lcom/bytedance/msdk/adapter/config/DefaultAdapterClasses;->do:Ljava/util/Set;

    const-string v1, "com.bytedance.msdk.adapter.gdt.GdtAdapterConfiguration"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8
    sget-object v0, Lcom/bytedance/msdk/adapter/config/DefaultAdapterClasses;->do:Ljava/util/Set;

    const-string v1, "com.bytedance.msdk.adapter.ks.KsAdapterConfiguration"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 9
    sget-object v0, Lcom/bytedance/msdk/adapter/config/DefaultAdapterClasses;->do:Ljava/util/Set;

    const-string v1, "com.bytedance.msdk.adapter.mintegral.MintegralAdapterConfiguration"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 10
    sget-object v0, Lcom/bytedance/msdk/adapter/config/DefaultAdapterClasses;->do:Ljava/util/Set;

    const-string v1, "com.bytedance.msdk.adapter.klevin.KlevinAdapterConfiguration"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 11
    sget-object v0, Lcom/bytedance/msdk/adapter/config/DefaultAdapterClasses;->do:Ljava/util/Set;

    const-string v1, "com.bytedance.msdk.adapter.panglecustom.PangleCustomAdapterConfiguration"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/bytedance/msdk/adapter/config/DefaultAdapterClasses;->getClassNameByAdnName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 4
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DefaultAdapterClasses#getClass error:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "TTMediationSDK_ADAPTER"

    invoke-static {v0, p0}, Lcom/bytedance/msdk/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static getClassNameByAdnName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "pangle"

    .line 1
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;->G()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;

    move-result-object p0

    invoke-virtual {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;->x()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "com.bytedance.msdk.adapter.pangle.PangleAdapterConfiguration"

    goto/16 :goto_1

    :cond_1
    const-string v0, "pangle_custom"

    .line 3
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_0
    const-string p0, "com.bytedance.msdk.adapter.panglecustom.PangleCustomAdapterConfiguration"

    goto :goto_1

    :cond_2
    const-string v0, "unity"

    .line 4
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p0, "com.bytedance.msdk.adapter.unity.UnityAdapterConfiguration"

    goto :goto_1

    :cond_3
    const-string v0, "baidu"

    .line 5
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string p0, "com.bytedance.msdk.adapter.baidu.BaiduAdapterConfiguration"

    goto :goto_1

    :cond_4
    const-string v0, "admob"

    .line 6
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string p0, "com.bytedance.msdk.adapter.admob.AdmobAdapterConfiguration"

    goto :goto_1

    :cond_5
    const-string v0, "gdt"

    .line 7
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string p0, "com.bytedance.msdk.adapter.gdt.GdtAdapterConfiguration"

    goto :goto_1

    :cond_6
    const-string v0, "ks"

    .line 8
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string p0, "com.bytedance.msdk.adapter.ks.KsAdapterConfiguration"

    goto :goto_1

    :cond_7
    const-string v0, "sigmob"

    .line 9
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string p0, "com.bytedance.msdk.adapter.sigmob.SigmobAdapterConfiguration"

    goto :goto_1

    :cond_8
    const-string v0, "mintegral"

    .line 10
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string p0, "com.bytedance.msdk.adapter.mintegral.MintegralAdapterConfiguration"

    goto :goto_1

    :cond_9
    const-string v0, "klevin"

    .line 11
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a

    const-string p0, "com.bytedance.msdk.adapter.klevin.KlevinAdapterConfiguration"

    goto :goto_1

    :cond_a
    const-string p0, ""

    :goto_1
    return-object p0
.end method

.method public static getClassNamesSet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/bytedance/msdk/adapter/config/DefaultAdapterClasses;->do:Ljava/util/Set;

    return-object v0
.end method
