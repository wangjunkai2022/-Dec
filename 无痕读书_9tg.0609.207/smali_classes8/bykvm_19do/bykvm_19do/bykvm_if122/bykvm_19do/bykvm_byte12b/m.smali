.class public Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/m;
.super Ljava/lang/Object;
.source "IntervalShowControl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/m$c;
    }
.end annotation


# instance fields
.field public a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/m;->a()V

    return-void
.end method

.method public synthetic constructor <init>(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/m$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/m;-><init>()V

    return-void
.end method

.method private a(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/g;Ljava/lang/String;I)V
    .locals 1

    .line 24
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/h;->a()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/h;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/h;->a(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/g;Ljava/lang/String;I)V

    return-void
.end method

.method private a(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/g;Ljava/lang/String;J)V
    .locals 1

    .line 25
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/h;->a()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/h;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/h;->a(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/g;Ljava/lang/String;J)V

    return-void
.end method

.method public static synthetic a(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/m;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/g;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/m;->a(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/g;Ljava/lang/String;I)V

    return-void
.end method

.method public static b()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/m;
    .locals 1

    .line 1
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/m$c;->a()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/m;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 2
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/m;->b:Ljava/util/Map;

    .line 3
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/m;->a:Ljava/util/Map;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .line 15
    new-instance v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/m$b;

    invoke-direct {v0, p0, p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/m$b;-><init>(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/m;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/bytedance/msdk/adapter/util/ThreadHelper;->runOnMSDKThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Ljava/lang/String;J)V
    .locals 1

    .line 14
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/j;->a()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/j;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/j;->a(Ljava/lang/String;J)V

    return-void
.end method

.method public a(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/g;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 16
    :cond_0
    invoke-virtual {p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/d;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/m;->h(Ljava/lang/String;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/g;

    move-result-object v1

    const/4 v2, 0x1

    const-string v3, "TTMediationSDK_IntervalShowControl"

    if-nez v1, :cond_1

    const-string p1, "freqctl \u89c4\u5219\u4e3a\u7a7a\u76f4\u63a5\u5b58\u50a8"

    .line 17
    invoke-static {v3, p1}, Lcom/bytedance/msdk/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 18
    :cond_1
    invoke-virtual {p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/d;->e()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string p1, "freqctl version \u4e3a\u7a7a \u6e05\u7a7a\u672c\u5730\u6570\u636e "

    .line 19
    invoke-static {v3, p1}, Lcom/bytedance/msdk/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    invoke-virtual {v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/d;->d()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/m;->d(Ljava/lang/String;)V

    return v0

    .line 21
    :cond_2
    invoke-virtual {v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/d;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/d;->e()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string p1, "freqctl version \u4e00\u81f4 version = "

    .line 22
    invoke-static {p1}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/d;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\u65e0\u9700\u5904\u7406"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/bytedance/msdk/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_3
    const-string v0, "freqctl version\u4e0d\u4e00\u81f4\uff0c\u7f13\u5b58\u65b0\u89c4\u5219 old version = "

    .line 23
    invoke-static {v0}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/d;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  new version "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/d;->e()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/bytedance/msdk/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method public a(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/i;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 4
    :cond_0
    invoke-virtual {p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/d;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/m;->i(Ljava/lang/String;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/i;

    move-result-object v1

    const/4 v2, 0x1

    const-string v3, "TTMediationSDK_IntervalShowControl"

    if-nez v1, :cond_1

    const-string p1, "pacing \u89c4\u5219\u4e3a\u7a7a\u76f4\u63a5\u5b58\u50a8"

    .line 5
    invoke-static {v3, p1}, Lcom/bytedance/msdk/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 6
    :cond_1
    invoke-virtual {p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/i;->j()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v1, "pacing ruleId \u4e3a\u7a7a \u6e05\u7a7a\u672c\u5730\u6570\u636e "

    .line 7
    invoke-static {v3, v1}, Lcom/bytedance/msdk/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-virtual {p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/d;->g()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/m;->e(Ljava/lang/String;)V

    return v0

    .line 9
    :cond_2
    invoke-virtual {v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/i;->j()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/i;->j()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string p1, "pacing ruleId \u4e00\u81f4 ruleId = "

    .line 10
    invoke-static {p1}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/i;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " \u65e0\u9700\u5904\u7406"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/bytedance/msdk/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_3
    const-string v0, "pacing ruleId\u4e0d\u4e00\u81f4\uff0c\u7f13\u5b58\u65b0\u89c4\u5219 old ruleId = "

    .line 11
    invoke-static {v0}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/i;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  new ruleId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/i;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/bytedance/msdk/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pacing \u5220\u9664 ritId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/d;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/bytedance/msdk/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-virtual {p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/d;->g()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/m;->e(Ljava/lang/String;)V

    return v2
.end method

.method public b(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/g;)V
    .locals 1

    .line 19
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/h;->a()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/h;->a(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/g;)V

    return-void
.end method

.method public b(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/i;)V
    .locals 1

    .line 2
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/j;->a()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/j;

    move-result-object v0

    invoke-virtual {v0, p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/j;->a(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/i;)V

    return-void
.end method

.method public b(Ljava/lang/String;)Z
    .locals 10

    .line 3
    invoke-virtual {p0, p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/m;->h(Ljava/lang/String;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/g;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 4
    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/d;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5
    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/g;->i()Ljava/util/List;

    move-result-object v1

    .line 6
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/e;

    .line 7
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    const-string v4, "checkFreqctl date = "

    .line 8
    invoke-static {v4}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " item.getEffectiveTime() = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/e;->b()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "TTMediationSDK_IntervalShowControl"

    invoke-static {v5, v4}, Lcom/bytedance/msdk/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-virtual {v2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/e;->b()J

    move-result-wide v6

    const/4 v8, 0x0

    cmp-long v9, v3, v6

    if-gtz v9, :cond_1

    .line 10
    invoke-virtual {v2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/e;->a()I

    move-result v3

    invoke-virtual {v2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/e;->c()I

    move-result v4

    const-string v6, " count = "

    if-ge v3, v4, :cond_0

    const-string v3, "checkFreqctl \u672a\u5230\u4e0a\u7ebf\u53ef\u4ee5\u5c55\u793a ruleId = "

    .line 11
    invoke-static {v3}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/e;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/e;->a()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/bytedance/msdk/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "checkFreqctl \u5230\u4e86\u4e0a\u7ebf\u4e0d\u53ef\u4ee5\u5c55\u793a ruleId = "

    .line 12
    invoke-static {v0}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/e;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/e;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/bytedance/msdk/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/m;->b:Ljava/util/Map;

    new-instance v1, Landroid/util/Pair;

    invoke-virtual {v2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/e;->d()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/e;->a()I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v3, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v8

    .line 14
    :cond_1
    invoke-virtual {v2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/e;->d()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v3, v8}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/m;->a(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/g;Ljava/lang/String;I)V

    .line 15
    invoke-virtual {v2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/e;->d()Ljava/lang/String;

    move-result-object v3

    .line 16
    invoke-virtual {v2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/e;->e()J

    move-result-wide v6

    invoke-static {v6, v7}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/f;->a(J)J

    move-result-wide v6

    .line 17
    invoke-direct {p0, v0, v3, v6, v7}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/m;->a(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/g;Ljava/lang/String;J)V

    const-string v3, "checkFreqctl \u6709\u6548\u671f\u5916\u8ba1\u6570\u9700\u8981\u6e050\uff0c\u8fc7\u671f\u65f6\u95f4\u9700\u8981\u66f4\u65b0 = "

    .line 18
    invoke-static {v3}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/e;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/bytedance/msdk/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public c(Ljava/lang/String;)Z
    .locals 12

    .line 1
    invoke-virtual {p0, p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/m;->i(Ljava/lang/String;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/i;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/i;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/i;->l()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 4
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 5
    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/i;->k()J

    move-result-wide v4

    .line 6
    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/i;->k()J

    move-result-wide v6

    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/i;->i()J

    move-result-wide v8

    add-long/2addr v8, v6

    const-string v6, "checkPacing currentTime = "

    .line 7
    invoke-static {v6}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v2, v3}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/f;->b(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " showTime = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    invoke-static {v4, v5}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/f;->b(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " pacingBean.getPacing() = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/i;->i()J

    move-result-wide v10

    invoke-virtual {v6, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " pacingTime = "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    invoke-static {v8, v9}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/f;->b(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v6, "TTMediationSDK_IntervalShowControl"

    .line 11
    invoke-static {v6, v0}, Lcom/bytedance/msdk/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    cmp-long v0, v2, v8

    if-gtz v0, :cond_0

    .line 12
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/m;->a:Ljava/util/Map;

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    return p1

    :cond_0
    return v1
.end method

.method public d(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/h;->a()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/h;->a(Ljava/lang/String;)V

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/j;->a()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/j;

    move-result-object v0

    invoke-virtual {v0, p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/j;->a(Ljava/lang/String;)V

    return-void
.end method

.method public f(Ljava/lang/String;)Landroid/util/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/m;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/Pair;

    return-object p1
.end method

.method public g(Ljava/lang/String;)J
    .locals 2

    .line 1
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/m;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    if-nez p1, :cond_0

    const-wide/16 v0, -0x2

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public h(Ljava/lang/String;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/g;
    .locals 1

    .line 1
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/h;->a()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/h;->b(Ljava/lang/String;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/g;

    move-result-object p1

    return-object p1
.end method

.method public i(Ljava/lang/String;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/i;
    .locals 1

    .line 1
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/j;->a()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/j;

    move-result-object v0

    invoke-virtual {v0, p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/j;->b(Ljava/lang/String;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/i;

    move-result-object p1

    return-object p1
.end method

.method public j(Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/m$a;

    invoke-direct {v0, p0, p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/m$a;-><init>(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/m;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/bytedance/msdk/adapter/util/ThreadHelper;->runOnMSDKThread(Ljava/lang/Runnable;)V

    return-void
.end method
