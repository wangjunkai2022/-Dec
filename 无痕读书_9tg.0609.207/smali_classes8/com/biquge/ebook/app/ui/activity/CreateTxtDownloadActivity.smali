.class public Lcom/biquge/ebook/app/ui/activity/CreateTxtDownloadActivity;
.super Lcom/apk/f6;
.source "CreateTxtDownloadActivity.java"


# instance fields
.field public mTitleET:Landroidx/appcompat/widget/AppCompatEditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0901a3
    .end annotation
.end field

.field public mUrlET:Landroidx/appcompat/widget/AppCompatEditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0901a4
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/apk/f6;-><init>()V

    return-void
.end method


# virtual methods
.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0c003b

    return v0
.end method

.method public initData()V
    .locals 0

    return-void
.end method

.method public initView()V
    .locals 2

    const v0, 0x7f090067

    const v1, 0x7f10010b

    .line 1
    invoke-virtual {p0, v0, v1}, Lcom/apk/f6;->initTopBarOnlyTitle(II)V

    return-void
.end method

.method public menuClick()V
    .locals 7
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0901a2
        }
    .end annotation

    const-string v0, "."

    const-string v1, "/"

    .line 1
    iget-object v2, p0, Lcom/biquge/ebook/app/ui/activity/CreateTxtDownloadActivity;->mTitleET:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-virtual {v2}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 2
    iget-object v3, p0, Lcom/biquge/ebook/app/ui/activity/CreateTxtDownloadActivity;->mUrlET:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-virtual {v3}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 3
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    const v0, 0x7f10010d

    .line 4
    invoke-static {v0}, Lcom/hjq/toast/ToastUtils;->show(I)V

    goto/16 :goto_4

    .line 5
    :cond_0
    invoke-static {v3}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "http"

    .line 6
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "HTTP"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    const v0, 0x7f10010e

    .line 7
    invoke-static {v0}, Lcom/hjq/toast/ToastUtils;->show(I)V

    goto/16 :goto_4

    .line 8
    :cond_1
    invoke-static {v3}, Lcom/apk/ze;->I(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v4, :cond_2

    invoke-static {v3}, Lcom/apk/ze;->J(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v0, "txt\u4e0b\u8f7d"

    .line 9
    invoke-static {p0, v3, v5, v6, v0}, Lcom/biquge/ebook/app/ui/webread/ui/WebReadActivity;->j(Landroid/content/Context;Ljava/lang/String;ZZLjava/lang/String;)V

    goto :goto_4

    .line 10
    :cond_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 11
    :try_start_0
    invoke-virtual {v3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v3, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v1, v5

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    .line 12
    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v3, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    .line 13
    :cond_4
    invoke-virtual {v3, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 14
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 15
    :cond_5
    :goto_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    :try_start_1
    const-string v0, "UTF-8"

    .line 16
    invoke-static {v2, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    .line 17
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 18
    :cond_6
    :goto_2
    invoke-static {v3}, Lcom/apk/ze;->I(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 19
    invoke-static {v2}, Lcom/apk/ze;->I(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, ".txt"

    .line 20
    invoke-static {v2, v0}, Lcom/apk/goto;->case(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    .line 21
    :cond_7
    invoke-static {v2}, Lcom/apk/ze;->J(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, ".zip"

    .line 22
    invoke-static {v2, v0}, Lcom/apk/goto;->case(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 23
    :cond_8
    :goto_3
    new-instance v0, Lcom/biquge/ebook/app/bean/TaskInfo;

    invoke-direct {v0, v2, v3}, Lcom/biquge/ebook/app/bean/TaskInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/apk/kf;->this(Lcom/biquge/ebook/app/bean/TaskInfo;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, -0x1

    .line 24
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    .line 25
    invoke-static {p0}, Lcom/apk/ze;->goto(Landroid/app/Activity;)V

    .line 26
    invoke-virtual {p0}, Lcom/apk/f6;->finish()V

    :cond_9
    :goto_4
    return-void
.end method
