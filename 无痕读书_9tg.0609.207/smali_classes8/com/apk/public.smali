.class public Lcom/apk/public;
.super Ljava/lang/Object;
.source "AdChapterUtils.java"

# interfaces
.implements Lcom/apk/w60;


# instance fields
.field public final synthetic do:Lcom/apk/import;


# direct methods
.method public constructor <init>(Lcom/apk/import;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/public;->do:Lcom/apk/import;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public case()V
    .locals 0

    return-void
.end method

.method public do()V
    .locals 0

    return-void
.end method

.method public else()V
    .locals 0

    return-void
.end method

.method public for()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/apk/public;->do:Lcom/apk/import;

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, v0, Lcom/apk/import;->finally:Z

    return-void
.end method

.method public if(ILjava/lang/String;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/apk/public;->do:Lcom/apk/import;

    .line 2
    iget-object p1, p1, Lcom/apk/import;->extends:Lcom/apk/d60;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/apk/d60;->case()V

    .line 4
    iget-object p1, p0, Lcom/apk/public;->do:Lcom/apk/import;

    const/4 p2, 0x0

    .line 5
    iput-object p2, p1, Lcom/apk/import;->extends:Lcom/apk/d60;

    :cond_0
    return-void
.end method

.method public onAdClick()V
    .locals 0

    return-void
.end method

.method public onAdClosed()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/apk/public;->do:Lcom/apk/import;

    .line 2
    iget-object v0, v0, Lcom/apk/import;->extends:Lcom/apk/d60;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/apk/d60;->case()V

    .line 4
    iget-object v0, p0, Lcom/apk/public;->do:Lcom/apk/import;

    const/4 v1, 0x0

    .line 5
    iput-object v1, v0, Lcom/apk/import;->extends:Lcom/apk/d60;

    :cond_0
    return-void
.end method
