.class public Lcom/biquge/ebook/app/widget/LieBianBottomShareDlg;
.super Lcom/lxj/xpopup/core/BottomPopupView;
.source "LieBianBottomShareDlg.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/biquge/ebook/app/widget/LieBianBottomShareDlg$if;
    }
.end annotation


# instance fields
.field public final do:Lcom/biquge/ebook/app/widget/LieBianBottomShareDlg$if;

.field public for:Lcom/biquge/ebook/app/widget/AppProgressBar;

.field public if:Landroid/widget/ImageView;

.field public final new:Lcom/apk/bg;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/biquge/ebook/app/widget/LieBianBottomShareDlg$if;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lcom/lxj/xpopup/core/BottomPopupView;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Lcom/biquge/ebook/app/widget/LieBianBottomShareDlg$do;

    invoke-direct {p1, p0}, Lcom/biquge/ebook/app/widget/LieBianBottomShareDlg$do;-><init>(Lcom/biquge/ebook/app/widget/LieBianBottomShareDlg;)V

    iput-object p1, p0, Lcom/biquge/ebook/app/widget/LieBianBottomShareDlg;->new:Lcom/apk/bg;

    .line 3
    iput-object p2, p0, Lcom/biquge/ebook/app/widget/LieBianBottomShareDlg;->do:Lcom/biquge/ebook/app/widget/LieBianBottomShareDlg$if;

    return-void
.end method


# virtual methods
.method public getImplLayoutId()I
    .locals 1

    const v0, 0x7f0c0067

    return v0
.end method

.method public final if(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/LieBianBottomShareDlg;->if:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {p1}, Lcom/apk/jg;->do(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/LieBianBottomShareDlg;->if:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method public onCreate()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/lxj/xpopup/core/BasePopupView;->onCreate()V

    const v0, 0x7f0904e3

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/biquge/ebook/app/widget/LieBianBottomShareDlg;->if:Landroid/widget/ImageView;

    const v0, 0x7f0904e5

    .line 3
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/biquge/ebook/app/widget/AppProgressBar;

    iput-object v0, p0, Lcom/biquge/ebook/app/widget/LieBianBottomShareDlg;->for:Lcom/biquge/ebook/app/widget/AppProgressBar;

    const v0, 0x7f0904d9

    .line 4
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/biquge/ebook/app/widget/LieBianBottomShareDlg;->new:Lcom/apk/bg;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0904da

    .line 5
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/biquge/ebook/app/widget/LieBianBottomShareDlg;->new:Lcom/apk/bg;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0904d8

    .line 6
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/biquge/ebook/app/widget/LieBianBottomShareDlg;->new:Lcom/apk/bg;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0904db

    .line 7
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/biquge/ebook/app/widget/LieBianBottomShareDlg;->new:Lcom/apk/bg;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090417

    .line 8
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/biquge/ebook/app/widget/LieBianBottomShareDlg;->new:Lcom/apk/bg;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    :try_start_0
    invoke-static {}, Lcom/apk/continue;->if()Lcom/apk/continue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apk/continue;->for()Lcom/biquge/ebook/app/bean/NewShareDisBean;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 10
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/NewShareDisBean;->isOnlyCheckTime()Z

    move-result v0

    if-nez v0, :cond_1

    .line 11
    invoke-static {}, Lcom/apk/w0;->class()Ljava/lang/String;

    move-result-object v0

    .line 12
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 13
    invoke-static {v0}, Lcom/apk/w;->class(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/biquge/ebook/app/widget/LieBianBottomShareDlg;->if(Ljava/lang/String;)V

    goto :goto_0

    .line 14
    :cond_0
    new-instance v0, Lcom/apk/b1;

    invoke-direct {v0}, Lcom/apk/b1;-><init>()V

    new-instance v1, Lcom/apk/rg;

    invoke-direct {v1, p0}, Lcom/apk/rg;-><init>(Lcom/biquge/ebook/app/widget/LieBianBottomShareDlg;)V

    invoke-virtual {v0, v1}, Lcom/apk/b1;->do(Lcom/apk/c1;)Lcom/apk/b1;

    goto :goto_0

    .line 15
    :cond_1
    invoke-static {}, Lcom/apk/continue;->if()Lcom/apk/continue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apk/continue;->new()Lcom/biquge/ebook/app/bean/WebConfBean;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 16
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/WebConfBean;->getAz_xz_url2()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 17
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/WebConfBean;->getAz_xz_url2()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/biquge/ebook/app/widget/LieBianBottomShareDlg;->if(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v0, "1"

    .line 18
    invoke-static {v0}, Lcom/apk/w;->class(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/biquge/ebook/app/widget/LieBianBottomShareDlg;->if(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 19
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
