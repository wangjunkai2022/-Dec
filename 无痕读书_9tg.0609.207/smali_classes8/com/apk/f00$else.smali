.class public Lcom/apk/f00$else;
.super Ljava/lang/Object;
.source "ComicReadPresenter.java"

# interfaces
.implements Lcom/apk/l00;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apk/f00;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/apk/f00;


# direct methods
.method public constructor <init>(Lcom/apk/f00;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/f00$else;->do:Lcom/apk/f00;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public do()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/apk/f00$else;->do:Lcom/apk/f00;

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Lcom/apk/b1;

    invoke-direct {v1}, Lcom/apk/b1;-><init>()V

    iget-object v2, v0, Lcom/apk/qz;->if:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Lcom/apk/b1;->if(Landroid/content/Context;)Lcom/apk/b1;

    new-instance v2, Lcom/apk/j00;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3, v3}, Lcom/apk/j00;-><init>(Lcom/apk/f00;ZZ)V

    invoke-virtual {v1, v2}, Lcom/apk/b1;->do(Lcom/apk/c1;)Lcom/apk/b1;

    return-void

    :cond_0
    const/4 v0, 0x0

    throw v0
.end method
