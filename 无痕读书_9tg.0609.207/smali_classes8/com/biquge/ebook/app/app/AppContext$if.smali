.class public Lcom/biquge/ebook/app/app/AppContext$if;
.super Landroid/os/Handler;
.source "AppContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biquge/ebook/app/app/AppContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "if"
.end annotation


# instance fields
.field public final do:Lcom/apk/static;


# direct methods
.method public constructor <init>(Lcom/apk/static;Lcom/biquge/ebook/app/app/AppContext$do;)V
    .locals 0

    .line 1
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2
    iput-object p1, p0, Lcom/biquge/ebook/app/app/AppContext$if;->do:Lcom/apk/static;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 2
    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x2766

    if-ne v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/biquge/ebook/app/app/AppContext$if;->do:Lcom/apk/static;

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/biquge/ebook/app/app/AppContext$if;->do:Lcom/apk/static;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {v0, p1}, Lcom/apk/static;->do(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
