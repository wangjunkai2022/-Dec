.class public Lcom/biquge/ebook/app/ui/view/RedBgImageDialog$new;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "RedBgImageDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biquge/ebook/app/ui/view/RedBgImageDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "new"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
        "Lcom/biquge/ebook/app/bean/RedBgImageBean;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field public final do:Ljava/lang/String;

.field public final for:Ljava/lang/String;

.field public final if:Ljava/lang/String;

.field public final new:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/view/RedBgImageDialog$do;)V
    .locals 0

    const p1, 0x7f0c0127

    .line 1
    invoke-direct {p0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(I)V

    const p1, 0x7f100138

    .line 2
    invoke-static {p1}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/biquge/ebook/app/ui/view/RedBgImageDialog$new;->do:Ljava/lang/String;

    const p1, 0x7f10039a

    .line 3
    invoke-static {p1}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/biquge/ebook/app/ui/view/RedBgImageDialog$new;->if:Ljava/lang/String;

    const p1, 0x7f1002a5

    .line 4
    invoke-static {p1}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/biquge/ebook/app/ui/view/RedBgImageDialog$new;->for:Ljava/lang/String;

    const p1, 0x7f1002a6

    .line 5
    invoke-static {p1}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/biquge/ebook/app/ui/view/RedBgImageDialog$new;->new:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public convert(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/Object;)V
    .locals 8
    .param p1    # Lcom/chad/library/adapter/base/BaseViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p2, Lcom/biquge/ebook/app/bean/RedBgImageBean;

    const v0, 0x7f0902f8

    .line 2
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f09035f

    .line 3
    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 4
    invoke-virtual {p2}, Lcom/biquge/ebook/app/bean/RedBgImageBean;->getName()Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f090305

    invoke-virtual {p1, v4, v3}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 5
    invoke-virtual {p2}, Lcom/biquge/ebook/app/bean/RedBgImageBean;->getType()Ljava/lang/String;

    move-result-object v3

    const-string v4, "6"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_1

    .line 6
    invoke-virtual {p2}, Lcom/biquge/ebook/app/bean/RedBgImageBean;->getBgImage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/apk/u;->throws(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 7
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 8
    invoke-static {}, Lcom/apk/g2;->case()I

    move-result v0

    const/4 v3, 0x4

    if-ne v0, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    goto :goto_2

    .line 9
    :cond_1
    invoke-virtual {p2}, Lcom/biquge/ebook/app/bean/RedBgImageBean;->getsId()I

    move-result v3

    if-eqz v3, :cond_2

    .line 10
    invoke-virtual {p2}, Lcom/biquge/ebook/app/bean/RedBgImageBean;->getsId()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    const/16 v0, 0x8

    .line 11
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 12
    :cond_2
    invoke-virtual {p2}, Lcom/biquge/ebook/app/bean/RedBgImageBean;->getIcon()Ljava/lang/String;

    move-result-object v3

    const v6, 0x7f080223

    const/4 v7, 0x0

    .line 13
    invoke-static {v3, v0, v6, v7, v5}, Lcom/apk/u;->return(Ljava/lang/String;Landroid/widget/ImageView;ILcom/apk/j1;Z)V

    .line 14
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 15
    :goto_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v0

    invoke-static {}, Lcom/apk/g2;->final()I

    move-result v3

    if-ne v0, v3, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    const-string v3, "SP_READ_BG_IMAGE_ID_KEY"

    .line 16
    invoke-static {v3}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lcom/biquge/ebook/app/bean/RedBgImageBean;->getBgImage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v6, ""

    .line 17
    invoke-static {v3, v6}, Lcom/apk/tt;->do(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 18
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    invoke-static {v3}, Lcom/apk/goto;->volatile(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    :goto_2
    const/4 v3, 0x1

    goto :goto_3

    :cond_4
    const/4 v3, 0x0

    :goto_3
    const v6, 0x7f0801ca

    if-eqz v0, :cond_5

    .line 19
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 20
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 21
    iget-object p2, p0, Lcom/biquge/ebook/app/ui/view/RedBgImageDialog$new;->new:Ljava/lang/String;

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_5
    if-eqz v3, :cond_6

    const p2, 0x7f08016c

    .line 22
    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 23
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 24
    iget-object p2, p0, Lcom/biquge/ebook/app/ui/view/RedBgImageDialog$new;->for:Ljava/lang/String;

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 25
    :cond_6
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 26
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 27
    invoke-static {}, Lcom/apk/kf;->try()Lcom/apk/kf;

    move-result-object v3

    invoke-virtual {p2}, Lcom/biquge/ebook/app/bean/RedBgImageBean;->getBgImage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Lcom/apk/kf;->else(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 28
    iget-object p2, p0, Lcom/biquge/ebook/app/ui/view/RedBgImageDialog$new;->if:Ljava/lang/String;

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 29
    :cond_7
    iget-object p2, p0, Lcom/biquge/ebook/app/ui/view/RedBgImageDialog$new;->do:Ljava/lang/String;

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_4
    const p2, 0x7f0902b3

    .line 30
    invoke-virtual {p1, p2, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setVisible(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    new-array p2, v4, [I

    aput v1, p2, v5

    .line 31
    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/BaseViewHolder;->addOnClickListener([I)Lcom/chad/library/adapter/base/BaseViewHolder;

    return-void
.end method
