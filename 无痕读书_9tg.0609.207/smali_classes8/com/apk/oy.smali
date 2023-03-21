.class public Lcom/apk/oy;
.super Ljava/lang/Object;
.source "ProgressRequestBody.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic do:Lcom/apk/hy;

.field public final synthetic if:Lcom/apk/py;


# direct methods
.method public constructor <init>(Lcom/apk/py;Lcom/apk/hy;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/oy;->if:Lcom/apk/py;

    iput-object p2, p0, Lcom/apk/oy;->do:Lcom/apk/hy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/apk/oy;->if:Lcom/apk/py;

    .line 2
    iget-object v0, v0, Lcom/apk/py;->for:Lcom/apk/mx;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lcom/apk/oy;->do:Lcom/apk/hy;

    invoke-virtual {v0, v1}, Lcom/apk/mx;->uploadProgress(Lcom/apk/hy;)V

    :cond_0
    return-void
.end method
