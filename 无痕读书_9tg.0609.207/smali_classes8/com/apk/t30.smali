.class public Lcom/apk/t30;
.super Lcom/apk/qi;
.source "GlideRequests.java"


# direct methods
.method public constructor <init>(Lcom/apk/ii;Lcom/apk/dq;Lcom/apk/iq;Landroid/content/Context;)V
    .locals 0
    .param p1    # Lcom/apk/ii;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/apk/dq;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/apk/iq;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/apk/qi;-><init>(Lcom/apk/ii;Lcom/apk/dq;Lcom/apk/iq;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public case()Lcom/apk/pi;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-super {p0}, Lcom/apk/qi;->case()Lcom/apk/pi;

    move-result-object v0

    check-cast v0, Lcom/apk/s30;

    return-object v0
.end method

.method public catch()Lcom/apk/pi;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-super {p0}, Lcom/apk/qi;->catch()Lcom/apk/pi;

    move-result-object v0

    check-cast v0, Lcom/apk/s30;

    return-object v0
.end method

.method public class()Lcom/apk/pi;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-super {p0}, Lcom/apk/qi;->class()Lcom/apk/pi;

    move-result-object v0

    check-cast v0, Lcom/apk/s30;

    return-object v0
.end method

.method public final(Ljava/io/File;)Lcom/apk/pi;
    .locals 2
    .param p1    # Ljava/io/File;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/apk/qi;->catch()Lcom/apk/pi;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/apk/s30;

    .line 2
    iput-object p1, v1, Lcom/apk/pi;->strictfp:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, v1, Lcom/apk/pi;->protected:Z

    .line 4
    check-cast v0, Lcom/apk/s30;

    return-object v0
.end method

.method public import(Lcom/apk/dr;)V
    .locals 1
    .param p1    # Lcom/apk/dr;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    instance-of v0, p1, Lcom/apk/r30;

    if-eqz v0, :cond_0

    .line 2
    invoke-super {p0, p1}, Lcom/apk/qi;->import(Lcom/apk/dr;)V

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Lcom/apk/r30;

    invoke-direct {v0}, Lcom/apk/r30;-><init>()V

    invoke-virtual {v0, p1}, Lcom/apk/r30;->strictfp(Lcom/apk/xq;)Lcom/apk/r30;

    move-result-object p1

    invoke-super {p0, p1}, Lcom/apk/qi;->import(Lcom/apk/dr;)V

    :goto_0
    return-void
.end method

.method public new(Ljava/lang/Class;)Lcom/apk/pi;
    .locals 3
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/apk/s30;

    iget-object v1, p0, Lcom/apk/qi;->do:Lcom/apk/ii;

    iget-object v2, p0, Lcom/apk/qi;->if:Landroid/content/Context;

    invoke-direct {v0, v1, p0, p1, v2}, Lcom/apk/s30;-><init>(Lcom/apk/ii;Lcom/apk/qi;Ljava/lang/Class;Landroid/content/Context;)V

    return-object v0
.end method

.method public super(Ljava/lang/Object;)Lcom/apk/pi;
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/apk/qi;->catch()Lcom/apk/pi;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/apk/s30;

    .line 2
    iput-object p1, v1, Lcom/apk/pi;->strictfp:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, v1, Lcom/apk/pi;->protected:Z

    .line 4
    check-cast v0, Lcom/apk/s30;

    return-object v0
.end method
