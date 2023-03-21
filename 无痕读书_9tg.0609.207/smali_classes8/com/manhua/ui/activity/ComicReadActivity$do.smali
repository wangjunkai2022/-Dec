.class public Lcom/manhua/ui/activity/ComicReadActivity$do;
.super Ljava/lang/Object;
.source "ComicReadActivity.java"

# interfaces
.implements Lcom/manhua/ui/widget/PageRecyclerView$do;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/manhua/ui/activity/ComicReadActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/manhua/ui/activity/ComicReadActivity;


# direct methods
.method public constructor <init>(Lcom/manhua/ui/activity/ComicReadActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/manhua/ui/activity/ComicReadActivity$do;->do:Lcom/manhua/ui/activity/ComicReadActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public case()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicReadActivity$do;->do:Lcom/manhua/ui/activity/ComicReadActivity;

    invoke-static {v0}, Lcom/manhua/ui/activity/ComicReadActivity;->r(Lcom/manhua/ui/activity/ComicReadActivity;)V

    return-void
.end method

.method public do(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicReadActivity$do;->do:Lcom/manhua/ui/activity/ComicReadActivity;

    .line 2
    iget-object v0, v0, Lcom/manhua/ui/activity/ComicReadActivity;->const:Lcom/apk/f00;

    .line 3
    invoke-virtual {v0, p1}, Lcom/apk/f00;->k(I)V

    .line 4
    iget-object p1, p0, Lcom/manhua/ui/activity/ComicReadActivity$do;->do:Lcom/manhua/ui/activity/ComicReadActivity;

    .line 5
    iget-object p1, p1, Lcom/manhua/ui/activity/ComicReadActivity;->const:Lcom/apk/f00;

    .line 6
    invoke-virtual {p1}, Lcom/apk/f00;->goto()V

    return-void
.end method

.method public for(I)V
    .locals 0

    return-void
.end method

.method public if()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicReadActivity$do;->do:Lcom/manhua/ui/activity/ComicReadActivity;

    .line 2
    iget-object v0, v0, Lcom/manhua/ui/activity/ComicReadActivity;->const:Lcom/apk/f00;

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Lcom/apk/f00;->a(Z)V

    return-void
.end method

.method public new()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicReadActivity$do;->do:Lcom/manhua/ui/activity/ComicReadActivity;

    .line 2
    iget-object v0, v0, Lcom/manhua/ui/activity/ComicReadActivity;->const:Lcom/apk/f00;

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Lcom/apk/f00;->b(Z)V

    return-void
.end method

.method public try()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicReadActivity$do;->do:Lcom/manhua/ui/activity/ComicReadActivity;

    .line 2
    iget-object v0, v0, Lcom/manhua/ui/activity/ComicReadActivity;->const:Lcom/apk/f00;

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Lcom/apk/f00;->static(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicReadActivity$do;->do:Lcom/manhua/ui/activity/ComicReadActivity;

    invoke-virtual {v0}, Lcom/manhua/ui/activity/ComicReadActivity;->import()V

    :cond_0
    return-void
.end method
