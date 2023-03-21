.class public final Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_19do/a$a;
.super Ljava/lang/Thread;
.source "ANRFileObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_19do/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public a:I

.field public final synthetic b:Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_19do/a;


# direct methods
.method public constructor <init>(Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_19do/a;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_19do/a$a;->b:Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_19do/a;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 2
    iput p2, p0, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_19do/a$a;->a:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget v0, p0, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_19do/a$a;->a:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    .line 2
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_19do/a$a;->b:Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_19do/a;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_19do/a;->a(Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_19do/a;Z)Z

    return-void
.end method
