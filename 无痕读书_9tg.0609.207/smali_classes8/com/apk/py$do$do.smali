.class public Lcom/apk/py$do$do;
.super Ljava/lang/Object;
.source "ProgressRequestBody.java"

# interfaces
.implements Lcom/apk/hy$do;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apk/py$do;->class(Lcom/apk/rk0;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/apk/py$do;


# direct methods
.method public constructor <init>(Lcom/apk/py$do;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/py$do$do;->do:Lcom/apk/py$do;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/apk/hy;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/apk/py$do$do;->do:Lcom/apk/py$do;

    iget-object v0, v0, Lcom/apk/py$do;->for:Lcom/apk/py;

    .line 2
    iget-object v1, v0, Lcom/apk/py;->new:Lcom/apk/py$if;

    if-eqz v1, :cond_0

    .line 3
    invoke-interface {v1, p1}, Lcom/apk/py$if;->do(Lcom/apk/hy;)V

    goto :goto_0

    .line 4
    :cond_0
    new-instance v1, Lcom/apk/oy;

    invoke-direct {v1, v0, p1}, Lcom/apk/oy;-><init>(Lcom/apk/py;Lcom/apk/hy;)V

    invoke-static {v1}, Lcom/apk/mu;->u(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method
