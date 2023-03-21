.class public Lcom/biquge/ebook/app/ui/fragment/UploadBookFragment;
.super Lcom/apk/g6;
.source "UploadBookFragment.java"


# instance fields
.field public do:Z

.field public final for:Lcom/apk/u5;

.field public if:Lcom/apk/v3;

.field public indicatorView:Lcom/shizhefei/view/indicator/ScrollIndicatorView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0905f3
    .end annotation
.end field

.field public mAuthorEt:Lcom/biquge/ebook/app/widget/ClearEditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0905f2
    .end annotation
.end field

.field public mCoverIv:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0905e9
    .end annotation
.end field

.field public mLinkEt:Lcom/biquge/ebook/app/widget/ClearEditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0905e8
    .end annotation
.end field

.field public mNameEt:Lcom/biquge/ebook/app/widget/ClearEditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0905ec
    .end annotation
.end field

.field public mSelectFileTv:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0905f0
    .end annotation
.end field

.field public mTxtTagView:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0905f1
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/apk/g6;-><init>()V

    .line 2
    new-instance v0, Lcom/biquge/ebook/app/ui/fragment/UploadBookFragment$if;

    invoke-direct {v0, p0}, Lcom/biquge/ebook/app/ui/fragment/UploadBookFragment$if;-><init>(Lcom/biquge/ebook/app/ui/fragment/UploadBookFragment;)V

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/UploadBookFragment;->for:Lcom/apk/u5;

    return-void
.end method

.method public static a(Z)Lcom/biquge/ebook/app/ui/fragment/UploadBookFragment;
    .locals 3

    .line 1
    new-instance v0, Lcom/biquge/ebook/app/ui/fragment/UploadBookFragment;

    invoke-direct {v0}, Lcom/biquge/ebook/app/ui/fragment/UploadBookFragment;-><init>()V

    .line 2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "isBookSource"

    .line 3
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 4
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public static synchronized(Lcom/biquge/ebook/app/ui/fragment/UploadBookFragment;)V
    .locals 3

    if-eqz p0, :cond_0

    .line 1
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v2, "android.intent.action.PICK"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/4 v1, 0x1

    .line 2
    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    :cond_0
    const/4 p0, 0x0

    .line 3
    throw p0
.end method


# virtual methods
.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0c00cb

    return v0
.end method

.method public initData()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/apk/g6;->initData()V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "isBookSource"

    .line 3
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/biquge/ebook/app/ui/fragment/UploadBookFragment;->do:Z

    .line 4
    :cond_0
    new-instance v0, Lcom/apk/v3;

    invoke-virtual {p0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object v1

    iget-object v2, p0, Lcom/biquge/ebook/app/ui/fragment/UploadBookFragment;->for:Lcom/apk/u5;

    invoke-direct {v0, v1, v2}, Lcom/apk/v3;-><init>(Landroid/app/Activity;Lcom/apk/u5;)V

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/UploadBookFragment;->if:Lcom/apk/v3;

    return-void
.end method

.method public initView()V
    .locals 5

    .line 1
    invoke-super {p0}, Lcom/apk/g6;->initView()V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const v1, 0x7f1003b1

    .line 2
    invoke-static {v1}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, 0x7f1003b0

    .line 3
    invoke-static {v1}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 4
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/fragment/UploadBookFragment;->indicatorView:Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    new-instance v2, Lcom/apk/nz;

    invoke-virtual {p0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object v3

    const/high16 v4, 0x42c80000    # 100.0f

    invoke-static {v4}, Lcom/apk/eg;->catch(F)I

    move-result v4

    invoke-direct {v2, v3, v0, v4}, Lcom/apk/nz;-><init>(Landroid/content/Context;[Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->setAdapter(Lcom/apk/b40$if;)V

    .line 5
    invoke-virtual {p0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object v0

    iget-object v1, p0, Lcom/biquge/ebook/app/ui/fragment/UploadBookFragment;->indicatorView:Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    const/16 v2, 0x1e

    const/16 v3, 0xe

    invoke-static {v0, v1, v2, v3}, Lcom/apk/ze;->u(Landroid/content/Context;Lcom/apk/b40;II)V

    .line 6
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/UploadBookFragment;->indicatorView:Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    new-instance v1, Lcom/biquge/ebook/app/ui/fragment/UploadBookFragment$do;

    invoke-direct {v1, p0}, Lcom/biquge/ebook/app/ui/fragment/UploadBookFragment$do;-><init>(Lcom/biquge/ebook/app/ui/fragment/UploadBookFragment;)V

    invoke-virtual {v0, v1}, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->setOnItemSelectListener(Lcom/apk/b40$new;)V

    return-void
.end method

.method public menuClick(Landroid/view/View;)V
    .locals 5
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0905eb,
            0x7f0905f0,
            0x7f0905ea
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0905eb

    if-ne v0, v1, :cond_4

    .line 2
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/UploadBookFragment;->mNameEt:Lcom/biquge/ebook/app/widget/ClearEditText;

    invoke-static {p1}, Lcom/apk/goto;->transient(Lcom/biquge/ebook/app/widget/ClearEditText;)Ljava/lang/String;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/UploadBookFragment;->mAuthorEt:Lcom/biquge/ebook/app/widget/ClearEditText;

    invoke-static {v0}, Lcom/apk/goto;->transient(Lcom/biquge/ebook/app/widget/ClearEditText;)Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const p1, 0x7f1003ac

    .line 5
    invoke-static {p1}, Lcom/hjq/toast/ToastUtils;->show(I)V

    goto/16 :goto_0

    .line 6
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const p1, 0x7f1003b3

    .line 7
    invoke-static {p1}, Lcom/hjq/toast/ToastUtils;->show(I)V

    goto/16 :goto_0

    .line 8
    :cond_1
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/fragment/UploadBookFragment;->indicatorView:Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    invoke-virtual {v1}, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->getCurrentItem()I

    move-result v1

    if-nez v1, :cond_2

    .line 9
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/fragment/UploadBookFragment;->mLinkEt:Lcom/biquge/ebook/app/widget/ClearEditText;

    invoke-static {v1}, Lcom/apk/goto;->transient(Lcom/biquge/ebook/app/widget/ClearEditText;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "^([hH][tT]{2}[pP]:/*|[hH][tT]{2}[pP][sS]:/*|[fF][tT][pP]:/*)(([A-Za-z0-9-~]+).)+([A-Za-z0-9-~\\/])+(\\?{0,1}(([A-Za-z0-9-~]+\\={0,1})([A-Za-z0-9-~]*)\\&{0,1})*)$"

    .line 10
    invoke-static {v2, v1}, Lcom/apk/eg;->protected(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    const p1, 0x7f1003ad

    .line 11
    invoke-static {p1}, Lcom/hjq/toast/ToastUtils;->show(I)V

    goto/16 :goto_0

    .line 12
    :cond_2
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/fragment/UploadBookFragment;->mSelectFileTv:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 13
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    const p1, 0x7f1003af

    .line 14
    invoke-static {p1}, Lcom/hjq/toast/ToastUtils;->show(I)V

    goto :goto_0

    .line 15
    :cond_3
    iget-object v2, p0, Lcom/biquge/ebook/app/ui/fragment/UploadBookFragment;->if:Lcom/apk/v3;

    if-eqz v2, :cond_7

    .line 16
    invoke-virtual {v2}, Lcom/apk/p1;->if()V

    .line 17
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    new-instance v4, Lcom/apk/u2;

    invoke-direct {v4, v2, p1, v0, v1}, Lcom/apk/u2;-><init>(Lcom/apk/v3;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0x7d0

    invoke-virtual {v3, v4, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 18
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0905f0

    if-ne v0, v1, :cond_6

    .line 19
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object v0

    const-class v1, Lcom/biquge/ebook/app/ui/activity/SelectFileActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v0, 0x7f100254

    .line 20
    invoke-static {v0}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "title"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 21
    iget-boolean v0, p0, Lcom/biquge/ebook/app/ui/fragment/UploadBookFragment;->do:Z

    if-nez v0, :cond_5

    const-string v0, "fileType"

    const-string v1, ".zip"

    .line 22
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_5
    const/16 v0, 0xb

    .line 23
    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 24
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0905ea

    if-ne p1, v0, :cond_7

    .line 25
    invoke-virtual {p0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object p1

    .line 26
    new-instance v0, Lcom/apk/yu;

    invoke-direct {v0, p1}, Lcom/apk/yu;-><init>(Landroid/app/Activity;)V

    .line 27
    sget-object p1, Lcom/apk/wu;->do:[Ljava/lang/String;

    .line 28
    invoke-virtual {v0, p1}, Lcom/apk/yu;->if([Ljava/lang/String;)Lcom/apk/yu;

    new-instance p1, Lcom/apk/fc;

    invoke-direct {p1, p0}, Lcom/apk/fc;-><init>(Lcom/biquge/ebook/app/ui/fragment/UploadBookFragment;)V

    .line 29
    invoke-virtual {v0, p1}, Lcom/apk/yu;->for(Lcom/apk/vu;)V

    :cond_7
    :goto_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 8
    .param p3    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, -0x1

    const/16 v1, 0xb

    if-ne p1, v1, :cond_0

    if-ne p2, v0, :cond_0

    if-eqz p3, :cond_6

    const-string p1, "filePath"

    .line 2
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_6

    .line 4
    iget-object p2, p0, Lcom/biquge/ebook/app/ui/fragment/UploadBookFragment;->mSelectFileTv:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_0
    const/4 p2, 0x1

    if-ne p1, p2, :cond_6

    if-eqz p3, :cond_6

    .line 5
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 6
    invoke-virtual {p0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object p2

    const/4 p3, 0x0

    .line 7
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 8
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_1
    const-string v2, "file"

    .line 9
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 10
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_2
    const-string v2, "content"

    .line 11
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 12
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v7, "_data"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 13
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 14
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    if-le v2, v0, :cond_3

    .line 15
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 16
    :cond_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    if-nez p3, :cond_5

    .line 17
    invoke-static {p2, p1}, Lcom/apk/eg;->import(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p3

    .line 18
    :cond_5
    :goto_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 19
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/UploadBookFragment;->mCoverIv:Landroid/widget/ImageView;

    invoke-static {p3, p1}, Lcom/apk/u;->throws(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 20
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/UploadBookFragment;->mTxtTagView:Landroid/widget/TextView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_6
    :goto_1
    return-void
.end method
