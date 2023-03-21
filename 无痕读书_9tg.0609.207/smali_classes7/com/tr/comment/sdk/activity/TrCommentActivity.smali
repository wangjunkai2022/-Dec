.class public Lcom/tr/comment/sdk/activity/TrCommentActivity;
.super Lcom/apk/h80;
.source "TrCommentActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public do:Lcom/tr/comment/sdk/commons/widget/TrTitleView;

.field public if:Lcom/tr/comment/sdk/view/TrCommentView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/apk/h80;-><init>()V

    return-void
.end method

.method public static i(Landroid/content/Context;Lcom/tr/comment/sdk/bean/TrSourceType;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/apk/fa0;->for(Lcom/tr/comment/sdk/bean/TrSourceType;)Ljava/lang/String;

    move-result-object p1

    .line 2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/tr/comment/sdk/activity/TrCommentActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "COMMENT_EXTRA_SOURCETYPE"

    .line 3
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "COMMENT_EXTRA_BOOKID"

    .line 4
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "COMMENT_EXTRA_BOOKNAME"

    .line 5
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tr/comment/sdk/activity/TrCommentActivity;->if:Lcom/tr/comment/sdk/view/TrCommentView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Lcom/tr/comment/sdk/view/TrCommentView;->catch(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/tr/comment/sdk/R$id;->tr_sdk_comment_title_back:I

    if-ne p1, v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/apk/h80;->onCreate(Landroid/os/Bundle;)V

    .line 2
    sget p1, Lcom/tr/comment/sdk/R$layout;->tr_sdk_activity_comment:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 3
    sget p1, Lcom/tr/comment/sdk/R$id;->tr_sdk_comment_titleview:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/tr/comment/sdk/commons/widget/TrTitleView;

    iput-object p1, p0, Lcom/tr/comment/sdk/activity/TrCommentActivity;->do:Lcom/tr/comment/sdk/commons/widget/TrTitleView;

    .line 4
    sget p1, Lcom/tr/comment/sdk/R$id;->tr_sdk_comment_view:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/tr/comment/sdk/view/TrCommentView;

    iput-object p1, p0, Lcom/tr/comment/sdk/activity/TrCommentActivity;->if:Lcom/tr/comment/sdk/view/TrCommentView;

    .line 5
    sget p1, Lcom/tr/comment/sdk/R$id;->tr_sdk_comment_title_back:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "COMMENT_EXTRA_SOURCETYPE"

    .line 7
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "COMMENT_EXTRA_BOOKID"

    .line 8
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "COMMENT_EXTRA_BOOKNAME"

    .line 9
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 10
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 11
    iget-object v2, p0, Lcom/tr/comment/sdk/activity/TrCommentActivity;->do:Lcom/tr/comment/sdk/commons/widget/TrTitleView;

    invoke-virtual {v2, p1}, Lcom/tr/comment/sdk/commons/widget/TrTitleView;->setTitle(Ljava/lang/String;)V

    .line 12
    :cond_0
    iget-object p1, p0, Lcom/tr/comment/sdk/activity/TrCommentActivity;->if:Lcom/tr/comment/sdk/view/TrCommentView;

    const/4 v2, 0x1

    .line 13
    iput-boolean v2, p1, Lcom/tr/comment/sdk/view/TrCommentView;->static:Z

    .line 14
    iget-object v2, p1, Lcom/tr/comment/sdk/view/TrCommentView;->switch:Landroid/widget/FrameLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 15
    sget v2, Lcom/tr/comment/sdk/R$id;->tr_sdk_comment_ad_close_bt:I

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    iget-object p1, p0, Lcom/tr/comment/sdk/activity/TrCommentActivity;->if:Lcom/tr/comment/sdk/view/TrCommentView;

    const-string v2, "0"

    invoke-virtual {p1, p0, v0, v1, v2}, Lcom/tr/comment/sdk/view/TrCommentView;->const(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy()V
    .locals 5

    .line 1
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcom/tr/comment/sdk/activity/TrCommentActivity;->if:Lcom/tr/comment/sdk/view/TrCommentView;

    if-eqz v0, :cond_7

    .line 3
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    iget-object v2, v0, Lcom/tr/comment/sdk/view/TrCommentView;->package:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 4
    iget-object v1, v0, Lcom/tr/comment/sdk/view/TrCommentView;->goto:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {v1, v0}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 6
    :cond_0
    iget-boolean v1, v0, Lcom/tr/comment/sdk/view/TrCommentView;->static:Z

    if-eqz v1, :cond_5

    .line 7
    invoke-static {}, Lcom/apk/cb0;->else()Lcom/apk/cb0;

    move-result-object v1

    const/4 v2, 0x0

    .line 8
    iput v2, v1, Lcom/apk/cb0;->goto:I

    .line 9
    iput v2, v1, Lcom/apk/cb0;->break:I

    .line 10
    iget-object v2, v1, Lcom/apk/cb0;->catch:Lcom/tr/comment/sdk/ggs/view/TrAdViewBangDan;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 11
    invoke-virtual {v2}, Lcom/tr/comment/sdk/ggs/view/TrAdViewBangDan;->for()V

    .line 12
    iput-object v3, v1, Lcom/apk/cb0;->catch:Lcom/tr/comment/sdk/ggs/view/TrAdViewBangDan;

    .line 13
    :cond_1
    iget-object v2, v1, Lcom/apk/cb0;->const:Lcom/tr/comment/sdk/ggs/view/TrAdViewRectangle;

    if-eqz v2, :cond_4

    const/16 v4, 0x8

    .line 14
    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 15
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 16
    iget-object v4, v2, Lcom/tr/comment/sdk/ggs/view/TrAdViewRectangle;->do:Lcom/apk/v90$do;

    if-eqz v4, :cond_2

    .line 17
    invoke-virtual {v4, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 18
    :cond_2
    iget-object v2, v2, Lcom/tr/comment/sdk/ggs/view/TrAdViewRectangle;->break:Lcom/apk/f60;

    if-eqz v2, :cond_3

    .line 19
    iget-object v4, v2, Lcom/apk/f60;->case:Lcom/apk/j60;

    if-eqz v4, :cond_3

    .line 20
    iput-object v3, v2, Lcom/apk/f60;->case:Lcom/apk/j60;

    .line 21
    :cond_3
    iput-object v3, v1, Lcom/apk/cb0;->const:Lcom/tr/comment/sdk/ggs/view/TrAdViewRectangle;

    .line 22
    :cond_4
    iget-object v2, v1, Lcom/apk/cb0;->class:Ljava/util/Map;

    if-eqz v2, :cond_5

    .line 23
    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 24
    iput-object v3, v1, Lcom/apk/cb0;->class:Ljava/util/Map;

    .line 25
    :cond_5
    iget-object v1, v0, Lcom/tr/comment/sdk/view/TrCommentView;->throws:Lcom/tr/comment/sdk/ggs/view/TrAdViewBanner;

    if-eqz v1, :cond_6

    .line 26
    invoke-virtual {v1}, Lcom/tr/comment/sdk/ggs/view/TrAdViewBanner;->new()V

    .line 27
    :cond_6
    iget-object v0, v0, Lcom/tr/comment/sdk/view/TrCommentView;->default:Lcom/tr/comment/sdk/ggs/view/TrAdViewBangDan;

    if-eqz v0, :cond_7

    .line 28
    invoke-virtual {v0}, Lcom/tr/comment/sdk/ggs/view/TrAdViewBangDan;->for()V

    :cond_7
    return-void
.end method
