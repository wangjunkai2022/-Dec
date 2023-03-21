.class public abstract Lcom/apk/f;
.super Ljava/lang/Object;
.source "VideoBaseHelper.java"


# instance fields
.field public case:J

.field public do:Z

.field public for:Lcom/apk/h;

.field public if:Landroid/app/Activity;

.field public new:Ljava/lang/String;

.field public try:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static break()Z
    .locals 2

    const-string v0, "SP_VIDEO_AD_PRELOAD_FLAG_KEY"

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Lcom/apk/ze;->private(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static catch()Z
    .locals 2

    const-string v0, "SP_VIDEO_AD_PRELOAD_MOODULE_KEY"

    const-string v1, ""

    .line 1
    invoke-static {v0, v1}, Lcom/apk/tt;->do(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "g"

    .line 2
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public abstract case()Z
.end method

.method public final class(Ljava/lang/String;Ljava/lang/String;Lcom/apk/h;)V
    .locals 0

    .line 1
    iput-object p3, p0, Lcom/apk/f;->for:Lcom/apk/h;

    const/4 p3, 0x0

    .line 2
    iput-boolean p3, p0, Lcom/apk/f;->do:Z

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/apk/f;->else(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/apk/f;->case:J

    .line 5
    invoke-static {}, Lcom/apk/v;->do()Lcom/apk/v;

    move-result-object p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 6
    throw p1
.end method

.method public abstract const()Z
.end method

.method public do(I)V
    .locals 0

    const-string p1, "onAdError\u3002\u3002\u3002"

    .line 1
    invoke-virtual {p0, p1}, Lcom/apk/f;->super(Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/apk/v;->do()Lcom/apk/v;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/apk/f;->for:Lcom/apk/h;

    if-eqz p1, :cond_0

    .line 4
    sget-object p1, Lcom/apk/h;->for:Lcom/apk/h;

    iput-object p1, p0, Lcom/apk/f;->for:Lcom/apk/h;

    :cond_0
    return-void

    :cond_1
    const/4 p1, 0x0

    .line 5
    throw p1
.end method

.method public abstract else(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract final(Landroid/app/Activity;)Z
.end method

.method public for()V
    .locals 3

    .line 1
    sget-object v0, Lcom/apk/h;->new:Lcom/apk/h;

    const-string v1, "onVideoCached\u89c6\u9891\u5df2\u7f13\u5b58\u3002\u3002"

    invoke-virtual {p0, v1}, Lcom/apk/f;->super(Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/apk/v;->do()Lcom/apk/v;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 3
    iget-object v1, p0, Lcom/apk/f;->for:Lcom/apk/h;

    if-eqz v1, :cond_2

    .line 4
    sget-object v2, Lcom/apk/h;->do:Lcom/apk/h;

    if-ne v1, v2, :cond_0

    .line 5
    iput-object v0, p0, Lcom/apk/f;->for:Lcom/apk/h;

    return-void

    .line 6
    :cond_0
    sget-object v2, Lcom/apk/h;->if:Lcom/apk/h;

    if-ne v1, v2, :cond_2

    .line 7
    iget-boolean v1, p0, Lcom/apk/f;->do:Z

    if-eqz v1, :cond_1

    .line 8
    iput-object v0, p0, Lcom/apk/f;->for:Lcom/apk/h;

    const-string v0, "\u9875\u9762\u9000\u51fa\u53bb\u4e86\uff0c\u4fdd\u5b58\u8d77\u6765\u5427\uff0c\u4e0b\u6b21\u518d\u5c55\u793a"

    .line 9
    invoke-virtual {p0, v0}, Lcom/apk/f;->super(Ljava/lang/String;)V

    return-void

    .line 10
    :cond_1
    invoke-virtual {p0}, Lcom/apk/f;->case()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 11
    invoke-virtual {p0}, Lcom/apk/f;->const()Z

    const-string v0, "\u6267\u884cshowAd"

    .line 12
    invoke-virtual {p0, v0}, Lcom/apk/f;->super(Ljava/lang/String;)V

    :cond_2
    return-void

    :cond_3
    const/4 v0, 0x0

    .line 13
    throw v0
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/f;->if:Landroid/app/Activity;

    return-object v0
.end method

.method public goto()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/f;->for:Lcom/apk/h;

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/apk/h;->try:Lcom/apk/h;

    iput-object v0, p0, Lcom/apk/f;->for:Lcom/apk/h;

    :cond_0
    return-void
.end method

.method public if()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/apk/v;->do()Lcom/apk/v;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    invoke-static {}, Lcom/apk/v;->do()Lcom/apk/v;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    throw v1

    .line 4
    :cond_1
    throw v1
.end method

.method public new(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/apk/h;->if:Lcom/apk/h;

    iput-object p4, p0, Lcom/apk/f;->new:Ljava/lang/String;

    .line 2
    iget-object p4, p0, Lcom/apk/f;->for:Lcom/apk/h;

    if-eqz p4, :cond_2

    invoke-virtual {p0}, Lcom/apk/f;->case()Z

    move-result p4

    if-eqz p4, :cond_2

    .line 3
    iget-object p4, p0, Lcom/apk/f;->for:Lcom/apk/h;

    sget-object v1, Lcom/apk/h;->new:Lcom/apk/h;

    if-ne p4, v1, :cond_0

    .line 4
    invoke-virtual {p0, p1}, Lcom/apk/f;->final(Landroid/app/Activity;)Z

    const-string p1, "\u6709\u53ef\u7528\u7684\u5df2\u7f13\u5b58\u7684\u5e7f\u544a\uff0c\u76f4\u63a5\u62ff\u6765\u5c55\u793a\u3002\u3002"

    .line 5
    invoke-virtual {p0, p1}, Lcom/apk/f;->super(Ljava/lang/String;)V

    return-void

    :cond_0
    if-ne p4, v0, :cond_1

    const-string p1, "\u6709\u4e00\u4e2a\u5e7f\u544a\u6b63\u5728\u52a0\u8f7d\u4e2d\uff0c\u7b49\u5f85\u7ed3\u679c\u76f4\u63a5\u4f7f\u7528\u3002\u3002"

    .line 6
    invoke-virtual {p0, p1}, Lcom/apk/f;->super(Ljava/lang/String;)V

    return-void

    .line 7
    :cond_1
    sget-object p1, Lcom/apk/h;->do:Lcom/apk/h;

    if-ne p4, p1, :cond_2

    .line 8
    iput-object v0, p0, Lcom/apk/f;->for:Lcom/apk/h;

    const-string p1, "\u6709\u4e00\u4e2a\u5e7f\u544a\u6b63\u5728\u9884\u7f13\u5b58\u4e2d\uff0c\u7b49\u5f85\u7ed3\u679c\u76f4\u63a5\u4f7f\u7528\u3002\u3002"

    .line 9
    invoke-virtual {p0, p1}, Lcom/apk/f;->super(Ljava/lang/String;)V

    return-void

    :cond_2
    const-string p1, "\u8fd9\u91cc\u8c03\u7528\u7684\u76f4\u63a5\u52a0\u8f7d\u5e7f\u544a\u3002\u3002"

    .line 10
    invoke-virtual {p0, p1}, Lcom/apk/f;->super(Ljava/lang/String;)V

    .line 11
    invoke-virtual {p0, p2, p3, v0}, Lcom/apk/f;->class(Ljava/lang/String;Ljava/lang/String;Lcom/apk/h;)V

    return-void
.end method

.method public super(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public this()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/apk/f;->for:Lcom/apk/h;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/apk/h;->new:Lcom/apk/h;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/apk/f;->case()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public try(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/apk/h;->do:Lcom/apk/h;

    const-string v1, "ts"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "xz"

    .line 2
    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "other"

    .line 3
    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    :cond_0
    invoke-static {}, Lcom/apk/f;->break()Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    .line 5
    :cond_1
    iput-object p3, p0, Lcom/apk/f;->new:Ljava/lang/String;

    .line 6
    iget-object p3, p0, Lcom/apk/f;->for:Lcom/apk/h;

    if-eqz p3, :cond_3

    invoke-virtual {p0}, Lcom/apk/f;->case()Z

    move-result p3

    if-eqz p3, :cond_3

    iget-object p3, p0, Lcom/apk/f;->for:Lcom/apk/h;

    if-eq p3, v0, :cond_2

    sget-object v1, Lcom/apk/h;->if:Lcom/apk/h;

    if-eq p3, v1, :cond_2

    sget-object v1, Lcom/apk/h;->new:Lcom/apk/h;

    if-ne p3, v1, :cond_3

    :cond_2
    const-string p1, "\u6b63\u5728\u9884\u52a0\u8f7d\u4e2d\u6216\u8005\u5df2\u6709\u5df2\u7f13\u5b58\u7684\u89c6\u9891\u5e7f\u544a\uff0c\u4e0d\u9700\u8981\u9884\u52a0\u8f7d"

    .line 7
    invoke-virtual {p0, p1}, Lcom/apk/f;->super(Ljava/lang/String;)V

    return-void

    :cond_3
    const-string p3, "\u5f00\u59cb\u6267\u884c\u9884\u52a0\u8f7d\u89c6\u9891\u5e7f\u544a"

    .line 8
    invoke-virtual {p0, p3}, Lcom/apk/f;->super(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p0, p1, p2, v0}, Lcom/apk/f;->class(Ljava/lang/String;Ljava/lang/String;Lcom/apk/h;)V

    return-void
.end method
