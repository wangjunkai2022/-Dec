.class public Lcom/apk/id;
.super Ljava/lang/Object;
.source "WebReadMenuPopup.java"

# interfaces
.implements Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/ui/view/WebReadMenuPopup;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/view/WebReadMenuPopup;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/id;->do:Lcom/biquge/ebook/app/ui/view/WebReadMenuPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/apk/id;->do:Lcom/biquge/ebook/app/ui/view/WebReadMenuPopup;

    .line 2
    iget-object p1, p1, Lcom/biquge/ebook/app/ui/view/WebReadMenuPopup;->new:Lcom/biquge/ebook/app/ui/view/WebReadMenuPopup$for;

    if-eqz p1, :cond_9

    .line 3
    check-cast p1, Lcom/biquge/ebook/app/ui/webread/view/WebContentView$do;

    const/4 p2, 0x0

    const/4 v0, 0x0

    if-nez p3, :cond_1

    .line 4
    :try_start_0
    iget-object p3, p1, Lcom/biquge/ebook/app/ui/webread/view/WebContentView$do;->do:Lcom/biquge/ebook/app/ui/webread/view/WebContentView;

    .line 5
    iget-boolean p3, p3, Lcom/biquge/ebook/app/ui/webread/view/WebContentView;->if:Z

    if-eqz p3, :cond_0

    const p3, 0x7f100405

    .line 6
    invoke-static {p3}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_0
    const p3, 0x7f100406

    .line 7
    invoke-static {p3}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object p3

    .line 8
    :goto_0
    iget-object v1, p1, Lcom/biquge/ebook/app/ui/webread/view/WebContentView$do;->do:Lcom/biquge/ebook/app/ui/webread/view/WebContentView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/apk/ne;

    invoke-direct {v2, p1}, Lcom/apk/ne;-><init>(Lcom/biquge/ebook/app/ui/webread/view/WebContentView$do;)V

    invoke-static {v1, p3, v2, p2, v0}, Lcom/apk/eg;->i(Landroid/content/Context;Ljava/lang/String;Lcom/apk/ft;Lcom/apk/dt;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception p1

    .line 9
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    :cond_1
    const/4 p2, 0x1

    if-ne p3, p2, :cond_2

    .line 10
    iget-object p2, p1, Lcom/biquge/ebook/app/ui/webread/view/WebContentView$do;->do:Lcom/biquge/ebook/app/ui/webread/view/WebContentView;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/biquge/ebook/app/ui/webread/ui/WebHistoryActivity;->j(Landroid/content/Context;)V

    .line 11
    iget-object p2, p1, Lcom/biquge/ebook/app/ui/webread/view/WebContentView$do;->do:Lcom/biquge/ebook/app/ui/webread/view/WebContentView;

    .line 12
    iget-object p2, p2, Lcom/biquge/ebook/app/ui/webread/view/WebContentView;->goto:Lcom/biquge/ebook/app/ui/view/WebReadMenuPopup;

    if-eqz p2, :cond_9

    .line 13
    iget-object p1, p1, Lcom/biquge/ebook/app/ui/webread/view/WebContentView$do;->do:Lcom/biquge/ebook/app/ui/webread/view/WebContentView;

    .line 14
    iget-object p1, p1, Lcom/biquge/ebook/app/ui/webread/view/WebContentView;->goto:Lcom/biquge/ebook/app/ui/view/WebReadMenuPopup;

    .line 15
    invoke-virtual {p1}, Lcom/lxj/xpopup/core/BottomPopupView;->dismiss()V

    goto/16 :goto_2

    :catch_1
    move-exception p1

    goto/16 :goto_1

    :cond_2
    const/4 p2, 0x2

    if-ne p3, p2, :cond_3

    .line 16
    iget-object p2, p1, Lcom/biquge/ebook/app/ui/webread/view/WebContentView$do;->do:Lcom/biquge/ebook/app/ui/webread/view/WebContentView;

    invoke-virtual {p2}, Lcom/biquge/ebook/app/ui/webread/view/WebContentView;->getCurUrl()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/apk/ze;->class(Ljava/lang/String;)V

    .line 17
    sget-object p2, Lcom/biquge/ebook/app/app/AppContext;->case:Lcom/biquge/ebook/app/app/AppContext;

    const-string p3, "\u94fe\u63a5\u5df2\u590d\u5236\u5230\u7c98\u8d34\u7248!"

    .line 18
    invoke-static {p2, p3, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/Toast;->show()V

    .line 19
    iget-object p2, p1, Lcom/biquge/ebook/app/ui/webread/view/WebContentView$do;->do:Lcom/biquge/ebook/app/ui/webread/view/WebContentView;

    .line 20
    iget-object p2, p2, Lcom/biquge/ebook/app/ui/webread/view/WebContentView;->goto:Lcom/biquge/ebook/app/ui/view/WebReadMenuPopup;

    if-eqz p2, :cond_9

    .line 21
    iget-object p1, p1, Lcom/biquge/ebook/app/ui/webread/view/WebContentView$do;->do:Lcom/biquge/ebook/app/ui/webread/view/WebContentView;

    .line 22
    iget-object p1, p1, Lcom/biquge/ebook/app/ui/webread/view/WebContentView;->goto:Lcom/biquge/ebook/app/ui/view/WebReadMenuPopup;

    .line 23
    invoke-virtual {p1}, Lcom/lxj/xpopup/core/BottomPopupView;->dismiss()V

    goto/16 :goto_2

    :cond_3
    const/4 p2, 0x3

    if-ne p3, p2, :cond_7

    .line 24
    iget-object p2, p1, Lcom/biquge/ebook/app/ui/webread/view/WebContentView$do;->do:Lcom/biquge/ebook/app/ui/webread/view/WebContentView;

    iget-object p2, p2, Lcom/biquge/ebook/app/ui/webread/view/WebContentView;->mWebBookDetailView:Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p2

    if-nez p2, :cond_5

    .line 25
    iget-object p2, p1, Lcom/biquge/ebook/app/ui/webread/view/WebContentView$do;->do:Lcom/biquge/ebook/app/ui/webread/view/WebContentView;

    iget-object p2, p2, Lcom/biquge/ebook/app/ui/webread/view/WebContentView;->mWebBookDetailView:Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView;

    .line 26
    iget-object p2, p2, Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView;->mShelfBtn:Landroid/widget/TextView;

    if-eqz p2, :cond_4

    .line 27
    invoke-virtual {p2}, Landroid/widget/TextView;->performClick()Z

    .line 28
    :cond_4
    iget-object p2, p1, Lcom/biquge/ebook/app/ui/webread/view/WebContentView$do;->do:Lcom/biquge/ebook/app/ui/webread/view/WebContentView;

    .line 29
    iget-object p2, p2, Lcom/biquge/ebook/app/ui/webread/view/WebContentView;->goto:Lcom/biquge/ebook/app/ui/view/WebReadMenuPopup;

    if-eqz p2, :cond_9

    .line 30
    iget-object p1, p1, Lcom/biquge/ebook/app/ui/webread/view/WebContentView$do;->do:Lcom/biquge/ebook/app/ui/webread/view/WebContentView;

    .line 31
    iget-object p1, p1, Lcom/biquge/ebook/app/ui/webread/view/WebContentView;->goto:Lcom/biquge/ebook/app/ui/view/WebReadMenuPopup;

    .line 32
    invoke-virtual {p1}, Lcom/lxj/xpopup/core/BottomPopupView;->dismiss()V

    goto :goto_2

    .line 33
    :cond_5
    iget-object p2, p1, Lcom/biquge/ebook/app/ui/webread/view/WebContentView$do;->do:Lcom/biquge/ebook/app/ui/webread/view/WebContentView;

    invoke-virtual {p2}, Lcom/biquge/ebook/app/ui/webread/view/WebContentView;->getCurUrl()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/apk/n2;->g(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_6

    .line 34
    iget-object p1, p1, Lcom/biquge/ebook/app/ui/webread/view/WebContentView$do;->do:Lcom/biquge/ebook/app/ui/webread/view/WebContentView;

    invoke-static {p1}, Lcom/biquge/ebook/app/ui/webread/view/WebContentView;->new(Lcom/biquge/ebook/app/ui/webread/view/WebContentView;)V

    goto :goto_2

    .line 35
    :cond_6
    new-instance p2, Landroid/content/Intent;

    iget-object p3, p1, Lcom/biquge/ebook/app/ui/webread/view/WebContentView$do;->do:Lcom/biquge/ebook/app/ui/webread/view/WebContentView;

    invoke-virtual {p3}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p3

    const-class v0, Lcom/biquge/ebook/app/ui/activity/MainActivity;

    invoke-direct {p2, p3, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p3, "type"

    const/16 v0, 0x3e9

    .line 36
    invoke-virtual {p2, p3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p3, "source"

    .line 37
    sget-object v0, Lcom/apk/hf;->do:Lcom/apk/hf;

    invoke-virtual {p2, p3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 38
    iget-object p1, p1, Lcom/biquge/ebook/app/ui/webread/view/WebContentView$do;->do:Lcom/biquge/ebook/app/ui/webread/view/WebContentView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    :cond_7
    const/4 p2, 0x4

    if-ne p3, p2, :cond_9

    .line 39
    iget-object p2, p1, Lcom/biquge/ebook/app/ui/webread/view/WebContentView$do;->do:Lcom/biquge/ebook/app/ui/webread/view/WebContentView;

    .line 40
    iget-object p2, p2, Lcom/biquge/ebook/app/ui/webread/view/WebContentView;->goto:Lcom/biquge/ebook/app/ui/view/WebReadMenuPopup;

    if-eqz p2, :cond_8

    .line 41
    iget-object p2, p1, Lcom/biquge/ebook/app/ui/webread/view/WebContentView$do;->do:Lcom/biquge/ebook/app/ui/webread/view/WebContentView;

    .line 42
    iget-object p2, p2, Lcom/biquge/ebook/app/ui/webread/view/WebContentView;->goto:Lcom/biquge/ebook/app/ui/view/WebReadMenuPopup;

    .line 43
    invoke-virtual {p2}, Lcom/lxj/xpopup/core/BottomPopupView;->dismiss()V

    .line 44
    :cond_8
    iget-object p2, p1, Lcom/biquge/ebook/app/ui/webread/view/WebContentView$do;->do:Lcom/biquge/ebook/app/ui/webread/view/WebContentView;

    .line 45
    iget-object p2, p2, Lcom/biquge/ebook/app/ui/webread/view/WebContentView;->case:Lcom/apk/jd;

    if-eqz p2, :cond_9

    .line 46
    iget-object p1, p1, Lcom/biquge/ebook/app/ui/webread/view/WebContentView$do;->do:Lcom/biquge/ebook/app/ui/webread/view/WebContentView;

    .line 47
    iget-object p1, p1, Lcom/biquge/ebook/app/ui/webread/view/WebContentView;->case:Lcom/apk/jd;

    .line 48
    invoke-interface {p1}, Lcom/apk/jd;->continue()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 49
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_9
    :goto_2
    return-void
.end method
