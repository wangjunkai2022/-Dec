.class public Lcom/biquge/ebook/app/adapter/WantProgressAdapter;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "WantProgressAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
        "Lcom/biquge/ebook/app/bean/WantBookBean$WantProgressBean;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field public final do:Lcom/apk/hf;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/apk/hf;)V
    .locals 2

    const v0, 0x7f0c0134

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(ILjava/util/List;)V

    .line 2
    iput-object p2, p0, Lcom/biquge/ebook/app/adapter/WantProgressAdapter;->do:Lcom/apk/hf;

    .line 3
    new-instance v0, Lcom/biquge/ebook/app/adapter/WantProgressAdapter$do;

    invoke-direct {v0, p0, p2, p1}, Lcom/biquge/ebook/app/adapter/WantProgressAdapter$do;-><init>(Lcom/biquge/ebook/app/adapter/WantProgressAdapter;Lcom/apk/hf;Landroid/app/Activity;)V

    invoke-virtual {p0, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemChildClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemChildClickListener;)V

    .line 4
    new-instance v0, Lcom/biquge/ebook/app/adapter/WantProgressAdapter$if;

    invoke-direct {v0, p0, p2, p1}, Lcom/biquge/ebook/app/adapter/WantProgressAdapter$if;-><init>(Lcom/biquge/ebook/app/adapter/WantProgressAdapter;Lcom/apk/hf;Landroid/app/Activity;)V

    invoke-virtual {p0, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

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
    check-cast p2, Lcom/biquge/ebook/app/bean/WantBookBean$WantProgressBean;

    .line 2
    invoke-virtual {p2}, Lcom/biquge/ebook/app/bean/WantBookBean$WantProgressBean;->getIsPass()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const-string v0, "\u4e0d\u5904\u7406\u7684\u4e66\u7c4d"

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    const-string v0, "\u672a\u5ba1\u6838\u7684\u4e66\u7c4d"

    goto :goto_0

    :cond_1
    const-string v0, "\u5df2\u5ba1\u6838\u7684\u4e66\u7c4d"

    :goto_0
    const v1, 0x7f090305

    .line 3
    invoke-virtual {p2}, Lcom/biquge/ebook/app/bean/WantBookBean$WantProgressBean;->getBookName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object v1

    const v2, 0x7f0902af

    .line 4
    invoke-virtual {p2}, Lcom/biquge/ebook/app/bean/WantBookBean$WantProgressBean;->getAuthor()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object v1

    const v2, 0x7f090357

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 5
    invoke-virtual {p2}, Lcom/biquge/ebook/app/bean/WantBookBean$WantProgressBean;->getThreshold()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object v1

    const v2, 0x7f0902f9

    .line 6
    invoke-virtual {v1, v2, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    const v0, 0x7f0905d0

    .line 7
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 8
    invoke-virtual {p2}, Lcom/biquge/ebook/app/bean/WantBookBean$WantProgressBean;->getThreshold()I

    move-result v2

    const/16 v3, 0x64

    const v4, 0x7f0902fb

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-ne v2, v3, :cond_5

    .line 9
    invoke-virtual {p1, v4, v6}, Lcom/chad/library/adapter/base/BaseViewHolder;->setVisible(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 10
    iget-object v2, p0, Lcom/biquge/ebook/app/adapter/WantProgressAdapter;->do:Lcom/apk/hf;

    sget-object v3, Lcom/apk/hf;->do:Lcom/apk/hf;

    if-ne v2, v3, :cond_2

    .line 11
    invoke-virtual {p2}, Lcom/biquge/ebook/app/bean/WantBookBean$WantProgressBean;->getBookId()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/apk/n2;->f(Ljava/lang/String;)Z

    move-result p2

    goto :goto_1

    .line 12
    :cond_2
    invoke-virtual {p2}, Lcom/biquge/ebook/app/bean/WantBookBean$WantProgressBean;->getBookId()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/apk/mu;->finally(Ljava/lang/String;)Lcom/manhua/data/bean/ComicCollectBean;

    move-result-object p2

    if-eqz p2, :cond_3

    const/4 p2, 0x1

    goto :goto_1

    :cond_3
    const/4 p2, 0x0

    :goto_1
    if-eqz p2, :cond_4

    const p2, 0x7f10001f

    .line 13
    invoke-static {p2}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p2, 0x7f060064

    .line 14
    invoke-static {p2}, Lcom/apk/ze;->p(I)I

    move-result p2

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 15
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 16
    invoke-virtual {v1, v6, v6, v6, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_2

    :cond_4
    const p2, 0x7f100389

    .line 17
    invoke-static {p2}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    iget-object p2, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f0600d8

    invoke-static {v2}, Lcom/apk/tr0;->do(I)I

    move-result v2

    invoke-static {p2, v2}, Lcom/apk/lq0;->do(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    const p2, 0x7f08022f

    .line 19
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    const/high16 p2, 0x41200000    # 10.0f

    .line 20
    invoke-static {p2}, Lcom/apk/eg;->catch(F)I

    move-result p2

    const/high16 v2, 0x41a00000    # 20.0f

    .line 21
    invoke-static {v2}, Lcom/apk/eg;->catch(F)I

    move-result v2

    .line 22
    invoke-virtual {v1, v2, p2, v2, p2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 23
    :goto_2
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 24
    :cond_5
    invoke-virtual {p1, v4, v5}, Lcom/chad/library/adapter/base/BaseViewHolder;->setVisible(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    const/16 p2, 0x8

    .line 25
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_3
    new-array p2, v5, [I

    aput v0, p2, v6

    .line 26
    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/BaseViewHolder;->addOnClickListener([I)Lcom/chad/library/adapter/base/BaseViewHolder;

    return-void
.end method
