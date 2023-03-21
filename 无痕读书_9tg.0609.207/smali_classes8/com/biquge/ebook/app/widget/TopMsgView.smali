.class public Lcom/biquge/ebook/app/widget/TopMsgView;
.super Landroid/widget/FrameLayout;
.source "TopMsgView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public do:Lcom/biquge/ebook/app/widget/marqueeview/ShelfMarqueeView;

.field public for:Landroid/widget/ImageView;

.field public if:Landroid/view/View;

.field public new:Lcom/apk/xp0;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static synthetic do(Lcom/biquge/ebook/app/widget/TopMsgView;Z)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/biquge/ebook/app/widget/TopMsgView;->if(Z)V

    return-void
.end method

.method public static for(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "1"

    .line 1
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p0, p1, v1}, Lcom/swl/gg/ggs/SwlAdHelper;->openBrowser(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    const-string v0, "2"

    .line 3
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p2, 0x0

    .line 4
    invoke-static {p0, p1, p2}, Lcom/swl/gg/ggs/SwlAdHelper;->openBrowser(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    const-string v0, "3"

    .line 5
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_3

    .line 6
    invoke-static {p2}, Lcom/apk/ze;->G(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 7
    invoke-static {p0, p2}, Lcom/apk/ze;->g0(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 8
    :cond_2
    new-instance p2, Lcom/biquge/ebook/app/bean/DownloadFileModel;

    invoke-direct {p2}, Lcom/biquge/ebook/app/bean/DownloadFileModel;-><init>()V

    const-string p3, "\u63a8\u8350"

    .line 9
    iput-object p3, p2, Lcom/biquge/ebook/app/bean/DownloadFileModel;->info:Ljava/lang/String;

    .line 10
    iput-boolean v1, p2, Lcom/biquge/ebook/app/bean/DownloadFileModel;->isShowToast:Z

    .line 11
    iput-boolean v1, p2, Lcom/biquge/ebook/app/bean/DownloadFileModel;->isShowNotice:Z

    .line 12
    iput-boolean v1, p2, Lcom/biquge/ebook/app/bean/DownloadFileModel;->isInstall:Z

    .line 13
    iput-object p1, p2, Lcom/biquge/ebook/app/bean/DownloadFileModel;->url:Ljava/lang/String;

    const/4 p1, 0x0

    .line 14
    invoke-static {p0, p2, p1}, Lcom/apk/kf;->if(Landroid/content/Context;Lcom/biquge/ebook/app/bean/DownloadFileModel;Lcom/apk/z5;)V

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public final if(Z)V
    .locals 5

    const-string v0, "REFRESH_CLEAR_SHELF_TASK_RED_KEY"

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/biquge/ebook/app/widget/TopMsgView;->new:Lcom/apk/xp0;

    if-nez p1, :cond_4

    .line 2
    iget-object p1, p0, Lcom/biquge/ebook/app/widget/TopMsgView;->if:Landroid/view/View;

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/biquge/ebook/app/widget/TopMsgView;->if:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4
    :cond_0
    new-instance p1, Lcom/apk/xp0;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/apk/xp0;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/biquge/ebook/app/widget/TopMsgView;->new:Lcom/apk/xp0;

    .line 5
    iget-object v1, p0, Lcom/biquge/ebook/app/widget/TopMsgView;->if:Landroid/view/View;

    invoke-virtual {p1, v1}, Lcom/apk/xp0;->do(Landroid/view/View;)Lcom/apk/vp0;

    const v1, 0x7f060080

    .line 6
    invoke-static {v1}, Lcom/apk/ze;->p(I)I

    move-result v1

    check-cast p1, Lcom/apk/xp0;

    .line 7
    iput v1, p1, Lcom/apk/xp0;->do:I

    if-nez v1, :cond_1

    .line 8
    iget-object v1, p1, Lcom/apk/xp0;->private:Landroid/text/TextPaint;

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    goto :goto_0

    .line 9
    :cond_1
    iget-object v1, p1, Lcom/apk/xp0;->private:Landroid/text/TextPaint;

    new-instance v3, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v3}, Landroid/text/TextPaint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 10
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v3, 0x41200000    # 10.0f

    const/4 v4, 0x1

    .line 11
    invoke-virtual {p1, v1, v3, v4}, Lcom/apk/xp0;->this(FFZ)Lcom/apk/vp0;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, -0x1

    .line 12
    check-cast p1, Lcom/apk/xp0;

    :try_start_1
    invoke-virtual {p1, v1}, Lcom/apk/xp0;->goto(I)Lcom/apk/vp0;

    .line 13
    invoke-static {v0, v2}, Lcom/apk/mf;->do(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 14
    :cond_2
    iget-object p1, p0, Lcom/biquge/ebook/app/widget/TopMsgView;->new:Lcom/apk/xp0;

    if-eqz p1, :cond_4

    .line 15
    iget-object p1, p0, Lcom/biquge/ebook/app/widget/TopMsgView;->if:Landroid/view/View;

    if-eqz p1, :cond_3

    .line 16
    iget-object p1, p0, Lcom/biquge/ebook/app/widget/TopMsgView;->if:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 17
    :cond_3
    iget-object p1, p0, Lcom/biquge/ebook/app/widget/TopMsgView;->new:Lcom/apk/xp0;

    invoke-virtual {p1, v1}, Lcom/apk/xp0;->goto(I)Lcom/apk/vp0;

    .line 18
    iput-object v2, p0, Lcom/biquge/ebook/app/widget/TopMsgView;->new:Lcom/apk/xp0;

    .line 19
    invoke-static {v1}, Lcom/apk/w0;->volatile(Z)V

    .line 20
    invoke-static {v0, v2}, Lcom/apk/mf;->do(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 21
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f09028b

    if-ne p1, v0, :cond_0

    const/16 p1, 0x8

    .line 2
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method
