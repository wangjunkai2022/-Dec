.class public Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_19do/a;
.super Landroid/os/FileObserver;
.source "ANRFileObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_19do/a$a;
    }
.end annotation


# instance fields
.field public final a:Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_19do/c;

.field public volatile b:Z


# direct methods
.method public constructor <init>(Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_19do/c;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p2, p3}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    const/4 p3, 0x1

    .line 2
    iput-boolean p3, p0, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_19do/a;->b:Z

    if-eqz p1, :cond_0

    .line 3
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 4
    iput-object p1, p0, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_19do/a;->a:Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_19do/c;

    return-void

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "params is not right path is null or ANRManager is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic a(Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_19do/a;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_19do/a;->b:Z

    return p1
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_19do/a;->b:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    .line 2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "trace"

    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_19do/a;->a:Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_19do/c;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_19do/a;->b:Z

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/data/anr/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/16 v0, 0xc8

    const/16 v1, 0x50

    invoke-virtual {p1, v0, p2, v1}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_19do/c;->a(ILjava/lang/String;I)Z

    .line 5
    new-instance p1, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_19do/a$a;

    const/16 p2, 0x1388

    invoke-direct {p1, p0, p2}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_19do/a$a;-><init>(Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_19do/a;I)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method
