.class public Lcom/apk/bd;
.super Ljava/lang/Object;
.source "ReadFontPopupView.java"

# interfaces
.implements Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemChildClickListener;


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/ui/view/ReadFontPopupView;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/view/ReadFontPopupView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/bd;->do:Lcom/biquge/ebook/app/ui/view/ReadFontPopupView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemChildClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 3

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result p1

    const p2, 0x7f0902e9

    if-ne p1, p2, :cond_3

    .line 2
    iget-object p1, p0, Lcom/apk/bd;->do:Lcom/biquge/ebook/app/ui/view/ReadFontPopupView;

    .line 3
    iget-object p1, p1, Lcom/biquge/ebook/app/ui/view/ReadFontPopupView;->do:Lcom/biquge/ebook/app/ui/view/ReadFontPopupView$if;

    .line 4
    invoke-virtual {p1, p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/biquge/ebook/app/bean/NewReadFont;

    if-eqz p1, :cond_3

    .line 5
    invoke-static {}, Lcom/apk/kf;->try()Lcom/apk/kf;

    move-result-object p2

    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/NewReadFont;->getUrl()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/apk/kf;->case(Ljava/lang/String;)Lcom/biquge/ebook/app/bean/NewReadFont;

    move-result-object p2

    if-eqz p2, :cond_0

    move-object p1, p2

    .line 6
    :cond_0
    invoke-static {}, Lcom/apk/kf;->try()Lcom/apk/kf;

    move-result-object p2

    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/NewReadFont;->getUrl()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/apk/kf;->else(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    invoke-static {}, Lcom/apk/kf;->try()Lcom/apk/kf;

    move-result-object p2

    iget-object p3, p0, Lcom/apk/bd;->do:Lcom/biquge/ebook/app/ui/view/ReadFontPopupView;

    invoke-virtual {p3}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p3

    .line 8
    iget-object v0, p2, Lcom/apk/kf;->do:Ljava/util/Map;

    if-nez v0, :cond_2

    .line 9
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p2, Lcom/apk/kf;->do:Ljava/util/Map;

    :cond_2
    const/4 v0, 0x0

    .line 10
    invoke-virtual {p1, v0}, Lcom/biquge/ebook/app/bean/NewReadFont;->setFinish(Z)V

    const/4 v1, 0x1

    .line 11
    invoke-virtual {p1, v1}, Lcom/biquge/ebook/app/bean/NewReadFont;->setStartDownload(Z)V

    const-string v1, "CACHE_DOWNLOAD_FONT_START"

    .line 12
    invoke-static {v1, p1}, Lcom/apk/mf;->do(Ljava/lang/String;Ljava/lang/Object;)V

    .line 13
    iget-object v1, p2, Lcom/apk/kf;->do:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/NewReadFont;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    new-instance v1, Lcom/biquge/ebook/app/bean/DownloadFileModel;

    invoke-direct {v1}, Lcom/biquge/ebook/app/bean/DownloadFileModel;-><init>()V

    .line 15
    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/NewReadFont;->getUrl()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/biquge/ebook/app/bean/DownloadFileModel;->url:Ljava/lang/String;

    .line 16
    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/NewReadFont;->getFontname()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/biquge/ebook/app/bean/DownloadFileModel;->info:Ljava/lang/String;

    .line 17
    iput-boolean v0, v1, Lcom/biquge/ebook/app/bean/DownloadFileModel;->isInstall:Z

    .line 18
    iput-boolean v0, v1, Lcom/biquge/ebook/app/bean/DownloadFileModel;->isShowToast:Z

    .line 19
    invoke-static {}, Lcom/apk/a6;->else()Lcom/apk/a6;

    move-result-object p1

    invoke-virtual {p1}, Lcom/apk/a6;->for()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/biquge/ebook/app/bean/DownloadFileModel;->savePath:Ljava/lang/String;

    .line 20
    iget-object p1, p2, Lcom/apk/kf;->if:Lcom/apk/z5;

    invoke-static {p3, v1, p1}, Lcom/apk/kf;->if(Landroid/content/Context;Lcom/biquge/ebook/app/bean/DownloadFileModel;Lcom/apk/z5;)V

    :cond_3
    :goto_0
    return-void
.end method
