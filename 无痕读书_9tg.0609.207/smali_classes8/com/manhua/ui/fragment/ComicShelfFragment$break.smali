.class public Lcom/manhua/ui/fragment/ComicShelfFragment$break;
.super Ljava/lang/Object;
.source "ComicShelfFragment.java"

# interfaces
.implements Lcom/apk/g1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/manhua/ui/fragment/ComicShelfFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "break"
.end annotation


# instance fields
.field public do:I

.field public final for:Ljava/lang/String;

.field public if:Lcom/manhua/data/bean/ComicCollectBean;

.field public final synthetic new:Lcom/manhua/ui/fragment/ComicShelfFragment;


# direct methods
.method public constructor <init>(Lcom/manhua/ui/fragment/ComicShelfFragment;ILcom/manhua/data/bean/ComicCollectBean;Lcom/manhua/ui/fragment/ComicShelfFragment$new;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/manhua/ui/fragment/ComicShelfFragment$break;->new:Lcom/manhua/ui/fragment/ComicShelfFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p2, p0, Lcom/manhua/ui/fragment/ComicShelfFragment$break;->do:I

    .line 3
    iput-object p3, p0, Lcom/manhua/ui/fragment/ComicShelfFragment$break;->if:Lcom/manhua/data/bean/ComicCollectBean;

    .line 4
    invoke-virtual {p3}, Lcom/manhua/data/bean/ComicCollectBean;->getCollectId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/manhua/ui/fragment/ComicShelfFragment$break;->for:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onData(Ljava/lang/Object;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicShelfFragment$break;->if:Lcom/manhua/data/bean/ComicCollectBean;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicShelfFragment$break;->new:Lcom/manhua/ui/fragment/ComicShelfFragment;

    .line 3
    iget-object v0, v0, Lcom/manhua/ui/fragment/ComicShelfFragment;->case:Ljava/util/List;

    .line 4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 5
    iget-object v3, p0, Lcom/manhua/ui/fragment/ComicShelfFragment$break;->new:Lcom/manhua/ui/fragment/ComicShelfFragment;

    .line 6
    iget-object v3, v3, Lcom/manhua/ui/fragment/ComicShelfFragment;->case:Ljava/util/List;

    .line 7
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/manhua/data/bean/ComicCollectBean;

    .line 8
    invoke-virtual {v3}, Lcom/manhua/data/bean/ComicCollectBean;->getCollectId()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/manhua/ui/fragment/ComicShelfFragment$break;->for:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 9
    iput v2, p0, Lcom/manhua/ui/fragment/ComicShelfFragment$break;->do:I

    .line 10
    iput-object v3, p0, Lcom/manhua/ui/fragment/ComicShelfFragment$break;->if:Lcom/manhua/data/bean/ComicCollectBean;

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 11
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicShelfFragment$break;->if:Lcom/manhua/data/bean/ComicCollectBean;

    if-nez v0, :cond_2

    return-void

    .line 12
    :cond_2
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 13
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicShelfFragment$break;->if:Lcom/manhua/data/bean/ComicCollectBean;

    invoke-virtual {v0}, Lcom/manhua/data/bean/ComicCollectBean;->isGroup()Z

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_9

    const/4 v0, -0x1

    if-eq p1, v0, :cond_8

    if-eqz p1, :cond_6

    if-eq p1, v3, :cond_5

    const/4 v0, 0x2

    if-eq p1, v0, :cond_4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    goto/16 :goto_2

    .line 14
    :cond_3
    iget-object p1, p0, Lcom/manhua/ui/fragment/ComicShelfFragment$break;->new:Lcom/manhua/ui/fragment/ComicShelfFragment;

    invoke-virtual {p1}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object p1

    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicShelfFragment$break;->if:Lcom/manhua/data/bean/ComicCollectBean;

    iget-object v1, p0, Lcom/manhua/ui/fragment/ComicShelfFragment$break;->new:Lcom/manhua/ui/fragment/ComicShelfFragment;

    .line 15
    iget-boolean v2, v1, Lcom/manhua/ui/fragment/ComicShelfFragment;->else:Z

    .line 16
    iget-boolean v1, v1, Lcom/manhua/ui/fragment/ComicShelfFragment;->goto:Z

    .line 17
    invoke-static {p1, v0, v3, v2, v1}, Lcom/manhua/ui/activity/ComicGroupDetailActivity;->r(Landroid/app/Activity;Lcom/manhua/data/bean/ComicCollectBean;ZZZ)V

    goto/16 :goto_2

    .line 18
    :cond_4
    iget-object v4, p0, Lcom/manhua/ui/fragment/ComicShelfFragment$break;->new:Lcom/manhua/ui/fragment/ComicShelfFragment;

    invoke-virtual {v4}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object v5

    const p1, 0x7f1001c0

    invoke-static {p1}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/manhua/ui/fragment/ComicShelfFragment$break$if;

    invoke-direct {v7, p0}, Lcom/manhua/ui/fragment/ComicShelfFragment$break$if;-><init>(Lcom/manhua/ui/fragment/ComicShelfFragment$break;)V

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-static/range {v4 .. v9}, Lcom/manhua/ui/fragment/ComicShelfFragment;->l(Lcom/manhua/ui/fragment/ComicShelfFragment;Landroid/content/Context;Ljava/lang/String;Lcom/apk/ft;Lcom/apk/dt;Z)V

    goto/16 :goto_2

    :cond_5
    const p1, 0x7f1001bf

    .line 19
    invoke-static {p1}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object p1

    .line 20
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicShelfFragment$break;->if:Lcom/manhua/data/bean/ComicCollectBean;

    invoke-virtual {v0}, Lcom/manhua/data/bean/ComicCollectBean;->getGroupTitle()Ljava/lang/String;

    move-result-object v0

    .line 21
    iget-object v3, p0, Lcom/manhua/ui/fragment/ComicShelfFragment$break;->new:Lcom/manhua/ui/fragment/ComicShelfFragment;

    invoke-virtual {v3}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object v3

    .line 22
    new-instance v4, Lcom/apk/lv;

    invoke-direct {v4}, Lcom/apk/lv;-><init>()V

    .line 23
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 24
    iput-object v5, v4, Lcom/apk/lv;->super:Ljava/lang/Boolean;

    .line 25
    new-instance v5, Lcom/manhua/ui/fragment/ComicShelfFragment$break$do;

    invoke-direct {v5, p0}, Lcom/manhua/ui/fragment/ComicShelfFragment$break$do;-><init>(Lcom/manhua/ui/fragment/ComicShelfFragment$break;)V

    .line 26
    sget-boolean v6, Lcom/apk/zu;->try:Z

    .line 27
    iput-boolean v6, v4, Lcom/apk/lv;->continue:Z

    .line 28
    new-instance v6, Lcom/lxj/xpopup/impl/InputConfirmPopupView;

    invoke-direct {v6, v3, v1}, Lcom/lxj/xpopup/impl/InputConfirmPopupView;-><init>(Landroid/content/Context;I)V

    .line 29
    iput-object p1, v6, Lcom/lxj/xpopup/impl/ConfirmPopupView;->else:Ljava/lang/CharSequence;

    .line 30
    iput-object v2, v6, Lcom/lxj/xpopup/impl/ConfirmPopupView;->goto:Ljava/lang/CharSequence;

    .line 31
    iput-object v0, v6, Lcom/lxj/xpopup/impl/ConfirmPopupView;->this:Ljava/lang/CharSequence;

    .line 32
    iput-object v0, v6, Lcom/lxj/xpopup/impl/InputConfirmPopupView;->final:Ljava/lang/CharSequence;

    .line 33
    iput-object v2, v6, Lcom/lxj/xpopup/impl/InputConfirmPopupView;->super:Lcom/apk/sv;

    .line 34
    iput-object v5, v6, Lcom/lxj/xpopup/impl/InputConfirmPopupView;->throw:Lcom/apk/wv;

    .line 35
    iput-object v4, v6, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/apk/lv;

    .line 36
    invoke-virtual {v6}, Lcom/lxj/xpopup/core/BasePopupView;->show()Lcom/lxj/xpopup/core/BasePopupView;

    goto/16 :goto_2

    .line 37
    :cond_6
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicShelfFragment$break;->new:Lcom/manhua/ui/fragment/ComicShelfFragment;

    iget v1, p0, Lcom/manhua/ui/fragment/ComicShelfFragment$break;->do:I

    invoke-static {v0, v1}, Lcom/manhua/ui/fragment/ComicShelfFragment;->j(Lcom/manhua/ui/fragment/ComicShelfFragment;I)V

    .line 38
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicShelfFragment$break;->new:Lcom/manhua/ui/fragment/ComicShelfFragment;

    .line 39
    iget-object v0, v0, Lcom/manhua/ui/fragment/ComicShelfFragment;->public:Lcom/manhua/ui/view/ComicMenuPopupView;

    if-eqz v0, :cond_7

    .line 40
    invoke-virtual {v0, p1}, Lcom/manhua/ui/view/ComicMenuPopupView;->break(I)V

    .line 41
    :cond_7
    iput-object v2, p0, Lcom/manhua/ui/fragment/ComicShelfFragment$break;->if:Lcom/manhua/data/bean/ComicCollectBean;

    goto/16 :goto_2

    .line 42
    :cond_8
    iget-object p1, p0, Lcom/manhua/ui/fragment/ComicShelfFragment$break;->new:Lcom/manhua/ui/fragment/ComicShelfFragment;

    invoke-virtual {p1}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object p1

    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicShelfFragment$break;->if:Lcom/manhua/data/bean/ComicCollectBean;

    iget-object v2, p0, Lcom/manhua/ui/fragment/ComicShelfFragment$break;->new:Lcom/manhua/ui/fragment/ComicShelfFragment;

    .line 43
    iget-boolean v3, v2, Lcom/manhua/ui/fragment/ComicShelfFragment;->else:Z

    .line 44
    iget-boolean v2, v2, Lcom/manhua/ui/fragment/ComicShelfFragment;->goto:Z

    .line 45
    invoke-static {p1, v0, v1, v3, v2}, Lcom/manhua/ui/activity/ComicGroupDetailActivity;->r(Landroid/app/Activity;Lcom/manhua/data/bean/ComicCollectBean;ZZZ)V

    goto/16 :goto_2

    :cond_9
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_2

    .line 46
    :pswitch_1
    iget-object p1, p0, Lcom/manhua/ui/fragment/ComicShelfFragment$break;->new:Lcom/manhua/ui/fragment/ComicShelfFragment;

    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicShelfFragment$break;->if:Lcom/manhua/data/bean/ComicCollectBean;

    invoke-static {p1, v0}, Lcom/manhua/ui/fragment/ComicShelfFragment;->o(Lcom/manhua/ui/fragment/ComicShelfFragment;Lcom/manhua/data/bean/ComicCollectBean;)V

    goto/16 :goto_2

    .line 47
    :pswitch_2
    iget-object p1, p0, Lcom/manhua/ui/fragment/ComicShelfFragment$break;->new:Lcom/manhua/ui/fragment/ComicShelfFragment;

    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicShelfFragment$break;->if:Lcom/manhua/data/bean/ComicCollectBean;

    invoke-static {p1, v0}, Lcom/manhua/ui/fragment/ComicShelfFragment;->n(Lcom/manhua/ui/fragment/ComicShelfFragment;Lcom/manhua/data/bean/ComicCollectBean;)V

    goto/16 :goto_2

    .line 48
    :pswitch_3
    iget-object p1, p0, Lcom/manhua/ui/fragment/ComicShelfFragment$break;->new:Lcom/manhua/ui/fragment/ComicShelfFragment;

    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicShelfFragment$break;->if:Lcom/manhua/data/bean/ComicCollectBean;

    invoke-static {p1, v0}, Lcom/manhua/ui/fragment/ComicShelfFragment;->m(Lcom/manhua/ui/fragment/ComicShelfFragment;Lcom/manhua/data/bean/ComicCollectBean;)V

    goto/16 :goto_2

    .line 49
    :pswitch_4
    :try_start_0
    iget-object p1, p0, Lcom/manhua/ui/fragment/ComicShelfFragment$break;->new:Lcom/manhua/ui/fragment/ComicShelfFragment;

    .line 50
    iget-object p1, p1, Lcom/manhua/ui/fragment/ComicShelfFragment;->super:Landroid/view/View;

    if-nez p1, :cond_a

    .line 51
    iget-object p1, p0, Lcom/manhua/ui/fragment/ComicShelfFragment$break;->new:Lcom/manhua/ui/fragment/ComicShelfFragment;

    const v0, 0x7f0903df

    .line 52
    invoke-virtual {p1, v0}, Lcom/apk/g6;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 53
    check-cast p1, Landroid/view/ViewStub;

    .line 54
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicShelfFragment$break;->new:Lcom/manhua/ui/fragment/ComicShelfFragment;

    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p1

    .line 55
    iput-object p1, v0, Lcom/manhua/ui/fragment/ComicShelfFragment;->super:Landroid/view/View;

    .line 56
    iget-object p1, p0, Lcom/manhua/ui/fragment/ComicShelfFragment$break;->new:Lcom/manhua/ui/fragment/ComicShelfFragment;

    .line 57
    iget-object p1, p1, Lcom/manhua/ui/fragment/ComicShelfFragment;->super:Landroid/view/View;

    const/4 v0, 0x4

    .line 58
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 59
    :cond_a
    iget-object p1, p0, Lcom/manhua/ui/fragment/ComicShelfFragment$break;->new:Lcom/manhua/ui/fragment/ComicShelfFragment;

    iget-object p1, p1, Lcom/apk/g6;->mActivity:Lcom/apk/i6;

    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicShelfFragment$break;->new:Lcom/manhua/ui/fragment/ComicShelfFragment;

    .line 60
    iget-object v0, v0, Lcom/manhua/ui/fragment/ComicShelfFragment;->super:Landroid/view/View;

    .line 61
    iget-object v1, p0, Lcom/manhua/ui/fragment/ComicShelfFragment$break;->if:Lcom/manhua/data/bean/ComicCollectBean;

    invoke-static {v1}, Lcom/apk/mu;->const(Lcom/manhua/data/bean/ComicCollectBean;)Lcom/manhua/data/bean/ComicBean;

    move-result-object v1

    .line 62
    invoke-static {p1, v0, v2, v1}, Lcom/apk/w0;->interface(Landroid/app/Activity;Landroid/view/View;Lcom/biquge/ebook/app/bean/Book;Lcom/manhua/data/bean/ComicBean;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception p1

    .line 63
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 64
    :pswitch_5
    iget-object p1, p0, Lcom/manhua/ui/fragment/ComicShelfFragment$break;->new:Lcom/manhua/ui/fragment/ComicShelfFragment;

    invoke-virtual {p1}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object p1

    invoke-static {p1}, Lcom/apk/mu;->goto(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_b

    return-void

    .line 65
    :cond_b
    invoke-static {}, Lcom/apk/o0;->else()Lcom/apk/o0;

    move-result-object v0

    iget-object p1, p0, Lcom/manhua/ui/fragment/ComicShelfFragment$break;->new:Lcom/manhua/ui/fragment/ComicShelfFragment;

    invoke-virtual {p1}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object v1

    iget-object p1, p0, Lcom/manhua/ui/fragment/ComicShelfFragment$break;->if:Lcom/manhua/data/bean/ComicCollectBean;

    invoke-virtual {p1}, Lcom/manhua/data/bean/ComicCollectBean;->getCollectId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lcom/manhua/ui/fragment/ComicShelfFragment$break;->if:Lcom/manhua/data/bean/ComicCollectBean;

    .line 66
    invoke-virtual {p1}, Lcom/manhua/data/bean/ComicCollectBean;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 67
    invoke-virtual/range {v0 .. v5}, Lcom/apk/o0;->for(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ZLcom/apk/o0$else;)V

    goto :goto_2

    .line 68
    :pswitch_6
    iget-object p1, p0, Lcom/manhua/ui/fragment/ComicShelfFragment$break;->if:Lcom/manhua/data/bean/ComicCollectBean;

    if-eqz p1, :cond_d

    .line 69
    iget-object p1, p0, Lcom/manhua/ui/fragment/ComicShelfFragment$break;->new:Lcom/manhua/ui/fragment/ComicShelfFragment;

    invoke-virtual {p1}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object p1

    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicShelfFragment$break;->if:Lcom/manhua/data/bean/ComicCollectBean;

    .line 70
    invoke-virtual {v0}, Lcom/manhua/data/bean/ComicCollectBean;->getCollectId()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/manhua/ui/fragment/ComicShelfFragment$break;->if:Lcom/manhua/data/bean/ComicCollectBean;

    invoke-virtual {v2}, Lcom/manhua/data/bean/ComicCollectBean;->getName()Ljava/lang/String;

    move-result-object v2

    .line 71
    invoke-static {p1, v0, v2, v1, v3}, Lcom/apk/ze;->s(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto :goto_2

    .line 72
    :pswitch_7
    iget-object p1, p0, Lcom/manhua/ui/fragment/ComicShelfFragment$break;->new:Lcom/manhua/ui/fragment/ComicShelfFragment;

    invoke-virtual {p1}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object p1

    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicShelfFragment$break;->if:Lcom/manhua/data/bean/ComicCollectBean;

    invoke-static {p1, v0}, Lcom/manhua/ui/activity/ComicNovelDirActivity;->j(Landroid/content/Context;Lcom/manhua/data/bean/ComicCollectBean;)V

    goto :goto_2

    .line 73
    :pswitch_8
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicShelfFragment$break;->new:Lcom/manhua/ui/fragment/ComicShelfFragment;

    iget v1, p0, Lcom/manhua/ui/fragment/ComicShelfFragment$break;->do:I

    invoke-static {v0, v1}, Lcom/manhua/ui/fragment/ComicShelfFragment;->j(Lcom/manhua/ui/fragment/ComicShelfFragment;I)V

    .line 74
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicShelfFragment$break;->new:Lcom/manhua/ui/fragment/ComicShelfFragment;

    .line 75
    iget-object v0, v0, Lcom/manhua/ui/fragment/ComicShelfFragment;->public:Lcom/manhua/ui/view/ComicMenuPopupView;

    if-eqz v0, :cond_c

    .line 76
    invoke-virtual {v0, p1}, Lcom/manhua/ui/view/ComicMenuPopupView;->break(I)V

    .line 77
    :cond_c
    iput-object v2, p0, Lcom/manhua/ui/fragment/ComicShelfFragment$break;->if:Lcom/manhua/data/bean/ComicCollectBean;

    goto :goto_2

    .line 78
    :pswitch_9
    iget-object p1, p0, Lcom/manhua/ui/fragment/ComicShelfFragment$break;->new:Lcom/manhua/ui/fragment/ComicShelfFragment;

    invoke-virtual {p1}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object p1

    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicShelfFragment$break;->if:Lcom/manhua/data/bean/ComicCollectBean;

    invoke-static {p1, v0}, Lcom/manhua/ui/activity/ComicDetailActivity;->m(Landroid/content/Context;Lcom/manhua/data/bean/ComicCollectBean;)V

    :cond_d
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
