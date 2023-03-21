.class public Lcom/biquge/ebook/app/adapter/FailedMsgAdapter;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "FailedMsgAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
        "Lcom/biquge/ebook/app/bean/ErrorConfBean$RowsTipBean;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field public final do:Ljava/lang/String;

.field public if:I


# direct methods
.method public constructor <init>(Ljava/util/List;Z)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/biquge/ebook/app/bean/ErrorConfBean$RowsTipBean;",
            ">;Z)V"
        }
    .end annotation

    const v0, 0x7f0c00fe

    .line 1
    invoke-direct {p0, v0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(ILjava/util/List;)V

    .line 2
    invoke-static {}, Lcom/apk/w0;->while()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/biquge/ebook/app/adapter/FailedMsgAdapter;->do:Ljava/lang/String;

    if-eqz p2, :cond_1

    .line 3
    invoke-static {}, Lcom/apk/da;->native()Z

    move-result p1

    if-eqz p1, :cond_0

    const p1, 0x7f060073

    .line 4
    invoke-static {p1}, Lcom/apk/ze;->p(I)I

    move-result p1

    iput p1, p0, Lcom/biquge/ebook/app/adapter/FailedMsgAdapter;->if:I

    goto :goto_0

    :cond_0
    const p1, 0x7f060064

    .line 5
    invoke-static {p1}, Lcom/apk/ze;->p(I)I

    move-result p1

    iput p1, p0, Lcom/biquge/ebook/app/adapter/FailedMsgAdapter;->if:I

    :cond_1
    :goto_0
    return-void
.end method

.method public static do(Landroid/content/Context;Lcom/biquge/ebook/app/bean/ErrorConfBean$RowsTipBean;)V
    .locals 5

    if-eqz p1, :cond_6

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/ErrorConfBean$RowsTipBean;->getClick()Ljava/lang/String;

    move-result-object p1

    const-string v0, "netset"

    .line 2
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.settings.WIRELESS_SETTINGS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_0
    const-string v0, "report"

    .line 5
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    sget-object p1, Lcom/apk/hf;->do:Lcom/apk/hf;

    const v0, 0x7f1001d2

    .line 7
    invoke-static {v0}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v0

    .line 8
    invoke-static {p0, p1, v0}, Lcom/apk/w0;->case(Landroid/content/Context;Lcom/apk/hf;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "apk"

    .line 9
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "#"

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 10
    :try_start_1
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 11
    aget-object p1, p1, v2

    const-string v0, "\u63a8\u8350"

    invoke-static {p0, p1, v0}, Lcom/apk/kf;->for(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v0, "inner"

    .line 12
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 13
    invoke-static {}, Lcom/apk/w0;->while()Ljava/lang/String;

    move-result-object v0

    .line 14
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 15
    invoke-static {p0, v0, v2}, Lcom/swl/gg/ggs/SwlAdHelper;->openBrowser(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void

    .line 16
    :cond_3
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 17
    aget-object p1, p1, v2

    invoke-static {p0, p1, v2}, Lcom/swl/gg/ggs/SwlAdHelper;->openBrowser(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_4
    const-string v0, "sysweb"

    .line 18
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 19
    invoke-static {}, Lcom/apk/w0;->while()Ljava/lang/String;

    move-result-object v0

    .line 20
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_5

    .line 21
    invoke-static {p0, v0, v4}, Lcom/swl/gg/ggs/SwlAdHelper;->openBrowser(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void

    .line 22
    :cond_5
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 23
    aget-object p1, p1, v2

    invoke-static {p0, p1, v4}, Lcom/swl/gg/ggs/SwlAdHelper;->openBrowser(Landroid/content/Context;Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 24
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_6
    :goto_0
    return-void
.end method


# virtual methods
.method public convert(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/Object;)V
    .locals 5
    .param p1    # Lcom/chad/library/adapter/base/BaseViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p2, Lcom/biquge/ebook/app/bean/ErrorConfBean$RowsTipBean;

    const v0, 0x7f0902e8

    .line 2
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 3
    invoke-virtual {p2}, Lcom/biquge/ebook/app/bean/ErrorConfBean$RowsTipBean;->getIcon()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/apk/u;->final(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 4
    invoke-virtual {p2}, Lcom/biquge/ebook/app/bean/ErrorConfBean$RowsTipBean;->getIcon()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5
    invoke-virtual {p2}, Lcom/biquge/ebook/app/bean/ErrorConfBean$RowsTipBean;->getItem()Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-virtual {p2}, Lcom/biquge/ebook/app/bean/ErrorConfBean$RowsTipBean;->getClick()Ljava/lang/String;

    move-result-object p2

    .line 7
    iget-object v1, p0, Lcom/biquge/ebook/app/adapter/FailedMsgAdapter;->do:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "inner"

    .line 8
    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "sysweb"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const-string v1, ""

    const-string v3, "inner#"

    .line 9
    invoke-virtual {p2, v3, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "sysweb#"

    invoke-virtual {v3, v4, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 10
    iget-object v3, p0, Lcom/biquge/ebook/app/adapter/FailedMsgAdapter;->do:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_2
    const v1, 0x7f0902e7

    .line 11
    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 12
    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    iget v0, p0, Lcom/biquge/ebook/app/adapter/FailedMsgAdapter;->if:I

    if-eqz v0, :cond_3

    .line 14
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 15
    :cond_3
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_4

    const/4 p2, 0x1

    new-array p2, p2, [I

    aput v1, p2, v2

    .line 16
    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/BaseViewHolder;->addOnClickListener([I)Lcom/chad/library/adapter/base/BaseViewHolder;

    :cond_4
    return-void
.end method
