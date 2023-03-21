.class public Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment$else;
.super Ljava/lang/Object;
.source "BookShelfFragment.java"

# interfaces
.implements Lcom/apk/g1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "else"
.end annotation


# instance fields
.field public do:I

.field public final for:Ljava/lang/String;

.field public if:Lcom/biquge/ebook/app/bean/CollectBook;

.field public final synthetic new:Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment;ILcom/biquge/ebook/app/bean/CollectBook;Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment$do;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment$else;->new:Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p2, p0, Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment$else;->do:I

    .line 3
    iput-object p3, p0, Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment$else;->if:Lcom/biquge/ebook/app/bean/CollectBook;

    .line 4
    invoke-virtual {p3}, Lcom/biquge/ebook/app/bean/CollectBook;->getCollectId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment$else;->for:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onData(Ljava/lang/Object;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment$else;->if:Lcom/biquge/ebook/app/bean/CollectBook;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment$else;->new:Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment;

    iget-object v0, v0, Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment;->break:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 3
    iget-object v3, p0, Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment$else;->new:Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment;

    iget-object v3, v3, Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment;->break:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/biquge/ebook/app/bean/CollectBook;

    .line 4
    invoke-virtual {v3}, Lcom/biquge/ebook/app/bean/CollectBook;->getCollectId()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment$else;->for:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 5
    iput v2, p0, Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment$else;->do:I

    .line 6
    iput-object v3, p0, Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment$else;->if:Lcom/biquge/ebook/app/bean/CollectBook;

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment$else;->if:Lcom/biquge/ebook/app/bean/CollectBook;

    if-nez v0, :cond_2

    return-void

    .line 8
    :cond_2
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/CollectBook;->isLocalBook()Z

    move-result v0

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    .line 9
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 10
    iget-object v3, p0, Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment$else;->if:Lcom/biquge/ebook/app/bean/CollectBook;

    invoke-virtual {v3}, Lcom/biquge/ebook/app/bean/CollectBook;->isGroup()Z

    move-result v3

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x0

    if-eqz v3, :cond_9

    const/4 v0, -0x1

    if-eq p1, v0, :cond_8

    if-eqz p1, :cond_6

    if-eq p1, v2, :cond_5

    if-eq p1, v5, :cond_4

    if-eq p1, v4, :cond_3

    goto/16 :goto_3

    .line 11
    :cond_3
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment$else;->new:Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment;

    invoke-virtual {p1}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object p1

    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment$else;->if:Lcom/biquge/ebook/app/bean/CollectBook;

    iget-object v1, p0, Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment$else;->new:Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment;

    iget-boolean v3, v1, Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment;->for:Z

    iget-boolean v1, v1, Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment;->new:Z

    invoke-static {p1, v0, v2, v3, v1}, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;->v(Landroid/app/Activity;Lcom/biquge/ebook/app/bean/CollectBook;ZZZ)V

    goto/16 :goto_3

    .line 12
    :cond_4
    iget-object v4, p0, Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment$else;->new:Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment;

    invoke-virtual {v4}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object v5

    const p1, 0x7f1001c0

    invoke-static {p1}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment$else$if;

    invoke-direct {v7, p0}, Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment$else$if;-><init>(Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment$else;)V

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-static/range {v4 .. v9}, Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment;->j(Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment;Landroid/content/Context;Ljava/lang/String;Lcom/apk/ft;Lcom/apk/dt;Z)V

    goto/16 :goto_3

    :cond_5
    const p1, 0x7f1001bf

    .line 13
    invoke-static {p1}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object p1

    .line 14
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment$else;->if:Lcom/biquge/ebook/app/bean/CollectBook;

    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/CollectBook;->getGroupTitle()Ljava/lang/String;

    move-result-object v0

    .line 15
    iget-object v2, p0, Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment$else;->new:Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 16
    new-instance v3, Lcom/apk/lv;

    invoke-direct {v3}, Lcom/apk/lv;-><init>()V

    .line 17
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 18
    iput-object v4, v3, Lcom/apk/lv;->super:Ljava/lang/Boolean;

    .line 19
    new-instance v4, Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment$else$do;

    invoke-direct {v4, p0}, Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment$else$do;-><init>(Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment$else;)V

    .line 20
    sget-boolean v5, Lcom/apk/zu;->try:Z

    .line 21
    iput-boolean v5, v3, Lcom/apk/lv;->continue:Z

    .line 22
    new-instance v5, Lcom/lxj/xpopup/impl/InputConfirmPopupView;

    invoke-direct {v5, v2, v1}, Lcom/lxj/xpopup/impl/InputConfirmPopupView;-><init>(Landroid/content/Context;I)V

    .line 23
    iput-object p1, v5, Lcom/lxj/xpopup/impl/ConfirmPopupView;->else:Ljava/lang/CharSequence;

    .line 24
    iput-object v6, v5, Lcom/lxj/xpopup/impl/ConfirmPopupView;->goto:Ljava/lang/CharSequence;

    .line 25
    iput-object v0, v5, Lcom/lxj/xpopup/impl/ConfirmPopupView;->this:Ljava/lang/CharSequence;

    .line 26
    iput-object v0, v5, Lcom/lxj/xpopup/impl/InputConfirmPopupView;->final:Ljava/lang/CharSequence;

    .line 27
    iput-object v6, v5, Lcom/lxj/xpopup/impl/InputConfirmPopupView;->super:Lcom/apk/sv;

    .line 28
    iput-object v4, v5, Lcom/lxj/xpopup/impl/InputConfirmPopupView;->throw:Lcom/apk/wv;

    .line 29
    iput-object v3, v5, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/apk/lv;

    .line 30
    invoke-virtual {v5}, Lcom/lxj/xpopup/core/BasePopupView;->show()Lcom/lxj/xpopup/core/BasePopupView;

    goto/16 :goto_3

    .line 31
    :cond_6
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment$else;->new:Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment;

    iget v1, p0, Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment$else;->do:I

    invoke-static {v0, v1}, Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment;->i(Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment;I)V

    .line 32
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment$else;->new:Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment;

    .line 33
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment;->public:Lcom/biquge/ebook/app/ui/view/BookMenuPopupView;

    if-eqz v0, :cond_7

    .line 34
    invoke-virtual {v0, p1}, Lcom/biquge/ebook/app/ui/view/BookMenuPopupView;->break(I)V

    .line 35
    :cond_7
    iput-object v6, p0, Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment$else;->if:Lcom/biquge/ebook/app/bean/CollectBook;

    goto/16 :goto_3

    .line 36
    :cond_8
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment$else;->new:Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment;

    invoke-virtual {p1}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object p1

    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment$else;->if:Lcom/biquge/ebook/app/bean/CollectBook;

    iget-object v2, p0, Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment$else;->new:Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment;

    iget-boolean v3, v2, Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment;->for:Z

    iget-boolean v2, v2, Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment;->new:Z

    invoke-static {p1, v0, v1, v3, v2}, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;->v(Landroid/app/Activity;Lcom/biquge/ebook/app/bean/CollectBook;ZZZ)V

    goto/16 :goto_3

    :cond_9
    const/4 v3, 0x4

    if-eqz v0, :cond_13

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_3

    .line 37
    :pswitch_1
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment$else;->new:Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment;

    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment$else;->if:Lcom/biquge/ebook/app/bean/CollectBook;

    invoke-static {p1, v0}, Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment;->m(Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment;Lcom/biquge/ebook/app/bean/CollectBook;)V

    goto/16 :goto_3

    .line 38
    :pswitch_2
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment$else;->new:Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment;

    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment$else;->if:Lcom/biquge/ebook/app/bean/CollectBook;

    invoke-static {p1, v0}, Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment;->l(Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment;Lcom/biquge/ebook/app/bean/CollectBook;)V

    goto/16 :goto_3

    .line 39
    :pswitch_3
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment$else;->new:Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment;

    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment$else;->if:Lcom/biquge/ebook/app/bean/CollectBook;

    invoke-static {p1, v0}, Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment;->k(Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment;Lcom/biquge/ebook/app/bean/CollectBook;)V

    goto/16 :goto_3

    .line 40
    :pswitch_4
    :try_start_0
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment$else;->new:Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment;

    .line 41
    iget-object p1, p1, Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment;->throw:Landroid/view/View;

    if-nez p1, :cond_a

    .line 42
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment$else;->new:Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment;

    const v0, 0x7f0903df

    .line 43
    invoke-virtual {p1, v0}, Lcom/apk/g6;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 44
    check-cast p1, Landroid/view/ViewStub;

    .line 45
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment$else;->new:Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment;

    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p1

    .line 46
    iput-object p1, v0, Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment;->throw:Landroid/view/View;

    .line 47
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment$else;->new:Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment;

    .line 48
    iget-object p1, p1, Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment;->throw:Landroid/view/View;

    .line 49
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 50
    :cond_a
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment$else;->new:Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment;

    iget-object p1, p1, Lcom/apk/g6;->mActivity:Lcom/apk/i6;

    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment$else;->new:Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment;

    .line 51
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment;->throw:Landroid/view/View;

    .line 52
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment$else;->if:Lcom/biquge/ebook/app/bean/CollectBook;

    invoke-static {v1}, Lcom/apk/n2;->break(Lcom/biquge/ebook/app/bean/CollectBook;)Lcom/biquge/ebook/app/bean/Book;

    move-result-object v1

    .line 53
    invoke-static {p1, v0, v1, v6}, Lcom/apk/w0;->interface(Landroid/app/Activity;Landroid/view/View;Lcom/biquge/ebook/app/bean/Book;Lcom/manhua/data/bean/ComicBean;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    :catch_0
    move-exception p1

    .line 54
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    .line 55
    :pswitch_5
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment$else;->new:Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment;

    invoke-virtual {p1}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object p1

    invoke-static {p1}, Lcom/apk/n2;->else(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_b

    return-void

    .line 56
    :cond_b
    invoke-static {}, Lcom/apk/o0;->else()Lcom/apk/o0;

    move-result-object v0

    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment$else;->new:Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment;

    invoke-virtual {p1}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object v1

    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment$else;->if:Lcom/biquge/ebook/app/bean/CollectBook;

    .line 57
    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/CollectBook;->getCollectId()Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment$else;->if:Lcom/biquge/ebook/app/bean/CollectBook;

    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/CollectBook;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment$else;->if:Lcom/biquge/ebook/app/bean/CollectBook;

    .line 58
    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/CollectBook;->isWebSite()Z

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 59
    invoke-virtual/range {v0 .. v6}, Lcom/apk/o0;->do(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ZZLcom/apk/o0$else;)V

    goto/16 :goto_3

    .line 60
    :pswitch_6
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment$else;->new:Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment;

    invoke-virtual {p1}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object p1

    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment$else;->if:Lcom/biquge/ebook/app/bean/CollectBook;

    .line 61
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/CollectBook;->getCollectId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment$else;->if:Lcom/biquge/ebook/app/bean/CollectBook;

    invoke-virtual {v1}, Lcom/biquge/ebook/app/bean/CollectBook;->getName()Ljava/lang/String;

    move-result-object v1

    .line 62
    invoke-static {p1, v0, v1, v2, v2}, Lcom/apk/ze;->s(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto/16 :goto_3

    .line 63
    :pswitch_7
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment$else;->if:Lcom/biquge/ebook/app/bean/CollectBook;

    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/CollectBook;->isWebSite()Z

    move-result p1

    if-eqz p1, :cond_11

    .line 64
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment$else;->new:Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment;

    invoke-virtual {p1}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    .line 65
    new-instance p1, Lcom/apk/lv;

    invoke-direct {p1}, Lcom/apk/lv;-><init>()V

    .line 66
    new-instance v0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDirPopView;

    iget-object v1, p0, Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment$else;->new:Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment;

    .line 67
    invoke-virtual {v1}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object v1

    iget-object v2, p0, Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment$else;->for:Ljava/lang/String;

    invoke-static {v2}, Lcom/apk/nd;->class(Ljava/lang/String;)Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/biquge/ebook/app/ui/webread/view/WebBookDirPopView;-><init>(Landroid/content/Context;Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;)V

    .line 68
    instance-of v1, v0, Lcom/lxj/xpopup/core/CenterPopupView;

    if-eqz v1, :cond_c

    .line 69
    sget-boolean v1, Lcom/apk/zu;->try:Z

    .line 70
    iput-boolean v1, p1, Lcom/apk/lv;->continue:Z

    goto :goto_2

    .line 71
    :cond_c
    instance-of v1, v0, Lcom/lxj/xpopup/core/BottomPopupView;

    if-eqz v1, :cond_d

    .line 72
    sget-boolean v1, Lcom/apk/zu;->try:Z

    .line 73
    iput-boolean v1, p1, Lcom/apk/lv;->continue:Z

    goto :goto_2

    .line 74
    :cond_d
    instance-of v1, v0, Lcom/lxj/xpopup/core/AttachPopupView;

    if-eqz v1, :cond_e

    .line 75
    sget-boolean v1, Lcom/apk/zu;->try:Z

    .line 76
    iput-boolean v1, p1, Lcom/apk/lv;->continue:Z

    goto :goto_2

    .line 77
    :cond_e
    instance-of v1, v0, Lcom/lxj/xpopup/core/ImageViewerPopupView;

    if-eqz v1, :cond_f

    .line 78
    sget-boolean v1, Lcom/apk/zu;->try:Z

    .line 79
    iput-boolean v1, p1, Lcom/apk/lv;->continue:Z

    goto :goto_2

    .line 80
    :cond_f
    instance-of v1, v0, Lcom/lxj/xpopup/core/PositionPopupView;

    if-eqz v1, :cond_10

    .line 81
    sget-boolean v1, Lcom/apk/zu;->try:Z

    .line 82
    iput-boolean v1, p1, Lcom/apk/lv;->continue:Z

    .line 83
    :cond_10
    :goto_2
    iput-object p1, v0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/apk/lv;

    .line 84
    invoke-virtual {v0}, Lcom/lxj/xpopup/core/BasePopupView;->show()Lcom/lxj/xpopup/core/BasePopupView;

    goto/16 :goto_3

    .line 85
    :cond_11
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment$else;->new:Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment;

    invoke-virtual {p1}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object p1

    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment$else;->if:Lcom/biquge/ebook/app/bean/CollectBook;

    .line 86
    invoke-static {p1, v0, v6}, Lcom/biquge/ebook/app/ui/activity/BookNovelDirActivity;->j(Landroid/app/Activity;Lcom/biquge/ebook/app/bean/CollectBook;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 87
    :pswitch_8
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment$else;->new:Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment;

    iget v1, p0, Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment$else;->do:I

    invoke-static {v0, v1}, Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment;->i(Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment;I)V

    .line 88
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment$else;->new:Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment;

    .line 89
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment;->public:Lcom/biquge/ebook/app/ui/view/BookMenuPopupView;

    if-eqz v0, :cond_12

    .line 90
    invoke-virtual {v0, p1}, Lcom/biquge/ebook/app/ui/view/BookMenuPopupView;->break(I)V

    .line 91
    :cond_12
    iput-object v6, p0, Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment$else;->if:Lcom/biquge/ebook/app/bean/CollectBook;

    goto/16 :goto_3

    .line 92
    :pswitch_9
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment$else;->new:Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment;

    invoke-virtual {p1}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object p1

    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment$else;->if:Lcom/biquge/ebook/app/bean/CollectBook;

    invoke-static {p1, v0}, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity;->s(Landroid/content/Context;Lcom/biquge/ebook/app/bean/CollectBook;)V

    goto/16 :goto_3

    :cond_13
    if-eqz p1, :cond_18

    if-eq p1, v2, :cond_17

    if-eq p1, v5, :cond_16

    if-eq p1, v4, :cond_15

    if-eq p1, v3, :cond_14

    goto :goto_3

    .line 93
    :cond_14
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment$else;->new:Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment;

    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment$else;->if:Lcom/biquge/ebook/app/bean/CollectBook;

    invoke-static {p1, v0}, Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment;->m(Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment;Lcom/biquge/ebook/app/bean/CollectBook;)V

    goto :goto_3

    .line 94
    :cond_15
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment$else;->new:Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment;

    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment$else;->if:Lcom/biquge/ebook/app/bean/CollectBook;

    invoke-static {p1, v0}, Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment;->l(Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment;Lcom/biquge/ebook/app/bean/CollectBook;)V

    goto :goto_3

    :cond_16
    const p1, 0x7f1001b6

    .line 95
    invoke-static {p1}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object p1

    .line 96
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment$else;->if:Lcom/biquge/ebook/app/bean/CollectBook;

    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/CollectBook;->getName()Ljava/lang/String;

    move-result-object v0

    .line 97
    iget-object v2, p0, Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment$else;->new:Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment;

    invoke-virtual {v2}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object v2

    .line 98
    new-instance v3, Lcom/apk/lv;

    invoke-direct {v3}, Lcom/apk/lv;-><init>()V

    .line 99
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 100
    iput-object v4, v3, Lcom/apk/lv;->super:Ljava/lang/Boolean;

    .line 101
    new-instance v4, Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment$else$for;

    invoke-direct {v4, p0}, Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment$else$for;-><init>(Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment$else;)V

    .line 102
    sget-boolean v5, Lcom/apk/zu;->try:Z

    .line 103
    iput-boolean v5, v3, Lcom/apk/lv;->continue:Z

    .line 104
    new-instance v5, Lcom/lxj/xpopup/impl/InputConfirmPopupView;

    invoke-direct {v5, v2, v1}, Lcom/lxj/xpopup/impl/InputConfirmPopupView;-><init>(Landroid/content/Context;I)V

    .line 105
    iput-object p1, v5, Lcom/lxj/xpopup/impl/ConfirmPopupView;->else:Ljava/lang/CharSequence;

    .line 106
    iput-object v6, v5, Lcom/lxj/xpopup/impl/ConfirmPopupView;->goto:Ljava/lang/CharSequence;

    .line 107
    iput-object v0, v5, Lcom/lxj/xpopup/impl/ConfirmPopupView;->this:Ljava/lang/CharSequence;

    .line 108
    iput-object v0, v5, Lcom/lxj/xpopup/impl/InputConfirmPopupView;->final:Ljava/lang/CharSequence;

    .line 109
    iput-object v6, v5, Lcom/lxj/xpopup/impl/InputConfirmPopupView;->super:Lcom/apk/sv;

    .line 110
    iput-object v4, v5, Lcom/lxj/xpopup/impl/InputConfirmPopupView;->throw:Lcom/apk/wv;

    .line 111
    iput-object v3, v5, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/apk/lv;

    .line 112
    invoke-virtual {v5}, Lcom/lxj/xpopup/core/BasePopupView;->show()Lcom/lxj/xpopup/core/BasePopupView;

    goto :goto_3

    .line 113
    :cond_17
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment$else;->new:Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment;

    invoke-virtual {p1}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object p1

    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment$else;->if:Lcom/biquge/ebook/app/bean/CollectBook;

    .line 114
    invoke-static {p1, v0, v6}, Lcom/biquge/ebook/app/ui/activity/BookNovelDirActivity;->j(Landroid/app/Activity;Lcom/biquge/ebook/app/bean/CollectBook;Ljava/lang/String;)V

    goto :goto_3

    .line 115
    :cond_18
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment$else;->new:Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment;

    iget v1, p0, Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment$else;->do:I

    invoke-static {v0, v1}, Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment;->i(Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment;I)V

    .line 116
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment$else;->new:Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment;

    .line 117
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment;->public:Lcom/biquge/ebook/app/ui/view/BookMenuPopupView;

    if-eqz v0, :cond_19

    .line 118
    invoke-virtual {v0, p1}, Lcom/biquge/ebook/app/ui/view/BookMenuPopupView;->break(I)V

    .line 119
    :cond_19
    iput-object v6, p0, Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment$else;->if:Lcom/biquge/ebook/app/bean/CollectBook;

    :goto_3
    return-void

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
