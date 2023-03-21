.class public Lcom/apk/lp$for;
.super Ljava/lang/Object;
.source "GifFrameLoader.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apk/lp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "for"
.end annotation


# instance fields
.field public final synthetic do:Lcom/apk/lp;


# direct methods
.method public constructor <init>(Lcom/apk/lp;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/lp$for;->do:Lcom/apk/lp;

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

    check-cast p1, Lcom/apk/lp$do;

    .line 3
    iget-object v0, p0, Lcom/apk/lp$for;->do:Lcom/apk/lp;

    invoke-virtual {v0, p1}, Lcom/apk/lp;->if(Lcom/apk/lp$do;)V

    return v1

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/apk/lp$do;

    .line 5
    iget-object v0, p0, Lcom/apk/lp$for;->do:Lcom/apk/lp;

    iget-object v0, v0, Lcom/apk/lp;->new:Lcom/apk/qi;

    invoke-virtual {v0, p1}, Lcom/apk/qi;->const(Lcom/apk/pr;)V

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
