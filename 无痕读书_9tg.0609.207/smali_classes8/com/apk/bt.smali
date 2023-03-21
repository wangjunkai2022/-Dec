.class public final Lcom/apk/bt;
.super Ljava/lang/Object;
.source "DialogUtils.java"

# interfaces
.implements Lcom/apk/sv;


# instance fields
.field public final synthetic do:Lcom/apk/zs;


# direct methods
.method public constructor <init>(Lcom/apk/zs;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/bt;->do:Lcom/apk/zs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/bt;->do:Lcom/apk/zs;

    .line 2
    iget-object v0, v0, Lcom/apk/zs;->else:Lcom/apk/dt;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lcom/apk/dt;->onClick()V

    :cond_0
    return-void
.end method
