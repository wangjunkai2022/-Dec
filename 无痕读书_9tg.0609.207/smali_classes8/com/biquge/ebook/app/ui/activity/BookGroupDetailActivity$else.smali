.class public Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity$else;
.super Ljava/lang/Object;
.source "BookGroupDetailActivity.java"

# interfaces
.implements Lcom/apk/g1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "else"
.end annotation


# instance fields
.field public do:I

.field public final for:Ljava/lang/String;

.field public if:Lcom/biquge/ebook/app/bean/CollectBook;

.field public final synthetic new:Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;ILcom/biquge/ebook/app/bean/CollectBook;Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity$do;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity$else;->new:Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p2, p0, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity$else;->do:I

    .line 3
    iput-object p3, p0, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity$else;->if:Lcom/biquge/ebook/app/bean/CollectBook;

    .line 4
    invoke-virtual {p3}, Lcom/biquge/ebook/app/bean/CollectBook;->getCollectId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity$else;->for:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onData(Ljava/lang/Object;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity$else;->if:Lcom/biquge/ebook/app/bean/CollectBook;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity$else;->new:Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;

    .line 3
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;->case:Ljava/util/List;

    .line 4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 5
    iget-object v3, p0, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity$else;->new:Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;

    .line 6
    iget-object v3, v3, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;->case:Ljava/util/List;

    .line 7
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/biquge/ebook/app/bean/CollectBook;

    .line 8
    invoke-virtual {v3}, Lcom/biquge/ebook/app/bean/CollectBook;->getCollectId()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity$else;->for:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 9
    iput v2, p0, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity$else;->do:I

    .line 10
    iput-object v3, p0, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity$else;->if:Lcom/biquge/ebook/app/bean/CollectBook;

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 11
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity$else;->if:Lcom/biquge/ebook/app/bean/CollectBook;

    if-nez v0, :cond_2

    return-void

    .line 12
    :cond_2
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/CollectBook;->isLocalBook()Z

    move-result v0

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    .line 13
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v3, 0x4

    const/4 v4, 0x0

    if-eqz v0, :cond_6

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_2

    .line 14
    :pswitch_1
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity$else;->new:Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;

    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity$else;->if:Lcom/biquge/ebook/app/bean/CollectBook;

    invoke-static {p1, v0}, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;->p(Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;Lcom/biquge/ebook/app/bean/CollectBook;)V

    goto/16 :goto_2

    .line 15
    :pswitch_2
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity$else;->new:Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;

    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity$else;->if:Lcom/biquge/ebook/app/bean/CollectBook;

    invoke-static {p1, v0}, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;->o(Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;Lcom/biquge/ebook/app/bean/CollectBook;)V

    goto/16 :goto_2

    .line 16
    :pswitch_3
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity$else;->new:Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;

    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity$else;->if:Lcom/biquge/ebook/app/bean/CollectBook;

    invoke-static {p1, v0}, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;->n(Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;Lcom/biquge/ebook/app/bean/CollectBook;)V

    goto/16 :goto_2

    .line 17
    :pswitch_4
    :try_start_0
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity$else;->new:Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;

    .line 18
    iget-object p1, p1, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;->goto:Landroid/view/View;

    if-nez p1, :cond_3

    .line 19
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity$else;->new:Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;

    const v0, 0x7f0903df

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewStub;

    .line 20
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity$else;->new:Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;

    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p1

    .line 21
    iput-object p1, v0, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;->goto:Landroid/view/View;

    .line 22
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity$else;->new:Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;

    .line 23
    iget-object p1, p1, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;->goto:Landroid/view/View;

    .line 24
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 25
    :cond_3
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity$else;->new:Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;

    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity$else;->new:Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;

    .line 26
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;->goto:Landroid/view/View;

    .line 27
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity$else;->if:Lcom/biquge/ebook/app/bean/CollectBook;

    .line 28
    invoke-static {v1}, Lcom/apk/n2;->break(Lcom/biquge/ebook/app/bean/CollectBook;)Lcom/biquge/ebook/app/bean/Book;

    move-result-object v1

    .line 29
    invoke-static {p1, v0, v1, v4}, Lcom/apk/w0;->interface(Landroid/app/Activity;Landroid/view/View;Lcom/biquge/ebook/app/bean/Book;Lcom/manhua/data/bean/ComicBean;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception p1

    .line 30
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 31
    :pswitch_5
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity$else;->new:Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;

    invoke-static {p1}, Lcom/apk/n2;->else(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_4

    return-void

    .line 32
    :cond_4
    invoke-static {}, Lcom/apk/o0;->else()Lcom/apk/o0;

    move-result-object v0

    iget-object v1, p0, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity$else;->new:Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;

    iget-object p1, p0, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity$else;->if:Lcom/biquge/ebook/app/bean/CollectBook;

    .line 33
    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/CollectBook;->getCollectId()Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity$else;->if:Lcom/biquge/ebook/app/bean/CollectBook;

    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/CollectBook;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object p1, p0, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity$else;->if:Lcom/biquge/ebook/app/bean/CollectBook;

    .line 34
    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/CollectBook;->isWebSite()Z

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 35
    invoke-virtual/range {v0 .. v6}, Lcom/apk/o0;->do(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ZZLcom/apk/o0$else;)V

    goto/16 :goto_2

    .line 36
    :pswitch_6
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity$else;->new:Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;

    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity$else;->if:Lcom/biquge/ebook/app/bean/CollectBook;

    .line 37
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/CollectBook;->getCollectId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity$else;->if:Lcom/biquge/ebook/app/bean/CollectBook;

    invoke-virtual {v1}, Lcom/biquge/ebook/app/bean/CollectBook;->getName()Ljava/lang/String;

    move-result-object v1

    .line 38
    invoke-static {p1, v0, v1, v2, v2}, Lcom/apk/ze;->s(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto/16 :goto_2

    .line 39
    :pswitch_7
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity$else;->new:Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;

    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity$else;->if:Lcom/biquge/ebook/app/bean/CollectBook;

    .line 40
    invoke-static {p1, v0, v4}, Lcom/biquge/ebook/app/ui/activity/BookNovelDirActivity;->j(Landroid/app/Activity;Lcom/biquge/ebook/app/bean/CollectBook;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 41
    :pswitch_8
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity$else;->new:Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;

    iget-object v1, p0, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity$else;->if:Lcom/biquge/ebook/app/bean/CollectBook;

    invoke-static {v0, v1}, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;->m(Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;Lcom/biquge/ebook/app/bean/CollectBook;)V

    .line 42
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity$else;->new:Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;

    .line 43
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;->break:Lcom/biquge/ebook/app/ui/view/BookMenuPopupView;

    if-eqz v0, :cond_5

    .line 44
    invoke-virtual {v0, p1}, Lcom/biquge/ebook/app/ui/view/BookMenuPopupView;->break(I)V

    .line 45
    :cond_5
    iput-object v4, p0, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity$else;->if:Lcom/biquge/ebook/app/bean/CollectBook;

    goto/16 :goto_2

    .line 46
    :pswitch_9
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity$else;->new:Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;

    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity$else;->if:Lcom/biquge/ebook/app/bean/CollectBook;

    invoke-static {v0}, Lcom/apk/n2;->break(Lcom/biquge/ebook/app/bean/CollectBook;)Lcom/biquge/ebook/app/bean/Book;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity;->r(Landroid/content/Context;Lcom/biquge/ebook/app/bean/Book;)V

    goto/16 :goto_2

    :cond_6
    if-eqz p1, :cond_b

    if-eq p1, v2, :cond_a

    const/4 v0, 0x2

    if-eq p1, v0, :cond_9

    const/4 v0, 0x3

    if-eq p1, v0, :cond_8

    if-eq p1, v3, :cond_7

    goto :goto_2

    .line 47
    :cond_7
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity$else;->new:Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;

    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity$else;->if:Lcom/biquge/ebook/app/bean/CollectBook;

    invoke-static {p1, v0}, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;->p(Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;Lcom/biquge/ebook/app/bean/CollectBook;)V

    goto :goto_2

    .line 48
    :cond_8
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity$else;->new:Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;

    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity$else;->if:Lcom/biquge/ebook/app/bean/CollectBook;

    invoke-static {p1, v0}, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;->o(Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;Lcom/biquge/ebook/app/bean/CollectBook;)V

    goto :goto_2

    :cond_9
    const p1, 0x7f1001b6

    .line 49
    invoke-static {p1}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object p1

    .line 50
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity$else;->if:Lcom/biquge/ebook/app/bean/CollectBook;

    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/CollectBook;->getName()Ljava/lang/String;

    move-result-object v0

    .line 51
    iget-object v2, p0, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity$else;->new:Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;

    .line 52
    new-instance v3, Lcom/apk/lv;

    invoke-direct {v3}, Lcom/apk/lv;-><init>()V

    .line 53
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 54
    iput-object v5, v3, Lcom/apk/lv;->super:Ljava/lang/Boolean;

    .line 55
    new-instance v5, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity$else$do;

    invoke-direct {v5, p0}, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity$else$do;-><init>(Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity$else;)V

    .line 56
    sget-boolean v6, Lcom/apk/zu;->try:Z

    .line 57
    iput-boolean v6, v3, Lcom/apk/lv;->continue:Z

    .line 58
    new-instance v6, Lcom/lxj/xpopup/impl/InputConfirmPopupView;

    invoke-direct {v6, v2, v1}, Lcom/lxj/xpopup/impl/InputConfirmPopupView;-><init>(Landroid/content/Context;I)V

    .line 59
    iput-object p1, v6, Lcom/lxj/xpopup/impl/ConfirmPopupView;->else:Ljava/lang/CharSequence;

    .line 60
    iput-object v4, v6, Lcom/lxj/xpopup/impl/ConfirmPopupView;->goto:Ljava/lang/CharSequence;

    .line 61
    iput-object v0, v6, Lcom/lxj/xpopup/impl/ConfirmPopupView;->this:Ljava/lang/CharSequence;

    .line 62
    iput-object v0, v6, Lcom/lxj/xpopup/impl/InputConfirmPopupView;->final:Ljava/lang/CharSequence;

    .line 63
    iput-object v4, v6, Lcom/lxj/xpopup/impl/InputConfirmPopupView;->super:Lcom/apk/sv;

    .line 64
    iput-object v5, v6, Lcom/lxj/xpopup/impl/InputConfirmPopupView;->throw:Lcom/apk/wv;

    .line 65
    iput-object v3, v6, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/apk/lv;

    .line 66
    invoke-virtual {v6}, Lcom/lxj/xpopup/core/BasePopupView;->show()Lcom/lxj/xpopup/core/BasePopupView;

    goto :goto_2

    .line 67
    :cond_a
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity$else;->new:Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;

    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity$else;->if:Lcom/biquge/ebook/app/bean/CollectBook;

    .line 68
    invoke-static {p1, v0, v4}, Lcom/biquge/ebook/app/ui/activity/BookNovelDirActivity;->j(Landroid/app/Activity;Lcom/biquge/ebook/app/bean/CollectBook;Ljava/lang/String;)V

    goto :goto_2

    .line 69
    :cond_b
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity$else;->new:Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;

    iget-object v1, p0, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity$else;->if:Lcom/biquge/ebook/app/bean/CollectBook;

    invoke-static {v0, v1}, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;->m(Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;Lcom/biquge/ebook/app/bean/CollectBook;)V

    .line 70
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity$else;->new:Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;

    .line 71
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity;->break:Lcom/biquge/ebook/app/ui/view/BookMenuPopupView;

    if-eqz v0, :cond_c

    .line 72
    invoke-virtual {v0, p1}, Lcom/biquge/ebook/app/ui/view/BookMenuPopupView;->break(I)V

    .line 73
    :cond_c
    iput-object v4, p0, Lcom/biquge/ebook/app/ui/activity/BookGroupDetailActivity$else;->if:Lcom/biquge/ebook/app/bean/CollectBook;

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
