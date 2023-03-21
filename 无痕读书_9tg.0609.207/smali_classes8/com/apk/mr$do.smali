.class public Lcom/apk/mr$do;
.super Ljava/lang/Object;
.source "PreloadTarget.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apk/mr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 2

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/apk/mr;

    .line 3
    iget-object v0, p1, Lcom/apk/mr;->new:Lcom/apk/qi;

    invoke-virtual {v0, p1}, Lcom/apk/qi;->const(Lcom/apk/pr;)V

    return v1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
