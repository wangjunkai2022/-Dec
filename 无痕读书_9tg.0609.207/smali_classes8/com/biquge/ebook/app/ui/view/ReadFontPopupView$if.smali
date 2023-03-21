.class public Lcom/biquge/ebook/app/ui/view/ReadFontPopupView$if;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "ReadFontPopupView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biquge/ebook/app/ui/view/ReadFontPopupView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "if"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
        "Lcom/biquge/ebook/app/bean/NewReadFont;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field public final do:Landroidx/recyclerview/widget/RecyclerView;

.field public if:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;Lcom/apk/bd;)V
    .locals 1

    const p2, 0x7f0c0122

    .line 1
    invoke-direct {p0, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(I)V

    const-string p2, "refresh_read_font_url"

    const-string v0, "default_font_url"

    .line 2
    invoke-static {p2, v0}, Lcom/apk/tt;->do(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 3
    iput-object p2, p0, Lcom/biquge/ebook/app/ui/view/ReadFontPopupView$if;->if:Ljava/lang/String;

    .line 4
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/view/ReadFontPopupView$if;->do:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method


# virtual methods
.method public convert(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/Object;)V
    .locals 7
    .param p1    # Lcom/chad/library/adapter/base/BaseViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p2, Lcom/biquge/ebook/app/bean/NewReadFont;

    .line 2
    invoke-static {}, Lcom/apk/kf;->try()Lcom/apk/kf;

    move-result-object v0

    invoke-virtual {p2}, Lcom/biquge/ebook/app/bean/NewReadFont;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/apk/kf;->case(Ljava/lang/String;)Lcom/biquge/ebook/app/bean/NewReadFont;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object p2, v0

    :cond_0
    const v0, 0x7f0902eb

    .line 3
    invoke-virtual {p2}, Lcom/biquge/ebook/app/bean/NewReadFont;->getFontname()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    const v0, 0x7f0902ea

    .line 4
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 5
    invoke-virtual {p2}, Lcom/biquge/ebook/app/bean/NewReadFont;->getImg()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 6
    invoke-virtual {p2}, Lcom/biquge/ebook/app/bean/NewReadFont;->getImg()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/apk/dd;

    invoke-direct {v3, p0, v0}, Lcom/apk/dd;-><init>(Lcom/biquge/ebook/app/ui/view/ReadFontPopupView$if;Landroid/widget/ImageView;)V

    invoke-static {v1, v0, v2, v3, v2}, Lcom/apk/u;->return(Ljava/lang/String;Landroid/widget/ImageView;ILcom/apk/j1;Z)V

    goto :goto_0

    :cond_1
    const/16 v1, 0x8

    .line 7
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    const v0, 0x7f0902e9

    .line 8
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;

    const-string v3, "downloadTxt"

    .line 9
    invoke-static {v3}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lcom/biquge/ebook/app/bean/NewReadFont;->getFid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    const v3, 0x7f0902ed

    .line 10
    invoke-virtual {p1, v3}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const-string v4, "useImage"

    .line 11
    invoke-static {v4}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Lcom/biquge/ebook/app/bean/NewReadFont;->getFid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    const v4, 0x7f0902ec

    .line 12
    invoke-virtual {p1, v4}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const-string v5, "sizeTxt"

    .line 13
    invoke-static {v5}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Lcom/biquge/ebook/app/bean/NewReadFont;->getFid()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 14
    invoke-virtual {p2}, Lcom/biquge/ebook/app/bean/NewReadFont;->getSize()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    invoke-virtual {p0, v1, v3, v4, p2}, Lcom/biquge/ebook/app/ui/view/ReadFontPopupView$if;->do(Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;Landroid/widget/ImageView;Landroid/widget/TextView;Lcom/biquge/ebook/app/bean/NewReadFont;)V

    const/4 p2, 0x1

    new-array p2, p2, [I

    aput v0, p2, v2

    .line 16
    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/BaseViewHolder;->addOnClickListener([I)Lcom/chad/library/adapter/base/BaseViewHolder;

    return-void
.end method

.method public final do(Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;Landroid/widget/ImageView;Landroid/widget/TextView;Lcom/biquge/ebook/app/bean/NewReadFont;)V
    .locals 5

    if-nez p1, :cond_0

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/view/ReadFontPopupView$if;->do:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "downloadTxt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Lcom/biquge/ebook/app/bean/NewReadFont;->getFid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;

    goto :goto_0

    :catch_0
    move-exception p1

    goto/16 :goto_1

    :cond_0
    :goto_0
    if-nez p2, :cond_1

    .line 2
    iget-object p2, p0, Lcom/biquge/ebook/app/ui/view/ReadFontPopupView$if;->do:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "useImage"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Lcom/biquge/ebook/app/bean/NewReadFont;->getFid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    :cond_1
    if-nez p3, :cond_2

    .line 3
    iget-object p3, p0, Lcom/biquge/ebook/app/ui/view/ReadFontPopupView$if;->do:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sizeTxt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Lcom/biquge/ebook/app/bean/NewReadFont;->getFid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    :cond_2
    if-eqz p1, :cond_6

    if-eqz p2, :cond_6

    if-eqz p3, :cond_6

    .line 4
    invoke-virtual {p4}, Lcom/biquge/ebook/app/bean/NewReadFont;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/view/ReadFontPopupView$if;->if:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x4

    const/16 v4, 0x8

    if-eqz v1, :cond_3

    .line 6
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 7
    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 8
    invoke-virtual {p3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    :cond_3
    const-string v1, "default_font_url"

    .line 9
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 10
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 11
    invoke-virtual {p2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 12
    invoke-virtual {p3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 13
    :cond_4
    invoke-virtual {p4}, Lcom/biquge/ebook/app/bean/NewReadFont;->isDownloadOk()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 14
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 15
    invoke-virtual {p2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 16
    invoke-virtual {p3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    :cond_5
    const v0, 0x7f100138

    .line 17
    invoke-static {v0}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;->setCurrentText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    .line 18
    invoke-virtual {p1, v0}, Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;->setState(I)V

    .line 19
    invoke-virtual {p4}, Lcom/biquge/ebook/app/bean/NewReadFont;->getTotalSize()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;->setMaxProgress(I)V

    .line 20
    invoke-virtual {p4}, Lcom/biquge/ebook/app/bean/NewReadFont;->getCurrentSize()I

    move-result p4

    int-to-float p4, p4

    invoke-virtual {p1, p4}, Lcom/biquge/ebook/app/ui/view/DownloadProgressButton;->setProgress(F)V

    .line 21
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 22
    invoke-virtual {p2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 23
    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 24
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_6
    :goto_2
    return-void
.end method
