.class public Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/c;
.super Ljava/lang/Object;
.source "InitCustomerHelper.java"


# direct methods
.method public static a(Lcom/bytedance/msdk/api/v2/ad/custom/init/GMCustomAdapterConfiguration;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const-string p0, "customAdapterConfiguration \u4e3anull"

    return-object p0

    .line 45
    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/v2/ad/custom/init/GMCustomAdapterConfiguration;->getNetworkSdkVersion()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "\u81ea\u5b9a\u4e49ADN \u521d\u59cb\u5316\u5931\u8d25 getNetworkSdkVersion()\u8fd4\u5b57\u7b26\u4e32\u4e0d\u80fd\u4e3a\u7a7a"

    return-object p0

    .line 46
    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/v2/ad/custom/init/GMCustomAdapterConfiguration;->getAdapterSdkVersion()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "\u81ea\u5b9a\u4e49ADN \u521d\u59cb\u5316\u5931\u8d25 getAdapterSdkVersion()\u8fd4\u5b57\u7b26\u4e32\u4e0d\u80fd\u4e3a\u7a7a"

    return-object p0

    :cond_2
    const-string p0, ""

    return-object p0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 9

    .line 1
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/a;->f()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_long108/c;

    move-result-object v0

    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_long108/c;->c()Ljava/util/Map;

    move-result-object v0

    const v1, 0xbf75

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 3
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/a;

    invoke-virtual {v4}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/a;->c()Lcom/bytedance/msdk/api/v2/ad/custom/bean/GMCustomInitConfig;

    move-result-object v4

    .line 4
    :try_start_0
    new-instance v5, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/c$a;

    invoke-direct {v5, v3}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/c$a;-><init>(Ljava/util/Map$Entry;)V

    invoke-static {p0, v4, v5}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/c;->a(Landroid/content/Context;Lcom/bytedance/msdk/api/v2/ad/custom/bean/GMCustomInitConfig;Lcom/bytedance/msdk/adapter/config/IGMInitAdnResult;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    .line 5
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 6
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    new-instance v6, Landroid/util/Pair;

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v5, v6}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/a;->a(Ljava/lang/String;Landroid/util/Pair;)V

    .line 7
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v5, Lcom/bytedance/msdk/api/AdError;

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v1, v4}, Lcom/bytedance/msdk/api/AdError;-><init>(ILjava/lang/String;)V

    invoke-static {v3, v2, v2, v2, v5}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/h;->a(Ljava/lang/String;Lcom/bytedance/msdk/base/TTBaseAd;Lcom/bytedance/msdk/api/AdSlot;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;Lcom/bytedance/msdk/api/AdError;)V

    goto :goto_0

    .line 8
    :cond_0
    new-instance p0, Lcom/bytedance/msdk/api/AdError;

    const-string v0, "\u83b7\u53d6\u7684\u81ea\u5b9a\u4e49Adapter\u603b\u914d\u7f6e\u4e3anull"

    invoke-direct {p0, v1, v0}, Lcom/bytedance/msdk/api/AdError;-><init>(ILjava/lang/String;)V

    const-string v0, ""

    invoke-static {v0, v2, v2, v2, p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/h;->a(Ljava/lang/String;Lcom/bytedance/msdk/base/TTBaseAd;Lcom/bytedance/msdk/api/AdSlot;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;Lcom/bytedance/msdk/api/AdError;)V

    :cond_1
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/bytedance/msdk/api/v2/ad/custom/bean/GMCustomInitConfig;Lcom/bytedance/msdk/adapter/config/IGMInitAdnResult;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p1, :cond_4

    .line 9
    invoke-virtual {p1}, Lcom/bytedance/msdk/api/v2/ad/custom/bean/GMCustomInitConfig;->getAdnInitClassName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 10
    :try_start_0
    invoke-virtual {p1}, Lcom/bytedance/msdk/api/v2/ad/custom/bean/GMCustomInitConfig;->getAdnInitClassName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 11
    invoke-static {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/c;->a(Ljava/lang/Class;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz v1, :cond_3

    .line 12
    :try_start_1
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/a;->d()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_int108/a;

    move-result-object v1

    invoke-virtual {p1}, Lcom/bytedance/msdk/api/v2/ad/custom/bean/GMCustomInitConfig;->getADNName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_int108/a;->b(Ljava/lang/String;)Lcom/bytedance/msdk/api/v2/ad/custom/init/GMCustomAdapterConfiguration;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 13
    invoke-virtual {v1}, Lcom/bytedance/msdk/api/v2/ad/custom/init/GMCustomAdapterConfiguration;->isInit()Z

    move-result v0

    if-nez v0, :cond_0

    .line 14
    invoke-static {p0, p1, v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/c;->a(Landroid/content/Context;Lcom/bytedance/msdk/api/v2/ad/custom/bean/GMCustomInitConfig;Lcom/bytedance/msdk/api/v2/ad/custom/init/GMCustomAdapterConfiguration;)V

    .line 15
    :cond_0
    invoke-interface {p2}, Lcom/bytedance/msdk/adapter/config/IGMInitAdnResult;->success()V

    goto :goto_0

    .line 16
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    .line 17
    instance-of v1, v0, Lcom/bytedance/msdk/api/v2/ad/custom/init/GMCustomAdapterConfiguration;

    if-eqz v1, :cond_2

    .line 18
    check-cast v0, Lcom/bytedance/msdk/api/v2/ad/custom/init/GMCustomAdapterConfiguration;

    .line 19
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/a;->d()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_int108/a;

    move-result-object v1

    invoke-virtual {p1}, Lcom/bytedance/msdk/api/v2/ad/custom/bean/GMCustomInitConfig;->getADNName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_int108/a;->a(Ljava/lang/String;Lcom/bytedance/msdk/api/v2/ad/custom/init/GMCustomAdapterConfiguration;)V

    .line 20
    invoke-static {p0, p1, v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/c;->a(Landroid/content/Context;Lcom/bytedance/msdk/api/v2/ad/custom/bean/GMCustomInitConfig;Lcom/bytedance/msdk/api/v2/ad/custom/init/GMCustomAdapterConfiguration;)V

    .line 21
    invoke-interface {p2}, Lcom/bytedance/msdk/adapter/config/IGMInitAdnResult;->success()V

    goto :goto_0

    .line 22
    :cond_2
    new-instance p0, Ljava/lang/Exception;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "\u81ea\u5b9a\u4e49ADN\u521d\u59cb\u5316\u5931\u8d25\uff0c\u521d\u59cb\u5316\u5bf9\u8c61\u7c7b\u578b\u9519\u8bef\uff0c\u5bf9\u8c61\u7c7b\u578b\u4e3a"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class p2, Lcom/bytedance/msdk/api/v2/ad/custom/init/GMCustomAdapterConfiguration;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    .line 23
    :catch_0
    :try_start_2
    new-instance p0, Ljava/lang/Exception;

    const-string p1, "\u81ea\u5b9a\u4e49ADN\u8212\u9002\u5316\u5931\u8d25\uff0cInstantiationException"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    .line 24
    :catch_1
    new-instance p0, Ljava/lang/Exception;

    const-string p1, "\u81ea\u5b9a\u4e49ADN\u521d\u59cb\u5316\u5931\u8d25\uff0cIllegalAccessException"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_3
    :goto_0
    return-void

    :catch_2
    move-exception p0

    .line 25
    invoke-virtual {p0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 26
    new-instance p0, Ljava/lang/Exception;

    const-string p1, "\u81ea\u5b9a\u4e49ADN\u521d\u59cb\u5316\u5931\u8d25\uff0cClassNotFoundException"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    if-nez p1, :cond_5

    .line 27
    new-instance p0, Ljava/lang/Exception;

    const-string p1, "\u81ea\u5b9a\u4e49ADN\u521d\u59cb\u5316\u5931\u8d25\uff0c\u83b7\u53d6\u7684\u81ea\u5b9a\u4e49Adapter\u5355\u6761\u914d\u7f6e\u4e3anull"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    .line 28
    :cond_5
    new-instance p0, Ljava/lang/Exception;

    const-string p1, "\u81ea\u5b9a\u4e49ADN\u521d\u59cb\u5316\u5931\u8d25\uff0c\u83b7\u53d6\u7684\u81ea\u5b9a\u4e49Adapter\u5355\u6761\u914d\u7f6e\u521d\u59cb\u5316\u7c7b\u540d\u4e3a\u7a7a"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Landroid/content/Context;Lcom/bytedance/msdk/api/v2/ad/custom/bean/GMCustomInitConfig;Lcom/bytedance/msdk/api/v2/ad/custom/init/GMCustomAdapterConfiguration;)V
    .locals 4

    const v0, 0xbf75

    const/4 v1, 0x0

    if-nez p0, :cond_0

    .line 29
    invoke-virtual {p1}, Lcom/bytedance/msdk/api/v2/ad/custom/bean/GMCustomInitConfig;->getADNName()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lcom/bytedance/msdk/api/AdError;

    const-string p2, "context\u4e3anull"

    invoke-direct {p1, v0, p2}, Lcom/bytedance/msdk/api/AdError;-><init>(ILjava/lang/String;)V

    invoke-static {p0, v1, v1, v1, p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/h;->a(Ljava/lang/String;Lcom/bytedance/msdk/base/TTBaseAd;Lcom/bytedance/msdk/api/AdSlot;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;Lcom/bytedance/msdk/api/AdError;)V

    return-void

    .line 30
    :cond_0
    invoke-static {p2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/c;->a(Lcom/bytedance/msdk/api/v2/ad/custom/init/GMCustomAdapterConfiguration;)Ljava/lang/String;

    move-result-object v2

    .line 31
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 32
    invoke-virtual {p1}, Lcom/bytedance/msdk/api/v2/ad/custom/bean/GMCustomInitConfig;->getADNName()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lcom/bytedance/msdk/api/AdError;

    invoke-direct {p1, v0, v2}, Lcom/bytedance/msdk/api/AdError;-><init>(ILjava/lang/String;)V

    invoke-static {p0, v1, v1, v1, p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/h;->a(Ljava/lang/String;Lcom/bytedance/msdk/base/TTBaseAd;Lcom/bytedance/msdk/api/AdSlot;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;Lcom/bytedance/msdk/api/AdError;)V

    return-void

    .line 33
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 34
    :try_start_0
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;->G()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;

    move-result-object v2

    invoke-virtual {v2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/b;->g()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p2, p0, p1, v2}, Lcom/bytedance/msdk/api/v2/ad/custom/init/GMCustomAdapterConfiguration;->initializeInnerADN(Landroid/content/Context;Lcom/bytedance/msdk/api/v2/ad/custom/bean/GMCustomInitConfig;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 35
    invoke-virtual {p1}, Lcom/bytedance/msdk/api/v2/ad/custom/bean/GMCustomInitConfig;->getADNName()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lcom/bytedance/msdk/api/AdError;

    const-string v2, "\u8c03\u7528\u81ea\u5b9a\u4e49Adapter\u521d\u59cb\u5316\u65b9\u6cd5\u51fa\u73b0\u5f02\u5e38 "

    invoke-static {v2}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p2, v0, v2}, Lcom/bytedance/msdk/api/AdError;-><init>(ILjava/lang/String;)V

    invoke-static {p1, v1, v1, v1, p2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/h;->a(Ljava/lang/String;Lcom/bytedance/msdk/base/TTBaseAd;Lcom/bytedance/msdk/api/AdSlot;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;Lcom/bytedance/msdk/api/AdError;)V

    .line 36
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static a(Ljava/lang/Class;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 37
    const-class v0, Lcom/bytedance/msdk/api/v2/ad/custom/init/GMCustomAdapterConfiguration;

    invoke-static {p0, v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/c;->a(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "\u81ea\u5b9a\u4e49ADN\u521d\u59cb\u5316\u5931\u8d25  ---------  \u521d\u59cb\u5316\u7c7b "

    .line 38
    invoke-static {v1}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " \u9700\u8981\u7ee7\u627f\u81ea\u81ea\u5b9a\u4e49ADN\u7684\u521d\u59cb\u5316Adapter\u7c7b "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 39
    :cond_0
    invoke-static {p0, v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/c;->b(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    .line 40
    :goto_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "TTMediationSDK_SDK_Init"

    .line 41
    invoke-static {v0, p0}, Lcom/bytedance/msdk/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    new-instance v0, Lcom/bytedance/msdk/api/AdError;

    const v1, 0xbf75

    invoke-direct {v0, v1, p0}, Lcom/bytedance/msdk/api/AdError;-><init>(ILjava/lang/String;)V

    const-string p0, ""

    const/4 v1, 0x0

    invoke-static {p0, v1, v1, v1, v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/h;->a(Ljava/lang/String;Lcom/bytedance/msdk/base/TTBaseAd;Lcom/bytedance/msdk/api/AdSlot;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;Lcom/bytedance/msdk/api/AdError;)V

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static a(Ljava/lang/Class;Ljava/lang/Class;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 43
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_1

    .line 44
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public static b(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object p1

    .line 2
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p1, v2

    .line 3
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 4
    const-class v5, Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v5

    array-length v6, v5

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v6, :cond_0

    aget-object v8, v5, v7

    .line 5
    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 6
    :cond_0
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 7
    :try_start_0
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 8
    invoke-virtual {p0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .line 9
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "\u81ea\u5b9a\u4e49ADN\u6821\u9a8cAPI\u5931\u8d25\u63a5\u5165API\u4e0d\u7b26\u5408\u7248\u672c\u9700\u6c42\uff0c\u4e0d\u7b26\u5408\u7684API\u7684\u65b9\u6cd5\u540d\u4e3a "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const-string p0, ""

    return-object p0
.end method
