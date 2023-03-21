.class public Lcom/apk/f00$case;
.super Ljava/lang/Object;
.source "ComicReadPresenter.java"

# interfaces
.implements Lcom/apk/import$try;


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
    iput-object p1, p0, Lcom/apk/f00$case;->do:Lcom/apk/f00;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public do()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/apk/f00$case;->do:Lcom/apk/f00;

    .line 2
    iget-object v0, v0, Lcom/apk/f00;->super:Lcom/apk/import;

    .line 3
    invoke-virtual {v0}, Lcom/apk/import;->try()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/apk/f00$case;->do:Lcom/apk/f00;

    .line 5
    iget-object v1, v0, Lcom/apk/f00;->super:Lcom/apk/import;

    .line 6
    iget-boolean v2, v1, Lcom/apk/import;->new:Z

    if-nez v2, :cond_0

    .line 7
    iget-object v0, v0, Lcom/apk/qz;->if:Landroid/app/Activity;

    .line 8
    invoke-virtual {v1, v0}, Lcom/apk/import;->else(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public for()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/apk/f00$case;->do:Lcom/apk/f00;

    const/4 v1, 0x0

    .line 2
    iput-boolean v1, v0, Lcom/apk/f00;->private:Z

    const/4 v2, 0x2

    .line 3
    invoke-static {v0, v2}, Lcom/apk/f00;->for(Lcom/apk/f00;I)V

    .line 4
    iget-object v0, p0, Lcom/apk/f00$case;->do:Lcom/apk/f00;

    .line 5
    iget-object v0, v0, Lcom/apk/f00;->super:Lcom/apk/import;

    .line 6
    invoke-virtual {v0}, Lcom/apk/import;->try()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Lcom/apk/f00$case;->do:Lcom/apk/f00;

    .line 8
    iget-object v2, v0, Lcom/apk/f00;->super:Lcom/apk/import;

    .line 9
    iget-boolean v3, v2, Lcom/apk/import;->new:Z

    if-eqz v3, :cond_0

    .line 10
    iget-object v0, v0, Lcom/apk/qz;->if:Landroid/app/Activity;

    .line 11
    invoke-virtual {v2, v0}, Lcom/apk/import;->else(Landroid/app/Activity;)V

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/apk/f00$case;->do:Lcom/apk/f00;

    .line 13
    iget-object v0, v0, Lcom/apk/qz;->do:Lcom/apk/rz;

    if-eqz v0, :cond_1

    .line 14
    check-cast v0, Lcom/apk/k00;

    invoke-interface {v0, v1}, Lcom/apk/k00;->case(Z)V

    :cond_1
    return-void
.end method

.method public if()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/apk/f00$case;->do:Lcom/apk/f00;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/apk/f00;->for(Lcom/apk/f00;I)V

    return-void
.end method

.method public start()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/apk/f00$case;->do:Lcom/apk/f00;

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, v0, Lcom/apk/f00;->private:Z

    .line 3
    invoke-static {v0, v1}, Lcom/apk/f00;->for(Lcom/apk/f00;I)V

    return-void
.end method
