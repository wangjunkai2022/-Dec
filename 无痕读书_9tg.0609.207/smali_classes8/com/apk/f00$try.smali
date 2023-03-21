.class public Lcom/apk/f00$try;
.super Ljava/lang/Object;
.source "ComicReadPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apk/f00;->h()V
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
    iput-object p1, p0, Lcom/apk/f00$try;->do:Lcom/apk/f00;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/apk/f00$try;->do:Lcom/apk/f00;

    .line 2
    iget v1, v0, Lcom/apk/f00;->else:I

    .line 3
    invoke-virtual {v0, v1}, Lcom/apk/f00;->j(I)V

    return-void
.end method
