.class public Lcom/apk/b20;
.super Lcom/apk/bg;
.source "ComicShelfFragment.java"


# instance fields
.field public final synthetic do:Lcom/manhua/ui/fragment/ComicShelfFragment;


# direct methods
.method public constructor <init>(Lcom/manhua/ui/fragment/ComicShelfFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/b20;->do:Lcom/manhua/ui/fragment/ComicShelfFragment;

    invoke-direct {p0}, Lcom/apk/bg;-><init>()V

    return-void
.end method


# virtual methods
.method public onNoDoubleClick(Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0901ec

    if-ne v0, v1, :cond_1

    .line 2
    iget-object p1, p0, Lcom/apk/b20;->do:Lcom/manhua/ui/fragment/ComicShelfFragment;

    .line 3
    iget-object p1, p1, Lcom/manhua/ui/fragment/ComicShelfFragment;->try:Lcom/manhua/adapter/ComicGroupAdapter;

    if-eqz p1, :cond_3

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p1, v0}, Lcom/manhua/adapter/ComicGroupAdapter;->if(Z)I

    move-result p1

    .line 5
    iget-object v0, p0, Lcom/apk/b20;->do:Lcom/manhua/ui/fragment/ComicShelfFragment;

    .line 6
    iget-object v1, v0, Lcom/manhua/ui/fragment/ComicShelfFragment;->throw:Lcom/apk/yg;

    if-nez v1, :cond_0

    .line 7
    new-instance v1, Lcom/apk/yg;

    invoke-virtual {v0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object v2

    new-instance v3, Lcom/apk/b20;

    invoke-direct {v3, v0}, Lcom/apk/b20;-><init>(Lcom/manhua/ui/fragment/ComicShelfFragment;)V

    invoke-direct {v1, v2, v3}, Lcom/apk/yg;-><init>(Landroid/app/Activity;Lcom/apk/bg;)V

    iput-object v1, v0, Lcom/manhua/ui/fragment/ComicShelfFragment;->throw:Lcom/apk/yg;

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/apk/b20;->do:Lcom/manhua/ui/fragment/ComicShelfFragment;

    .line 9
    iget-object v0, v0, Lcom/manhua/ui/fragment/ComicShelfFragment;->throw:Lcom/apk/yg;

    if-eqz v0, :cond_3

    .line 10
    invoke-virtual {v0, p1, p1}, Lcom/apk/yg;->do(II)V

    goto :goto_0

    .line 11
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0901e9

    if-ne v0, v1, :cond_2

    .line 12
    iget-object p1, p0, Lcom/apk/b20;->do:Lcom/manhua/ui/fragment/ComicShelfFragment;

    .line 13
    iget-object v0, p1, Lcom/manhua/ui/fragment/ComicShelfFragment;->try:Lcom/manhua/adapter/ComicGroupAdapter;

    if-eqz v0, :cond_3

    .line 14
    invoke-virtual {v0}, Lcom/manhua/adapter/ComicGroupAdapter;->do()Ljava/util/List;

    move-result-object v0

    .line 15
    invoke-virtual {p1, v0}, Lcom/manhua/ui/fragment/ComicShelfFragment;->r(Ljava/util/List;)V

    goto :goto_0

    .line 16
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0901ea

    if-ne p1, v0, :cond_3

    .line 17
    iget-object p1, p0, Lcom/apk/b20;->do:Lcom/manhua/ui/fragment/ComicShelfFragment;

    .line 18
    iget-object p1, p1, Lcom/manhua/ui/fragment/ComicShelfFragment;->try:Lcom/manhua/adapter/ComicGroupAdapter;

    if-eqz p1, :cond_3

    .line 19
    invoke-virtual {p1}, Lcom/manhua/adapter/ComicGroupAdapter;->do()Ljava/util/List;

    move-result-object p1

    .line 20
    move-object v0, p1

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 21
    iget-object v0, p0, Lcom/apk/b20;->do:Lcom/manhua/ui/fragment/ComicShelfFragment;

    .line 22
    invoke-virtual {v0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object v1

    iget-boolean v2, v0, Lcom/manhua/ui/fragment/ComicShelfFragment;->else:Z

    iget-boolean v0, v0, Lcom/manhua/ui/fragment/ComicShelfFragment;->goto:Z

    const-string v3, ""

    invoke-static {v1, p1, v3, v2, v0}, Lcom/manhua/ui/activity/CreateComicGroupActivity;->m(Landroid/app/Activity;Ljava/util/List;Ljava/lang/String;ZZ)V

    :cond_3
    :goto_0
    return-void
.end method
