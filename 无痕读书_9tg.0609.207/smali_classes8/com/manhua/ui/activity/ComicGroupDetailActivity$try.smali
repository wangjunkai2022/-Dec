.class public Lcom/manhua/ui/activity/ComicGroupDetailActivity$try;
.super Lcom/apk/bg;
.source "ComicGroupDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/manhua/ui/activity/ComicGroupDetailActivity;->o()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/manhua/ui/activity/ComicGroupDetailActivity;


# direct methods
.method public constructor <init>(Lcom/manhua/ui/activity/ComicGroupDetailActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/manhua/ui/activity/ComicGroupDetailActivity$try;->do:Lcom/manhua/ui/activity/ComicGroupDetailActivity;

    invoke-direct {p0}, Lcom/apk/bg;-><init>()V

    return-void
.end method


# virtual methods
.method public onNoDoubleClick(Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 2
    :pswitch_1
    iget-object p1, p0, Lcom/manhua/ui/activity/ComicGroupDetailActivity$try;->do:Lcom/manhua/ui/activity/ComicGroupDetailActivity;

    .line 3
    iget-object p1, p1, Lcom/manhua/ui/activity/ComicGroupDetailActivity;->case:Lcom/manhua/adapter/ComicGroupAdapter;

    const/4 v0, 0x1

    .line 4
    invoke-virtual {p1, v0}, Lcom/manhua/adapter/ComicGroupAdapter;->if(Z)I

    move-result p1

    .line 5
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicGroupDetailActivity$try;->do:Lcom/manhua/ui/activity/ComicGroupDetailActivity;

    .line 6
    invoke-virtual {v0}, Lcom/manhua/ui/activity/ComicGroupDetailActivity;->o()V

    .line 7
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicGroupDetailActivity$try;->do:Lcom/manhua/ui/activity/ComicGroupDetailActivity;

    .line 8
    iget-object v0, v0, Lcom/manhua/ui/activity/ComicGroupDetailActivity;->goto:Lcom/apk/yg;

    if-eqz v0, :cond_1

    .line 9
    invoke-virtual {v0, p1, p1}, Lcom/apk/yg;->do(II)V

    goto :goto_0

    .line 10
    :pswitch_2
    iget-object p1, p0, Lcom/manhua/ui/activity/ComicGroupDetailActivity$try;->do:Lcom/manhua/ui/activity/ComicGroupDetailActivity;

    .line 11
    iget-object p1, p1, Lcom/manhua/ui/activity/ComicGroupDetailActivity;->case:Lcom/manhua/adapter/ComicGroupAdapter;

    .line 12
    invoke-virtual {p1}, Lcom/manhua/adapter/ComicGroupAdapter;->do()Ljava/util/List;

    move-result-object p1

    .line 13
    move-object v0, p1

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 14
    iget-object v1, p0, Lcom/manhua/ui/activity/ComicGroupDetailActivity$try;->do:Lcom/manhua/ui/activity/ComicGroupDetailActivity;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    .line 15
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/manhua/data/bean/ComicCollectBean;

    invoke-virtual {v0}, Lcom/manhua/data/bean/ComicCollectBean;->getGroupId()Ljava/lang/String;

    move-result-object v0

    iget-boolean v2, v1, Lcom/manhua/ui/activity/ComicGroupDetailActivity;->for:Z

    iget-boolean v3, v1, Lcom/manhua/ui/activity/ComicGroupDetailActivity;->new:Z

    invoke-static {v1, p1, v0, v2, v3}, Lcom/manhua/ui/activity/CreateComicGroupActivity;->m(Landroid/app/Activity;Ljava/util/List;Ljava/lang/String;ZZ)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 16
    throw p1

    .line 17
    :pswitch_3
    iget-object p1, p0, Lcom/manhua/ui/activity/ComicGroupDetailActivity$try;->do:Lcom/manhua/ui/activity/ComicGroupDetailActivity;

    .line 18
    iget-object v0, p1, Lcom/manhua/ui/activity/ComicGroupDetailActivity;->case:Lcom/manhua/adapter/ComicGroupAdapter;

    .line 19
    invoke-virtual {v0}, Lcom/manhua/adapter/ComicGroupAdapter;->do()Ljava/util/List;

    move-result-object v0

    .line 20
    invoke-virtual {p1, v0}, Lcom/manhua/ui/activity/ComicGroupDetailActivity;->n(Ljava/util/List;)V

    :cond_1
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x7f0901e9
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
