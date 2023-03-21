.class public Lcom/manhua/ui/activity/ComicGroupDetailActivity$case;
.super Ljava/lang/Object;
.source "ComicGroupDetailActivity.java"

# interfaces
.implements Lcom/apk/g1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/manhua/ui/activity/ComicGroupDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "case"
.end annotation


# instance fields
.field public do:Lcom/manhua/data/bean/ComicCollectBean;

.field public final synthetic for:Lcom/manhua/ui/activity/ComicGroupDetailActivity;

.field public final if:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/manhua/ui/activity/ComicGroupDetailActivity;ILcom/manhua/data/bean/ComicCollectBean;Lcom/manhua/ui/activity/ComicGroupDetailActivity$do;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/manhua/ui/activity/ComicGroupDetailActivity$case;->for:Lcom/manhua/ui/activity/ComicGroupDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p3, p0, Lcom/manhua/ui/activity/ComicGroupDetailActivity$case;->do:Lcom/manhua/data/bean/ComicCollectBean;

    .line 3
    invoke-virtual {p3}, Lcom/manhua/data/bean/ComicCollectBean;->getCollectId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/manhua/ui/activity/ComicGroupDetailActivity$case;->if:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onData(Ljava/lang/Object;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicGroupDetailActivity$case;->do:Lcom/manhua/data/bean/ComicCollectBean;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicGroupDetailActivity$case;->for:Lcom/manhua/ui/activity/ComicGroupDetailActivity;

    .line 3
    iget-object v0, v0, Lcom/manhua/ui/activity/ComicGroupDetailActivity;->else:Ljava/util/List;

    .line 4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 5
    iget-object v3, p0, Lcom/manhua/ui/activity/ComicGroupDetailActivity$case;->for:Lcom/manhua/ui/activity/ComicGroupDetailActivity;

    .line 6
    iget-object v3, v3, Lcom/manhua/ui/activity/ComicGroupDetailActivity;->else:Ljava/util/List;

    .line 7
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/manhua/data/bean/ComicCollectBean;

    .line 8
    invoke-virtual {v3}, Lcom/manhua/data/bean/ComicCollectBean;->getCollectId()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/manhua/ui/activity/ComicGroupDetailActivity$case;->if:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 9
    iput-object v3, p0, Lcom/manhua/ui/activity/ComicGroupDetailActivity$case;->do:Lcom/manhua/data/bean/ComicCollectBean;

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 10
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicGroupDetailActivity$case;->do:Lcom/manhua/data/bean/ComicCollectBean;

    if-nez v0, :cond_2

    return-void

    .line 11
    :cond_2
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_2

    .line 12
    :pswitch_1
    iget-object p1, p0, Lcom/manhua/ui/activity/ComicGroupDetailActivity$case;->for:Lcom/manhua/ui/activity/ComicGroupDetailActivity;

    iget-object v0, p0, Lcom/manhua/ui/activity/ComicGroupDetailActivity$case;->do:Lcom/manhua/data/bean/ComicCollectBean;

    invoke-static {p1, v0}, Lcom/manhua/ui/activity/ComicGroupDetailActivity;->k(Lcom/manhua/ui/activity/ComicGroupDetailActivity;Lcom/manhua/data/bean/ComicCollectBean;)V

    goto/16 :goto_2

    .line 13
    :pswitch_2
    iget-object p1, p0, Lcom/manhua/ui/activity/ComicGroupDetailActivity$case;->for:Lcom/manhua/ui/activity/ComicGroupDetailActivity;

    iget-object v0, p0, Lcom/manhua/ui/activity/ComicGroupDetailActivity$case;->do:Lcom/manhua/data/bean/ComicCollectBean;

    invoke-static {p1, v0}, Lcom/manhua/ui/activity/ComicGroupDetailActivity;->j(Lcom/manhua/ui/activity/ComicGroupDetailActivity;Lcom/manhua/data/bean/ComicCollectBean;)V

    goto/16 :goto_2

    .line 14
    :pswitch_3
    iget-object p1, p0, Lcom/manhua/ui/activity/ComicGroupDetailActivity$case;->for:Lcom/manhua/ui/activity/ComicGroupDetailActivity;

    iget-object v0, p0, Lcom/manhua/ui/activity/ComicGroupDetailActivity$case;->do:Lcom/manhua/data/bean/ComicCollectBean;

    invoke-static {p1, v0}, Lcom/manhua/ui/activity/ComicGroupDetailActivity;->i(Lcom/manhua/ui/activity/ComicGroupDetailActivity;Lcom/manhua/data/bean/ComicCollectBean;)V

    goto/16 :goto_2

    .line 15
    :pswitch_4
    :try_start_0
    iget-object p1, p0, Lcom/manhua/ui/activity/ComicGroupDetailActivity$case;->for:Lcom/manhua/ui/activity/ComicGroupDetailActivity;

    .line 16
    iget-object p1, p1, Lcom/manhua/ui/activity/ComicGroupDetailActivity;->try:Landroid/view/View;

    if-nez p1, :cond_3

    .line 17
    iget-object p1, p0, Lcom/manhua/ui/activity/ComicGroupDetailActivity$case;->for:Lcom/manhua/ui/activity/ComicGroupDetailActivity;

    const v1, 0x7f0903df

    invoke-virtual {p1, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewStub;

    .line 18
    iget-object v1, p0, Lcom/manhua/ui/activity/ComicGroupDetailActivity$case;->for:Lcom/manhua/ui/activity/ComicGroupDetailActivity;

    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p1

    .line 19
    iput-object p1, v1, Lcom/manhua/ui/activity/ComicGroupDetailActivity;->try:Landroid/view/View;

    .line 20
    iget-object p1, p0, Lcom/manhua/ui/activity/ComicGroupDetailActivity$case;->for:Lcom/manhua/ui/activity/ComicGroupDetailActivity;

    .line 21
    iget-object p1, p1, Lcom/manhua/ui/activity/ComicGroupDetailActivity;->try:Landroid/view/View;

    const/4 v1, 0x4

    .line 22
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 23
    :cond_3
    iget-object p1, p0, Lcom/manhua/ui/activity/ComicGroupDetailActivity$case;->for:Lcom/manhua/ui/activity/ComicGroupDetailActivity;

    iget-object v1, p0, Lcom/manhua/ui/activity/ComicGroupDetailActivity$case;->for:Lcom/manhua/ui/activity/ComicGroupDetailActivity;

    .line 24
    iget-object v1, v1, Lcom/manhua/ui/activity/ComicGroupDetailActivity;->try:Landroid/view/View;

    .line 25
    iget-object v2, p0, Lcom/manhua/ui/activity/ComicGroupDetailActivity$case;->do:Lcom/manhua/data/bean/ComicCollectBean;

    .line 26
    invoke-static {v2}, Lcom/apk/mu;->const(Lcom/manhua/data/bean/ComicCollectBean;)Lcom/manhua/data/bean/ComicBean;

    move-result-object v2

    .line 27
    invoke-static {p1, v1, v0, v2}, Lcom/apk/w0;->interface(Landroid/app/Activity;Landroid/view/View;Lcom/biquge/ebook/app/bean/Book;Lcom/manhua/data/bean/ComicBean;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 28
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 29
    :pswitch_5
    iget-object p1, p0, Lcom/manhua/ui/activity/ComicGroupDetailActivity$case;->for:Lcom/manhua/ui/activity/ComicGroupDetailActivity;

    invoke-static {p1}, Lcom/apk/mu;->goto(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_4

    return-void

    .line 30
    :cond_4
    invoke-static {}, Lcom/apk/o0;->else()Lcom/apk/o0;

    move-result-object v0

    iget-object v1, p0, Lcom/manhua/ui/activity/ComicGroupDetailActivity$case;->for:Lcom/manhua/ui/activity/ComicGroupDetailActivity;

    iget-object p1, p0, Lcom/manhua/ui/activity/ComicGroupDetailActivity$case;->do:Lcom/manhua/data/bean/ComicCollectBean;

    invoke-virtual {p1}, Lcom/manhua/data/bean/ComicCollectBean;->getCollectId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lcom/manhua/ui/activity/ComicGroupDetailActivity$case;->do:Lcom/manhua/data/bean/ComicCollectBean;

    .line 31
    invoke-virtual {p1}, Lcom/manhua/data/bean/ComicCollectBean;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 32
    invoke-virtual/range {v0 .. v5}, Lcom/apk/o0;->for(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ZLcom/apk/o0$else;)V

    goto :goto_2

    .line 33
    :pswitch_6
    iget-object p1, p0, Lcom/manhua/ui/activity/ComicGroupDetailActivity$case;->do:Lcom/manhua/data/bean/ComicCollectBean;

    if-eqz p1, :cond_6

    .line 34
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicGroupDetailActivity$case;->for:Lcom/manhua/ui/activity/ComicGroupDetailActivity;

    .line 35
    invoke-virtual {p1}, Lcom/manhua/data/bean/ComicCollectBean;->getCollectId()Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lcom/manhua/ui/activity/ComicGroupDetailActivity$case;->do:Lcom/manhua/data/bean/ComicCollectBean;

    invoke-virtual {v2}, Lcom/manhua/data/bean/ComicCollectBean;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    .line 36
    invoke-static {v0, p1, v2, v1, v3}, Lcom/apk/ze;->s(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto :goto_2

    .line 37
    :pswitch_7
    iget-object p1, p0, Lcom/manhua/ui/activity/ComicGroupDetailActivity$case;->for:Lcom/manhua/ui/activity/ComicGroupDetailActivity;

    iget-object v0, p0, Lcom/manhua/ui/activity/ComicGroupDetailActivity$case;->do:Lcom/manhua/data/bean/ComicCollectBean;

    invoke-static {p1, v0}, Lcom/manhua/ui/activity/ComicNovelDirActivity;->j(Landroid/content/Context;Lcom/manhua/data/bean/ComicCollectBean;)V

    goto :goto_2

    .line 38
    :pswitch_8
    iget-object v1, p0, Lcom/manhua/ui/activity/ComicGroupDetailActivity$case;->for:Lcom/manhua/ui/activity/ComicGroupDetailActivity;

    iget-object v2, p0, Lcom/manhua/ui/activity/ComicGroupDetailActivity$case;->do:Lcom/manhua/data/bean/ComicCollectBean;

    invoke-static {v1, v2}, Lcom/manhua/ui/activity/ComicGroupDetailActivity;->m(Lcom/manhua/ui/activity/ComicGroupDetailActivity;Lcom/manhua/data/bean/ComicCollectBean;)V

    .line 39
    iget-object v1, p0, Lcom/manhua/ui/activity/ComicGroupDetailActivity$case;->for:Lcom/manhua/ui/activity/ComicGroupDetailActivity;

    .line 40
    iget-object v1, v1, Lcom/manhua/ui/activity/ComicGroupDetailActivity;->this:Lcom/manhua/ui/view/ComicMenuPopupView;

    if-eqz v1, :cond_5

    .line 41
    invoke-virtual {v1, p1}, Lcom/manhua/ui/view/ComicMenuPopupView;->break(I)V

    .line 42
    :cond_5
    iput-object v0, p0, Lcom/manhua/ui/activity/ComicGroupDetailActivity$case;->do:Lcom/manhua/data/bean/ComicCollectBean;

    goto :goto_2

    .line 43
    :pswitch_9
    iget-object p1, p0, Lcom/manhua/ui/activity/ComicGroupDetailActivity$case;->for:Lcom/manhua/ui/activity/ComicGroupDetailActivity;

    iget-object v0, p0, Lcom/manhua/ui/activity/ComicGroupDetailActivity$case;->do:Lcom/manhua/data/bean/ComicCollectBean;

    .line 44
    invoke-static {v0}, Lcom/apk/mu;->const(Lcom/manhua/data/bean/ComicCollectBean;)Lcom/manhua/data/bean/ComicBean;

    move-result-object v0

    .line 45
    invoke-static {p1, v0}, Lcom/manhua/ui/activity/ComicDetailActivity;->n(Landroid/content/Context;Lcom/manhua/data/bean/ComicBean;)V

    :cond_6
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
